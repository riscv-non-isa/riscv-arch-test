
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001740')]      |
| SIG_REGION                | [('0x80003210', '0x80003650', '136 dwords')]      |
| COV_LABELS                | msubr32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/msubr32-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 135      |
| STAT1                     | 133      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001710]:MSUBR32 t6, t5, t4
      [0x80001714]:sd t6, 912(gp)
 -- Signature Address: 0x80003638 Data: 0x000000004D875902
 -- Redundant Coverpoints hit by the op
      - opcode : msubr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -1431655766
      - rs2_w0_val == -134217729
      - rs1_w0_val == 4194304




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001738]:MSUBR32 t6, t5, t4
      [0x8000173c]:sd t6, 920(gp)
 -- Signature Address: 0x80003640 Data: 0x000000004D97D902
 -- Redundant Coverpoints hit by the op
      - opcode : msubr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -65
      - rs2_w0_val == -33
      - rs1_w1_val == -16777217
      - rs1_w0_val == 32768






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

|s.no|            signature             |                                                                                            coverpoints                                                                                             |                                 code                                  |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x000000006DF56FF7|- opcode : msubr32<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                  |[0x800003b8]:MSUBR32 s6, zero, zero<br> [0x800003bc]:sd s6, 0(s1)<br>  |
|   2|[0x80003218]<br>0xFFFFFFFFE7FFFFFE|- rs1 : x11<br> - rs2 : x11<br> - rd : x11<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -134217729<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -134217729<br> |[0x800003e4]:MSUBR32 a1, a1, a1<br> [0x800003e8]:sd a1, 8(s1)<br>      |
|   3|[0x80003220]<br>0xFFFFFFFFE76DF56B|- rs1 : x25<br> - rs2 : x3<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 4194304<br>                |[0x80000414]:MSUBR32 t5, s9, gp<br> [0x80000418]:sd t5, 16(s1)<br>     |
|   4|[0x80003228]<br>0x0000000008000008|- rs1 : x2<br> - rs2 : x29<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -16777217<br>                                       |[0x80000440]:MSUBR32 sp, sp, t4<br> [0x80000444]:sd sp, 24(s1)<br>     |
|   5|[0x80003230]<br>0x0000000000800000|- rs1 : x26<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == -4194305<br>                                      |[0x80000468]:MSUBR32 s11, s10, s11<br> [0x8000046c]:sd s11, 32(s1)<br> |
|   6|[0x80003238]<br>0xFFFFFFFFD55558EA|- rs1 : x6<br> - rs2 : x23<br> - rd : x5<br> - rs2_w1_val == -536870913<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -1431655766<br>                                                           |[0x8000049c]:MSUBR32 t0, t1, s7<br> [0x800004a0]:sd t0, 40(s1)<br>     |
|   7|[0x80003240]<br>0xFFFFFFFFBEB1FEED|- rs1 : x15<br> - rs2 : x28<br> - rd : x17<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 262144<br> - rs1_w1_val == -129<br> - rs1_w0_val == -65537<br>                                        |[0x800004c8]:MSUBR32 a7, a5, t3<br> [0x800004cc]:sd a7, 48(s1)<br>     |
|   8|[0x80003248]<br>0x000000002AAAAAAA|- rs1 : x4<br> - rs2 : x5<br> - rd : x6<br> - rs2_w1_val == -134217729<br> - rs1_w1_val == 1024<br>                                                                                                 |[0x800004ec]:MSUBR32 t1, tp, t0<br> [0x800004f0]:sd t1, 56(s1)<br>     |
|   9|[0x80003250]<br>0xFFFFFFFFF7B6F9B6|- rs1 : x28<br> - rs2 : x26<br> - rd : x31<br> - rs2_w1_val == -67108865<br> - rs1_w1_val == -33<br> - rs1_w0_val == -257<br>                                                                       |[0x80000514]:MSUBR32 t6, t3, s10<br> [0x80000518]:sd t6, 64(s1)<br>    |
|  10|[0x80003258]<br>0xFFFFFFFFF56FF790|- rs1 : x3<br> - rs2 : x4<br> - rd : x14<br> - rs2_w1_val == -33554433<br> - rs1_w1_val == 33554432<br>                                                                                             |[0x8000053c]:MSUBR32 a4, gp, tp<br> [0x80000540]:sd a4, 72(s1)<br>     |
|  11|[0x80003260]<br>0x0000000000000005|- rs1 : x18<br> - rs2 : x1<br> - rd : x4<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 512<br>                                                                  |[0x8000055c]:MSUBR32 tp, s2, ra<br> [0x80000560]:sd tp, 80(s1)<br>     |
|  12|[0x80003268]<br>0x000000007D5C7DDB|- rs1 : x24<br> - rs2 : x22<br> - rd : x16<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 32768<br> - rs1_w1_val == -3<br> - rs1_w0_val == -268435457<br>                                         |[0x80000584]:MSUBR32 a6, s8, s6<br> [0x80000588]:sd a6, 88(s1)<br>     |
|  13|[0x80003270]<br>0x000000007FFFFFE6|- rs1 : x30<br> - rs2 : x19<br> - rd : x23<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -33<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 2147483647<br>                                       |[0x800005a8]:MSUBR32 s7, t5, s3<br> [0x800005ac]:sd s7, 96(s1)<br>     |
|  14|[0x80003278]<br>0x0000000000017FFF|- rs1 : x27<br> - rs2 : x12<br> - rd : x25<br> - rs2_w1_val == -2097153<br> - rs1_w1_val == 65536<br> - rs1_w0_val == -32769<br>                                                                    |[0x800005d8]:MSUBR32 s9, s11, a2<br> [0x800005dc]:sd s9, 104(s1)<br>   |
|  15|[0x80003280]<br>0x000000007C000001|- rs1 : x10<br> - rs2 : x8<br> - rd : x26<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 2<br> - rs1_w0_val == -1073741825<br>                                                                    |[0x80000604]:MSUBR32 s10, a0, fp<br> [0x80000608]:sd s10, 112(s1)<br>  |
|  16|[0x80003288]<br>0xFFFFFFFF80000007|- rs1 : x1<br> - rs2 : x17<br> - rd : x18<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 1<br>                                                                                                     |[0x8000062c]:MSUBR32 s2, ra, a7<br> [0x80000630]:sd s2, 120(s1)<br>    |
|  17|[0x80003290]<br>0xFFFFFFFFFFFFFFE1|- rs1 : x23<br> - rs2 : x25<br> - rd : x3<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -3<br> - rs1_w1_val == -32769<br>                                                                         |[0x8000064c]:MSUBR32 gp, s7, s9<br> [0x80000650]:sd gp, 128(s1)<br>    |
|  18|[0x80003298]<br>0xFFFFFFFFFFFFFFDB|- rs1 : x5<br> - rs2 : x18<br> - rd : x19<br> - rs2_w1_val == -131073<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == 262144<br>                                                                |[0x80000674]:MSUBR32 s3, t0, s2<br> [0x80000678]:sd s3, 136(s1)<br>    |
|  19|[0x800032a0]<br>0xFFFFFFFFFFFFFEFF|- rs1 : x7<br> - rs2 : x6<br> - rd : x28<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 4194304<br>                                       |[0x80000694]:MSUBR32 t3, t2, t1<br> [0x80000698]:sd t3, 144(s1)<br>    |
|  20|[0x800032a8]<br>0xFFFFFFFFFFF6FFFB|- rs1 : x21<br> - rs2 : x14<br> - rd : x15<br> - rs2_w1_val == -32769<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -131073<br>                                                                |[0x800006c8]:MSUBR32 a5, s5, a4<br> [0x800006cc]:sd a5, 0(gp)<br>      |
|  21|[0x800032b0]<br>0x0000000000000009|- rs1 : x16<br> - rs2 : x9<br> - rd : x29<br> - rs2_w1_val == -16385<br> - rs1_w0_val == 128<br>                                                                                                    |[0x800006e0]:MSUBR32 t4, a6, s1<br> [0x800006e4]:sd t4, 8(gp)<br>      |
|  22|[0x800032b8]<br>0xFFFFFFFFBFFFF3FC|- rs1 : x13<br> - rs2 : x21<br> - rd : x10<br> - rs2_w1_val == -8193<br> - rs2_w0_val == -1025<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == -3<br>                                           |[0x80000704]:MSUBR32 a0, a3, s5<br> [0x80000708]:sd a0, 16(gp)<br>     |
|  23|[0x800032c0]<br>0xFFFFFFFFEF7FE7FE|- rs1 : x31<br> - rs2 : x7<br> - rd : x24<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -4097<br> - rs1_w1_val == 4<br> - rs1_w0_val == -2049<br>                                                   |[0x80000730]:MSUBR32 s8, t6, t2<br> [0x80000734]:sd s8, 24(gp)<br>     |
|  24|[0x800032c8]<br>0x0000000001FFEFFF|- rs1 : x17<br> - rs2 : x24<br> - rd : x7<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -257<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 33554432<br>                                              |[0x80000750]:MSUBR32 t2, a7, s8<br> [0x80000754]:sd t2, 32(gp)<br>     |
|  25|[0x800032d0]<br>0xFFFFFFFFB7D5BFDD|- rs1 : x8<br> - rs2 : x15<br> - rd : x20<br> - rs2_w1_val == -1025<br> - rs1_w0_val == 64<br>                                                                                                      |[0x80000770]:MSUBR32 s4, fp, a5<br> [0x80000774]:sd s4, 40(gp)<br>     |
|  26|[0x800032d8]<br>0xFFFFFFFFFDFFFFFC|- rs1 : x9<br> - rs2 : x16<br> - rd : x13<br> - rs2_w1_val == -513<br> - rs2_w0_val == -16777217<br>                                                                                                |[0x80000798]:MSUBR32 a3, s1, a6<br> [0x8000079c]:sd a3, 48(gp)<br>     |
|  27|[0x800032e0]<br>0xFFFFFFFFFEFFFFFF|- rs1 : x29<br> - rs2 : x30<br> - rd : x9<br> - rs2_w1_val == -257<br> - rs2_w0_val == 8192<br>                                                                                                     |[0x800007bc]:MSUBR32 s1, t4, t5<br> [0x800007c0]:sd s1, 56(gp)<br>     |
|  28|[0x800032e8]<br>0x0000000000018040|- rs1 : x14<br> - rs2 : x10<br> - rd : x8<br> - rs2_w1_val == -129<br> - rs1_w1_val == -5<br> - rs1_w0_val == 16384<br>                                                                             |[0x800007dc]:MSUBR32 fp, a4, a0<br> [0x800007e0]:sd fp, 64(gp)<br>     |
|  29|[0x800032f0]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x2<br> - rd : x0<br> - rs2_w1_val == -65<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == 32768<br>                                                                        |[0x80000804]:MSUBR32 zero, a2, sp<br> [0x80000808]:sd zero, 72(gp)<br> |
|  30|[0x800032f8]<br>0x0000000000008000|- rs1 : x20<br> - rs2 : x13<br> - rd : x12<br> - rs2_w1_val == -33<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == 2<br> - rs1_w0_val == 262144<br>                                              |[0x80000820]:MSUBR32 a2, s4, a3<br> [0x80000824]:sd a2, 80(gp)<br>     |
|  31|[0x80003300]<br>0x00000000000001F9|- rs1 : x22<br> - rs2 : x31<br> - rd : x1<br> - rs2_w1_val == -17<br> - rs1_w1_val == 32<br> - rs1_w0_val == 512<br>                                                                                |[0x80000844]:MSUBR32 ra, s6, t6<br> [0x80000848]:sd ra, 88(gp)<br>     |
|  32|[0x80003308]<br>0xFFFFFFFFFFFFE3FC|- rs1 : x19<br> - rs2 : x20<br> - rd : x21<br> - rs2_w1_val == -9<br> - rs2_w0_val == -2049<br> - rs1_w1_val == 32768<br>                                                                           |[0x8000086c]:MSUBR32 s5, s3, s4<br> [0x80000870]:sd s5, 96(gp)<br>     |
|  33|[0x80003310]<br>0xFFFFFFFFFEEDFFFF|- rs2_w1_val == -5<br> - rs2_w0_val == 131072<br> - rs1_w1_val == -2<br>                                                                                                                            |[0x8000088c]:MSUBR32 t6, t5, t4<br> [0x80000890]:sd t6, 104(gp)<br>    |
|  34|[0x80003318]<br>0xFFFFFFFFFC6DFFFF|- rs2_w1_val == -3<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == -65537<br>                                                                                                                       |[0x800008ac]:MSUBR32 t6, t5, t4<br> [0x800008b0]:sd t6, 112(gp)<br>    |
|  35|[0x80003320]<br>0xFFFFFFFFFC6E003F|- rs2_w1_val == -2<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == -4097<br>                                                                                                                     |[0x800008d0]:MSUBR32 t6, t5, t4<br> [0x800008d4]:sd t6, 120(gp)<br>    |
|  36|[0x80003328]<br>0xFFFFFFFFFC6E0038|- rs2_w1_val == -2147483648<br>                                                                                                                                                                     |[0x800008f0]:MSUBR32 t6, t5, t4<br> [0x800008f4]:sd t6, 128(gp)<br>    |
|  37|[0x80003330]<br>0xFFFFFFFFFC6E1038|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 4096<br>                                                                                                                                             |[0x80000914]:MSUBR32 t6, t5, t4<br> [0x80000918]:sd t6, 136(gp)<br>    |
|  38|[0x80003338]<br>0xFFFFFFFFFD2E103E|- rs2_w1_val == 536870912<br> - rs2_w0_val == -2097153<br>                                                                                                                                          |[0x80000940]:MSUBR32 t6, t5, t4<br> [0x80000944]:sd t6, 144(gp)<br>    |
|  39|[0x80003340]<br>0xFFFFFFFFFD2E3042|- rs2_w1_val == 268435456<br> - rs1_w1_val == 256<br> - rs1_w0_val == 4<br>                                                                                                                         |[0x8000096c]:MSUBR32 t6, t5, t4<br> [0x80000970]:sd t6, 152(gp)<br>    |
|  40|[0x80003348]<br>0xFFFFFFFFFD2E2FC0|- rs2_w1_val == 134217728<br> - rs2_w0_val == -65<br> - rs1_w0_val == -2<br>                                                                                                                        |[0x80000994]:MSUBR32 t6, t5, t4<br> [0x80000998]:sd t6, 160(gp)<br>    |
|  41|[0x80003350]<br>0xFFFFFFFFFD2E2FD4|- rs2_w1_val == 67108864<br> - rs2_w0_val == 4<br> - rs1_w0_val == -5<br>                                                                                                                           |[0x800009b4]:MSUBR32 t6, t5, t4<br> [0x800009b8]:sd t6, 168(gp)<br>    |
|  42|[0x80003358]<br>0xFFFFFFFFFCAE2FD4|- rs2_w1_val == 33554432<br> - rs2_w0_val == 64<br> - rs1_w0_val == 131072<br>                                                                                                                      |[0x800009d4]:MSUBR32 t6, t5, t4<br> [0x800009d8]:sd t6, 176(gp)<br>    |
|  43|[0x80003360]<br>0xFFFFFFFFFCBE2FD8|- rs2_w1_val == 16777216<br> - rs1_w0_val == -262145<br>                                                                                                                                            |[0x800009f8]:MSUBR32 t6, t5, t4<br> [0x800009fc]:sd t6, 184(gp)<br>    |
|  44|[0x80003368]<br>0x0000000004BE2FD8|- rs2_w1_val == 8388608<br> - rs2_w0_val == 134217728<br>                                                                                                                                           |[0x80000a18]:MSUBR32 t6, t5, t4<br> [0x80000a1c]:sd t6, 192(gp)<br>    |
|  45|[0x80003370]<br>0x0000000004BE2FC7|- rs2_w1_val == 4194304<br> - rs2_w0_val == -1<br> - rs1_w1_val == -1<br> - rs1_w0_val == -17<br>                                                                                                   |[0x80000a34]:MSUBR32 t6, t5, t4<br> [0x80000a38]:sd t6, 200(gp)<br>    |
|  46|[0x80003378]<br>0x0000000004BE1FC7|- rs2_w1_val == 2097152<br> - rs1_w1_val == 1<br> - rs1_w0_val == 2048<br>                                                                                                                          |[0x80000a58]:MSUBR32 t6, t5, t4<br> [0x80000a5c]:sd t6, 208(gp)<br>    |
|  47|[0x80003380]<br>0xFFFFFFFFC4BC1FC6|- rs2_w1_val == 524288<br> - rs1_w1_val == -65<br>                                                                                                                                                  |[0x80000a80]:MSUBR32 t6, t5, t4<br> [0x80000a84]:sd t6, 216(gp)<br>    |
|  48|[0x80003388]<br>0xFFFFFFFFC4BE1FC6|- rs2_w1_val == 262144<br> - rs1_w0_val == -8388609<br>                                                                                                                                             |[0x80000aa4]:MSUBR32 t6, t5, t4<br> [0x80000aa8]:sd t6, 224(gp)<br>    |
|  49|[0x80003390]<br>0x0000000044BE1FC6|- rs2_w1_val == 131072<br> - rs1_w0_val == 1073741824<br>                                                                                                                                           |[0x80000ac4]:MSUBR32 t6, t5, t4<br> [0x80000ac8]:sd t6, 232(gp)<br>    |
|  50|[0x80003398]<br>0x000000000CBE1FC6|- rs2_w1_val == 65536<br>                                                                                                                                                                           |[0x80000ae4]:MSUBR32 t6, t5, t4<br> [0x80000ae8]:sd t6, 240(gp)<br>    |
|  51|[0x800033a0]<br>0x000000000CBE22CC|- rs2_w1_val == 32768<br> - rs2_w0_val == -129<br> - rs1_w1_val == 1073741824<br>                                                                                                                   |[0x80000b08]:MSUBR32 t6, t5, t4<br> [0x80000b0c]:sd t6, 248(gp)<br>    |
|  52|[0x800033a8]<br>0x000000000C3E22CC|- rs2_w1_val == 16384<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 128<br> - rs1_w0_val == 16<br>                                                                                                 |[0x80000b28]:MSUBR32 t6, t5, t4<br> [0x80000b2c]:sd t6, 256(gp)<br>    |
|  53|[0x800033b0]<br>0x000000000C3E22CC|- rs2_w0_val == 33554432<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 8192<br>                                                                                                                   |[0x80000b48]:MSUBR32 t6, t5, t4<br> [0x80000b4c]:sd t6, 264(gp)<br>    |
|  54|[0x800033b8]<br>0x000000000C3E32CC|- rs2_w0_val == -4194305<br> - rs1_w0_val == 4096<br>                                                                                                                                               |[0x80000b74]:MSUBR32 t6, t5, t4<br> [0x80000b78]:sd t6, 272(gp)<br>    |
|  55|[0x800033c0]<br>0x000000000C7E36CC|- rs1_w0_val == 1024<br>                                                                                                                                                                            |[0x80000b98]:MSUBR32 t6, t5, t4<br> [0x80000b9c]:sd t6, 280(gp)<br>    |
|  56|[0x800033c8]<br>0x000000000CBE37CC|- rs2_w0_val == -16385<br> - rs1_w1_val == 512<br> - rs1_w0_val == 256<br>                                                                                                                          |[0x80000bc0]:MSUBR32 t6, t5, t4<br> [0x80000bc4]:sd t6, 288(gp)<br>    |
|  57|[0x800033d0]<br>0x000000000CBE37CC|- rs1_w1_val == -17<br> - rs1_w0_val == 32<br>                                                                                                                                                      |[0x80000be0]:MSUBR32 t6, t5, t4<br> [0x80000be4]:sd t6, 296(gp)<br>    |
|  58|[0x800033d8]<br>0xFFFFFFFF8CBE37D4|- rs2_w0_val == -268435457<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 8<br>                                                                                                                     |[0x80000c08]:MSUBR32 t6, t5, t4<br> [0x80000c0c]:sd t6, 304(gp)<br>    |
|  59|[0x800033e0]<br>0xFFFFFFFFACBE37D6|- rs1_w0_val == 2<br>                                                                                                                                                                               |[0x80000c2c]:MSUBR32 t6, t5, t4<br> [0x80000c30]:sd t6, 312(gp)<br>    |
|  60|[0x800033e8]<br>0xFFFFFFFFACBDF7D6|- rs2_w1_val == 2048<br> - rs2_w0_val == 16384<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 1<br>                                                                                               |[0x80000c50]:MSUBR32 t6, t5, t4<br> [0x80000c54]:sd t6, 320(gp)<br>    |
|  61|[0x800033f0]<br>0xFFFFFFFFACBDF7D6|- rs2_w0_val == 2048<br>                                                                                                                                                                            |[0x80000c74]:MSUBR32 t6, t5, t4<br> [0x80000c78]:sd t6, 328(gp)<br>    |
|  62|[0x800033f8]<br>0xFFFFFFFFACBDF755|- rs1_w1_val == -2049<br> - rs1_w0_val == -1<br>                                                                                                                                                    |[0x80000c94]:MSUBR32 t6, t5, t4<br> [0x80000c98]:sd t6, 336(gp)<br>    |
|  63|[0x80003400]<br>0xFFFFFFFFACBFF755|- rs2_w1_val == 8192<br> - rs1_w1_val == 16777216<br>                                                                                                                                               |[0x80000cbc]:MSUBR32 t6, t5, t4<br> [0x80000cc0]:sd t6, 344(gp)<br>    |
|  64|[0x80003408]<br>0xFFFFFFFFACBFB755|- rs2_w1_val == 4096<br> - rs1_w1_val == -8193<br>                                                                                                                                                  |[0x80000ce0]:MSUBR32 t6, t5, t4<br> [0x80000ce4]:sd t6, 352(gp)<br>    |
|  65|[0x80003410]<br>0xFFFFFFFFACBFB755|- rs2_w1_val == 1024<br> - rs1_w0_val == 268435456<br>                                                                                                                                              |[0x80000cfc]:MSUBR32 t6, t5, t4<br> [0x80000d00]:sd t6, 360(gp)<br>    |
|  66|[0x80003418]<br>0xFFFFFFFFACFFB755|- rs2_w1_val == 512<br> - rs2_w0_val == -8193<br>                                                                                                                                                   |[0x80000d20]:MSUBR32 t6, t5, t4<br> [0x80000d24]:sd t6, 368(gp)<br>    |
|  67|[0x80003420]<br>0x000000002CFFB755|- rs2_w1_val == 256<br> - rs2_w0_val == -2147483648<br> - rs1_w0_val == -8193<br>                                                                                                                   |[0x80000d48]:MSUBR32 t6, t5, t4<br> [0x80000d4c]:sd t6, 376(gp)<br>    |
|  68|[0x80003428]<br>0x000000006CFFB75E|- rs2_w1_val == 128<br>                                                                                                                                                                             |[0x80000d6c]:MSUBR32 t6, t5, t4<br> [0x80000d70]:sd t6, 384(gp)<br>    |
|  69|[0x80003430]<br>0x000000006CFFB75E|- rs2_w1_val == 64<br> - rs2_w0_val == 1048576<br> - rs1_w0_val == 65536<br>                                                                                                                        |[0x80000d90]:MSUBR32 t6, t5, t4<br> [0x80000d94]:sd t6, 392(gp)<br>    |
|  70|[0x80003438]<br>0x000000006CFFB746|- rs2_w1_val == 32<br>                                                                                                                                                                              |[0x80000db4]:MSUBR32 t6, t5, t4<br> [0x80000db8]:sd t6, 400(gp)<br>    |
|  71|[0x80003440]<br>0x000000006CFFC74E|- rs2_w1_val == 16<br> - rs2_w0_val == 8<br> - rs1_w0_val == -513<br>                                                                                                                               |[0x80000dd8]:MSUBR32 t6, t5, t4<br> [0x80000ddc]:sd t6, 408(gp)<br>    |
|  72|[0x80003448]<br>0x000000006CDFC74E|- rs2_w1_val == 8<br> - rs2_w0_val == 65536<br> - rs1_w1_val == 1048576<br>                                                                                                                         |[0x80000df8]:MSUBR32 t6, t5, t4<br> [0x80000dfc]:sd t6, 416(gp)<br>    |
|  73|[0x80003450]<br>0x000000004CDFC74E|- rs2_w1_val == 4<br> - rs1_w1_val == -1073741825<br>                                                                                                                                               |[0x80000e20]:MSUBR32 t6, t5, t4<br> [0x80000e24]:sd t6, 424(gp)<br>    |
|  74|[0x80003458]<br>0x0000000044DFC74E|- rs2_w1_val == 2<br> - rs1_w1_val == 16384<br>                                                                                                                                                     |[0x80000e40]:MSUBR32 t6, t5, t4<br> [0x80000e44]:sd t6, 432(gp)<br>    |
|  75|[0x80003460]<br>0x0000000044DFC74E|- rs2_w1_val == 1<br> - rs2_w0_val == -32769<br>                                                                                                                                                    |[0x80000e60]:MSUBR32 t6, t5, t4<br> [0x80000e64]:sd t6, 440(gp)<br>    |
|  76|[0x80003468]<br>0x0000000044DFC74E|- rs1_w0_val == 134217728<br>                                                                                                                                                                       |[0x80000e74]:MSUBR32 t6, t5, t4<br> [0x80000e78]:sd t6, 448(gp)<br>    |
|  77|[0x80003470]<br>0x0000000004DFC74E|- rs2_w1_val == -1<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -4097<br>                                                                                                                           |[0x80000e98]:MSUBR32 t6, t5, t4<br> [0x80000e9c]:sd t6, 456(gp)<br>    |
|  78|[0x80003478]<br>0x000000005A35474E|- rs2_w0_val == -1431655766<br>                                                                                                                                                                     |[0x80000ec4]:MSUBR32 t6, t5, t4<br> [0x80000ec8]:sd t6, 464(gp)<br>    |
|  79|[0x80003480]<br>0x0000000004DFF24E|- rs2_w0_val == 1431655765<br>                                                                                                                                                                      |[0x80000ef4]:MSUBR32 t6, t5, t4<br> [0x80000ef8]:sd t6, 472(gp)<br>    |
|  80|[0x80003488]<br>0xFFFFFFFFD4DFF24D|- rs2_w0_val == -536870913<br>                                                                                                                                                                      |[0x80000f20]:MSUBR32 t6, t5, t4<br> [0x80000f24]:sd t6, 480(gp)<br>    |
|  81|[0x80003490]<br>0xFFFFFFFFD2DFF24C|- rs2_w0_val == -33554433<br>                                                                                                                                                                       |[0x80000f48]:MSUBR32 t6, t5, t4<br> [0x80000f4c]:sd t6, 488(gp)<br>    |
|  82|[0x80003498]<br>0xFFFFFFFFD0DFF248|- rs2_w0_val == -8388609<br>                                                                                                                                                                        |[0x80000f68]:MSUBR32 t6, t5, t4<br> [0x80000f6c]:sd t6, 496(gp)<br>    |
|  83|[0x800034a0]<br>0xFFFFFFFFD0DDF248|- rs2_w0_val == 32<br> - rs1_w1_val == -513<br>                                                                                                                                                     |[0x80000f88]:MSUBR32 t6, t5, t4<br> [0x80000f8c]:sd t6, 504(gp)<br>    |
|  84|[0x800034a8]<br>0xFFFFFFFFD0DDF218|- rs2_w0_val == 16<br>                                                                                                                                                                              |[0x80000fac]:MSUBR32 t6, t5, t4<br> [0x80000fb0]:sd t6, 512(gp)<br>    |
|  85|[0x800034b0]<br>0xFFFFFFFFD0DDF218|- rs1_w1_val == -262145<br>                                                                                                                                                                         |[0x80000fcc]:MSUBR32 t6, t5, t4<br> [0x80000fd0]:sd t6, 520(gp)<br>    |
|  86|[0x800034b8]<br>0xFFFFFFFFD0DDEE14|- rs1_w1_val == 2147483647<br>                                                                                                                                                                      |[0x80000fec]:MSUBR32 t6, t5, t4<br> [0x80000ff0]:sd t6, 528(gp)<br>    |
|  87|[0x800034c0]<br>0xFFFFFFFFD0DDE614|- rs1_w1_val == -536870913<br>                                                                                                                                                                      |[0x80001014]:MSUBR32 t6, t5, t4<br> [0x80001018]:sd t6, 536(gp)<br>    |
|  88|[0x800034c8]<br>0xFFFFFFFFD0D5E612|- rs2_w0_val == -2<br> - rs1_w1_val == -268435457<br>                                                                                                                                               |[0x8000103c]:MSUBR32 t6, t5, t4<br> [0x80001040]:sd t6, 544(gp)<br>    |
|  89|[0x800034d0]<br>0xFFFFFFFFD0D5E5F4|- rs1_w1_val == -134217729<br>                                                                                                                                                                      |[0x80001060]:MSUBR32 t6, t5, t4<br> [0x80001064]:sd t6, 552(gp)<br>    |
|  90|[0x800034d8]<br>0xFFFFFFFFD0D5E5F4|- rs2_w0_val == 67108864<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 16777216<br>                                                                                                             |[0x80001084]:MSUBR32 t6, t5, t4<br> [0x80001088]:sd t6, 560(gp)<br>    |
|  91|[0x800034e0]<br>0xFFFFFFFFD0D9E5F4|- rs1_w1_val == -2097153<br>                                                                                                                                                                        |[0x800010b8]:MSUBR32 t6, t5, t4<br> [0x800010bc]:sd t6, 568(gp)<br>    |
|  92|[0x800034e8]<br>0xFFFFFFFFD0D9E5F4|- rs1_w1_val == -1048577<br>                                                                                                                                                                        |[0x800010e0]:MSUBR32 t6, t5, t4<br> [0x800010e4]:sd t6, 576(gp)<br>    |
|  93|[0x800034f0]<br>0xFFFFFFFFC8D7E1F3|- rs1_w1_val == -524289<br>                                                                                                                                                                         |[0x8000110c]:MSUBR32 t6, t5, t4<br> [0x80001110]:sd t6, 584(gp)<br>    |
|  94|[0x800034f8]<br>0xFFFFFFFFA8D3E1F2|- rs2_w0_val == -262145<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -536870913<br>                                                                                                               |[0x80001134]:MSUBR32 t6, t5, t4<br> [0x80001138]:sd t6, 592(gp)<br>    |
|  95|[0x80003500]<br>0xFFFFFFFFA8D3E1F2|- rs1_w1_val == -1025<br>                                                                                                                                                                           |[0x80001154]:MSUBR32 t6, t5, t4<br> [0x80001158]:sd t6, 600(gp)<br>    |
|  96|[0x80003508]<br>0xFFFFFFFFE8D3E1F2|- rs1_w1_val == -257<br>                                                                                                                                                                            |[0x80001170]:MSUBR32 t6, t5, t4<br> [0x80001174]:sd t6, 608(gp)<br>    |
|  97|[0x80003510]<br>0xFFFFFFFFE8F3E1F2|- rs1_w1_val == -9<br> - rs1_w0_val == 1048576<br>                                                                                                                                                  |[0x80001190]:MSUBR32 t6, t5, t4<br> [0x80001194]:sd t6, 616(gp)<br>    |
|  98|[0x80003518]<br>0xFFFFFFFFE933E272|- rs1_w1_val == 536870912<br>                                                                                                                                                                       |[0x800011b4]:MSUBR32 t6, t5, t4<br> [0x800011b8]:sd t6, 624(gp)<br>    |
|  99|[0x80003520]<br>0xFFFFFFFFE9316268|- rs1_w1_val == 268435456<br> - rs1_w0_val == -16385<br>                                                                                                                                            |[0x800011e0]:MSUBR32 t6, t5, t4<br> [0x800011e4]:sd t6, 632(gp)<br>    |
| 100|[0x80003528]<br>0xFFFFFFFFE9313A63|- rs1_w1_val == 134217728<br>                                                                                                                                                                       |[0x80001208]:MSUBR32 t6, t5, t4<br> [0x8000120c]:sd t6, 640(gp)<br>    |
| 101|[0x80003530]<br>0xFFFFFFFFE7293A62|- rs1_w1_val == 8388608<br> - rs1_w0_val == -524289<br>                                                                                                                                             |[0x8000123c]:MSUBR32 t6, t5, t4<br> [0x80001240]:sd t6, 648(gp)<br>    |
| 102|[0x80003538]<br>0xFFFFFFFFE7293B07|- rs1_w1_val == 4096<br>                                                                                                                                                                            |[0x80001260]:MSUBR32 t6, t5, t4<br> [0x80001264]:sd t6, 656(gp)<br>    |
| 103|[0x80003540]<br>0xFFFFFFFFE7693B07|- rs1_w1_val == 64<br> - rs1_w0_val == 2097152<br>                                                                                                                                                  |[0x80001280]:MSUBR32 t6, t5, t4<br> [0x80001284]:sd t6, 664(gp)<br>    |
| 104|[0x80003548]<br>0xFFFFFFFFE7693AF2|- rs1_w1_val == 16<br>                                                                                                                                                                              |[0x800012a0]:MSUBR32 t6, t5, t4<br> [0x800012a4]:sd t6, 672(gp)<br>    |
| 105|[0x80003550]<br>0xFFFFFFFFE76926E8|- rs2_w0_val == -513<br> - rs1_w1_val == 8<br>                                                                                                                                                      |[0x800012c0]:MSUBR32 t6, t5, t4<br> [0x800012c4]:sd t6, 680(gp)<br>    |
| 106|[0x80003558]<br>0xFFFFFFFFE7691C3D|- rs1_w0_val == 1431655765<br>                                                                                                                                                                      |[0x800012e8]:MSUBR32 t6, t5, t4<br> [0x800012ec]:sd t6, 688(gp)<br>    |
| 107|[0x80003560]<br>0xFFFFFFFFE6E91C35|- rs2_w0_val == -1048577<br>                                                                                                                                                                        |[0x8000130c]:MSUBR32 t6, t5, t4<br> [0x80001310]:sd t6, 696(gp)<br>    |
| 108|[0x80003568]<br>0xFFFFFFFFE6C91C31|- rs2_w0_val == -524289<br>                                                                                                                                                                         |[0x80001334]:MSUBR32 t6, t5, t4<br> [0x80001338]:sd t6, 704(gp)<br>    |
| 109|[0x80003570]<br>0xFFFFFFFFE2C91BB0|- rs1_w0_val == -67108865<br>                                                                                                                                                                       |[0x80001358]:MSUBR32 t6, t5, t4<br> [0x8000135c]:sd t6, 712(gp)<br>    |
| 110|[0x80003578]<br>0xFFFFFFFFE0C71AAF|- rs2_w0_val == -131073<br>                                                                                                                                                                         |[0x8000137c]:MSUBR32 t6, t5, t4<br> [0x80001380]:sd t6, 720(gp)<br>    |
| 111|[0x80003580]<br>0xFFFFFFFFE0C71CAF|- rs1_w0_val == -33554433<br>                                                                                                                                                                       |[0x800013a4]:MSUBR32 t6, t5, t4<br> [0x800013a8]:sd t6, 728(gp)<br>    |
| 112|[0x80003588]<br>0x0000000060C71CAF|- rs2_w0_val == -65537<br>                                                                                                                                                                          |[0x800013c8]:MSUBR32 t6, t5, t4<br> [0x800013cc]:sd t6, 736(gp)<br>    |
| 113|[0x80003590]<br>0xFFFFFFFF80C71CAF|- rs2_w0_val == 536870912<br> - rs1_w0_val == -4194305<br>                                                                                                                                          |[0x800013e8]:MSUBR32 t6, t5, t4<br> [0x800013ec]:sd t6, 744(gp)<br>    |
| 114|[0x80003598]<br>0xFFFFFFFF80D71CAF|- rs1_w0_val == -2097153<br>                                                                                                                                                                        |[0x8000140c]:MSUBR32 t6, t5, t4<br> [0x80001410]:sd t6, 752(gp)<br>    |
| 115|[0x800035a0]<br>0xFFFFFFFF81371CB5|- rs1_w0_val == -1048577<br>                                                                                                                                                                        |[0x80001430]:MSUBR32 t6, t5, t4<br> [0x80001434]:sd t6, 760(gp)<br>    |
| 116|[0x800035a8]<br>0xFFFFFFFF813B5CB5|- rs2_w0_val == -17<br>                                                                                                                                                                             |[0x80001458]:MSUBR32 t6, t5, t4<br> [0x8000145c]:sd t6, 768(gp)<br>    |
| 117|[0x800035b0]<br>0xFFFFFFFF813B5CAC|- rs2_w0_val == -9<br>                                                                                                                                                                              |[0x80001480]:MSUBR32 t6, t5, t4<br> [0x80001484]:sd t6, 776(gp)<br>    |
| 118|[0x800035b8]<br>0xFFFFFFFF81275CA7|- rs2_w0_val == -5<br>                                                                                                                                                                              |[0x800014a4]:MSUBR32 t6, t5, t4<br> [0x800014a8]:sd t6, 784(gp)<br>    |
| 119|[0x800035c0]<br>0x00000000412758A6|- rs1_w0_val == -1025<br>                                                                                                                                                                           |[0x800014cc]:MSUBR32 t6, t5, t4<br> [0x800014d0]:sd t6, 792(gp)<br>    |
| 120|[0x800035c8]<br>0x000000004127587B|- rs1_w0_val == -129<br>                                                                                                                                                                            |[0x800014fc]:MSUBR32 t6, t5, t4<br> [0x80001500]:sd t6, 800(gp)<br>    |
| 121|[0x800035d0]<br>0x00000000412758FD|- rs1_w0_val == -65<br>                                                                                                                                                                             |[0x80001524]:MSUBR32 t6, t5, t4<br> [0x80001528]:sd t6, 808(gp)<br>    |
| 122|[0x800035d8]<br>0x00000000212758DC|- rs1_w0_val == -33<br>                                                                                                                                                                             |[0x80001548]:MSUBR32 t6, t5, t4<br> [0x8000154c]:sd t6, 816(gp)<br>    |
| 123|[0x800035e0]<br>0x0000000021275882|- rs1_w0_val == -9<br>                                                                                                                                                                              |[0x8000156c]:MSUBR32 t6, t5, t4<br> [0x80001570]:sd t6, 824(gp)<br>    |
| 124|[0x800035e8]<br>0x0000000021275882|- rs2_w0_val == 16777216<br>                                                                                                                                                                        |[0x8000158c]:MSUBR32 t6, t5, t4<br> [0x80001590]:sd t6, 832(gp)<br>    |
| 125|[0x800035f0]<br>0x0000000041275882|- rs1_w0_val == 536870912<br>                                                                                                                                                                       |[0x800015b0]:MSUBR32 t6, t5, t4<br> [0x800015b4]:sd t6, 840(gp)<br>    |
| 126|[0x800035f8]<br>0x0000000041475882|- rs2_w0_val == 2097152<br>                                                                                                                                                                         |[0x800015d4]:MSUBR32 t6, t5, t4<br> [0x800015d8]:sd t6, 848(gp)<br>    |
| 127|[0x80003600]<br>0x000000001D475882|- rs1_w0_val == 67108864<br>                                                                                                                                                                        |[0x800015fc]:MSUBR32 t6, t5, t4<br> [0x80001600]:sd t6, 856(gp)<br>    |
| 128|[0x80003608]<br>0xFFFFFFFFFD475882|- rs1_w0_val == 8388608<br>                                                                                                                                                                         |[0x8000161c]:MSUBR32 t6, t5, t4<br> [0x80001620]:sd t6, 864(gp)<br>    |
| 129|[0x80003610]<br>0xFFFFFFFFBD475882|- rs1_w0_val == 524288<br>                                                                                                                                                                          |[0x80001648]:MSUBR32 t6, t5, t4<br> [0x8000164c]:sd t6, 872(gp)<br>    |
| 130|[0x80003618]<br>0xFFFFFFFFCD475C82|- rs2_w0_val == 1024<br>                                                                                                                                                                            |[0x80001674]:MSUBR32 t6, t5, t4<br> [0x80001678]:sd t6, 880(gp)<br>    |
| 131|[0x80003620]<br>0xFFFFFFFFCD475C82|- rs2_w0_val == 256<br>                                                                                                                                                                             |[0x80001698]:MSUBR32 t6, t5, t4<br> [0x8000169c]:sd t6, 888(gp)<br>    |
| 132|[0x80003628]<br>0xFFFFFFFFCD475902|- rs2_w0_val == 128<br>                                                                                                                                                                             |[0x800016bc]:MSUBR32 t6, t5, t4<br> [0x800016c0]:sd t6, 896(gp)<br>    |
| 133|[0x80003630]<br>0x000000004D475902|- rs2_w1_val == 1048576<br>                                                                                                                                                                         |[0x800016e4]:MSUBR32 t6, t5, t4<br> [0x800016e8]:sd t6, 904(gp)<br>    |
