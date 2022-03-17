
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001670')]      |
| SIG_REGION                | [('0x80003210', '0x80003620', '130 dwords')]      |
| COV_LABELS                | smmul      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/smmul-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 130      |
| STAT1                     | 126      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b8c]:SMMUL t6, t5, t4
      [0x80000b90]:sd t6, 192(sp)
 -- Signature Address: 0x800033b8 Data: 0x00000010FFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -131073
      - rs2_w0_val == -8193
      - rs1_w1_val == -524289
      - rs1_w0_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e0c]:SMMUL t6, t5, t4
      [0x80000e10]:sd t6, 328(sp)
 -- Signature Address: 0x80003440 Data: 0x00000000FFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 0
      - rs2_w0_val == -3
      - rs1_w1_val == -524289




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f88]:SMMUL t6, t5, t4
      [0x80000f8c]:sd t6, 408(sp)
 -- Signature Address: 0x80003490 Data: 0x0001555500000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -262145
      - rs2_w0_val == 4096
      - rs1_w1_val == -1431655766




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000101c]:SMMUL t6, t5, t4
      [0x80001020]:sd t6, 440(sp)
 -- Signature Address: 0x800034b0 Data: 0xFFFFFFFB00000400
 -- Redundant Coverpoints hit by the op
      - opcode : smmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w1_val == 256
      - rs2_w0_val == -2049
      - rs1_w1_val == -67108865






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

|s.no|            signature             |                                                                                            coverpoints                                                                                             |                                code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0010000000000000|- opcode : smmul<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == 2<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 2<br>    |[0x800003b4]:SMMUL t4, t1, t1<br> [0x800003b8]:sd t4, 0(t2)<br>      |
|   2|[0x80003218]<br>0x1C71C71C10000000|- rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 1073741824<br> |[0x800003e0]:SMMUL a2, a2, a2<br> [0x800003e4]:sd a2, 8(t2)<br>      |
|   3|[0x80003220]<br>0xFFFFFFFF00000000|- rs1 : x4<br> - rs2 : x10<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 16<br> - rs1_w1_val == -1<br> - rs1_w0_val == 65536<br>  |[0x80000404]:SMMUL t5, tp, a0<br> [0x80000408]:sd t5, 16(t2)<br>     |
|   4|[0x80003228]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x29<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -1<br> - rs1_w1_val == 1<br> - rs1_w0_val == -129<br>                            |[0x80000424]:SMMUL s1, s1, t4<br> [0x80000428]:sd s1, 24(t2)<br>     |
|   5|[0x80003230]<br>0x00000000FFFFFFFE|- rs1 : x8<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 4<br> - rs1_w1_val == 0<br> - rs1_w0_val == -1431655766<br>                    |[0x8000044c]:SMMUL t6, fp, t6<br> [0x80000450]:sd t6, 32(t2)<br>     |
|   6|[0x80003238]<br>0x00000001FFFFFFFF|- rs1 : x20<br> - rs2 : x14<br> - rd : x22<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == -129<br> - rs1_w0_val == 262144<br>                                                                   |[0x8000046c]:SMMUL s6, s4, a4<br> [0x80000470]:sd s6, 40(t2)<br>     |
|   7|[0x80003240]<br>0x0400000000000000|- rs1 : x29<br> - rs2 : x19<br> - rd : x16<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 0<br> - rs1_w0_val == 2097152<br>                                                                     |[0x80000490]:SMMUL a6, t4, s3<br> [0x80000494]:sd a6, 48(t2)<br>     |
|   8|[0x80003248]<br>0x0000020000000000|- rs1 : x28<br> - rs2 : x8<br> - rd : x25<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -3<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -8388609<br>                                         |[0x800004b4]:SMMUL s9, t3, fp<br> [0x800004b8]:sd s9, 56(t2)<br>     |
|   9|[0x80003250]<br>0x00000010FFFFFFFF|- rs1 : x19<br> - rs2 : x3<br> - rd : x4<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 524288<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -5<br>                                              |[0x800004dc]:SMMUL tp, s3, gp<br> [0x800004e0]:sd tp, 64(t2)<br>     |
|  10|[0x80003258]<br>0xFFFDFFFF00000000|- rs1 : x26<br> - rs2 : x17<br> - rd : x18<br> - rs2_w1_val == -16777217<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == -65537<br>                                                                |[0x80000508]:SMMUL s2, s10, a7<br> [0x8000050c]:sd s2, 72(t2)<br>    |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFFFEF|- rs1 : x1<br> - rs2 : x2<br> - rd : x21<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 64<br> - rs1_w1_val == 4<br> - rs1_w0_val == -1073741825<br>                                              |[0x8000052c]:SMMUL s5, ra, sp<br> [0x80000530]:sd s5, 80(t2)<br>     |
|  12|[0x80003268]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x28<br> - rd : x0<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 4096<br>                                               |[0x80000554]:SMMUL zero, a4, t3<br> [0x80000558]:sd zero, 88(t2)<br> |
|  13|[0x80003270]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x20<br> - rd : x2<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -1<br>                                                                         |[0x80000574]:SMMUL sp, s6, s4<br> [0x80000578]:sd sp, 96(t2)<br>     |
|  14|[0x80003278]<br>0xFFFFFFFF00000001|- rs1 : x5<br> - rs2 : x16<br> - rd : x15<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 2097152<br> - rs1_w0_val == 2048<br>                                                                     |[0x8000059c]:SMMUL a5, t0, a6<br> [0x800005a0]:sd a5, 104(t2)<br>    |
|  15|[0x80003280]<br>0xFFFFFFFF00000000|- rs1 : x11<br> - rs2 : x24<br> - rd : x8<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 2048<br> - rs1_w1_val == 256<br> - rs1_w0_val == 8<br>                                                    |[0x800005c8]:SMMUL fp, a1, s8<br> [0x800005cc]:sd fp, 112(t2)<br>    |
|  16|[0x80003288]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x5<br> - rd : x6<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -9<br> - rs1_w0_val == 0<br>                                                                                |[0x800005f0]:SMMUL t1, zero, t0<br> [0x800005f4]:sd t1, 0(fp)<br>    |
|  17|[0x80003290]<br>0x0000002000000000|- rs1 : x15<br> - rs2 : x18<br> - rd : x17<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 4<br>                                         |[0x80000614]:SMMUL a7, a5, s2<br> [0x80000618]:sd a7, 8(fp)<br>      |
|  18|[0x80003298]<br>0x0000000100000001|- rs1 : x10<br> - rs2 : x1<br> - rd : x24<br> - rs2_w1_val == -65537<br> - rs2_w0_val == -65537<br> - rs1_w1_val == -65537<br>                                                                      |[0x80000644]:SMMUL s8, a0, ra<br> [0x80000648]:sd s8, 16(fp)<br>     |
|  19|[0x800032a0]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x0<br> - rd : x3<br> - rs2_w1_val == 0<br> - rs1_w0_val == 16777216<br>                                                                                                     |[0x80000664]:SMMUL gp, t5, zero<br> [0x80000668]:sd gp, 24(fp)<br>   |
|  20|[0x800032a8]<br>0x0000001000004000|- rs1 : x17<br> - rs2 : x4<br> - rd : x28<br> - rs2_w1_val == -16385<br> - rs2_w0_val == -268435457<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -262145<br>                                    |[0x80000690]:SMMUL t3, a7, tp<br> [0x80000694]:sd t3, 32(fp)<br>     |
|  21|[0x800032b0]<br>0x0000004000000020|- rs1 : x21<br> - rs2 : x9<br> - rd : x19<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 4096<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 33554432<br>                                         |[0x800006bc]:SMMUL s3, s5, s1<br> [0x800006c0]:sd s3, 40(fp)<br>     |
|  22|[0x800032b8]<br>0x00000000EAAAAAAA|- rs1 : x2<br> - rs2 : x22<br> - rd : x26<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == -32769<br>                                                                  |[0x800006e8]:SMMUL s10, sp, s6<br> [0x800006ec]:sd s10, 48(fp)<br>   |
|  23|[0x800032c0]<br>0x0000000800000000|- rs1 : x18<br> - rs2 : x15<br> - rd : x13<br> - rs2_w1_val == -2049<br> - rs1_w1_val == -16777217<br>                                                                                              |[0x80000710]:SMMUL a3, s2, a5<br> [0x80000714]:sd a3, 56(fp)<br>     |
|  24|[0x800032c8]<br>0x0000000200000000|- rs1 : x7<br> - rs2 : x21<br> - rd : x10<br> - rs2_w1_val == -1025<br> - rs2_w0_val == 1<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 1048576<br>                                              |[0x80000738]:SMMUL a0, t2, s5<br> [0x8000073c]:sd a0, 64(fp)<br>     |
|  25|[0x800032d0]<br>0x0000001000000000|- rs1 : x23<br> - rs2 : x11<br> - rd : x27<br> - rs2_w1_val == -513<br> - rs2_w0_val == -5<br> - rs1_w1_val == -134217729<br>                                                                       |[0x80000758]:SMMUL s11, s7, a1<br> [0x8000075c]:sd s11, 72(fp)<br>   |
|  26|[0x800032d8]<br>0xFFFFFFFF00400000|- rs1 : x31<br> - rs2 : x25<br> - rd : x14<br> - rs2_w1_val == -257<br> - rs2_w0_val == -16777217<br> - rs1_w1_val == 32<br>                                                                        |[0x80000778]:SMMUL a4, t6, s9<br> [0x8000077c]:sd a4, 80(fp)<br>     |
|  27|[0x800032e0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x30<br> - rd : x11<br> - rs2_w1_val == -129<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 131072<br>                                              |[0x8000079c]:SMMUL a1, a3, t5<br> [0x800007a0]:sd a1, 88(fp)<br>     |
|  28|[0x800032e8]<br>0x00000008FFFFFFFF|- rs1 : x24<br> - rs2 : x13<br> - rd : x7<br> - rs2_w1_val == -65<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -513<br>                                                                       |[0x800007bc]:SMMUL t2, s8, a3<br> [0x800007c0]:sd t2, 96(fp)<br>     |
|  29|[0x800032f0]<br>0xFFFFFFFF00000000|- rs1 : x16<br> - rs2 : x26<br> - rd : x20<br> - rs2_w1_val == -33<br> - rs1_w0_val == -1048577<br>                                                                                                 |[0x800007e0]:SMMUL s4, a6, s10<br> [0x800007e4]:sd s4, 104(fp)<br>   |
|  30|[0x800032f8]<br>0x00000000FFFFFFF0|- rs1 : x3<br> - rs2 : x27<br> - rd : x5<br> - rs2_w1_val == -17<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == -524289<br> - rs1_w0_val == 32<br>                                             |[0x80000808]:SMMUL t0, gp, s11<br> [0x8000080c]:sd t0, 0(sp)<br>     |
|  31|[0x80003300]<br>0xFFFFFFFF00000800|- rs1 : x25<br> - rs2 : x7<br> - rd : x23<br> - rs2_w1_val == -9<br> - rs1_w0_val == -8193<br>                                                                                                      |[0x80000828]:SMMUL s7, s9, t2<br> [0x8000082c]:sd s7, 8(sp)<br>      |
|  32|[0x80003308]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x23<br> - rd : x1<br> - rs2_w1_val == -5<br> - rs1_w0_val == -33<br>                                                                                                        |[0x80000848]:SMMUL ra, s11, s7<br> [0x8000084c]:sd ra, 16(sp)<br>    |
|  33|[0x80003310]<br>0xFFFFFFFFF5555555|- rs2_w1_val == -3<br> - rs1_w0_val == 536870912<br>                                                                                                                                                |[0x80000868]:SMMUL t6, t5, t4<br> [0x8000086c]:sd t6, 24(sp)<br>     |
|  34|[0x80003318]<br>0xFFFFFFFFFFFFFFF7|- rs2_w1_val == -2<br> - rs1_w1_val == 8<br> - rs1_w0_val == -16385<br>                                                                                                                             |[0x8000088c]:SMMUL t6, t5, t4<br> [0x80000890]:sd t6, 32(sp)<br>     |
|  35|[0x80003320]<br>0xC0000000FFFFFFFF|- rs2_w1_val == -2147483648<br> - rs2_w0_val == -8193<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 1024<br>                                                                                   |[0x800008bc]:SMMUL t6, t5, t4<br> [0x800008c0]:sd t6, 40(sp)<br>     |
|  36|[0x80003328]<br>0x0002000000000000|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 524288<br> - rs1_w0_val == -32769<br>                                                                                                                |[0x800008ec]:SMMUL t6, t5, t4<br> [0x800008f0]:sd t6, 48(sp)<br>     |
|  37|[0x80003330]<br>0x0080000000000000|- rs2_w1_val == 536870912<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -524289<br>                                                                                                              |[0x8000091c]:SMMUL t6, t5, t4<br> [0x80000920]:sd t6, 56(sp)<br>     |
|  38|[0x80003338]<br>0x05555555FFFFFFFF|- rs2_w1_val == 268435456<br> - rs1_w1_val == 1431655765<br>                                                                                                                                        |[0x80000944]:SMMUL t6, t5, t4<br> [0x80000948]:sd t6, 64(sp)<br>     |
|  39|[0x80003340]<br>0xFFFFFFDFFFFFFFFF|- rs2_w1_val == 134217728<br> - rs1_w1_val == -1025<br> - rs1_w0_val == -2049<br>                                                                                                                   |[0x80000968]:SMMUL t6, t5, t4<br> [0x8000096c]:sd t6, 72(sp)<br>     |
|  40|[0x80003348]<br>0x01FFFFFF00000000|- rs2_w1_val == 67108864<br> - rs1_w0_val == -2097153<br>                                                                                                                                           |[0x80000994]:SMMUL t6, t5, t4<br> [0x80000998]:sd t6, 80(sp)<br>     |
|  41|[0x80003350]<br>0xFFFFFFEF00000000|- rs2_w1_val == 33554432<br>                                                                                                                                                                        |[0x800009b4]:SMMUL t6, t5, t4<br> [0x800009b8]:sd t6, 88(sp)<br>     |
|  42|[0x80003358]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 16777216<br> - rs2_w0_val == 512<br>                                                                                                                                                |[0x800009d8]:SMMUL t6, t5, t4<br> [0x800009dc]:sd t6, 96(sp)<br>     |
|  43|[0x80003360]<br>0x0000040000000000|- rs2_w1_val == 8388608<br>                                                                                                                                                                         |[0x800009f8]:SMMUL t6, t5, t4<br> [0x800009fc]:sd t6, 104(sp)<br>    |
|  44|[0x80003368]<br>0xFFFFFFFE00000000|- rs2_w1_val == 4194304<br> - rs1_w0_val == 1<br>                                                                                                                                                   |[0x80000a1c]:SMMUL t6, t5, t4<br> [0x80000a20]:sd t6, 112(sp)<br>    |
|  45|[0x80003370]<br>0x000000001FFFFFFF|- rs2_w1_val == 2097152<br> - rs1_w0_val == 2147483647<br>                                                                                                                                          |[0x80000a3c]:SMMUL t6, t5, t4<br> [0x80000a40]:sd t6, 120(sp)<br>    |
|  46|[0x80003378]<br>0x00000000FFFFFFFF|- rs2_w1_val == 1048576<br> - rs2_w0_val == -32769<br> - rs1_w1_val == 1024<br>                                                                                                                     |[0x80000a68]:SMMUL t6, t5, t4<br> [0x80000a6c]:sd t6, 128(sp)<br>    |
|  47|[0x80003380]<br>0x0000080000000000|- rs2_w1_val == 524288<br> - rs2_w0_val == -257<br> - rs1_w1_val == 16777216<br>                                                                                                                    |[0x80000a90]:SMMUL t6, t5, t4<br> [0x80000a94]:sd t6, 136(sp)<br>    |
|  48|[0x80003388]<br>0x00000000FFFFFFFF|- rs2_w1_val == 262144<br> - rs1_w0_val == 128<br>                                                                                                                                                  |[0x80000ab4]:SMMUL t6, t5, t4<br> [0x80000ab8]:sd t6, 144(sp)<br>    |
|  49|[0x80003390]<br>0x0000000000000000|- rs1_w0_val == 8192<br>                                                                                                                                                                            |[0x80000ad4]:SMMUL t6, t5, t4<br> [0x80000ad8]:sd t6, 152(sp)<br>    |
|  50|[0x80003398]<br>0xFFFFFFFF00000001|- rs2_w0_val == 8388608<br> - rs1_w0_val == 512<br>                                                                                                                                                 |[0x80000af4]:SMMUL t6, t5, t4<br> [0x80000af8]:sd t6, 160(sp)<br>    |
|  51|[0x800033a0]<br>0xFFFFFFFE00000000|- rs2_w1_val == 32<br> - rs1_w0_val == 256<br>                                                                                                                                                      |[0x80000b18]:SMMUL t6, t5, t4<br> [0x80000b1c]:sd t6, 168(sp)<br>    |
|  52|[0x800033a8]<br>0xFFFFFFFF00000000|- rs2_w0_val == 8<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 64<br>                                                                                                                             |[0x80000b3c]:SMMUL t6, t5, t4<br> [0x80000b40]:sd t6, 176(sp)<br>    |
|  53|[0x800033b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 2048<br> - rs1_w0_val == 16<br>                                                                                                                                                     |[0x80000b60]:SMMUL t6, t5, t4<br> [0x80000b64]:sd t6, 184(sp)<br>    |
|  54|[0x800033c0]<br>0x0000000000100000|- rs2_w1_val == 131072<br>                                                                                                                                                                          |[0x80000bac]:SMMUL t6, t5, t4<br> [0x80000bb0]:sd t6, 200(sp)<br>    |
|  55|[0x800033c8]<br>0x00000010FFFFFDFF|- rs2_w1_val == 65536<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 1048576<br>                                                                                                                   |[0x80000bd4]:SMMUL t6, t5, t4<br> [0x80000bd8]:sd t6, 208(sp)<br>    |
|  56|[0x800033d0]<br>0xFFFFFFFBFFFFFFFF|- rs2_w1_val == 32768<br> - rs2_w0_val == 67108864<br> - rs1_w0_val == -2<br>                                                                                                                       |[0x80000bf4]:SMMUL t6, t5, t4<br> [0x80000bf8]:sd t6, 216(sp)<br>    |
|  57|[0x800033d8]<br>0x0000000100000000|- rs2_w1_val == 16384<br> - rs2_w0_val == -16385<br> - rs1_w0_val == -131073<br>                                                                                                                    |[0x80000c2c]:SMMUL t6, t5, t4<br> [0x80000c30]:sd t6, 224(sp)<br>    |
|  58|[0x800033e0]<br>0x0000000800000000|- rs2_w1_val == 8192<br> - rs2_w0_val == -2049<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -9<br>                                                                                               |[0x80000c5c]:SMMUL t6, t5, t4<br> [0x80000c60]:sd t6, 232(sp)<br>    |
|  59|[0x800033e8]<br>0x0000000000400000|- rs2_w1_val == 4096<br> - rs1_w1_val == 32768<br>                                                                                                                                                  |[0x80000c80]:SMMUL t6, t5, t4<br> [0x80000c84]:sd t6, 240(sp)<br>    |
|  60|[0x800033f0]<br>0x0000000000000080|- rs1_w0_val == -2147483648<br> - rs2_w1_val == 1024<br>                                                                                                                                            |[0x80000ca0]:SMMUL t6, t5, t4<br> [0x80000ca4]:sd t6, 248(sp)<br>    |
|  61|[0x800033f8]<br>0x00000000FFFFFFFF|- rs2_w1_val == 512<br>                                                                                                                                                                             |[0x80000cc0]:SMMUL t6, t5, t4<br> [0x80000cc4]:sd t6, 256(sp)<br>    |
|  62|[0x80003400]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 256<br> - rs2_w0_val == 131072<br> - rs1_w1_val == -131073<br> - rs1_w0_val == -65<br>                                                                                              |[0x80000ce0]:SMMUL t6, t5, t4<br> [0x80000ce4]:sd t6, 264(sp)<br>    |
|  63|[0x80003408]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 128<br> - rs1_w0_val == -268435457<br>                                                                                                                                              |[0x80000d04]:SMMUL t6, t5, t4<br> [0x80000d08]:sd t6, 272(sp)<br>    |
|  64|[0x80003410]<br>0xFFFFFFFFFFFFFFF5|- rs2_w1_val == 64<br> - rs2_w0_val == -33<br> - rs1_w0_val == 1431655765<br>                                                                                                                       |[0x80000d30]:SMMUL t6, t5, t4<br> [0x80000d34]:sd t6, 280(sp)<br>    |
|  65|[0x80003418]<br>0x0000000000000000|- rs2_w1_val == 16<br> - rs2_w0_val == -131073<br>                                                                                                                                                  |[0x80000d58]:SMMUL t6, t5, t4<br> [0x80000d5c]:sd t6, 288(sp)<br>    |
|  66|[0x80003420]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 8<br> - rs2_w0_val == -65<br>                                                                                                                                                       |[0x80000d78]:SMMUL t6, t5, t4<br> [0x80000d7c]:sd t6, 296(sp)<br>    |
|  67|[0x80003428]<br>0x00000000FFFFFFFF|- rs2_w1_val == 4<br> - rs2_w0_val == -262145<br> - rs1_w1_val == 16<br>                                                                                                                            |[0x80000d9c]:SMMUL t6, t5, t4<br> [0x80000da0]:sd t6, 304(sp)<br>    |
|  68|[0x80003430]<br>0x0000000000000000|- rs2_w1_val == 2<br> - rs2_w0_val == -2097153<br>                                                                                                                                                  |[0x80000dc0]:SMMUL t6, t5, t4<br> [0x80000dc4]:sd t6, 312(sp)<br>    |
|  69|[0x80003438]<br>0x0000000000000000|- rs2_w1_val == 1<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -134217729<br>                                                                                                                  |[0x80000de8]:SMMUL t6, t5, t4<br> [0x80000dec]:sd t6, 320(sp)<br>    |
|  70|[0x80003448]<br>0x0000000000000000|- rs2_w1_val == -1<br> - rs1_w1_val == -262145<br>                                                                                                                                                  |[0x80000e2c]:SMMUL t6, t5, t4<br> [0x80000e30]:sd t6, 336(sp)<br>    |
|  71|[0x80003450]<br>0x00000010FEAAAAAA|- rs2_w0_val == 1431655765<br> - rs1_w0_val == -67108865<br>                                                                                                                                        |[0x80000e58]:SMMUL t6, t5, t4<br> [0x80000e5c]:sd t6, 344(sp)<br>    |
|  72|[0x80003458]<br>0x0000000100000007|- rs2_w0_val == 2147483647<br>                                                                                                                                                                      |[0x80000e80]:SMMUL t6, t5, t4<br> [0x80000e84]:sd t6, 352(sp)<br>    |
|  73|[0x80003460]<br>0x00000000FFFFFFBF|- rs2_w0_val == -1073741825<br> - rs1_w1_val == -4097<br>                                                                                                                                           |[0x80000ea0]:SMMUL t6, t5, t4<br> [0x80000ea4]:sd t6, 360(sp)<br>    |
|  74|[0x80003468]<br>0xFFFFEFFF01000000|- rs2_w0_val == -536870913<br>                                                                                                                                                                      |[0x80000ec8]:SMMUL t6, t5, t4<br> [0x80000ecc]:sd t6, 368(sp)<br>    |
|  75|[0x80003470]<br>0x00000000FFFFFFFF|- rs2_w0_val == -134217729<br>                                                                                                                                                                      |[0x80000ee8]:SMMUL t6, t5, t4<br> [0x80000eec]:sd t6, 376(sp)<br>    |
|  76|[0x80003478]<br>0x00000000FFFFFFBF|- rs2_w0_val == -67108865<br> - rs1_w1_val == -3<br>                                                                                                                                                |[0x80000f10]:SMMUL t6, t5, t4<br> [0x80000f14]:sd t6, 384(sp)<br>    |
|  77|[0x80003480]<br>0x0000000000008000|- rs2_w0_val == -33554433<br> - rs1_w0_val == -4194305<br>                                                                                                                                          |[0x80000f38]:SMMUL t6, t5, t4<br> [0x80000f3c]:sd t6, 392(sp)<br>    |
|  78|[0x80003488]<br>0x0004000000000000|- rs2_w0_val == 32<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 32768<br>                                                                                                                      |[0x80000f5c]:SMMUL t6, t5, t4<br> [0x80000f60]:sd t6, 400(sp)<br>    |
|  79|[0x80003498]<br>0x0000000000001000|- rs1_w0_val == 16384<br>                                                                                                                                                                           |[0x80000fa8]:SMMUL t6, t5, t4<br> [0x80000fac]:sd t6, 416(sp)<br>    |
|  80|[0x800034a0]<br>0x00000020FFFFFFFC|- rs1_w1_val == -1073741825<br>                                                                                                                                                                     |[0x80000fc8]:SMMUL t6, t5, t4<br> [0x80000fcc]:sd t6, 424(sp)<br>    |
|  81|[0x800034a8]<br>0xFFDFFFFFFFFFFDFF|- rs1_w1_val == -268435457<br>                                                                                                                                                                      |[0x80000ff8]:SMMUL t6, t5, t4<br> [0x80000ffc]:sd t6, 432(sp)<br>    |
|  82|[0x800034b8]<br>0xFFFFFFFEFFFFFFFF|- rs1_w1_val == -2097153<br>                                                                                                                                                                        |[0x80001044]:SMMUL t6, t5, t4<br> [0x80001048]:sd t6, 448(sp)<br>    |
|  83|[0x800034c0]<br>0x0000080000000000|- rs1_w1_val == -8193<br>                                                                                                                                                                           |[0x8000106c]:SMMUL t6, t5, t4<br> [0x80001070]:sd t6, 456(sp)<br>    |
|  84|[0x800034c8]<br>0x0000000000000000|- rs1_w1_val == -513<br> - rs1_w0_val == -33554433<br>                                                                                                                                              |[0x8000108c]:SMMUL t6, t5, t4<br> [0x80001090]:sd t6, 464(sp)<br>    |
|  85|[0x800034d0]<br>0x00000002FFFFFFDF|- rs1_w1_val == -257<br>                                                                                                                                                                            |[0x800010b4]:SMMUL t6, t5, t4<br> [0x800010b8]:sd t6, 472(sp)<br>    |
|  86|[0x800034d8]<br>0x00000000FFEFFFFF|- rs2_w0_val == 268435456<br> - rs1_w1_val == -129<br> - rs1_w0_val == -16777217<br>                                                                                                                |[0x800010d4]:SMMUL t6, t5, t4<br> [0x800010d8]:sd t6, 480(sp)<br>    |
|  87|[0x800034e0]<br>0x00000001FFFFFFFF|- rs2_w0_val == 4194304<br> - rs1_w1_val == -65<br>                                                                                                                                                 |[0x800010f8]:SMMUL t6, t5, t4<br> [0x800010fc]:sd t6, 488(sp)<br>    |
|  88|[0x800034e8]<br>0x0000000000000000|- rs2_w1_val == -32769<br> - rs1_w1_val == -33<br>                                                                                                                                                  |[0x8000111c]:SMMUL t6, t5, t4<br> [0x80001120]:sd t6, 496(sp)<br>    |
|  89|[0x800034f0]<br>0x00000000000002AA|- rs1_w1_val == -17<br>                                                                                                                                                                             |[0x80001150]:SMMUL t6, t5, t4<br> [0x80001154]:sd t6, 504(sp)<br>    |
|  90|[0x800034f8]<br>0xFFFFFFFBFFFFFFFF|- rs1_w1_val == -9<br> - rs1_w0_val == 524288<br>                                                                                                                                                   |[0x80001170]:SMMUL t6, t5, t4<br> [0x80001174]:sd t6, 512(sp)<br>    |
|  91|[0x80003500]<br>0x00000000FFFFFFEF|- rs2_w0_val == 262144<br> - rs1_w1_val == -5<br>                                                                                                                                                   |[0x80001194]:SMMUL t6, t5, t4<br> [0x80001198]:sd t6, 520(sp)<br>    |
|  92|[0x80003508]<br>0x00000000FFFFFFFF|- rs2_w0_val == -17<br> - rs1_w1_val == -2<br>                                                                                                                                                      |[0x800011b4]:SMMUL t6, t5, t4<br> [0x800011b8]:sd t6, 528(sp)<br>    |
|  93|[0x80003510]<br>0xFFF80000FFFFFFF8|- rs1_w1_val == -2147483648<br>                                                                                                                                                                     |[0x800011d4]:SMMUL t6, t5, t4<br> [0x800011d8]:sd t6, 536(sp)<br>    |
|  94|[0x80003518]<br>0x00020000FFFFFDFF|- rs1_w1_val == 1073741824<br>                                                                                                                                                                      |[0x80001200]:SMMUL t6, t5, t4<br> [0x80001204]:sd t6, 544(sp)<br>    |
|  95|[0x80003520]<br>0xFFFFFBFF00010000|- rs2_w0_val == -8388609<br> - rs1_w1_val == 268435456<br>                                                                                                                                          |[0x8000122c]:SMMUL t6, t5, t4<br> [0x80001230]:sd t6, 552(sp)<br>    |
|  96|[0x80003528]<br>0x00000000FFDFFFFF|- rs1_w1_val == 8388608<br>                                                                                                                                                                         |[0x8000124c]:SMMUL t6, t5, t4<br> [0x80001250]:sd t6, 560(sp)<br>    |
|  97|[0x80003530]<br>0xFFFFFFFFFFFFFFFE|- rs1_w1_val == 512<br>                                                                                                                                                                             |[0x80001270]:SMMUL t6, t5, t4<br> [0x80001274]:sd t6, 568(sp)<br>    |
|  98|[0x80003538]<br>0xFFFFFE0000000000|- rs1_w1_val == 2048<br> - rs1_w0_val == -4097<br>                                                                                                                                                  |[0x800012a0]:SMMUL t6, t5, t4<br> [0x800012a4]:sd t6, 576(sp)<br>    |
|  99|[0x80003540]<br>0xFFFFFFFF00000000|- rs1_w1_val == 128<br>                                                                                                                                                                             |[0x800012c0]:SMMUL t6, t5, t4<br> [0x800012c4]:sd t6, 584(sp)<br>    |
| 100|[0x80003548]<br>0x0000000000000000|- rs1_w1_val == 64<br>                                                                                                                                                                              |[0x800012e0]:SMMUL t6, t5, t4<br> [0x800012e4]:sd t6, 592(sp)<br>    |
| 101|[0x80003550]<br>0x00000000FFFFDFFF|- rs1_w1_val == 2<br>                                                                                                                                                                               |[0x80001304]:SMMUL t6, t5, t4<br> [0x80001308]:sd t6, 600(sp)<br>    |
| 102|[0x80003558]<br>0xFFFFFFFEFFFFBFFF|- rs1_w0_val == -536870913<br>                                                                                                                                                                      |[0x80001330]:SMMUL t6, t5, t4<br> [0x80001334]:sd t6, 608(sp)<br>    |
| 103|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == -1048577<br>                                                                                                                                                                        |[0x80001358]:SMMUL t6, t5, t4<br> [0x8000135c]:sd t6, 616(sp)<br>    |
| 104|[0x80003568]<br>0xFFFFFFFF00001000|- rs2_w0_val == -524289<br>                                                                                                                                                                         |[0x8000137c]:SMMUL t6, t5, t4<br> [0x80001380]:sd t6, 624(sp)<br>    |
| 105|[0x80003570]<br>0x0000040000000000|- rs2_w0_val == 32768<br>                                                                                                                                                                           |[0x800013a8]:SMMUL t6, t5, t4<br> [0x800013ac]:sd t6, 632(sp)<br>    |
| 106|[0x80003578]<br>0x0000000000000040|- rs2_w0_val == -513<br>                                                                                                                                                                            |[0x800013cc]:SMMUL t6, t5, t4<br> [0x800013d0]:sd t6, 640(sp)<br>    |
| 107|[0x80003580]<br>0x0000000000000000|- rs2_w0_val == 8192<br>                                                                                                                                                                            |[0x800013f0]:SMMUL t6, t5, t4<br> [0x800013f4]:sd t6, 648(sp)<br>    |
| 108|[0x80003588]<br>0x0000000000000000|- rs1_w0_val == -1025<br>                                                                                                                                                                           |[0x80001410]:SMMUL t6, t5, t4<br> [0x80001414]:sd t6, 656(sp)<br>    |
| 109|[0x80003590]<br>0x0000000000000000|- rs2_w0_val == -2<br>                                                                                                                                                                              |[0x80001430]:SMMUL t6, t5, t4<br> [0x80001434]:sd t6, 664(sp)<br>    |
| 110|[0x80003598]<br>0xFFFFFFFF02000000|- rs2_w0_val == 536870912<br> - rs1_w0_val == 268435456<br>                                                                                                                                         |[0x8000144c]:SMMUL t6, t5, t4<br> [0x80001450]:sd t6, 672(sp)<br>    |
| 111|[0x800035a0]<br>0x0000000000000000|- rs1_w0_val == -17<br>                                                                                                                                                                             |[0x80001470]:SMMUL t6, t5, t4<br> [0x80001474]:sd t6, 680(sp)<br>    |
| 112|[0x800035a8]<br>0x0000000000000100|- rs2_w0_val == 33554432<br> - rs1_w1_val == 4096<br>                                                                                                                                               |[0x80001490]:SMMUL t6, t5, t4<br> [0x80001494]:sd t6, 688(sp)<br>    |
| 113|[0x800035b0]<br>0x0000000000000000|- rs1_w0_val == -3<br>                                                                                                                                                                              |[0x800014b0]:SMMUL t6, t5, t4<br> [0x800014b4]:sd t6, 696(sp)<br>    |
| 114|[0x800035b8]<br>0x2AAAAAABFFFFFFFF|- rs2_w0_val == 16777216<br>                                                                                                                                                                        |[0x800014d8]:SMMUL t6, t5, t4<br> [0x800014dc]:sd t6, 704(sp)<br>    |
| 115|[0x800035c0]<br>0xFFFFFFFBFFFFFFFE|- rs1_w1_val == 131072<br> - rs1_w0_val == 134217728<br>                                                                                                                                            |[0x800014f8]:SMMUL t6, t5, t4<br> [0x800014fc]:sd t6, 712(sp)<br>    |
| 116|[0x800035c8]<br>0x0000000000040000|- rs1_w0_val == 67108864<br>                                                                                                                                                                        |[0x80001518]:SMMUL t6, t5, t4<br> [0x8000151c]:sd t6, 720(sp)<br>    |
| 117|[0x800035d0]<br>0xFFFEFFFF00000000|- rs1_w1_val == 2097152<br>                                                                                                                                                                         |[0x8000153c]:SMMUL t6, t5, t4<br> [0x80001540]:sd t6, 728(sp)<br>    |
| 118|[0x800035d8]<br>0x00000000FFFFC000|- rs2_w0_val == 65536<br>                                                                                                                                                                           |[0x80001554]:SMMUL t6, t5, t4<br> [0x80001558]:sd t6, 736(sp)<br>    |
| 119|[0x800035e0]<br>0x00000000FFE00000|- rs1_w0_val == 4194304<br>                                                                                                                                                                         |[0x80001570]:SMMUL t6, t5, t4<br> [0x80001574]:sd t6, 744(sp)<br>    |
| 120|[0x800035e8]<br>0x00000400FFFFFFFF|- rs2_w0_val == 16384<br>                                                                                                                                                                           |[0x80001594]:SMMUL t6, t5, t4<br> [0x80001598]:sd t6, 752(sp)<br>    |
| 121|[0x800035f0]<br>0x0000000000000000|- rs1_w1_val == 16384<br>                                                                                                                                                                           |[0x800015b4]:SMMUL t6, t5, t4<br> [0x800015b8]:sd t6, 760(sp)<br>    |
| 122|[0x800035f8]<br>0x0000020000000000|- rs2_w0_val == 256<br>                                                                                                                                                                             |[0x800015d8]:SMMUL t6, t5, t4<br> [0x800015dc]:sd t6, 768(sp)<br>    |
| 123|[0x80003600]<br>0xFFFFFFFF00000008|- rs2_w0_val == 128<br>                                                                                                                                                                             |[0x800015f8]:SMMUL t6, t5, t4<br> [0x800015fc]:sd t6, 776(sp)<br>    |
| 124|[0x80003608]<br>0xF5555555FFFFFFBF|- rs1_w0_val == -257<br>                                                                                                                                                                            |[0x80001624]:SMMUL t6, t5, t4<br> [0x80001628]:sd t6, 784(sp)<br>    |
| 125|[0x80003610]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 8388608<br>                                                                                                                                                                         |[0x80001644]:SMMUL t6, t5, t4<br> [0x80001648]:sd t6, 792(sp)<br>    |
| 126|[0x80003618]<br>0xFFFFFFFFFFFFBFFF|- rs2_w0_val == -4194305<br>                                                                                                                                                                        |[0x80001664]:SMMUL t6, t5, t4<br> [0x80001668]:sd t6, 800(sp)<br>    |
