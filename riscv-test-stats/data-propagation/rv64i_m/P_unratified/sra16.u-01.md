
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ea0')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '82 dwords')]      |
| COV_LABELS                | sra16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sra16.u-01.S    |
| Total Number of coverpoints| 262     |
| Total Coverpoints Hit     | 256      |
| Total Signature Updates   | 81      |
| STAT1                     | 79      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e4c]:SRA16_U t6, t5, t4
      [0x80000e50]:sd t6, 408(ra)
 -- Signature Address: 0x80002480 Data: 0xFFFE000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == -8193
      - rs1_h2_val == 32
      - rs1_h0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e94]:SRA16_U t6, t5, t4
      [0x80000e98]:sd t6, 424(ra)
 -- Signature Address: 0x80002490 Data: 0x0000004000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 8
      - rs1_h3_val == 32
      - rs1_h1_val == 8
      - rs1_h0_val == -5






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

|s.no|            signature             |                                                                                      coverpoints                                                                                       |                                 code                                  |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : sra16.u<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs2_val == 5<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>         |[0x800003b4]:SRA16_U a7, t0, t0<br> [0x800003b8]:sd a7, 0(fp)<br>      |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br> - rs2_val == 7<br>                                                                                                   |[0x800003d8]:SRA16_U gp, gp, gp<br> [0x800003dc]:sd gp, 8(fp)<br>      |
|   3|[0x80002220]<br>0xFFF80008000B0000|- rs1 : x30<br> - rs2 : x4<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 11<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 21845<br>                     |[0x80000404]:SRA16_U s3, t5, tp<br> [0x80000408]:sd s3, 16(fp)<br>     |
|   4|[0x80002228]<br>0x0001000000000003|- rs1 : x7<br> - rs2 : x1<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs2_val == 13<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -3<br> - rs1_h1_val == 64<br> - rs1_h0_val == 21845<br> |[0x80000428]:SRA16_U t2, t2, ra<br> [0x8000042c]:sd t2, 24(fp)<br>     |
|   5|[0x80002230]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs2_val == 14<br> - rs1_h3_val == 4096<br> - rs1_h2_val == -17<br> - rs1_h1_val == 2048<br>                       |[0x80000454]:SRA16_U sp, s6, sp<br> [0x80000458]:sd sp, 32(fp)<br>     |
|   6|[0x80002238]<br>0x000000000000FF80|- rs1 : x17<br> - rs2 : x21<br> - rd : x18<br> - rs2_val == 8<br> - rs1_h2_val == -2<br> - rs1_h1_val == -3<br> - rs1_h0_val == -32768<br>                                              |[0x80000474]:SRA16_U s2, a7, s5<br> [0x80000478]:sd s2, 40(fp)<br>     |
|   7|[0x80002240]<br>0x0004FF800000FE00|- rs1 : x20<br> - rs2 : x18<br> - rd : x9<br> - rs2_val == 4<br> - rs1_h3_val == 64<br> - rs1_h2_val == -2049<br> - rs1_h0_val == -8193<br>                                             |[0x80000498]:SRA16_U s1, s4, s2<br> [0x8000049c]:sd s1, 48(fp)<br>     |
|   8|[0x80002248]<br>0x0002FFFF10000040|- rs1 : x16<br> - rs2 : x27<br> - rd : x12<br> - rs2_val == 2<br> - rs1_h3_val == 8<br> - rs1_h0_val == 256<br>                                                                         |[0x800004bc]:SRA16_U a2, a6, s11<br> [0x800004c0]:sd a2, 56(fp)<br>    |
|   9|[0x80002250]<br>0xFE002AABFF80FFC0|- rs1 : x23<br> - rs2 : x6<br> - rd : x15<br> - rs2_val == 1<br> - rs1_h3_val == -1025<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -257<br> - rs1_h0_val == -129<br>                  |[0x800004e0]:SRA16_U a5, s7, t1<br> [0x800004e4]:sd a5, 64(fp)<br>     |
|  10|[0x80002258]<br>0xFFFB000000000000|- rs1 : x25<br> - rs2 : x28<br> - rd : x30<br> - rs1_h3_val == -21846<br> - rs1_h2_val == 8<br> - rs1_h1_val == -129<br> - rs1_h0_val == -65<br>                                        |[0x80000504]:SRA16_U t5, s9, t3<br> [0x80000508]:sd t5, 72(fp)<br>     |
|  11|[0x80002260]<br>0x002B000000000004|- rs1 : x10<br> - rs2 : x11<br> - rd : x26<br> - rs1_h3_val == 21845<br> - rs1_h1_val == 4<br> - rs1_h0_val == 2048<br>                                                                 |[0x80000528]:SRA16_U s10, a0, a1<br> [0x8000052c]:sd s10, 80(fp)<br>   |
|  12|[0x80002268]<br>0x0800FE0000000000|- rs1 : x31<br> - rs2 : x9<br> - rd : x16<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -8193<br> - rs1_h0_val == -3<br>                                                                |[0x8000054c]:SRA16_U a6, t6, s1<br> [0x80000550]:sd a6, 88(fp)<br>     |
|  13|[0x80002270]<br>0xF8000000F800FFFF|- rs1 : x29<br> - rs2 : x23<br> - rd : x28<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -1<br>                                                                                        |[0x80000574]:SRA16_U t3, t4, s7<br> [0x80000578]:sd t3, 96(fp)<br>     |
|  14|[0x80002278]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x24<br> - rd : x0<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 32<br>                                                                                          |[0x800005a0]:SRA16_U zero, s3, s8<br> [0x800005a4]:sd zero, 0(gp)<br>  |
|  15|[0x80002280]<br>0xFE00FFFFFC00FFFF|- rs1 : x2<br> - rs2 : x13<br> - rd : x23<br> - rs1_h3_val == -4097<br> - rs1_h1_val == -8193<br>                                                                                       |[0x800005c0]:SRA16_U s7, sp, a3<br> [0x800005c4]:sd s7, 8(gp)<br>      |
|  16|[0x80002288]<br>0xFE0000080020FFF0|- rs1 : x8<br> - rs2 : x30<br> - rd : x31<br> - rs1_h3_val == -2049<br> - rs1_h1_val == 128<br>                                                                                         |[0x800005e4]:SRA16_U t6, fp, t5<br> [0x800005e8]:sd t6, 16(gp)<br>     |
|  17|[0x80002290]<br>0xFFFE000000080000|- rs1 : x9<br> - rs2 : x26<br> - rd : x20<br> - rs1_h3_val == -513<br> - rs1_h2_val == 4<br> - rs1_h0_val == -9<br>                                                                     |[0x80000608]:SRA16_U s4, s1, s10<br> [0x8000060c]:sd s4, 24(gp)<br>    |
|  18|[0x80002298]<br>0xFEFFFDFFFEFF0009|- rs1 : x28<br> - rs2 : x15<br> - rd : x11<br> - rs1_h3_val == -257<br> - rs1_h2_val == -513<br>                                                                                        |[0x8000062c]:SRA16_U a1, t3, a5<br> [0x80000630]:sd a1, 32(gp)<br>     |
|  19|[0x800022a0]<br>0xFFE00400FFFFFFFE|- rs1 : x1<br> - rs2 : x14<br> - rd : x5<br> - rs1_h3_val == -129<br> - rs1_h2_val == 4096<br>                                                                                          |[0x80000650]:SRA16_U t0, ra, a4<br> [0x80000654]:sd t0, 40(gp)<br>     |
|  20|[0x800022a8]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x31<br> - rd : x25<br> - rs1_h3_val == -65<br>                                                                                                                  |[0x80000670]:SRA16_U s9, s8, t6<br> [0x80000674]:sd s9, 48(gp)<br>     |
|  21|[0x800022b0]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x17<br> - rd : x1<br> - rs1_h3_val == -33<br> - rs1_h2_val == -65<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -17<br>                                         |[0x8000068c]:SRA16_U ra, a1, a7<br> [0x80000690]:sd ra, 56(gp)<br>     |
|  22|[0x800022b8]<br>0x000000000000FFF8|- rs1 : x14<br> - rs2 : x19<br> - rd : x10<br> - rs1_h3_val == -17<br> - rs1_h2_val == 1<br> - rs1_h1_val == -513<br>                                                                   |[0x800006ac]:SRA16_U a0, a4, s3<br> [0x800006b0]:sd a0, 64(gp)<br>     |
|  23|[0x800022c0]<br>0x0000FE0000000000|- rs1 : x13<br> - rs2 : x10<br> - rd : x14<br> - rs1_h3_val == -9<br> - rs1_h2_val == -16385<br> - rs1_h1_val == -9<br>                                                                 |[0x800006cc]:SRA16_U a4, a3, a0<br> [0x800006d0]:sd a4, 72(gp)<br>     |
|  24|[0x800022c8]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x7<br> - rd : x22<br> - rs1_h3_val == -3<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 1<br>                                                                     |[0x800006ec]:SRA16_U s6, s10, t2<br> [0x800006f0]:sd s6, 80(gp)<br>    |
|  25|[0x800022d0]<br>0x000000000000FFFF|- rs1 : x6<br> - rs2 : x12<br> - rd : x21<br> - rs1_h3_val == -2<br> - rs1_h2_val == 64<br> - rs1_h0_val == -513<br> - rs2_val == 10<br>                                                |[0x8000070c]:SRA16_U s5, t1, a2<br> [0x80000710]:sd s5, 88(gp)<br>     |
|  26|[0x800022d8]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x25<br> - rd : x8<br> - rs1_h0_val == 0<br>                                                                                                                      |[0x80000730]:SRA16_U fp, zero, s9<br> [0x80000734]:sd fp, 96(gp)<br>   |
|  27|[0x800022e0]<br>0x0100000000800000|- rs1 : x27<br> - rs2 : x22<br> - rd : x29<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 2<br> - rs1_h1_val == 8192<br>                                                                 |[0x8000074c]:SRA16_U t4, s11, s6<br> [0x80000750]:sd t4, 104(gp)<br>   |
|  28|[0x800022e8]<br>0x0020000000000020|- rs1 : x4<br> - rs2 : x29<br> - rd : x13<br> - rs1_h3_val == 2048<br>                                                                                                                  |[0x80000778]:SRA16_U a3, tp, t4<br> [0x8000077c]:sd a3, 0(ra)<br>      |
|  29|[0x800022f0]<br>0x0100FF0000020100|- rs1 : x18<br> - rs2 : x20<br> - rd : x4<br> - rs1_h3_val == 1024<br> - rs1_h2_val == -1025<br> - rs1_h1_val == 8<br> - rs1_h0_val == 1024<br>                                         |[0x8000079c]:SRA16_U tp, s2, s4<br> [0x800007a0]:sd tp, 8(ra)<br>      |
|  30|[0x800022f8]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x8<br> - rd : x6<br> - rs1_h3_val == 512<br>                                                                                                                    |[0x800007c0]:SRA16_U t1, s5, fp<br> [0x800007c4]:sd t1, 16(ra)<br>     |
|  31|[0x80002300]<br>0x0020000000000000|- rs1 : x15<br> - rs2 : x16<br> - rd : x24<br> - rs1_h0_val == -33<br>                                                                                                                  |[0x800007e4]:SRA16_U s8, a5, a6<br> [0x800007e8]:sd s8, 24(ra)<br>     |
|  32|[0x80002308]<br>0x00203FFF0008FFFB|- rs1 : x12<br> - rs2 : x0<br> - rd : x27<br> - rs1_h3_val == 32<br> - rs1_h0_val == -5<br>                                                                                             |[0x80000808]:SRA16_U s11, a2, zero<br> [0x8000080c]:sd s11, 32(ra)<br> |
|  33|[0x80002310]<br>0x0001000100080000|- rs1_h0_val == -2<br>                                                                                                                                                                  |[0x8000082c]:SRA16_U t6, t5, t4<br> [0x80000830]:sd t6, 40(ra)<br>     |
|  34|[0x80002318]<br>0x0000000000000004|- rs1_h0_val == 16384<br>                                                                                                                                                               |[0x8000084c]:SRA16_U t6, t5, t4<br> [0x80000850]:sd t6, 48(ra)<br>     |
|  35|[0x80002320]<br>0x00040000FFFF0002|- rs1_h0_val == 8192<br>                                                                                                                                                                |[0x80000874]:SRA16_U t6, t5, t4<br> [0x80000878]:sd t6, 56(ra)<br>     |
|  36|[0x80002328]<br>0x0000000000000020|- rs1_h3_val == 16<br> - rs1_h0_val == 4096<br>                                                                                                                                         |[0x80000894]:SRA16_U t6, t5, t4<br> [0x80000898]:sd t6, 64(ra)<br>     |
|  37|[0x80002330]<br>0x4000004000010200|- rs1_h0_val == 512<br>                                                                                                                                                                 |[0x800008b8]:SRA16_U t6, t5, t4<br> [0x800008bc]:sd t6, 72(ra)<br>     |
|  38|[0x80002338]<br>0xFDFFFFF8FFF90080|- rs1_h0_val == 128<br>                                                                                                                                                                 |[0x800008dc]:SRA16_U t6, t5, t4<br> [0x800008e0]:sd t6, 80(ra)<br>     |
|  39|[0x80002340]<br>0x0000000800080000|- rs1_h1_val == 4096<br> - rs1_h0_val == 64<br>                                                                                                                                         |[0x800008f8]:SRA16_U t6, t5, t4<br> [0x800008fc]:sd t6, 88(ra)<br>     |
|  40|[0x80002348]<br>0x0003002000800010|- rs1_h1_val == 256<br> - rs1_h0_val == 32<br>                                                                                                                                          |[0x80000914]:SRA16_U t6, t5, t4<br> [0x80000918]:sd t6, 96(ra)<br>     |
|  41|[0x80002350]<br>0x0000000000000000|- rs1_h0_val == 16<br>                                                                                                                                                                  |[0x80000930]:SRA16_U t6, t5, t4<br> [0x80000934]:sd t6, 104(ra)<br>    |
|  42|[0x80002358]<br>0xE000FF80FFFF0002|- rs1_h3_val == -32768<br> - rs1_h0_val == 8<br>                                                                                                                                        |[0x80000954]:SRA16_U t6, t5, t4<br> [0x80000958]:sd t6, 112(ra)<br>    |
|  43|[0x80002360]<br>0x00004000FFF70004|- rs1_h0_val == 4<br>                                                                                                                                                                   |[0x80000970]:SRA16_U t6, t5, t4<br> [0x80000974]:sd t6, 120(ra)<br>    |
|  44|[0x80002368]<br>0x00010000FFF00000|- rs1_h3_val == 256<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 2<br>                                                                                                                 |[0x80000994]:SRA16_U t6, t5, t4<br> [0x80000998]:sd t6, 128(ra)<br>    |
|  45|[0x80002370]<br>0x0000FFFF00000000|- rs1_h0_val == -1<br>                                                                                                                                                                  |[0x800009b4]:SRA16_U t6, t5, t4<br> [0x800009b8]:sd t6, 136(ra)<br>    |
|  46|[0x80002378]<br>0x00080020FFFF0020|- rs1_h3_val == 128<br> - rs1_h2_val == 512<br> - rs1_h1_val == -17<br>                                                                                                                 |[0x800009d8]:SRA16_U t6, t5, t4<br> [0x800009dc]:sd t6, 144(ra)<br>    |
|  47|[0x80002380]<br>0x0000000000000000|- rs1_h3_val == 4<br>                                                                                                                                                                   |[0x800009f4]:SRA16_U t6, t5, t4<br> [0x800009f8]:sd t6, 152(ra)<br>    |
|  48|[0x80002388]<br>0x0000000000000002|- rs1_h3_val == 2<br> - rs1_h0_val == 32767<br>                                                                                                                                         |[0x80000a18]:SRA16_U t6, t5, t4<br> [0x80000a1c]:sd t6, 160(ra)<br>    |
|  49|[0x80002390]<br>0x00010000FFDF0002|- rs1_h3_val == 1<br> - rs1_h1_val == -33<br>                                                                                                                                           |[0x80000a3c]:SRA16_U t6, t5, t4<br> [0x80000a40]:sd t6, 168(ra)<br>    |
|  50|[0x80002398]<br>0x0002FFFD0000FFFC|- rs1_h2_val == -21846<br>                                                                                                                                                              |[0x80000a5c]:SRA16_U t6, t5, t4<br> [0x80000a60]:sd t6, 176(ra)<br>    |
|  51|[0x800023a0]<br>0x00000010FFF80000|- rs1_h2_val == 32767<br>                                                                                                                                                               |[0x80000a80]:SRA16_U t6, t5, t4<br> [0x80000a84]:sd t6, 184(ra)<br>    |
|  52|[0x800023a8]<br>0x0000000000000000|- rs1_h2_val == 2048<br>                                                                                                                                                                |[0x80000a9c]:SRA16_U t6, t5, t4<br> [0x80000aa0]:sd t6, 192(ra)<br>    |
|  53|[0x800023b0]<br>0x0000000000000000|- rs1_h2_val == 1024<br> - rs1_h0_val == -1025<br>                                                                                                                                      |[0x80000ac0]:SRA16_U t6, t5, t4<br> [0x80000ac4]:sd t6, 200(ra)<br>    |
|  54|[0x800023b8]<br>0x0000000000000000|- rs1_h2_val == 256<br>                                                                                                                                                                 |[0x80000ae4]:SRA16_U t6, t5, t4<br> [0x80000ae8]:sd t6, 208(ra)<br>    |
|  55|[0x800023c0]<br>0x000000000000FFFF|- rs1_h2_val == 128<br> - rs1_h0_val == -16385<br>                                                                                                                                      |[0x80000b08]:SRA16_U t6, t5, t4<br> [0x80000b0c]:sd t6, 216(ra)<br>    |
|  56|[0x800023c8]<br>0xFFFF00000000FFFF|- rs1_h2_val == 16<br>                                                                                                                                                                  |[0x80000b30]:SRA16_U t6, t5, t4<br> [0x80000b34]:sd t6, 224(ra)<br>    |
|  57|[0x800023d0]<br>0x0001FFE0F555F555|- rs1_h2_val == -257<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -21846<br>                                                                                                          |[0x80000b54]:SRA16_U t6, t5, t4<br> [0x80000b58]:sd t6, 232(ra)<br>    |
|  58|[0x800023d8]<br>0x000000000008FFFE|- rs1_h1_val == 32767<br>                                                                                                                                                               |[0x80000b78]:SRA16_U t6, t5, t4<br> [0x80000b7c]:sd t6, 240(ra)<br>    |
|  59|[0x800023e0]<br>0x00000000FFF00000|- rs1_h1_val == -16385<br>                                                                                                                                                              |[0x80000b9c]:SRA16_U t6, t5, t4<br> [0x80000ba0]:sd t6, 248(ra)<br>    |
|  60|[0x800023e8]<br>0x00000000FFFC0004|- rs1_h1_val == -1025<br>                                                                                                                                                               |[0x80000bc0]:SRA16_U t6, t5, t4<br> [0x80000bc4]:sd t6, 256(ra)<br>    |
|  61|[0x800023f0]<br>0x00040010FFFF00AB|- rs1_h1_val == -65<br>                                                                                                                                                                 |[0x80000be4]:SRA16_U t6, t5, t4<br> [0x80000be8]:sd t6, 264(ra)<br>    |
|  62|[0x800023f8]<br>0x0000000000000000|- rs1_h1_val == -5<br>                                                                                                                                                                  |[0x80000c08]:SRA16_U t6, t5, t4<br> [0x80000c0c]:sd t6, 272(ra)<br>    |
|  63|[0x80002400]<br>0x0020FFF800000000|- rs1_h2_val == -4097<br> - rs1_h1_val == -2<br>                                                                                                                                        |[0x80000c2c]:SRA16_U t6, t5, t4<br> [0x80000c30]:sd t6, 280(ra)<br>    |
|  64|[0x80002408]<br>0x0000FFFFFFFE0000|- rs1_h1_val == -32768<br>                                                                                                                                                              |[0x80000c50]:SRA16_U t6, t5, t4<br> [0x80000c54]:sd t6, 288(ra)<br>    |
|  65|[0x80002410]<br>0x0001000540000002|- rs1_h1_val == 16384<br>                                                                                                                                                               |[0x80000c6c]:SRA16_U t6, t5, t4<br> [0x80000c70]:sd t6, 296(ra)<br>    |
|  66|[0x80002418]<br>0x0000000000000001|- rs1_h1_val == 1024<br>                                                                                                                                                                |[0x80000c90]:SRA16_U t6, t5, t4<br> [0x80000c94]:sd t6, 304(ra)<br>    |
|  67|[0x80002420]<br>0x0002FFFC0080FFFE|- rs1_h1_val == 512<br>                                                                                                                                                                 |[0x80000cb4]:SRA16_U t6, t5, t4<br> [0x80000cb8]:sd t6, 312(ra)<br>    |
|  68|[0x80002428]<br>0xBFFFFFF6FFFCF7FF|- rs1_h0_val == -2049<br>                                                                                                                                                               |[0x80000cd8]:SRA16_U t6, t5, t4<br> [0x80000cdc]:sd t6, 320(ra)<br>    |
|  69|[0x80002430]<br>0xFFE0FFFF00000020|- rs1_h1_val == 32<br>                                                                                                                                                                  |[0x80000cf8]:SRA16_U t6, t5, t4<br> [0x80000cfc]:sd t6, 328(ra)<br>    |
|  70|[0x80002438]<br>0x0000000000000000|- rs1_h2_val == -33<br> - rs1_h1_val == 16<br>                                                                                                                                          |[0x80000d1c]:SRA16_U t6, t5, t4<br> [0x80000d20]:sd t6, 336(ra)<br>    |
|  71|[0x80002440]<br>0x2000F00000010001|- rs1_h1_val == 2<br>                                                                                                                                                                   |[0x80000d40]:SRA16_U t6, t5, t4<br> [0x80000d44]:sd t6, 344(ra)<br>    |
|  72|[0x80002448]<br>0x0000FFF000000020|- rs1_h1_val == -1<br>                                                                                                                                                                  |[0x80000d60]:SRA16_U t6, t5, t4<br> [0x80000d64]:sd t6, 352(ra)<br>    |
|  73|[0x80002450]<br>0xFF80FFC0FFFBFFFC|- rs1_h2_val == -129<br>                                                                                                                                                                |[0x80000d84]:SRA16_U t6, t5, t4<br> [0x80000d88]:sd t6, 360(ra)<br>    |
|  74|[0x80002458]<br>0x000000000000FFFE|- rs1_h3_val == -5<br> - rs1_h0_val == -4097<br>                                                                                                                                        |[0x80000da8]:SRA16_U t6, t5, t4<br> [0x80000dac]:sd t6, 368(ra)<br>    |
|  75|[0x80002460]<br>0x000200000000FFFF|- rs1_h2_val == -9<br>                                                                                                                                                                  |[0x80000dcc]:SRA16_U t6, t5, t4<br> [0x80000dd0]:sd t6, 376(ra)<br>    |
|  76|[0x80002468]<br>0x0000000002000000|- rs1_h2_val == -5<br>                                                                                                                                                                  |[0x80000de8]:SRA16_U t6, t5, t4<br> [0x80000dec]:sd t6, 384(ra)<br>    |
|  77|[0x80002470]<br>0x0000F000FFFCFF80|- rs1_h3_val == -1<br> - rs1_h0_val == -257<br>                                                                                                                                         |[0x80000e04]:SRA16_U t6, t5, t4<br> [0x80000e08]:sd t6, 392(ra)<br>    |
|  78|[0x80002478]<br>0x0000FFFC00000000|- rs1_h2_val == -32768<br>                                                                                                                                                              |[0x80000e28]:SRA16_U t6, t5, t4<br> [0x80000e2c]:sd t6, 400(ra)<br>    |
|  79|[0x80002488]<br>0x8000FFFD00060001|- rs1_h0_val == 1<br>                                                                                                                                                                   |[0x80000e70]:SRA16_U t6, t5, t4<br> [0x80000e74]:sd t6, 416(ra)<br>    |
