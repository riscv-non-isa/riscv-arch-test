
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c50')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | sunpkd831      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sunpkd831-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 63      |
| STAT1                     | 63      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                                                           coverpoints                                                                                           |                                code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0009FFFD00550020|- opcode : sunpkd831<br> - rs1 : x26<br> - rd : x19<br> - rs1_b0_val == -128<br> - rs1_b6_val == -86<br> - rs1_b5_val == -3<br> - rs1_b3_val == 85<br> - rs1_b1_val == 32<br>                    |[0x800003b8]:SUNPKD831 s3, s10<br> [0x800003bc]:sd s3, 0(a1)<br>     |
|   2|[0x80002218]<br>0xFFAAFFC0FFC0FFF7|- rs1 : x6<br> - rd : x10<br> - rs1_b7_val == -86<br> - rs1_b6_val == -2<br> - rs1_b4_val == -128<br> - rs1_b1_val == -9<br> - rs1_b0_val == 4<br>                                               |[0x800003e0]:SUNPKD831 a0, t1<br> [0x800003e4]:sd a0, 8(a1)<br>      |
|   3|[0x80002220]<br>0x00550001FFEF0007|- rs1 : x9<br> - rd : x13<br> - rs1_b7_val == 85<br> - rs1_b6_val == 0<br> - rs1_b5_val == 1<br> - rs1_b4_val == -33<br> - rs1_b3_val == -17<br> - rs1_b2_val == -17<br> - rs1_b0_val == -86<br> |[0x80000408]:SUNPKD831 a3, s1<br> [0x8000040c]:sd a3, 16(a1)<br>     |
|   4|[0x80002228]<br>0x007FFF800008FFF9|- rs1 : x23<br> - rd : x15<br> - rs1_b7_val == 127<br> - rs1_b6_val == 85<br> - rs1_b5_val == -128<br> - rs1_b4_val == -9<br> - rs1_b3_val == 8<br> - rs1_b0_val == -3<br>                       |[0x80000428]:SUNPKD831 a5, s7<br> [0x8000042c]:sd a5, 24(a1)<br>     |
|   5|[0x80002230]<br>0xFFBFFFAA0000FFFD|- rs1 : x31<br> - rd : x23<br> - rs1_b7_val == -65<br> - rs1_b5_val == -86<br> - rs1_b3_val == 0<br> - rs1_b1_val == -3<br>                                                                      |[0x80000448]:SUNPKD831 s7, t6<br> [0x8000044c]:sd s7, 32(a1)<br>     |
|   6|[0x80002238]<br>0xFFDF00090005FFF9|- rs1 : x21<br> - rd : x6<br> - rs1_b7_val == -33<br>                                                                                                                                            |[0x80000468]:SUNPKD831 t1, s5<br> [0x8000046c]:sd t1, 40(a1)<br>     |
|   7|[0x80002240]<br>0xFFEFFFFF007F003F|- rs1 : x15<br> - rd : x24<br> - rs1_b7_val == -17<br> - rs1_b5_val == -1<br> - rs1_b3_val == 127<br> - rs1_b2_val == 127<br> - rs1_b0_val == 32<br>                                             |[0x80000488]:SUNPKD831 s8, a5<br> [0x8000048c]:sd s8, 48(a1)<br>     |
|   8|[0x80002248]<br>0xFFF7FFF80004FFAA|- rs1 : x30<br> - rd : x12<br> - rs1_b7_val == -9<br> - rs1_b4_val == 2<br> - rs1_b3_val == 4<br> - rs1_b2_val == 2<br> - rs1_b1_val == -86<br> - rs1_b0_val == -17<br>                          |[0x800004b0]:SUNPKD831 a2, t5<br> [0x800004b4]:sd a2, 56(a1)<br>     |
|   9|[0x80002250]<br>0xFFFB007FFF80003F|- rs1 : x4<br> - rd : x2<br> - rs1_b7_val == -5<br> - rs1_b6_val == -9<br> - rs1_b5_val == 127<br> - rs1_b3_val == -128<br>                                                                      |[0x800004d0]:SUNPKD831 sp, tp<br> [0x800004d4]:sd sp, 64(a1)<br>     |
|  10|[0x80002258]<br>0xFFFD0020FFAA0055|- rs1 : x14<br> - rd : x16<br> - rs1_b7_val == -3<br> - rs1_b5_val == 32<br> - rs1_b3_val == -86<br> - rs1_b1_val == 85<br>                                                                      |[0x800004f8]:SUNPKD831 a6, a4<br> [0x800004fc]:sd a6, 72(a1)<br>     |
|  11|[0x80002260]<br>0xFFFEFFC00000FFFA|- rs1 : x5<br> - rd : x7<br> - rs1_b7_val == -2<br> - rs1_b4_val == -3<br> - rs1_b2_val == 4<br>                                                                                                 |[0x80000518]:SUNPKD831 t2, t0<br> [0x8000051c]:sd t2, 80(a1)<br>     |
|  12|[0x80002268]<br>0xFF8000040020FFF7|- rs1 : x24<br> - rd : x31<br> - rs1_b7_val == -128<br> - rs1_b6_val == 1<br> - rs1_b5_val == 4<br> - rs1_b4_val == 0<br> - rs1_b3_val == 32<br> - rs1_b0_val == 1<br>                           |[0x80000540]:SUNPKD831 t6, s8<br> [0x80000544]:sd t6, 88(a1)<br>     |
|  13|[0x80002270]<br>0x0040FFF90004FFF6|- rs1 : x1<br> - rd : x27<br> - rs1_b7_val == 64<br> - rs1_b6_val == -128<br> - rs1_b4_val == -1<br> - rs1_b2_val == 0<br> - rs1_b0_val == -5<br>                                                |[0x80000568]:SUNPKD831 s11, ra<br> [0x8000056c]:sd s11, 96(a1)<br>   |
|  14|[0x80002278]<br>0x00200055FFF80005|- rs1 : x17<br> - rd : x29<br> - rs1_b7_val == 32<br> - rs1_b5_val == 85<br> - rs1_b2_val == -128<br> - rs1_b0_val == 8<br>                                                                      |[0x80000588]:SUNPKD831 t4, a7<br> [0x8000058c]:sd t4, 104(a1)<br>    |
|  15|[0x80002280]<br>0x0010FFF600090005|- rs1 : x12<br> - rd : x21<br> - rs1_b7_val == 16<br> - rs1_b4_val == -65<br> - rs1_b2_val == -2<br>                                                                                             |[0x800005a8]:SUNPKD831 s5, a2<br> [0x800005ac]:sd s5, 112(a1)<br>    |
|  16|[0x80002288]<br>0x0008003F003FFFAA|- rs1 : x2<br> - rd : x8<br> - rs1_b7_val == 8<br> - rs1_b2_val == -5<br> - rs1_b0_val == -9<br>                                                                                                 |[0x800005c8]:SUNPKD831 fp, sp<br> [0x800005cc]:sd fp, 120(a1)<br>    |
|  17|[0x80002290]<br>0x0004FFDF00020020|- rs1 : x18<br> - rd : x14<br> - rs1_b7_val == 4<br> - rs1_b6_val == 64<br> - rs1_b5_val == -33<br> - rs1_b3_val == 2<br> - rs1_b2_val == -3<br>                                                 |[0x800005f0]:SUNPKD831 a4, s2<br> [0x800005f4]:sd a4, 128(a1)<br>    |
|  18|[0x80002298]<br>0x0002001000040007|- rs1 : x25<br> - rd : x9<br> - rs1_b7_val == 2<br> - rs1_b5_val == 16<br> - rs1_b2_val == -1<br>                                                                                                |[0x80000610]:SUNPKD831 s1, s9<br> [0x80000614]:sd s1, 136(a1)<br>    |
|  19|[0x800022a0]<br>0x0001FFDF0008FFFF|- rs1 : x3<br> - rd : x4<br> - rs1_b7_val == 1<br> - rs1_b4_val == -86<br> - rs1_b1_val == -1<br> - rs1_b0_val == 64<br>                                                                         |[0x80000630]:SUNPKD831 tp, gp<br> [0x80000634]:sd tp, 144(a1)<br>    |
|  20|[0x800022a8]<br>0x0000FFBF00050010|- rs1 : x29<br> - rd : x25<br> - rs1_b7_val == 0<br> - rs1_b5_val == -65<br> - rs1_b1_val == 16<br>                                                                                              |[0x80000658]:SUNPKD831 s9, t4<br> [0x8000065c]:sd s9, 152(a1)<br>    |
|  21|[0x800022b0]<br>0xFFFFFFF8007FFFF7|- rs1 : x27<br> - rd : x22<br> - rs1_b7_val == -1<br> - rs1_b6_val == 16<br> - rs1_b2_val == -86<br>                                                                                             |[0x80000678]:SUNPKD831 s6, s11<br> [0x8000067c]:sd s6, 160(a1)<br>   |
|  22|[0x800022b8]<br>0x00000010FFF7FFFB|- rs1 : x8<br> - rd : x20<br> - rs1_b6_val == 127<br> - rs1_b4_val == 85<br> - rs1_b3_val == -9<br> - rs1_b1_val == -5<br>                                                                       |[0x800006a0]:SUNPKD831 s4, fp<br> [0x800006a4]:sd s4, 0(sp)<br>      |
|  23|[0x800022c0]<br>0x000800030040FFF6|- rs1 : x7<br> - rd : x11<br> - rs1_b6_val == -65<br> - rs1_b3_val == 64<br> - rs1_b0_val == -65<br>                                                                                             |[0x800006c0]:SUNPKD831 a1, t2<br> [0x800006c4]:sd a1, 8(sp)<br>      |
|  24|[0x800022c8]<br>0x0002FFFE007F0001|- rs1 : x19<br> - rd : x3<br> - rs1_b6_val == -33<br> - rs1_b5_val == -2<br> - rs1_b1_val == 1<br>                                                                                               |[0x800006e0]:SUNPKD831 gp, s3<br> [0x800006e4]:sd gp, 16(sp)<br>     |
|  25|[0x800022d0]<br>0xFFBF00060005FFFE|- rs1 : x20<br> - rd : x18<br> - rs1_b1_val == -2<br>                                                                                                                                            |[0x80000700]:SUNPKD831 s2, s4<br> [0x80000704]:sd s2, 24(sp)<br>     |
|  26|[0x800022d8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x26<br> - rs1_b5_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                                                                  |[0x80000728]:SUNPKD831 s10, zero<br> [0x8000072c]:sd s10, 32(sp)<br> |
|  27|[0x800022e0]<br>0x0055FFF8FFEF0040|- rs1 : x22<br> - rd : x28<br> - rs1_b1_val == 64<br>                                                                                                                                            |[0x80000750]:SUNPKD831 t3, s6<br> [0x80000754]:sd t3, 40(sp)<br>     |
|  28|[0x800022e8]<br>0xFFBF0020FFFD0008|- rs1 : x10<br> - rd : x5<br> - rs1_b3_val == -3<br> - rs1_b1_val == 8<br>                                                                                                                       |[0x80000778]:SUNPKD831 t0, a0<br> [0x8000077c]:sd t0, 48(sp)<br>     |
|  29|[0x800022f0]<br>0x0000000000000000|- rs1 : x28<br> - rd : x0<br> - rs1_b2_val == 64<br> - rs1_b1_val == 4<br>                                                                                                                       |[0x80000798]:SUNPKD831 zero, t3<br> [0x8000079c]:sd zero, 56(sp)<br> |
|  30|[0x800022f8]<br>0xFFEFFFFFFFFB0002|- rs1 : x11<br> - rd : x30<br> - rs1_b3_val == -5<br> - rs1_b1_val == 2<br>                                                                                                                      |[0x800007b8]:SUNPKD831 t5, a1<br> [0x800007bc]:sd t5, 64(sp)<br>     |
|  31|[0x80002300]<br>0xFFF6FFC0003F0000|- rs1 : x13<br> - rd : x1<br> - rs1_b6_val == -1<br> - rs1_b0_val == 127<br>                                                                                                                     |[0x800007d8]:SUNPKD831 ra, a3<br> [0x800007dc]:sd ra, 72(sp)<br>     |
|  32|[0x80002308]<br>0x0006003FFFFD0040|- rs1 : x16<br> - rd : x17<br> - rs1_b4_val == -2<br> - rs1_b0_val == 85<br>                                                                                                                     |[0x80000800]:SUNPKD831 a7, a6<br> [0x80000804]:sd a7, 80(sp)<br>     |
|  33|[0x80002310]<br>0x00010000FFBF003F|- rs1_b4_val == -5<br> - rs1_b3_val == -65<br> - rs1_b2_val == 16<br> - rs1_b0_val == -33<br>                                                                                                    |[0x80000820]:SUNPKD831 t6, t5<br> [0x80000824]:sd t6, 88(sp)<br>     |
|  34|[0x80002318]<br>0x00010055FFFDFFF9|- rs1_b6_val == -17<br> - rs1_b2_val == 32<br> - rs1_b0_val == -2<br>                                                                                                                            |[0x80000840]:SUNPKD831 t6, t5<br> [0x80000844]:sd t6, 96(sp)<br>     |
|  35|[0x80002320]<br>0x0006FFFF0040FFFB|- rs1_b6_val == 32<br> - rs1_b4_val == 4<br> - rs1_b0_val == 16<br>                                                                                                                              |[0x80000860]:SUNPKD831 t6, t5<br> [0x80000864]:sd t6, 104(sp)<br>    |
|  36|[0x80002328]<br>0xFFFBFFF8FFBF003F|- rs1_b6_val == -5<br>                                                                                                                                                                           |[0x80000880]:SUNPKD831 t6, t5<br> [0x80000884]:sd t6, 112(sp)<br>    |
|  37|[0x80002330]<br>0x00060010FFF60055|- rs1_b0_val == 2<br>                                                                                                                                                                            |[0x800008a8]:SUNPKD831 t6, t5<br> [0x800008ac]:sd t6, 120(sp)<br>    |
|  38|[0x80002338]<br>0xFFF700010007FFFD|- rs1_b6_val == -3<br>                                                                                                                                                                           |[0x800008c8]:SUNPKD831 t6, t5<br> [0x800008cc]:sd t6, 128(sp)<br>    |
|  39|[0x80002340]<br>0x0008FFAAFFFCFF80|- rs1_b1_val == -128<br>                                                                                                                                                                         |[0x800008e4]:SUNPKD831 t6, t5<br> [0x800008e8]:sd t6, 136(sp)<br>    |
|  40|[0x80002348]<br>0x0009000600030055|- rs1_b4_val == -17<br>                                                                                                                                                                          |[0x8000090c]:SUNPKD831 t6, t5<br> [0x80000910]:sd t6, 144(sp)<br>    |
|  41|[0x80002350]<br>0x0009FFDF0008FFAA|- rs1_b4_val == 64<br>                                                                                                                                                                           |[0x80000934]:SUNPKD831 t6, t5<br> [0x80000938]:sd t6, 152(sp)<br>    |
|  42|[0x80002358]<br>0x007F00050004FFF6|- rs1_b4_val == 32<br>                                                                                                                                                                           |[0x8000095c]:SUNPKD831 t6, t5<br> [0x80000960]:sd t6, 160(sp)<br>    |
|  43|[0x80002360]<br>0x0010FFF6003F007F|- rs1_b4_val == 16<br> - rs1_b1_val == 127<br>                                                                                                                                                   |[0x8000097c]:SUNPKD831 t6, t5<br> [0x80000980]:sd t6, 168(sp)<br>    |
|  44|[0x80002368]<br>0x00200006FFF80009|- rs1_b4_val == 8<br>                                                                                                                                                                            |[0x800009a4]:SUNPKD831 t6, t5<br> [0x800009a8]:sd t6, 176(sp)<br>    |
|  45|[0x80002370]<br>0xFFAAFFFAFFBFFFF7|- rs1_b4_val == 1<br> - rs1_b2_val == -9<br>                                                                                                                                                     |[0x800009cc]:SUNPKD831 t6, t5<br> [0x800009d0]:sd t6, 184(sp)<br>    |
|  46|[0x80002378]<br>0x0006007FFFDFFFFE|- rs1_b6_val == 8<br> - rs1_b3_val == -33<br>                                                                                                                                                    |[0x800009ec]:SUNPKD831 t6, t5<br> [0x800009f0]:sd t6, 192(sp)<br>    |
|  47|[0x80002380]<br>0xFFC00006FFFE0004|- rs1_b3_val == -2<br>                                                                                                                                                                           |[0x80000a0c]:SUNPKD831 t6, t5<br> [0x80000a10]:sd t6, 200(sp)<br>    |
|  48|[0x80002388]<br>0xFFF800000010FF80|- rs1_b3_val == 16<br> - rs1_b0_val == -1<br>                                                                                                                                                    |[0x80000a2c]:SUNPKD831 t6, t5<br> [0x80000a30]:sd t6, 208(sp)<br>    |
|  49|[0x80002390]<br>0x003FFFFA0001FFF9|- rs1_b3_val == 1<br>                                                                                                                                                                            |[0x80000a4c]:SUNPKD831 t6, t5<br> [0x80000a50]:sd t6, 216(sp)<br>    |
|  50|[0x80002398]<br>0x0001FFF70010FFF9|- rs1_b6_val == 4<br> - rs1_b5_val == -9<br> - rs1_b2_val == 85<br>                                                                                                                              |[0x80000a6c]:SUNPKD831 t6, t5<br> [0x80000a70]:sd t6, 224(sp)<br>    |
|  51|[0x800023a0]<br>0xFFFFFFFBFFFF0009|- rs1_b5_val == -5<br> - rs1_b3_val == -1<br>                                                                                                                                                    |[0x80000a94]:SUNPKD831 t6, t5<br> [0x80000a98]:sd t6, 232(sp)<br>    |
|  52|[0x800023a8]<br>0x003F0010FFF6003F|- rs1_b6_val == 2<br>                                                                                                                                                                            |[0x80000abc]:SUNPKD831 t6, t5<br> [0x80000ac0]:sd t6, 240(sp)<br>    |
|  53|[0x800023b0]<br>0xFF80000300050002|- rs1_b2_val == -65<br>                                                                                                                                                                          |[0x80000adc]:SUNPKD831 t6, t5<br> [0x80000ae0]:sd t6, 248(sp)<br>    |
|  54|[0x800023b8]<br>0x00200002FFAAFFF8|- rs1_b5_val == 2<br> - rs1_b2_val == -33<br>                                                                                                                                                    |[0x80000afc]:SUNPKD831 t6, t5<br> [0x80000b00]:sd t6, 256(sp)<br>    |
|  55|[0x800023c0]<br>0xFFF7FFEFFFBF0004|- rs1_b5_val == -17<br>                                                                                                                                                                          |[0x80000b1c]:SUNPKD831 t6, t5<br> [0x80000b20]:sd t6, 264(sp)<br>    |
|  56|[0x800023c8]<br>0x0005FFFAFFDF003F|- rs1_b2_val == 8<br>                                                                                                                                                                            |[0x80000b3c]:SUNPKD831 t6, t5<br> [0x80000b40]:sd t6, 272(sp)<br>    |
|  57|[0x800023d0]<br>0xFFAA004000000009|- rs1_b5_val == 64<br>                                                                                                                                                                           |[0x80000b64]:SUNPKD831 t6, t5<br> [0x80000b68]:sd t6, 280(sp)<br>    |
|  58|[0x800023d8]<br>0xFFC0FFFAFFF8FF80|- rs1_b2_val == 1<br>                                                                                                                                                                            |[0x80000b8c]:SUNPKD831 t6, t5<br> [0x80000b90]:sd t6, 288(sp)<br>    |
|  59|[0x800023e0]<br>0x00100008FFF9FFFD|- rs1_b5_val == 8<br>                                                                                                                                                                            |[0x80000bac]:SUNPKD831 t6, t5<br> [0x80000bb0]:sd t6, 296(sp)<br>    |
|  60|[0x800023e8]<br>0xFF80FFFD003FFFBF|- rs1_b1_val == -65<br>                                                                                                                                                                          |[0x80000bd4]:SUNPKD831 t6, t5<br> [0x80000bd8]:sd t6, 304(sp)<br>    |
|  61|[0x800023f0]<br>0xFFFA00050000FFDF|- rs1_b1_val == -33<br>                                                                                                                                                                          |[0x80000bf4]:SUNPKD831 t6, t5<br> [0x80000bf8]:sd t6, 312(sp)<br>    |
|  62|[0x800023f8]<br>0x007FFFF9007FFFEF|- rs1_b1_val == -17<br>                                                                                                                                                                          |[0x80000c1c]:SUNPKD831 t6, t5<br> [0x80000c20]:sd t6, 320(sp)<br>    |
|  63|[0x80002400]<br>0x00100008FFFA0055|- rs1_b4_val == 127<br>                                                                                                                                                                          |[0x80000c44]:SUNPKD831 t6, t5<br> [0x80000c48]:sd t6, 328(sp)<br>    |
