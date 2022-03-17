
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e70')]      |
| SIG_REGION                | [('0x80002210', '0x80002540', '102 dwords')]      |
| COV_LABELS                | sra32.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sra32.u-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 101      |
| STAT1                     | 98      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000be4]:SRA32_U t6, t5, t4
      [0x80000be8]:sd t6, 464(t0)
 -- Signature Address: 0x80002470 Data: 0x00000000FFFFFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : sra32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 1
      - rs1_w1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e48]:SRA32_U t6, t5, t4
      [0x80000e4c]:sd t6, 648(t0)
 -- Signature Address: 0x80002528 Data: 0x0010000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == 2147483647
      - rs1_w0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e68]:SRA32_U t6, t5, t4
      [0x80000e6c]:sd t6, 656(t0)
 -- Signature Address: 0x80002530 Data: 0xFFF8000000000100
 -- Redundant Coverpoints hit by the op
      - opcode : sra32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == -268435457
      - rs1_w0_val == 131072






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

|s.no|            signature             |                                                                           coverpoints                                                                            |                                  code                                  |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : sra32.u<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs2_val == 21<br> - rs1_w1_val == 0<br>                            |[0x800003ac]:SRA32_U a7, s5, s5<br> [0x800003b0]:sd a7, 0(ra)<br>       |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs2_val == 15<br>                                                                         |[0x800003cc]:SRA32_U s7, s7, s7<br> [0x800003d0]:sd s7, 8(ra)<br>       |
|   3|[0x80002220]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x12<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 23<br> - rs1_w1_val == 8192<br> - rs1_w0_val == -257<br> |[0x800003e8]:SRA32_U s1, a4, a2<br> [0x800003ec]:sd s1, 16(ra)<br>      |
|   4|[0x80002228]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x8<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs2_val == 27<br> - rs1_w1_val == -17<br> - rs1_w0_val == 32<br>                           |[0x80000400]:SRA32_U t5, t5, fp<br> [0x80000404]:sd t5, 24(ra)<br>      |
|   5|[0x80002230]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x14<br> - rd : x14<br> - rs2 == rd != rs1<br> - rs2_val == 29<br> - rs1_w1_val == 8<br>                                                    |[0x80000418]:SRA32_U a4, s1, a4<br> [0x8000041c]:sd a4, 32(ra)<br>      |
|   6|[0x80002238]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x28<br> - rd : x24<br> - rs2_val == 30<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -134217729<br>                                     |[0x80000438]:SRA32_U s8, sp, t3<br> [0x8000043c]:sd s8, 40(ra)<br>      |
|   7|[0x80002240]<br>0xFFFFFC0000000000|- rs1 : x15<br> - rs2 : x25<br> - rd : x5<br> - rs2_val == 16<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 4096<br>                                          |[0x80000458]:SRA32_U t0, a5, s9<br> [0x8000045c]:sd t0, 48(ra)<br>      |
|   8|[0x80002248]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x7<br> - rd : x16<br> - rs2_val == 8<br> - rs1_w0_val == 0<br>                                                                             |[0x80000470]:SRA32_U a6, zero, t2<br> [0x80000474]:sd a6, 56(ra)<br>    |
|   9|[0x80002250]<br>0x0000000000001000|- rs1 : x20<br> - rs2 : x19<br> - rd : x27<br> - rs2_val == 4<br> - rs1_w1_val == 4<br> - rs1_w0_val == 65536<br>                                                 |[0x80000488]:SRA32_U s11, s4, s3<br> [0x8000048c]:sd s11, 64(ra)<br>    |
|  10|[0x80002258]<br>0x00000004FFFFFF80|- rs1 : x5<br> - rs2 : x22<br> - rd : x10<br> - rs2_val == 2<br> - rs1_w1_val == 16<br> - rs1_w0_val == -513<br>                                                  |[0x800004a0]:SRA32_U a0, t0, s6<br> [0x800004a4]:sd a0, 72(ra)<br>      |
|  11|[0x80002260]<br>0xFFFFE000FC000000|- rs1 : x22<br> - rs2 : x9<br> - rd : x19<br> - rs2_val == 1<br> - rs1_w1_val == -16385<br>                                                                       |[0x800004bc]:SRA32_U s3, s6, s1<br> [0x800004c0]:sd s3, 80(ra)<br>      |
|  12|[0x80002268]<br>0xFFFFF555FFFFFFFC|- rs1 : x11<br> - rs2 : x5<br> - rd : x22<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -2097153<br>                                                        |[0x800004e0]:SRA32_U s6, a1, t0<br> [0x800004e4]:sd s6, 88(ra)<br>      |
|  13|[0x80002270]<br>0x00055555FFFFFFF8|- rs1 : x18<br> - rs2 : x31<br> - rd : x25<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -32769<br>                                                          |[0x80000504]:SRA32_U s9, s2, t6<br> [0x80000508]:sd s9, 96(ra)<br>      |
|  14|[0x80002278]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x30<br> - rd : x0<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 16<br>                                                               |[0x80000520]:SRA32_U zero, s3, t5<br> [0x80000524]:sd zero, 104(ra)<br> |
|  15|[0x80002280]<br>0xFFFFF00000000000|- rs1 : x25<br> - rs2 : x2<br> - rd : x8<br> - rs1_w1_val == -1073741825<br>                                                                                      |[0x80000538]:SRA32_U fp, s9, sp<br> [0x8000053c]:sd fp, 112(ra)<br>     |
|  16|[0x80002288]<br>0xFE000000FFFFFF80|- rs1 : x26<br> - rs2 : x6<br> - rd : x18<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -2049<br>                                                            |[0x80000558]:SRA32_U s2, s10, t1<br> [0x8000055c]:sd s2, 120(ra)<br>    |
|  17|[0x80002290]<br>0xEFFFFFFF00020000|- rs1 : x27<br> - rs2 : x0<br> - rd : x12<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 131072<br>                                                           |[0x80000578]:SRA32_U a2, s11, zero<br> [0x8000057c]:sd a2, 128(ra)<br>  |
|  18|[0x80002298]<br>0xFFFFE00000000000|- rs1 : x3<br> - rs2 : x24<br> - rd : x29<br> - rs1_w1_val == -134217729<br>                                                                                      |[0x80000594]:SRA32_U t4, gp, s8<br> [0x80000598]:sd t4, 136(ra)<br>     |
|  19|[0x800022a0]<br>0xFFFFFC0000000800|- rs1 : x6<br> - rs2 : x18<br> - rd : x1<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 67108864<br>                                                           |[0x800005b8]:SRA32_U ra, t1, s2<br> [0x800005bc]:sd ra, 0(t0)<br>       |
|  20|[0x800022a8]<br>0xFFFFC000FFFF8000|- rs1 : x24<br> - rs2 : x26<br> - rd : x6<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -33554433<br> - rs2_val == 10<br>                                     |[0x800005d8]:SRA32_U t1, s8, s10<br> [0x800005dc]:sd t1, 8(t0)<br>      |
|  21|[0x800022b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x8<br> - rs2 : x3<br> - rd : x21<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -8388609<br>                                                            |[0x800005f8]:SRA32_U s5, fp, gp<br> [0x800005fc]:sd s5, 16(t0)<br>      |
|  22|[0x800022b8]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x11<br> - rd : x13<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == 8<br>                                                                 |[0x80000614]:SRA32_U a3, t3, a1<br> [0x80000618]:sd a3, 24(t0)<br>      |
|  23|[0x800022c0]<br>0xFFFFF000FFFFFC00|- rs1 : x29<br> - rs2 : x16<br> - rd : x26<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == -524289<br>                                                           |[0x80000634]:SRA32_U s10, t4, a6<br> [0x80000638]:sd s10, 32(t0)<br>    |
|  24|[0x800022c8]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x29<br> - rd : x11<br> - rs1_w1_val == -1048577<br>                                                                                       |[0x80000654]:SRA32_U a1, a3, t4<br> [0x80000658]:sd a1, 40(t0)<br>      |
|  25|[0x800022d0]<br>0xFFFFFFFF00000000|- rs1 : x4<br> - rs2 : x13<br> - rd : x31<br> - rs1_w1_val == -524289<br> - rs1_w0_val == 2048<br>                                                                |[0x80000678]:SRA32_U t6, tp, a3<br> [0x8000067c]:sd t6, 48(t0)<br>      |
|  26|[0x800022d8]<br>0xFFFFFFF800000000|- rs1 : x1<br> - rs2 : x27<br> - rd : x15<br> - rs1_w1_val == -262145<br>                                                                                         |[0x8000069c]:SRA32_U a5, ra, s11<br> [0x800006a0]:sd a5, 56(t0)<br>     |
|  27|[0x800022e0]<br>0xFFFFFC0000AAAAAB|- rs1 : x16<br> - rs2 : x4<br> - rd : x7<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 1431655765<br>                                                           |[0x800006c0]:SRA32_U t2, a6, tp<br> [0x800006c4]:sd t2, 64(t0)<br>      |
|  28|[0x800022e8]<br>0xFFFFFFC0FFFFE000|- rs1 : x31<br> - rs2 : x1<br> - rd : x3<br> - rs1_w1_val == -65537<br>                                                                                           |[0x800006dc]:SRA32_U gp, t6, ra<br> [0x800006e0]:sd gp, 72(t0)<br>      |
|  29|[0x800022f0]<br>0xFFFFFFFE00000000|- rs1 : x10<br> - rs2 : x17<br> - rd : x20<br> - rs1_w1_val == -32769<br> - rs1_w0_val == -33<br>                                                                 |[0x800006f4]:SRA32_U s4, a0, a7<br> [0x800006f8]:sd s4, 80(t0)<br>      |
|  30|[0x800022f8]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x15<br> - rd : x28<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -2<br>                                                                    |[0x8000070c]:SRA32_U t3, t2, a5<br> [0x80000710]:sd t3, 88(t0)<br>      |
|  31|[0x80002300]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x20<br> - rd : x2<br> - rs1_w1_val == -4097<br>                                                                                           |[0x80000728]:SRA32_U sp, a2, s4<br> [0x8000072c]:sd sp, 96(t0)<br>      |
|  32|[0x80002308]<br>0xFFFFFFE0FFFE0000|- rs1 : x17<br> - rs2 : x10<br> - rd : x4<br> - rs1_w1_val == -2049<br>                                                                                           |[0x80000744]:SRA32_U tp, a7, a0<br> [0x80000748]:sd tp, 104(t0)<br>     |
|  33|[0x80002310]<br>0x0000000000004000|- rs1_w1_val == -1025<br> - rs1_w0_val == 134217728<br>                                                                                                           |[0x8000075c]:SRA32_U t6, t5, t4<br> [0x80000760]:sd t6, 112(t0)<br>     |
|  34|[0x80002318]<br>0x0000000000000000|- rs1_w1_val == -513<br> - rs1_w0_val == -262145<br>                                                                                                              |[0x80000778]:SRA32_U t6, t5, t4<br> [0x8000077c]:sd t6, 120(t0)<br>     |
|  35|[0x80002320]<br>0xFFFFFFF8FFFFC000|- rs1_w1_val == -257<br>                                                                                                                                          |[0x80000794]:SRA32_U t6, t5, t4<br> [0x80000798]:sd t6, 128(t0)<br>     |
|  36|[0x80002328]<br>0x00000000FFF00000|- rs1_w1_val == -129<br> - rs1_w0_val == -1073741825<br>                                                                                                          |[0x800007ac]:SRA32_U t6, t5, t4<br> [0x800007b0]:sd t6, 136(t0)<br>     |
|  37|[0x80002330]<br>0x0000000000000000|- rs1_w1_val == -65<br>                                                                                                                                           |[0x800007c4]:SRA32_U t6, t5, t4<br> [0x800007c8]:sd t6, 144(t0)<br>     |
|  38|[0x80002338]<br>0x0000000000000000|- rs1_w1_val == -33<br> - rs1_w0_val == 1024<br>                                                                                                                  |[0x800007dc]:SRA32_U t6, t5, t4<br> [0x800007e0]:sd t6, 152(t0)<br>     |
|  39|[0x80002340]<br>0x00000000FFFFFFFE|- rs1_w1_val == -9<br>                                                                                                                                            |[0x800007f4]:SRA32_U t6, t5, t4<br> [0x800007f8]:sd t6, 160(t0)<br>     |
|  40|[0x80002348]<br>0x0000000000000000|- rs1_w1_val == -5<br>                                                                                                                                            |[0x80000808]:SRA32_U t6, t5, t4<br> [0x8000080c]:sd t6, 168(t0)<br>     |
|  41|[0x80002350]<br>0x00000000FFFFFFFD|- rs1_w1_val == -3<br> - rs1_w0_val == -1431655766<br>                                                                                                            |[0x80000824]:SRA32_U t6, t5, t4<br> [0x80000828]:sd t6, 176(t0)<br>     |
|  42|[0x80002358]<br>0x00000000FFFFFFFC|- rs1_w1_val == -2<br> - rs1_w0_val == -131073<br>                                                                                                                |[0x80000840]:SRA32_U t6, t5, t4<br> [0x80000844]:sd t6, 184(t0)<br>     |
|  43|[0x80002360]<br>0xFFE0000000000000|- rs1_w1_val == -2147483648<br> - rs1_w0_val == -9<br>                                                                                                            |[0x8000085c]:SRA32_U t6, t5, t4<br> [0x80000860]:sd t6, 192(t0)<br>     |
|  44|[0x80002368]<br>0x0000008000000020|- rs1_w1_val == 1073741824<br> - rs1_w0_val == 268435456<br>                                                                                                      |[0x80000878]:SRA32_U t6, t5, t4<br> [0x8000087c]:sd t6, 200(t0)<br>     |
|  45|[0x80002370]<br>0x04000000FFF80000|- rs1_w1_val == 536870912<br> - rs1_w0_val == -4194305<br>                                                                                                        |[0x80000898]:SRA32_U t6, t5, t4<br> [0x8000089c]:sd t6, 208(t0)<br>     |
|  46|[0x80002378]<br>0x0000040000004000|- rs1_w1_val == 2048<br> - rs1_w0_val == 32768<br>                                                                                                                |[0x800008b0]:SRA32_U t6, t5, t4<br> [0x800008b4]:sd t6, 216(t0)<br>     |
|  47|[0x80002380]<br>0xFFFF000000000002|- rs1_w0_val == 16384<br>                                                                                                                                         |[0x800008d0]:SRA32_U t6, t5, t4<br> [0x800008d4]:sd t6, 224(t0)<br>     |
|  48|[0x80002388]<br>0xFFFFF80000000800|- rs1_w0_val == 8192<br>                                                                                                                                          |[0x800008f0]:SRA32_U t6, t5, t4<br> [0x800008f4]:sd t6, 232(t0)<br>     |
|  49|[0x80002390]<br>0x0000000000000000|- rs1_w0_val == 512<br>                                                                                                                                           |[0x80000908]:SRA32_U t6, t5, t4<br> [0x8000090c]:sd t6, 240(t0)<br>     |
|  50|[0x80002398]<br>0xFFFFFE0000000000|- rs1_w0_val == 256<br>                                                                                                                                           |[0x80000924]:SRA32_U t6, t5, t4<br> [0x80000928]:sd t6, 248(t0)<br>     |
|  51|[0x800023a0]<br>0xFC00000000000020|- rs1_w0_val == 128<br>                                                                                                                                           |[0x80000940]:SRA32_U t6, t5, t4<br> [0x80000944]:sd t6, 256(t0)<br>     |
|  52|[0x800023a8]<br>0xFFFFFF8000000000|- rs1_w0_val == 64<br>                                                                                                                                            |[0x8000095c]:SRA32_U t6, t5, t4<br> [0x80000960]:sd t6, 264(t0)<br>     |
|  53|[0x800023b0]<br>0xFFFF000000000000|- rs1_w0_val == 4<br>                                                                                                                                             |[0x80000978]:SRA32_U t6, t5, t4<br> [0x8000097c]:sd t6, 272(t0)<br>     |
|  54|[0x800023b8]<br>0x0000000100000000|- rs1_w0_val == 2<br>                                                                                                                                             |[0x80000990]:SRA32_U t6, t5, t4<br> [0x80000994]:sd t6, 280(t0)<br>     |
|  55|[0x800023c0]<br>0xFFFFFF8000000000|- rs1_w0_val == -1<br>                                                                                                                                            |[0x800009a8]:SRA32_U t6, t5, t4<br> [0x800009ac]:sd t6, 288(t0)<br>     |
|  56|[0x800023c8]<br>0x00200000FFFFFFFF|- rs1_w1_val == 268435456<br> - rs1_w0_val == -65<br>                                                                                                             |[0x800009c4]:SRA32_U t6, t5, t4<br> [0x800009c8]:sd t6, 296(t0)<br>     |
|  57|[0x800023d0]<br>0x0000040000000040|- rs1_w1_val == 134217728<br> - rs1_w0_val == 8388608<br>                                                                                                         |[0x800009e0]:SRA32_U t6, t5, t4<br> [0x800009e4]:sd t6, 304(t0)<br>     |
|  58|[0x800023d8]<br>0x0000000000000000|- rs1_w1_val == 33554432<br>                                                                                                                                      |[0x800009f8]:SRA32_U t6, t5, t4<br> [0x800009fc]:sd t6, 312(t0)<br>     |
|  59|[0x800023e0]<br>0x00020000FFE00000|- rs1_w1_val == 16777216<br> - rs1_w0_val == -268435457<br>                                                                                                       |[0x80000a14]:SRA32_U t6, t5, t4<br> [0x80000a18]:sd t6, 320(t0)<br>     |
|  60|[0x800023e8]<br>0x0000000400000000|- rs1_w1_val == 8388608<br>                                                                                                                                       |[0x80000a2c]:SRA32_U t6, t5, t4<br> [0x80000a30]:sd t6, 328(t0)<br>     |
|  61|[0x800023f0]<br>0x0000000200000000|- rs1_w1_val == 4194304<br>                                                                                                                                       |[0x80000a48]:SRA32_U t6, t5, t4<br> [0x80000a4c]:sd t6, 336(t0)<br>     |
|  62|[0x800023f8]<br>0x00000008FFFFE000|- rs1_w1_val == 2097152<br> - rs1_w0_val == -2147483648<br>                                                                                                       |[0x80000a60]:SRA32_U t6, t5, t4<br> [0x80000a64]:sd t6, 344(t0)<br>     |
|  63|[0x80002400]<br>0x0000400000000010|- rs1_w1_val == 1048576<br>                                                                                                                                       |[0x80000a78]:SRA32_U t6, t5, t4<br> [0x80000a7c]:sd t6, 352(t0)<br>     |
|  64|[0x80002408]<br>0x0000080000000000|- rs1_w1_val == 524288<br>                                                                                                                                        |[0x80000a90]:SRA32_U t6, t5, t4<br> [0x80000a94]:sd t6, 360(t0)<br>     |
|  65|[0x80002410]<br>0x0000400000000002|- rs1_w1_val == 262144<br>                                                                                                                                        |[0x80000aa8]:SRA32_U t6, t5, t4<br> [0x80000aac]:sd t6, 368(t0)<br>     |
|  66|[0x80002418]<br>0x0000000200000000|- rs1_w1_val == 131072<br> - rs1_w0_val == -1025<br>                                                                                                              |[0x80000ac4]:SRA32_U t6, t5, t4<br> [0x80000ac8]:sd t6, 376(t0)<br>     |
|  67|[0x80002420]<br>0x00002000FFFFFFFF|- rs1_w1_val == 65536<br>                                                                                                                                         |[0x80000ae0]:SRA32_U t6, t5, t4<br> [0x80000ae4]:sd t6, 384(t0)<br>     |
|  68|[0x80002428]<br>0x00000002FFFF0000|- rs1_w1_val == 32768<br>                                                                                                                                         |[0x80000afc]:SRA32_U t6, t5, t4<br> [0x80000b00]:sd t6, 392(t0)<br>     |
|  69|[0x80002430]<br>0x000040003FFFFFFF|- rs1_w1_val == 16384<br>                                                                                                                                         |[0x80000b18]:SRA32_U t6, t5, t4<br> [0x80000b1c]:sd t6, 400(t0)<br>     |
|  70|[0x80002438]<br>0x0000000200000000|- rs1_w1_val == 4096<br>                                                                                                                                          |[0x80000b34]:SRA32_U t6, t5, t4<br> [0x80000b38]:sd t6, 408(t0)<br>     |
|  71|[0x80002440]<br>0x00000000FFFFFF80|- rs1_w1_val == 1024<br>                                                                                                                                          |[0x80000b50]:SRA32_U t6, t5, t4<br> [0x80000b54]:sd t6, 416(t0)<br>     |
|  72|[0x80002448]<br>0x0000001000200000|- rs1_w1_val == 512<br>                                                                                                                                           |[0x80000b68]:SRA32_U t6, t5, t4<br> [0x80000b6c]:sd t6, 424(t0)<br>     |
|  73|[0x80002450]<br>0x00000080FFFFFF80|- rs1_w1_val == 256<br>                                                                                                                                           |[0x80000b80]:SRA32_U t6, t5, t4<br> [0x80000b84]:sd t6, 432(t0)<br>     |
|  74|[0x80002458]<br>0x0000000000000000|- rs1_w1_val == 64<br>                                                                                                                                            |[0x80000b98]:SRA32_U t6, t5, t4<br> [0x80000b9c]:sd t6, 440(t0)<br>     |
|  75|[0x80002460]<br>0x0000002002000000|- rs1_w1_val == 32<br> - rs1_w0_val == 33554432<br>                                                                                                               |[0x80000bb0]:SRA32_U t6, t5, t4<br> [0x80000bb4]:sd t6, 448(t0)<br>     |
|  76|[0x80002468]<br>0x00000000FFFFFFC0|- rs1_w1_val == 1<br> - rs1_w0_val == -8193<br>                                                                                                                   |[0x80000bcc]:SRA32_U t6, t5, t4<br> [0x80000bd0]:sd t6, 456(t0)<br>     |
|  77|[0x80002478]<br>0x0000000000000000|- rs1_w1_val == -1<br> - rs1_w0_val == -65537<br>                                                                                                                 |[0x80000bf8]:SRA32_U t6, t5, t4<br> [0x80000bfc]:sd t6, 472(t0)<br>     |
|  78|[0x80002480]<br>0x0000000000004000|- rs1_w0_val == 2147483647<br>                                                                                                                                    |[0x80000c10]:SRA32_U t6, t5, t4<br> [0x80000c14]:sd t6, 480(t0)<br>     |
|  79|[0x80002488]<br>0xFFFFF000FFFFF800|- rs1_w0_val == -536870913<br>                                                                                                                                    |[0x80000c30]:SRA32_U t6, t5, t4<br> [0x80000c34]:sd t6, 488(t0)<br>     |
|  80|[0x80002490]<br>0x00000000FFFFE000|- rs1_w0_val == -67108865<br>                                                                                                                                     |[0x80000c48]:SRA32_U t6, t5, t4<br> [0x80000c4c]:sd t6, 496(t0)<br>     |
|  81|[0x80002498]<br>0xFFFE0000FFFFC000|- rs1_w0_val == -16777217<br>                                                                                                                                     |[0x80000c68]:SRA32_U t6, t5, t4<br> [0x80000c6c]:sd t6, 504(t0)<br>     |
|  82|[0x800024a0]<br>0x0000004000000000|- rs1_w0_val == -16385<br>                                                                                                                                        |[0x80000c8c]:SRA32_U t6, t5, t4<br> [0x80000c90]:sd t6, 512(t0)<br>     |
|  83|[0x800024a8]<br>0xFFFFFFFF00000000|- rs1_w0_val == -4097<br>                                                                                                                                         |[0x80000cac]:SRA32_U t6, t5, t4<br> [0x80000cb0]:sd t6, 520(t0)<br>     |
|  84|[0x800024b0]<br>0x0000000000000000|- rs1_w0_val == -129<br>                                                                                                                                          |[0x80000cc8]:SRA32_U t6, t5, t4<br> [0x80000ccc]:sd t6, 528(t0)<br>     |
|  85|[0x800024b8]<br>0x0000080000000000|- rs1_w0_val == -17<br>                                                                                                                                           |[0x80000ce4]:SRA32_U t6, t5, t4<br> [0x80000ce8]:sd t6, 536(t0)<br>     |
|  86|[0x800024c0]<br>0x0000000000000000|- rs1_w0_val == -5<br>                                                                                                                                            |[0x80000cfc]:SRA32_U t6, t5, t4<br> [0x80000d00]:sd t6, 544(t0)<br>     |
|  87|[0x800024c8]<br>0x0000000000000000|- rs1_w0_val == -3<br>                                                                                                                                            |[0x80000d14]:SRA32_U t6, t5, t4<br> [0x80000d18]:sd t6, 552(t0)<br>     |
|  88|[0x800024d0]<br>0x0000010000080000|- rs1_w0_val == 1048576<br>                                                                                                                                       |[0x80000d2c]:SRA32_U t6, t5, t4<br> [0x80000d30]:sd t6, 560(t0)<br>     |
|  89|[0x800024d8]<br>0xFFF8000008000000|- rs1_w0_val == 1073741824<br>                                                                                                                                    |[0x80000d44]:SRA32_U t6, t5, t4<br> [0x80000d48]:sd t6, 568(t0)<br>     |
|  90|[0x800024e0]<br>0x0000040000800000|- rs1_w0_val == 536870912<br>                                                                                                                                     |[0x80000d5c]:SRA32_U t6, t5, t4<br> [0x80000d60]:sd t6, 576(t0)<br>     |
|  91|[0x800024e8]<br>0x0000000000000200|- rs1_w0_val == 16777216<br>                                                                                                                                      |[0x80000d70]:SRA32_U t6, t5, t4<br> [0x80000d74]:sd t6, 584(t0)<br>     |
|  92|[0x800024f0]<br>0x0000000100000080|- rs1_w0_val == 4194304<br>                                                                                                                                       |[0x80000d88]:SRA32_U t6, t5, t4<br> [0x80000d8c]:sd t6, 592(t0)<br>     |
|  93|[0x800024f8]<br>0x0000000000000000|- rs1_w0_val == 2097152<br>                                                                                                                                       |[0x80000da4]:SRA32_U t6, t5, t4<br> [0x80000da8]:sd t6, 600(t0)<br>     |
|  94|[0x80002500]<br>0xFC000000FFFF0000|- rs1_w0_val == -1048577<br>                                                                                                                                      |[0x80000dc8]:SRA32_U t6, t5, t4<br> [0x80000dcc]:sd t6, 608(t0)<br>     |
|  95|[0x80002508]<br>0xFFFFFE0000002000|- rs1_w0_val == 524288<br>                                                                                                                                        |[0x80000de0]:SRA32_U t6, t5, t4<br> [0x80000de4]:sd t6, 616(t0)<br>     |
|  96|[0x80002510]<br>0x0000000000000000|- rs1_w0_val == 262144<br>                                                                                                                                        |[0x80000df8]:SRA32_U t6, t5, t4<br> [0x80000dfc]:sd t6, 624(t0)<br>     |
|  97|[0x80002518]<br>0x00000000FFFFFFFC|- rs1_w1_val == 128<br>                                                                                                                                           |[0x80000e14]:SRA32_U t6, t5, t4<br> [0x80000e18]:sd t6, 632(t0)<br>     |
|  98|[0x80002520]<br>0x0000000000000000|- rs1_w1_val == 2<br> - rs1_w0_val == 1<br>                                                                                                                       |[0x80000e2c]:SRA32_U t6, t5, t4<br> [0x80000e30]:sd t6, 640(t0)<br>     |
