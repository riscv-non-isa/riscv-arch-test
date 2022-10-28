
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b10')]      |
| SIG_REGION                | [('0x80003210', '0x800036e0', '154 dwords')]      |
| COV_LABELS                | maddr32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/maddr32-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 154      |
| STAT1                     | 152      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001760]:MADDR32 t6, t5, t4
      [0x80001764]:sd t6, 800(ra)
 -- Signature Address: 0x80003618 Data: 0x000000002B30C43C
 -- Redundant Coverpoints hit by the op
      - opcode : maddr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -8193
      - rs1_w0_val == -262145




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ab8]:MADDR32 t6, t5, t4
      [0x80001abc]:sd t6, 976(ra)
 -- Signature Address: 0x800036c8 Data: 0x00000000604CA3B0
 -- Redundant Coverpoints hit by the op
      - opcode : maddr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -268435457
      - rs2_w0_val == 256
      - rs1_w1_val == -134217729
      - rs1_w0_val == -32769






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

|s.no|            signature             |                                                                                          coverpoints                                                                                          |                                 code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFB702B7FC|- opcode : maddr32<br> - rs1 : x7<br> - rs2 : x7<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs2_w1_val == 0<br> - rs2_w0_val == -262145<br> - rs1_w1_val == 0<br> - rs1_w0_val == -262145<br> |[0x800003bc]:MADDR32 s7, t2, t2<br> [0x800003c0]:sd s7, 0(a2)<br>      |
|   2|[0x80003218]<br>0x0000000010000000|- rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 268435456<br> |[0x800003ec]:MADDR32 s1, s1, s1<br> [0x800003f0]:sd s1, 8(a2)<br>      |
|   3|[0x80003220]<br>0xFFFFFFFFDDB895C5|- rs1 : x2<br> - rs2 : x10<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -8193<br> - rs1_w1_val == -9<br>                    |[0x80000418]:MADDR32 t3, sp, a0<br> [0x8000041c]:sd t3, 16(a2)<br>     |
|   4|[0x80003228]<br>0x0000000033333340|- rs1 : x30<br> - rs2 : x17<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs1_w1_val == -65<br> - rs1_w0_val == 8<br>                                             |[0x80000448]:MADDR32 t5, t5, a7<br> [0x8000044c]:sd t5, 24(a2)<br>     |
|   5|[0x80003230]<br>0x000000000000001E|- rs1 : x21<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == 8<br>                                                                      |[0x8000046c]:MADDR32 t0, s5, t0<br> [0x80000470]:sd t0, 32(a2)<br>     |
|   6|[0x80003238]<br>0xFFFFFFFFF56FF785|- rs1 : x24<br> - rs2 : x3<br> - rd : x14<br> - rs2_w1_val == -536870913<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 4<br>                                                                  |[0x80000494]:MADDR32 a4, s8, gp<br> [0x80000498]:sd a4, 40(a2)<br>     |
|   7|[0x80003240]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x1<br> - rd : x0<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 256<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -32769<br>                                  |[0x800004c0]:MADDR32 zero, a6, ra<br> [0x800004c4]:sd zero, 48(a2)<br> |
|   8|[0x80003248]<br>0x0000000076DD56DF|- rs1 : x14<br> - rs2 : x11<br> - rd : x26<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 32<br>                                                                 |[0x800004ec]:MADDR32 s10, a4, a1<br> [0x800004f0]:sd s10, 56(a2)<br>   |
|   9|[0x80003250]<br>0xFFFFFFFFEADFEEDB|- rs1 : x25<br> - rs2 : x4<br> - rd : x13<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == 16384<br>                                                          |[0x80000514]:MADDR32 a3, s9, tp<br> [0x80000518]:sd a3, 64(a2)<br>     |
|  10|[0x80003258]<br>0xFFFFFFFF80000000|- rs1 : x13<br> - rs2 : x29<br> - rd : x25<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == 0<br>                                                               |[0x80000534]:MADDR32 s9, a3, t4<br> [0x80000538]:sd s9, 72(a2)<br>     |
|  11|[0x80003260]<br>0xFFFFFFFFFFFF7FFF|- rs1 : x15<br> - rs2 : x19<br> - rd : x16<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 32768<br>                              |[0x80000558]:MADDR32 a6, a5, s3<br> [0x8000055c]:sd a6, 80(a2)<br>     |
|  12|[0x80003268]<br>0xFFFFFFFFFFFBFFFF|- rs1 : x27<br> - rs2 : x21<br> - rd : x7<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 16<br> - rs1_w0_val == 1073741824<br>                                    |[0x8000057c]:MADDR32 t2, s11, s5<br> [0x80000580]:sd t2, 88(a2)<br>    |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFAFFD|- rs1 : x10<br> - rs2 : x18<br> - rd : x11<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == 2<br> - rs1_w1_val == 256<br> - rs1_w0_val == -8193<br>                                            |[0x800005a4]:MADDR32 a1, a0, s2<br> [0x800005a8]:sd a1, 96(a2)<br>     |
|  14|[0x80003278]<br>0xFFFFFFFFF3FFFFF4|- rs1 : x6<br> - rs2 : x23<br> - rd : x2<br> - rs2_w1_val == -2097153<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -33554433<br>                                                         |[0x800005d0]:MADDR32 sp, t1, s7<br> [0x800005d4]:sd sp, 104(a2)<br>    |
|  15|[0x80003280]<br>0xFFFFFFFFB7D5BFD7|- rs1 : x8<br> - rs2 : x15<br> - rd : x20<br> - rs2_w1_val == -1048577<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 2147483647<br>                                                        |[0x800005f8]:MADDR32 s4, fp, a5<br> [0x800005fc]:sd s4, 112(a2)<br>    |
|  16|[0x80003288]<br>0x000000006DF571F7|- rs1 : x3<br> - rs2 : x13<br> - rd : x22<br> - rs2_w1_val == -524289<br> - rs1_w0_val == 256<br>                                                                                              |[0x80000624]:MADDR32 s6, gp, a3<br> [0x80000628]:sd s6, 0(tp)<br>      |
|  17|[0x80003290]<br>0xFFFFFFFF82009503|- rs1 : x19<br> - rs2 : x27<br> - rd : x10<br> - rs2_w1_val == -262145<br> - rs1_w0_val == -8388609<br>                                                                                        |[0x80000654]:MADDR32 a0, s3, s11<br> [0x80000658]:sd a0, 8(tp)<br>     |
|  18|[0x80003298]<br>0x0000000000000100|- rs1 : x22<br> - rs2 : x2<br> - rd : x1<br> - rs2_w1_val == -131073<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == 8388608<br>                                                           |[0x80000674]:MADDR32 ra, s6, sp<br> [0x80000678]:sd ra, 16(tp)<br>     |
|  19|[0x800032a0]<br>0x0000000000000004|- rs1 : x12<br> - rs2 : x26<br> - rd : x24<br> - rs2_w1_val == -65537<br> - rs2_w0_val == -1<br> - rs1_w1_val == 2048<br>                                                                      |[0x80000690]:MADDR32 s8, a2, s10<br> [0x80000694]:sd s8, 24(tp)<br>    |
|  20|[0x800032a8]<br>0x000000000000001E|- rs1 : x11<br> - rs2 : x30<br> - rd : x12<br> - rs2_w1_val == -32769<br>                                                                                                                      |[0x800006b4]:MADDR32 a2, a1, t5<br> [0x800006b8]:sd a2, 32(tp)<br>     |
|  21|[0x800032b0]<br>0x0000000066666667|- rs1 : x18<br> - rs2 : x14<br> - rd : x17<br> - rs2_w1_val == -16385<br> - rs1_w1_val == 16384<br>                                                                                            |[0x800006d0]:MADDR32 a7, s2, a4<br> [0x800006d4]:sd a7, 40(tp)<br>     |
|  22|[0x800032b8]<br>0x0000000008000000|- rs1 : x20<br> - rs2 : x8<br> - rd : x19<br> - rs2_w1_val == -8193<br> - rs2_w0_val == -134217729<br>                                                                                         |[0x800006f4]:MADDR32 s3, s4, fp<br> [0x800006f8]:sd s3, 48(tp)<br>     |
|  23|[0x800032c0]<br>0x0000000000080000|- rs1 : x0<br> - rs2 : x28<br> - rd : x21<br> - rs2_w1_val == -4097<br>                                                                                                                        |[0x80000718]:MADDR32 s5, zero, t3<br> [0x8000071c]:sd s5, 56(tp)<br>   |
|  24|[0x800032c8]<br>0xFFFFFFFFFF00B502|- rs1 : x5<br> - rs2 : x25<br> - rd : x29<br> - rs2_w1_val == -2049<br> - rs1_w1_val == 1024<br>                                                                                               |[0x8000073c]:MADDR32 t4, t0, s9<br> [0x80000740]:sd t4, 64(tp)<br>     |
|  25|[0x800032d0]<br>0xFFFFFFFFFFFFFD03|- rs1 : x29<br> - rs2 : x16<br> - rd : x15<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -257<br> - rs1_w1_val == -3<br>                                                                       |[0x8000075c]:MADDR32 a5, t4, a6<br> [0x80000760]:sd a5, 72(tp)<br>     |
|  26|[0x800032d8]<br>0xFFFFFFFF8E000008|- rs1 : x26<br> - rs2 : x24<br> - rd : x6<br> - rs2_w1_val == -513<br> - rs2_w0_val == -9<br> - rs1_w0_val == -268435457<br>                                                                   |[0x80000788]:MADDR32 t1, s10, s8<br> [0x8000078c]:sd t1, 80(tp)<br>    |
|  27|[0x800032e0]<br>0x000000005998E497|- rs1 : x28<br> - rs2 : x20<br> - rd : x27<br> - rs2_w1_val == -257<br> - rs1_w1_val == 8192<br> - rs1_w0_val == -1073741825<br>                                                               |[0x800007b0]:MADDR32 s11, t3, s4<br> [0x800007b4]:sd s11, 88(tp)<br>   |
|  28|[0x800032e8]<br>0x0000000005A8D604|- rs1 : x17<br> - rs2 : x22<br> - rd : x3<br> - rs2_w1_val == -129<br> - rs1_w0_val == -2049<br>                                                                                               |[0x800007e0]:MADDR32 gp, a7, s6<br> [0x800007e4]:sd gp, 96(tp)<br>     |
|  29|[0x800032f0]<br>0x000000002EE6FAB7|- rs1 : x1<br> - rs2 : x6<br> - rd : x31<br> - rs2_w1_val == -65<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 524288<br>                                                                 |[0x8000080c]:MADDR32 t6, ra, t1<br> [0x80000810]:sd t6, 104(tp)<br>    |
|  30|[0x800032f8]<br>0xFFFFFFFFF7BFFEFF|- rs1 : x4<br> - rs2 : x12<br> - rd : x8<br> - rs2_w1_val == -33<br> - rs1_w0_val == -16385<br>                                                                                                |[0x80000838]:MADDR32 fp, tp, a2<br> [0x8000083c]:sd fp, 0(ra)<br>      |
|  31|[0x80003300]<br>0xFFFFFFFFE0000001|- rs1 : x23<br> - rs2 : x31<br> - rd : x18<br> - rs2_w1_val == -17<br> - rs1_w0_val == -536870913<br>                                                                                          |[0x80000864]:MADDR32 s2, s7, t6<br> [0x80000868]:sd s2, 8(ra)<br>      |
|  32|[0x80003308]<br>0xFFFFFFFFFFFFBFFF|- rs1 : x31<br> - rs2 : x0<br> - rd : x4<br> - rs2_w0_val == 0<br>                                                                                                                             |[0x80000888]:MADDR32 tp, t6, zero<br> [0x8000088c]:sd tp, 16(ra)<br>   |
|  33|[0x80003310]<br>0xFFFFFFFFAAAB4AB5|- rs2_w1_val == -5<br> - rs1_w1_val == -1048577<br>                                                                                                                                            |[0x800008ac]:MADDR32 t6, t5, t4<br> [0x800008b0]:sd t6, 24(ra)<br>     |
|  34|[0x80003318]<br>0xFFFFFFFFAA9B4AB5|- rs2_w1_val == -3<br> - rs1_w0_val == 1048576<br>                                                                                                                                             |[0x800008d8]:MADDR32 t6, t5, t4<br> [0x800008dc]:sd t6, 32(ra)<br>     |
|  35|[0x80003320]<br>0xFFFFFFFFB29B4AB5|- rs2_w1_val == -2<br> - rs2_w0_val == 8<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == 16777216<br>                                                                                         |[0x800008f8]:MADDR32 t6, t5, t4<br> [0x800008fc]:sd t6, 40(ra)<br>     |
|  36|[0x80003328]<br>0xFFFFFFFFB39B4AB5|- rs2_w1_val == -2147483648<br> - rs2_w0_val == 16<br>                                                                                                                                         |[0x80000920]:MADDR32 t6, t5, t4<br> [0x80000924]:sd t6, 48(ra)<br>     |
|  37|[0x80003330]<br>0xFFFFFFFFB3A0F2D5|- rs2_w1_val == 1073741824<br>                                                                                                                                                                 |[0x8000094c]:MADDR32 t6, t5, t4<br> [0x80000950]:sd t6, 56(ra)<br>     |
|  38|[0x80003338]<br>0xFFFFFFFFB3A072D5|- rs2_w1_val == 536870912<br> - rs2_w0_val == -131073<br> - rs1_w1_val == 262144<br>                                                                                                           |[0x8000097c]:MADDR32 t6, t5, t4<br> [0x80000980]:sd t6, 64(ra)<br>     |
|  39|[0x80003340]<br>0x000000007BA072D5|- rs2_w1_val == 268435456<br> - rs1_w1_val == 2<br> - rs1_w0_val == 67108864<br>                                                                                                               |[0x800009a8]:MADDR32 t6, t5, t4<br> [0x800009ac]:sd t6, 72(ra)<br>     |
|  40|[0x80003348]<br>0x000000007BA072D5|- rs2_w1_val == 134217728<br> - rs1_w1_val == 2097152<br>                                                                                                                                      |[0x800009c4]:MADDR32 t6, t5, t4<br> [0x800009c8]:sd t6, 80(ra)<br>     |
|  41|[0x80003350]<br>0x000000007BA072DE|- rs2_w1_val == 67108864<br> - rs2_w0_val == 1<br>                                                                                                                                             |[0x800009e4]:MADDR32 t6, t5, t4<br> [0x800009e8]:sd t6, 88(ra)<br>     |
|  42|[0x80003358]<br>0xFFFFFFFF8BA072DE|- rs2_w1_val == 33554432<br> - rs2_w0_val == 32768<br> - rs1_w0_val == 8192<br>                                                                                                                |[0x80000a08]:MADDR32 t6, t5, t4<br> [0x80000a0c]:sd t6, 96(ra)<br>     |
|  43|[0x80003360]<br>0xFFFFFFFF8BA072CE|- rs2_w1_val == 16777216<br> - rs2_w0_val == -2<br> - rs1_w1_val == -2<br>                                                                                                                     |[0x80000a2c]:MADDR32 t6, t5, t4<br> [0x80000a30]:sd t6, 104(ra)<br>    |
|  44|[0x80003368]<br>0xFFFFFFFF8BA072CE|- rs2_w1_val == 8388608<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == -17<br>                                                                                                              |[0x80000a48]:MADDR32 t6, t5, t4<br> [0x80000a4c]:sd t6, 112(ra)<br>    |
|  45|[0x80003370]<br>0xFFFFFFFF8BA072C2|- rs2_w1_val == 4194304<br> - rs1_w1_val == -65537<br>                                                                                                                                         |[0x80000a68]:MADDR32 t6, t5, t4<br> [0x80000a6c]:sd t6, 120(ra)<br>    |
|  46|[0x80003378]<br>0x000000000BA334B9|- rs2_w1_val == 2097152<br>                                                                                                                                                                    |[0x80000a9c]:MADDR32 t6, t5, t4<br> [0x80000aa0]:sd t6, 128(ra)<br>    |
|  47|[0x80003380]<br>0x0000000075A934B9|- rs2_w1_val == 1048576<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 131072<br>                                                                                                               |[0x80000ac4]:MADDR32 t6, t5, t4<br> [0x80000ac8]:sd t6, 136(ra)<br>    |
|  48|[0x80003388]<br>0xFFFFFFFFC5A934B9|- rs2_w1_val == 524288<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == -32769<br>                                                                                                           |[0x80000af0]:MADDR32 t6, t5, t4<br> [0x80000af4]:sd t6, 144(ra)<br>    |
|  49|[0x80003390]<br>0xFFFFFFFFC5A9348C|- rs2_w1_val == 262144<br> - rs1_w1_val == -5<br> - rs1_w0_val == -5<br>                                                                                                                       |[0x80000b10]:MADDR32 t6, t5, t4<br> [0x80000b14]:sd t6, 152(ra)<br>    |
|  50|[0x80003398]<br>0xFFFFFFFFBDA1348C|- rs2_w1_val == 131072<br> - rs1_w1_val == 33554432<br>                                                                                                                                        |[0x80000b38]:MADDR32 t6, t5, t4<br> [0x80000b3c]:sd t6, 160(ra)<br>    |
|  51|[0x800033a0]<br>0xFFFFFFFFBDA1348D|- rs2_w1_val == 65536<br> - rs2_w0_val == -1073741825<br>                                                                                                                                      |[0x80000b68]:MADDR32 t6, t5, t4<br> [0x80000b6c]:sd t6, 168(ra)<br>    |
|  52|[0x800033a8]<br>0xFFFFFFFFBDAD348D|- rs2_w1_val == 32768<br> - rs1_w1_val == 67108864<br>                                                                                                                                         |[0x80000b8c]:MADDR32 t6, t5, t4<br> [0x80000b90]:sd t6, 176(ra)<br>    |
|  53|[0x800033b0]<br>0x00000000685857E5|- rs2_w1_val == 16384<br>                                                                                                                                                                      |[0x80000bb8]:MADDR32 t6, t5, t4<br> [0x80000bbc]:sd t6, 184(ra)<br>    |
|  54|[0x800033b8]<br>0x00000000685B0290|- rs2_w1_val == 8192<br> - rs1_w0_val == -524289<br>                                                                                                                                           |[0x80000be8]:MADDR32 t6, t5, t4<br> [0x80000bec]:sd t6, 192(ra)<br>    |
|  55|[0x800033c0]<br>0x00000000685AF290|- rs2_w1_val == 4096<br> - rs2_w0_val == 4096<br>                                                                                                                                              |[0x80000c18]:MADDR32 t6, t5, t4<br> [0x80000c1c]:sd t6, 200(ra)<br>    |
|  56|[0x800033c8]<br>0x00000000685C5C98|- rs2_w1_val == 2048<br> - rs1_w0_val == -2<br>                                                                                                                                                |[0x80000c48]:MADDR32 t6, t5, t4<br> [0x80000c4c]:sd t6, 208(ra)<br>    |
|  57|[0x800033d0]<br>0xFFFFFFFFA85C5C98|- rs2_w1_val == 1024<br> - rs2_w0_val == -1025<br>                                                                                                                                             |[0x80000c68]:MADDR32 t6, t5, t4<br> [0x80000c6c]:sd t6, 216(ra)<br>    |
|  58|[0x800033d8]<br>0xFFFFFFFFA85C5C98|- rs2_w1_val == 4<br> - rs1_w0_val == 4096<br>                                                                                                                                                 |[0x80000c88]:MADDR32 t6, t5, t4<br> [0x80000c8c]:sd t6, 224(ra)<br>    |
|  59|[0x800033e0]<br>0xFFFFFFFFA85C5498|- rs2_w1_val == 256<br> - rs1_w0_val == 2048<br>                                                                                                                                               |[0x80000cb0]:MADDR32 t6, t5, t4<br> [0x80000cb4]:sd t6, 232(ra)<br>    |
|  60|[0x800033e8]<br>0xFFFFFFFFA85C6098|- rs1_w0_val == 512<br>                                                                                                                                                                        |[0x80000cc8]:MADDR32 t6, t5, t4<br> [0x80000ccc]:sd t6, 240(ra)<br>    |
|  61|[0x800033f0]<br>0x00000000285C6098|- rs2_w0_val == 16777216<br> - rs1_w0_val == 128<br>                                                                                                                                           |[0x80000ce8]:MADDR32 t6, t5, t4<br> [0x80000cec]:sd t6, 248(ra)<br>    |
|  62|[0x800033f8]<br>0x00000000285C62D8|- rs1_w0_val == 64<br>                                                                                                                                                                         |[0x80000d0c]:MADDR32 t6, t5, t4<br> [0x80000d10]:sd t6, 256(ra)<br>    |
|  63|[0x80003400]<br>0x00000000285C62D8|- rs2_w1_val == -1<br> - rs1_w0_val == 16<br>                                                                                                                                                  |[0x80000d24]:MADDR32 t6, t5, t4<br> [0x80000d28]:sd t6, 264(ra)<br>    |
|  64|[0x80003408]<br>0x00000000285C62DE|- rs1_w1_val == -16777217<br> - rs1_w0_val == 2<br>                                                                                                                                            |[0x80000d48]:MADDR32 t6, t5, t4<br> [0x80000d4c]:sd t6, 272(ra)<br>    |
|  65|[0x80003410]<br>0x00000000283C62DD|- rs2_w0_val == -2097153<br> - rs1_w1_val == 4<br> - rs1_w0_val == 1<br>                                                                                                                       |[0x80000d70]:MADDR32 t6, t5, t4<br> [0x80000d74]:sd t6, 280(ra)<br>    |
|  66|[0x80003418]<br>0x00000000283C62DF|- rs1_w1_val == -67108865<br> - rs1_w0_val == -1<br>                                                                                                                                           |[0x80000d94]:MADDR32 t6, t5, t4<br> [0x80000d98]:sd t6, 288(ra)<br>    |
|  67|[0x80003420]<br>0x000000005B6EE2DF|- rs2_w1_val == 512<br>                                                                                                                                                                        |[0x80000db8]:MADDR32 t6, t5, t4<br> [0x80000dbc]:sd t6, 296(ra)<br>    |
|  68|[0x80003428]<br>0xFFFFFFFF8EA21C79|- rs2_w1_val == 128<br>                                                                                                                                                                        |[0x80000dec]:MADDR32 t6, t5, t4<br> [0x80000df0]:sd t6, 304(ra)<br>    |
|  69|[0x80003430]<br>0x00000000394CC721|- rs2_w1_val == 64<br> - rs1_w1_val == -33<br>                                                                                                                                                 |[0x80000e10]:MADDR32 t6, t5, t4<br> [0x80000e14]:sd t6, 312(ra)<br>    |
|  70|[0x80003438]<br>0x000000004150C922|- rs2_w1_val == 32<br> - rs1_w0_val == -513<br>                                                                                                                                                |[0x80000e38]:MADDR32 t6, t5, t4<br> [0x80000e3c]:sd t6, 320(ra)<br>    |
|  71|[0x80003440]<br>0xFFFFFFFF96A61E79|- rs2_w1_val == 16<br> - rs2_w0_val == -5<br> - rs1_w1_val == -129<br> - rs1_w0_val == 1431655765<br>                                                                                          |[0x80000e5c]:MADDR32 t6, t5, t4<br> [0x80000e60]:sd t6, 328(ra)<br>    |
|  72|[0x80003448]<br>0xFFFFFFFF96AE1E7B|- rs2_w1_val == 8<br>                                                                                                                                                                          |[0x80000e80]:MADDR32 t6, t5, t4<br> [0x80000e84]:sd t6, 336(ra)<br>    |
|  73|[0x80003450]<br>0xFFFFFFFFF6AE1E81|- rs2_w1_val == 2<br>                                                                                                                                                                          |[0x80000ea4]:MADDR32 t6, t5, t4<br> [0x80000ea8]:sd t6, 344(ra)<br>    |
|  74|[0x80003458]<br>0x000000004C035E81|- rs2_w1_val == 1<br>                                                                                                                                                                          |[0x80000ed0]:MADDR32 t6, t5, t4<br> [0x80000ed4]:sd t6, 352(ra)<br>    |
|  75|[0x80003460]<br>0x000000006158B3D7|- rs2_w0_val == -1431655766<br>                                                                                                                                                                |[0x80000ef4]:MADDR32 t6, t5, t4<br> [0x80000ef8]:sd t6, 360(ra)<br>    |
|  76|[0x80003468]<br>0x000000006150B3D7|- rs2_w0_val == 2147483647<br>                                                                                                                                                                 |[0x80000f20]:MADDR32 t6, t5, t4<br> [0x80000f24]:sd t6, 368(ra)<br>    |
|  77|[0x80003470]<br>0xFFFFFFFF8150B3E0|- rs2_w0_val == -536870913<br> - rs1_w0_val == -9<br>                                                                                                                                          |[0x80000f40]:MADDR32 t6, t5, t4<br> [0x80000f44]:sd t6, 376(ra)<br>    |
|  78|[0x80003478]<br>0xFFFFFFFF8130B3E0|- rs2_w0_val == -268435457<br> - rs1_w0_val == 2097152<br>                                                                                                                                     |[0x80000f68]:MADDR32 t6, t5, t4<br> [0x80000f6c]:sd t6, 384(ra)<br>    |
|  79|[0x80003480]<br>0xFFFFFFFF85FD80AE|- rs2_w0_val == -67108865<br>                                                                                                                                                                  |[0x80000f8c]:MADDR32 t6, t5, t4<br> [0x80000f90]:sd t6, 392(ra)<br>    |
|  80|[0x80003488]<br>0xFFFFFFFF83FD80AD|- rs2_w0_val == -33554433<br>                                                                                                                                                                  |[0x80000fb0]:MADDR32 t6, t5, t4<br> [0x80000fb4]:sd t6, 400(ra)<br>    |
|  81|[0x80003490]<br>0xFFFFFFFF848D80AE|- rs2_w0_val == -8388609<br> - rs1_w0_val == -1048577<br>                                                                                                                                      |[0x80000fe0]:MADDR32 t6, t5, t4<br> [0x80000fe4]:sd t6, 408(ra)<br>    |
|  82|[0x80003498]<br>0xFFFFFFFFC58E35B2|- rs2_w0_val == -4194305<br> - rs1_w1_val == 64<br>                                                                                                                                            |[0x8000100c]:MADDR32 t6, t5, t4<br> [0x80001010]:sd t6, 416(ra)<br>    |
|  83|[0x800034a0]<br>0xFFFFFFFFC58E35B2|- rs2_w0_val == -1048577<br>                                                                                                                                                                   |[0x80001030]:MADDR32 t6, t5, t4<br> [0x80001034]:sd t6, 424(ra)<br>    |
|  84|[0x800034a8]<br>0xFFFFFFFFC58DB5B2|- rs2_w0_val == -524289<br>                                                                                                                                                                    |[0x8000105c]:MADDR32 t6, t5, t4<br> [0x80001060]:sd t6, 432(ra)<br>    |
|  85|[0x800034b0]<br>0xFFFFFFFFC588B5AD|- rs2_w0_val == -65537<br>                                                                                                                                                                     |[0x80001088]:MADDR32 t6, t5, t4<br> [0x8000108c]:sd t6, 440(ra)<br>    |
|  86|[0x800034b8]<br>0xFFFFFFFFC5888B02|- rs2_w0_val == -32769<br>                                                                                                                                                                     |[0x800010c0]:MADDR32 t6, t5, t4<br> [0x800010c4]:sd t6, 448(ra)<br>    |
|  87|[0x800034c0]<br>0xFFFFFFFFC5A8CB83|- rs2_w0_val == -16385<br> - rs1_w0_val == -129<br>                                                                                                                                            |[0x800010e8]:MADDR32 t6, t5, t4<br> [0x800010ec]:sd t6, 456(ra)<br>    |
|  88|[0x800034c8]<br>0xFFFFFFFFC5A8C8D8|- rs2_w0_val == -2049<br> - rs1_w1_val == 512<br>                                                                                                                                              |[0x80001110]:MADDR32 t6, t5, t4<br> [0x80001114]:sd t6, 464(ra)<br>    |
|  89|[0x800034d0]<br>0xFFFFFFFF92759471|- rs2_w0_val == -513<br>                                                                                                                                                                       |[0x80001144]:MADDR32 t6, t5, t4<br> [0x80001148]:sd t6, 472(ra)<br>    |
|  90|[0x800034d8]<br>0xFFFFFFFF9275932C|- rs2_w0_val == -65<br>                                                                                                                                                                        |[0x80001164]:MADDR32 t6, t5, t4<br> [0x80001168]:sd t6, 480(ra)<br>    |
|  91|[0x800034e0]<br>0xFFFFFFFF92B7934D|- rs2_w0_val == -33<br> - rs1_w0_val == -131073<br>                                                                                                                                            |[0x80001188]:MADDR32 t6, t5, t4<br> [0x8000118c]:sd t6, 488(ra)<br>    |
|  92|[0x800034e8]<br>0xFFFFFFFF94D7935E|- rs2_w0_val == -17<br> - rs1_w1_val == -257<br> - rs1_w0_val == -2097153<br>                                                                                                                  |[0x800011ac]:MADDR32 t6, t5, t4<br> [0x800011b0]:sd t6, 496(ra)<br>    |
|  93|[0x800034f0]<br>0xFFFFFFFFF4D79361|- rs2_w0_val == -3<br> - rs1_w1_val == 32768<br>                                                                                                                                               |[0x800011c8]:MADDR32 t6, t5, t4<br> [0x800011cc]:sd t6, 504(ra)<br>    |
|  94|[0x800034f8]<br>0xFFFFFFFFF4D79361|- rs2_w0_val == 1073741824<br>                                                                                                                                                                 |[0x800011ec]:MADDR32 t6, t5, t4<br> [0x800011f0]:sd t6, 512(ra)<br>    |
|  95|[0x80003500]<br>0xFFFFFFFFBCD79361|- rs2_w0_val == 67108864<br>                                                                                                                                                                   |[0x80001214]:MADDR32 t6, t5, t4<br> [0x80001218]:sd t6, 520(ra)<br>    |
|  96|[0x80003508]<br>0xFFFFFFFFBAD79361|- rs2_w0_val == 33554432<br>                                                                                                                                                                   |[0x80001230]:MADDR32 t6, t5, t4<br> [0x80001234]:sd t6, 528(ra)<br>    |
|  97|[0x80003510]<br>0xFFFFFFFFBAD79321|- rs2_w0_val == 64<br> - rs1_w1_val == -524289<br>                                                                                                                                             |[0x80001258]:MADDR32 t6, t5, t4<br> [0x8000125c]:sd t6, 536(ra)<br>    |
|  98|[0x80003518]<br>0x0000000065823DA1|- rs2_w0_val == 32<br>                                                                                                                                                                         |[0x80001280]:MADDR32 t6, t5, t4<br> [0x80001284]:sd t6, 544(ra)<br>    |
|  99|[0x80003520]<br>0xFFFFFFFFA5823DA1|- rs2_w0_val == 65536<br> - rs1_w0_val == 16384<br>                                                                                                                                            |[0x800012a0]:MADDR32 t6, t5, t4<br> [0x800012a4]:sd t6, 552(ra)<br>    |
| 100|[0x80003528]<br>0xFFFFFFFFA5023D9D|- rs2_w0_val == 4<br>                                                                                                                                                                          |[0x800012cc]:MADDR32 t6, t5, t4<br> [0x800012d0]:sd t6, 560(ra)<br>    |
| 101|[0x80003530]<br>0xFFFFFFFFA502359D|- rs1_w1_val == 2147483647<br>                                                                                                                                                                 |[0x800012fc]:MADDR32 t6, t5, t4<br> [0x80001300]:sd t6, 568(ra)<br>    |
| 102|[0x80003538]<br>0xFFFFFFFFA4E2359D|- rs1_w1_val == -1073741825<br>                                                                                                                                                                |[0x80001324]:MADDR32 t6, t5, t4<br> [0x80001328]:sd t6, 576(ra)<br>    |
| 103|[0x80003540]<br>0xFFFFFFFFA4E2359D|- rs1_w1_val == -536870913<br>                                                                                                                                                                 |[0x8000134c]:MADDR32 t6, t5, t4<br> [0x80001350]:sd t6, 584(ra)<br>    |
| 104|[0x80003548]<br>0xFFFFFFFFA4E2357F|- rs1_w1_val == -33554433<br>                                                                                                                                                                  |[0x80001370]:MADDR32 t6, t5, t4<br> [0x80001374]:sd t6, 592(ra)<br>    |
| 105|[0x80003550]<br>0xFFFFFFFFD0D6357F|- rs2_w0_val == 262144<br> - rs1_w1_val == -8388609<br>                                                                                                                                        |[0x8000139c]:MADDR32 t6, t5, t4<br> [0x800013a0]:sd t6, 600(ra)<br>    |
| 106|[0x80003558]<br>0xFFFFFFFFD0D6357F|- rs1_w1_val == -2097153<br>                                                                                                                                                                   |[0x800013b8]:MADDR32 t6, t5, t4<br> [0x800013bc]:sd t6, 608(ra)<br>    |
| 107|[0x80003560]<br>0x000000002680E02A|- rs1_w1_val == -262145<br>                                                                                                                                                                    |[0x800013e8]:MADDR32 t6, t5, t4<br> [0x800013ec]:sd t6, 616(ra)<br>    |
| 108|[0x80003568]<br>0x000000002680E04A|- rs1_w1_val == -131073<br>                                                                                                                                                                    |[0x80001410]:MADDR32 t6, t5, t4<br> [0x80001414]:sd t6, 624(ra)<br>    |
| 109|[0x80003570]<br>0x000000002680E04A|- rs1_w1_val == -8193<br>                                                                                                                                                                      |[0x8000143c]:MADDR32 t6, t5, t4<br> [0x80001440]:sd t6, 632(ra)<br>    |
| 110|[0x80003578]<br>0x000000002680E051|- rs1_w1_val == -4097<br>                                                                                                                                                                      |[0x80001460]:MADDR32 t6, t5, t4<br> [0x80001464]:sd t6, 640(ra)<br>    |
| 111|[0x80003580]<br>0x000000002680E05F|- rs1_w1_val == -1025<br>                                                                                                                                                                      |[0x80001480]:MADDR32 t6, t5, t4<br> [0x80001484]:sd t6, 648(ra)<br>    |
| 112|[0x80003588]<br>0x000000002683B46B|- rs1_w1_val == -513<br>                                                                                                                                                                       |[0x800014ac]:MADDR32 t6, t5, t4<br> [0x800014b0]:sd t6, 656(ra)<br>    |
| 113|[0x80003590]<br>0xFFFFFFFFC683B46B|- rs1_w1_val == -2147483648<br> - rs1_w0_val == 536870912<br>                                                                                                                                  |[0x800014d0]:MADDR32 t6, t5, t4<br> [0x800014d4]:sd t6, 664(ra)<br>    |
| 114|[0x80003598]<br>0xFFFFFFFFC603B46B|- rs2_w0_val == 8388608<br> - rs1_w1_val == 1073741824<br>                                                                                                                                     |[0x800014f8]:MADDR32 t6, t5, t4<br> [0x800014fc]:sd t6, 672(ra)<br>    |
| 115|[0x800035a0]<br>0x000000001B5909CB|- rs1_w1_val == 536870912<br>                                                                                                                                                                  |[0x8000152c]:MADDR32 t6, t5, t4<br> [0x80001530]:sd t6, 680(ra)<br>    |
| 116|[0x800035a8]<br>0x000000001B590983|- rs1_w1_val == 134217728<br>                                                                                                                                                                  |[0x80001550]:MADDR32 t6, t5, t4<br> [0x80001554]:sd t6, 688(ra)<br>    |
| 117|[0x800035b0]<br>0x000000001B590983|- rs1_w1_val == 1048576<br>                                                                                                                                                                    |[0x80001570]:MADDR32 t6, t5, t4<br> [0x80001574]:sd t6, 696(ra)<br>    |
| 118|[0x800035b8]<br>0xFFFFFFFF9B610984|- rs1_w1_val == 524288<br>                                                                                                                                                                     |[0x80001598]:MADDR32 t6, t5, t4<br> [0x8000159c]:sd t6, 704(ra)<br>    |
| 119|[0x800035c0]<br>0xFFFFFFFFA3630D85|- rs1_w1_val == 131072<br> - rs1_w0_val == -1025<br>                                                                                                                                           |[0x800015c4]:MADDR32 t6, t5, t4<br> [0x800015c8]:sd t6, 712(ra)<br>    |
| 120|[0x800035c8]<br>0xFFFFFFFFA4638F86|- rs1_w1_val == 65536<br>                                                                                                                                                                      |[0x800015f4]:MADDR32 t6, t5, t4<br> [0x800015f8]:sd t6, 720(ra)<br>    |
| 121|[0x800035d0]<br>0xFFFFFFFFA4668F86|- rs1_w1_val == 4096<br>                                                                                                                                                                       |[0x80001614]:MADDR32 t6, t5, t4<br> [0x80001618]:sd t6, 728(ra)<br>    |
| 122|[0x800035d8]<br>0xFFFFFFFFA467F98E|- rs1_w1_val == 128<br>                                                                                                                                                                        |[0x80001638]:MADDR32 t6, t5, t4<br> [0x8000163c]:sd t6, 736(ra)<br>    |
| 123|[0x800035e0]<br>0xFFFFFFFFF467F98E|- rs1_w1_val == 32<br> - rs1_w0_val == 134217728<br>                                                                                                                                           |[0x80001658]:MADDR32 t6, t5, t4<br> [0x8000165c]:sd t6, 744(ra)<br>    |
| 124|[0x800035e8]<br>0xFFFFFFFFF47FF991|- rs1_w1_val == 1<br>                                                                                                                                                                          |[0x8000167c]:MADDR32 t6, t5, t4<br> [0x80001680]:sd t6, 752(ra)<br>    |
| 125|[0x800035f0]<br>0xFFFFFFFF9F2AA439|- rs1_w1_val == -1<br> - rs1_w0_val == -1431655766<br>                                                                                                                                         |[0x80001698]:MADDR32 t6, t5, t4<br> [0x8000169c]:sd t6, 760(ra)<br>    |
| 126|[0x800035f8]<br>0xFFFFFFFFA72CA43A|- rs1_w0_val == -134217729<br>                                                                                                                                                                 |[0x800016c0]:MADDR32 t6, t5, t4<br> [0x800016c4]:sd t6, 768(ra)<br>    |
| 127|[0x80003600]<br>0xFFFFFFFFEB2CA43B|- rs1_w0_val == -67108865<br>                                                                                                                                                                  |[0x800016e8]:MADDR32 t6, t5, t4<br> [0x800016ec]:sd t6, 776(ra)<br>    |
| 128|[0x80003608]<br>0xFFFFFFFFAB2CA43B|- rs1_w0_val == -16777217<br>                                                                                                                                                                  |[0x8000170c]:MADDR32 t6, t5, t4<br> [0x80001710]:sd t6, 784(ra)<br>    |
| 129|[0x80003610]<br>0xFFFFFFFFAB2CA43B|- rs1_w0_val == -4194305<br>                                                                                                                                                                   |[0x80001730]:MADDR32 t6, t5, t4<br> [0x80001734]:sd t6, 792(ra)<br>    |
| 130|[0x80003620]<br>0x000000002A30C43C|- rs1_w0_val == -65537<br>                                                                                                                                                                     |[0x80001790]:MADDR32 t6, t5, t4<br> [0x80001794]:sd t6, 808(ra)<br>    |
| 131|[0x80003628]<br>0x000000002A2DC43C|- rs1_w0_val == 65536<br>                                                                                                                                                                      |[0x800017b4]:MADDR32 t6, t5, t4<br> [0x800017b8]:sd t6, 816(ra)<br>    |
| 132|[0x80003630]<br>0x000000003A2DD43D|- rs1_w0_val == -4097<br>                                                                                                                                                                      |[0x800017ec]:MADDR32 t6, t5, t4<br> [0x800017f0]:sd t6, 824(ra)<br>    |
| 133|[0x80003638]<br>0x000000007A2DD43D|- rs1_w0_val == -257<br>                                                                                                                                                                       |[0x80001810]:MADDR32 t6, t5, t4<br> [0x80001814]:sd t6, 832(ra)<br>    |
| 134|[0x80003640]<br>0xFFFFFFFFCF8329A8|- rs1_w0_val == -65<br>                                                                                                                                                                        |[0x80001848]:MADDR32 t6, t5, t4<br> [0x8000184c]:sd t6, 840(ra)<br>    |
| 135|[0x80003648]<br>0xFFFFFFFFCF83ADC9|- rs1_w0_val == -33<br>                                                                                                                                                                        |[0x80001870]:MADDR32 t6, t5, t4<br> [0x80001874]:sd t6, 848(ra)<br>    |
| 136|[0x80003650]<br>0xFFFFFFFFCF83AD30|- rs1_w0_val == -17<br>                                                                                                                                                                        |[0x80001894]:MADDR32 t6, t5, t4<br> [0x80001898]:sd t6, 856(ra)<br>    |
| 137|[0x80003658]<br>0xFFFFFFFFCF83D530|- rs2_w0_val == 2048<br>                                                                                                                                                                       |[0x800018c4]:MADDR32 t6, t5, t4<br> [0x800018c8]:sd t6, 864(ra)<br>    |
| 138|[0x80003660]<br>0xFFFFFFFFC383D530|- rs1_w0_val == -3<br>                                                                                                                                                                         |[0x800018e4]:MADDR32 t6, t5, t4<br> [0x800018e8]:sd t6, 872(ra)<br>    |
| 139|[0x80003668]<br>0xFFFFFFFFC543D530|- rs2_w0_val == 4194304<br>                                                                                                                                                                    |[0x80001904]:MADDR32 t6, t5, t4<br> [0x80001908]:sd t6, 880(ra)<br>    |
| 140|[0x80003670]<br>0xFFFFFFFFC543D530|- rs2_w0_val == 2097152<br>                                                                                                                                                                    |[0x80001924]:MADDR32 t6, t5, t4<br> [0x80001928]:sd t6, 888(ra)<br>    |
| 141|[0x80003678]<br>0xFFFFFFFFC543D530|- rs2_w0_val == 1048576<br>                                                                                                                                                                    |[0x80001940]:MADDR32 t6, t5, t4<br> [0x80001944]:sd t6, 896(ra)<br>    |
| 142|[0x80003680]<br>0xFFFFFFFFC543D530|- rs1_w0_val == 33554432<br>                                                                                                                                                                   |[0x80001960]:MADDR32 t6, t5, t4<br> [0x80001964]:sd t6, 904(ra)<br>    |
| 143|[0x80003688]<br>0xFFFFFFFFC643D530|- rs2_w0_val == 131072<br>                                                                                                                                                                     |[0x8000198c]:MADDR32 t6, t5, t4<br> [0x80001990]:sd t6, 912(ra)<br>    |
| 144|[0x80003690]<br>0xFFFFFFFFC643D530|- rs1_w0_val == 8388608<br>                                                                                                                                                                    |[0x800019ac]:MADDR32 t6, t5, t4<br> [0x800019b0]:sd t6, 920(ra)<br>    |
| 145|[0x80003698]<br>0xFFFFFFFFC603D530|- rs1_w0_val == 4194304<br>                                                                                                                                                                    |[0x800019d8]:MADDR32 t6, t5, t4<br> [0x800019dc]:sd t6, 928(ra)<br>    |
| 146|[0x800036a0]<br>0xFFFFFFFFC604B530|- rs2_w0_val == 8192<br>                                                                                                                                                                       |[0x800019f8]:MADDR32 t6, t5, t4<br> [0x800019fc]:sd t6, 936(ra)<br>    |
| 147|[0x800036a8]<br>0x000000005FA0B530|- rs1_w0_val == 262144<br>                                                                                                                                                                     |[0x80001a24]:MADDR32 t6, t5, t4<br> [0x80001a28]:sd t6, 944(ra)<br>    |
| 148|[0x800036b0]<br>0x000000005CCCA530|- rs2_w0_val == 1024<br>                                                                                                                                                                       |[0x80001a48]:MADDR32 t6, t5, t4<br> [0x80001a4c]:sd t6, 952(ra)<br>    |
| 149|[0x800036b8]<br>0x0000000060CCA530|- rs2_w0_val == 512<br>                                                                                                                                                                        |[0x80001a68]:MADDR32 t6, t5, t4<br> [0x80001a6c]:sd t6, 960(ra)<br>    |
| 150|[0x800036c0]<br>0x0000000060CCA4B0|- rs2_w0_val == 128<br>                                                                                                                                                                        |[0x80001a8c]:MADDR32 t6, t5, t4<br> [0x80001a90]:sd t6, 968(ra)<br>    |
| 151|[0x800036d0]<br>0x00000000604CBBB0|- rs1_w1_val == 4194304<br> - rs1_w0_val == 1024<br>                                                                                                                                           |[0x80001adc]:MADDR32 t6, t5, t4<br> [0x80001ae0]:sd t6, 984(ra)<br>    |
| 152|[0x800036d8]<br>0x00000000604CBB85|- rs2_w1_val == -9<br> - rs2_w0_val == -129<br>                                                                                                                                                |[0x80001b00]:MADDR32 t6, t5, t4<br> [0x80001b04]:sd t6, 992(ra)<br>    |
