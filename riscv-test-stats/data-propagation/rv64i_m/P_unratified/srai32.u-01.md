
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ce0')]      |
| SIG_REGION                | [('0x80002210', '0x80002570', '108 dwords')]      |
| COV_LABELS                | srai32.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srai32.u-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 107      |
| STAT1                     | 107      |
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

|s.no|            signature             |                                                                   coverpoints                                                                    |                                  code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000FFFC0000|- opcode : srai32.u<br> - rs1 : x24<br> - rd : x24<br> - rs1 == rd<br> - rs1_w0_val == -2147483648<br> - imm_val == 13<br> - rs1_w1_val == -1<br> |[0x8000039c]:SRAI32_U s8, s8, 13<br> [0x800003a0]:sd s8, 0(a4)<br>      |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x0<br> - rd : x8<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                      |[0x800003ac]:SRAI32_U fp, zero, 31<br> [0x800003b0]:sd fp, 8(a4)<br>    |
|   3|[0x80002220]<br>0x0000000000000000|- rs1 : x13<br> - rd : x16<br> - imm_val == 30<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 4<br>                                                |[0x800003c0]:SRAI32_U a6, a3, 30<br> [0x800003c4]:sd a6, 16(a4)<br>     |
|   4|[0x80002228]<br>0x0000000300000000|- rs1 : x1<br> - rd : x11<br> - imm_val == 29<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 32768<br>                                        |[0x800003dc]:SRAI32_U a1, ra, 29<br> [0x800003e0]:sd a1, 24(a4)<br>     |
|   5|[0x80002230]<br>0x0000000000000000|- rs1 : x15<br> - rd : x0<br> - imm_val == 28<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -8193<br>                                             |[0x800003f8]:SRAI32_U zero, a5, 28<br> [0x800003fc]:sd zero, 32(a4)<br> |
|   6|[0x80002238]<br>0x0000000000000000|- rs1 : x22<br> - rd : x12<br> - imm_val == 27<br> - rs1_w0_val == -524289<br>                                                                    |[0x80000410]:SRAI32_U a2, s6, 27<br> [0x80000414]:sd a2, 40(a4)<br>     |
|   7|[0x80002240]<br>0x0000000000000000|- rs1 : x4<br> - rd : x25<br> - imm_val == 26<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 16<br>                                               |[0x80000424]:SRAI32_U s9, tp, 26<br> [0x80000428]:sd s9, 48(a4)<br>     |
|   8|[0x80002248]<br>0x00000000FFFFFFF8|- rs1 : x26<br> - rd : x10<br> - imm_val == 25<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -268435457<br>                                       |[0x8000043c]:SRAI32_U a0, s10, 25<br> [0x80000440]:sd a0, 56(a4)<br>    |
|   9|[0x80002250]<br>0x0000005500000000|- rs1 : x12<br> - rd : x31<br> - imm_val == 24<br> - rs1_w0_val == 1<br>                                                                          |[0x80000454]:SRAI32_U t6, a2, 24<br> [0x80000458]:sd t6, 64(a4)<br>     |
|  10|[0x80002258]<br>0x0000000100000008|- rs1 : x17<br> - rd : x23<br> - imm_val == 23<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 67108864<br>                                       |[0x80000468]:SRAI32_U s7, a7, 23<br> [0x8000046c]:sd s7, 72(a4)<br>     |
|  11|[0x80002260]<br>0x0000000000000010|- rs1 : x31<br> - rd : x29<br> - imm_val == 22<br>                                                                                                |[0x80000478]:SRAI32_U t4, t6, 22<br> [0x8000047c]:sd t4, 80(a4)<br>     |
|  12|[0x80002268]<br>0x0000000000000000|- rs1 : x5<br> - rd : x22<br> - imm_val == 21<br> - rs1_w1_val == -257<br> - rs1_w0_val == 8<br>                                                  |[0x8000048c]:SRAI32_U s6, t0, 21<br> [0x80000490]:sd s6, 88(a4)<br>     |
|  13|[0x80002270]<br>0x0000004000000400|- rs1 : x3<br> - rd : x7<br> - imm_val == 20<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 1073741824<br>                                      |[0x800004a0]:SRAI32_U t2, gp, 20<br> [0x800004a4]:sd t2, 96(a4)<br>     |
|  14|[0x80002278]<br>0x0000000000000000|- rs1 : x21<br> - rd : x17<br> - imm_val == 19<br> - rs1_w1_val == -65537<br>                                                                     |[0x800004b4]:SRAI32_U a7, s5, 19<br> [0x800004b8]:sd a7, 104(a4)<br>    |
|  15|[0x80002280]<br>0x0000000000000000|- rs1 : x30<br> - rd : x28<br> - imm_val == 18<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -65<br>                                              |[0x800004c8]:SRAI32_U t3, t5, 18<br> [0x800004cc]:sd t3, 112(a4)<br>    |
|  16|[0x80002288]<br>0xFFFFF00000000000|- rs1 : x16<br> - rd : x9<br> - imm_val == 17<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -17<br>                                          |[0x800004dc]:SRAI32_U s1, a6, 17<br> [0x800004e0]:sd s1, 120(a4)<br>    |
|  17|[0x80002290]<br>0xFFFFFC0000000000|- rs1 : x9<br> - rd : x2<br> - imm_val == 16<br> - rs1_w1_val == -67108865<br>                                                                    |[0x800004f0]:SRAI32_U sp, s1, 16<br> [0x800004f4]:sd sp, 128(a4)<br>    |
|  18|[0x80002298]<br>0xFFFFFFFE00000010|- rs1 : x7<br> - rd : x13<br> - imm_val == 15<br> - rs1_w0_val == 524288<br>                                                                      |[0x80000504]:SRAI32_U a3, t2, 15<br> [0x80000508]:sd a3, 136(a4)<br>    |
|  19|[0x800022a0]<br>0xFFFF000000000000|- rs1 : x8<br> - rd : x27<br> - imm_val == 14<br> - rs1_w0_val == -4097<br>                                                                       |[0x80000524]:SRAI32_U s11, fp, 14<br> [0x80000528]:sd s11, 144(a4)<br>  |
|  20|[0x800022a8]<br>0x0000000000000000|- rs1 : x18<br> - rd : x6<br> - imm_val == 12<br>                                                                                                 |[0x80000538]:SRAI32_U t1, s2, 12<br> [0x8000053c]:sd t1, 152(a4)<br>    |
|  21|[0x800022b0]<br>0x00000000FFFE0000|- rs1 : x10<br> - rd : x1<br> - imm_val == 11<br>                                                                                                 |[0x80000554]:SRAI32_U ra, a0, 11<br> [0x80000558]:sd ra, 0(t2)<br>      |
|  22|[0x800022b8]<br>0x0000000400000000|- rs1 : x19<br> - rd : x5<br> - imm_val == 10<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 2<br>                                                  |[0x80000568]:SRAI32_U t0, s3, 10<br> [0x8000056c]:sd t0, 8(t2)<br>      |
|  23|[0x800022c0]<br>0x0000000000000020|- rs1 : x6<br> - rd : x14<br> - imm_val == 9<br> - rs1_w0_val == 16384<br>                                                                        |[0x8000057c]:SRAI32_U a4, t1, 9<br> [0x80000580]:sd a4, 16(t2)<br>      |
|  24|[0x800022c8]<br>0xFFFFFFFFFFFC0000|- rs1 : x29<br> - rd : x30<br> - imm_val == 8<br> - rs1_w0_val == -67108865<br>                                                                   |[0x80000594]:SRAI32_U t5, t4, 8<br> [0x80000598]:sd t5, 24(t2)<br>      |
|  25|[0x800022d0]<br>0x0000000200800000|- rs1 : x11<br> - rd : x20<br> - imm_val == 7<br> - rs1_w1_val == 256<br>                                                                         |[0x800005a8]:SRAI32_U s4, a1, 7<br> [0x800005ac]:sd s4, 32(t2)<br>      |
|  26|[0x800022d8]<br>0xFFFC000002000000|- rs1 : x23<br> - rd : x18<br> - imm_val == 6<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == 2147483647<br>                                    |[0x800005c0]:SRAI32_U s2, s7, 6<br> [0x800005c4]:sd s2, 40(t2)<br>      |
|  27|[0x800022e0]<br>0xFFF8000002000000|- rs1 : x20<br> - rd : x3<br> - imm_val == 5<br>                                                                                                  |[0x800005d4]:SRAI32_U gp, s4, 5<br> [0x800005d8]:sd gp, 48(t2)<br>      |
|  28|[0x800022e8]<br>0x0000000400000000|- rs1 : x28<br> - rd : x21<br> - imm_val == 4<br> - rs1_w1_val == 64<br> - rs1_w0_val == -2<br>                                                   |[0x800005e8]:SRAI32_U s5, t3, 4<br> [0x800005ec]:sd s5, 56(t2)<br>      |
|  29|[0x800022f0]<br>0x00000004FFFFFC00|- rs1 : x14<br> - rd : x26<br> - imm_val == 3<br> - rs1_w1_val == 32<br>                                                                          |[0x80000600]:SRAI32_U s10, a4, 3<br> [0x80000604]:sd s10, 64(t2)<br>    |
|  30|[0x800022f8]<br>0x00400000F0000000|- rs1 : x2<br> - rd : x19<br> - imm_val == 2<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == -1073741825<br>                                     |[0x80000618]:SRAI32_U s3, sp, 2<br> [0x8000061c]:sd s3, 72(t2)<br>      |
|  31|[0x80002300]<br>0xFFFF0000FC000000|- rs1 : x27<br> - rd : x15<br> - imm_val == 1<br> - rs1_w1_val == -131073<br> - rs1_w0_val == -134217729<br>                                      |[0x80000630]:SRAI32_U a5, s11, 1<br> [0x80000634]:sd a5, 80(t2)<br>     |
|  32|[0x80002308]<br>0x0000800000000009|- rs1 : x25<br> - rd : x4<br> - imm_val == 0<br>                                                                                                  |[0x80000644]:SRAI32_U tp, s9, 0<br> [0x80000648]:sd tp, 88(t2)<br>      |
|  33|[0x80002310]<br>0xF555555500000200|- rs1_w1_val == -1431655766<br> - rs1_w0_val == 4096<br>                                                                                          |[0x80000660]:SRAI32_U t6, t5, 3<br> [0x80000664]:sd t6, 96(t2)<br>      |
|  34|[0x80002318]<br>0x0100000000800000|- rs1_w1_val == 2147483647<br>                                                                                                                    |[0x8000067c]:SRAI32_U t6, t5, 7<br> [0x80000680]:sd t6, 104(t2)<br>     |
|  35|[0x80002320]<br>0xFFFFC000FFFFC000|- rs1_w1_val == -1073741825<br>                                                                                                                   |[0x80000694]:SRAI32_U t6, t5, 16<br> [0x80000698]:sd t6, 112(t2)<br>    |
|  36|[0x80002328]<br>0xFFFF800000000000|- rs1_w1_val == -268435457<br>                                                                                                                    |[0x800006a8]:SRAI32_U t6, t5, 13<br> [0x800006ac]:sd t6, 120(t2)<br>    |
|  37|[0x80002330]<br>0xFFFFFFE000000000|- rs1_w1_val == -134217729<br>                                                                                                                    |[0x800006bc]:SRAI32_U t6, t5, 22<br> [0x800006c0]:sd t6, 128(t2)<br>    |
|  38|[0x80002338]<br>0xFFFFFFF0FFFFFFFF|- rs1_w1_val == -33554433<br> - rs1_w0_val == -1048577<br>                                                                                        |[0x800006d8]:SRAI32_U t6, t5, 21<br> [0x800006dc]:sd t6, 136(t2)<br>    |
|  39|[0x80002340]<br>0xFFFFF000FFFFFFF8|- rs1_w1_val == -8388609<br> - rs1_w0_val == -16385<br>                                                                                           |[0x800006f4]:SRAI32_U t6, t5, 11<br> [0x800006f8]:sd t6, 144(t2)<br>    |
|  40|[0x80002348]<br>0x0000000000000000|- rs1_w1_val == -4194305<br> - rs1_w0_val == 256<br>                                                                                              |[0x8000070c]:SRAI32_U t6, t5, 31<br> [0x80000710]:sd t6, 152(t2)<br>    |
|  41|[0x80002350]<br>0xFFFFFFE000000000|- rs1_w1_val == -2097153<br>                                                                                                                      |[0x80000720]:SRAI32_U t6, t5, 16<br> [0x80000724]:sd t6, 160(t2)<br>    |
|  42|[0x80002358]<br>0xFFFF800000020000|- rs1_w1_val == -1048577<br> - rs1_w0_val == 4194304<br>                                                                                          |[0x80000734]:SRAI32_U t6, t5, 5<br> [0x80000738]:sd t6, 168(t2)<br>     |
|  43|[0x80002360]<br>0xFFFFFFFC00000000|- rs1_w1_val == -524289<br>                                                                                                                       |[0x8000074c]:SRAI32_U t6, t5, 17<br> [0x80000750]:sd t6, 176(t2)<br>    |
|  44|[0x80002368]<br>0xFFFFFF0000004000|- rs1_w1_val == -262145<br> - rs1_w0_val == 16777216<br>                                                                                          |[0x80000760]:SRAI32_U t6, t5, 10<br> [0x80000764]:sd t6, 184(t2)<br>    |
|  45|[0x80002370]<br>0xFFFFFFFE00000000|- rs1_w1_val == -32769<br> - rs1_w0_val == -5<br>                                                                                                 |[0x80000774]:SRAI32_U t6, t5, 14<br> [0x80000778]:sd t6, 192(t2)<br>    |
|  46|[0x80002378]<br>0x0000000000000001|- rs1_w1_val == -16385<br> - rs1_w0_val == 262144<br>                                                                                             |[0x80000788]:SRAI32_U t6, t5, 19<br> [0x8000078c]:sd t6, 200(t2)<br>    |
|  47|[0x80002380]<br>0xFFFFFFFF00000020|- rs1_w1_val == -2049<br> - rs1_w0_val == 65536<br>                                                                                               |[0x8000079c]:SRAI32_U t6, t5, 11<br> [0x800007a0]:sd t6, 208(t2)<br>    |
|  48|[0x80002388]<br>0xFFFFFFFF00000000|- rs1_w1_val == -1025<br>                                                                                                                         |[0x800007b0]:SRAI32_U t6, t5, 10<br> [0x800007b4]:sd t6, 216(t2)<br>    |
|  49|[0x80002390]<br>0x0000000000000000|- rs1_w1_val == -513<br>                                                                                                                          |[0x800007c4]:SRAI32_U t6, t5, 16<br> [0x800007c8]:sd t6, 224(t2)<br>    |
|  50|[0x80002398]<br>0x0000000000000000|- rs1_w1_val == -129<br> - rs1_w0_val == 1048576<br>                                                                                              |[0x800007d8]:SRAI32_U t6, t5, 25<br> [0x800007dc]:sd t6, 232(t2)<br>    |
|  51|[0x800023a0]<br>0xFFFFFFF000000400|- rs1_w1_val == -65<br>                                                                                                                           |[0x800007ec]:SRAI32_U t6, t5, 2<br> [0x800007f0]:sd t6, 240(t2)<br>     |
|  52|[0x800023a8]<br>0xFFFFFFFF00000000|- rs1_w0_val == -33<br>                                                                                                                           |[0x80000800]:SRAI32_U t6, t5, 18<br> [0x80000804]:sd t6, 248(t2)<br>    |
|  53|[0x800023b0]<br>0x0000002B00000000|- rs1_w0_val == -9<br>                                                                                                                            |[0x80000818]:SRAI32_U t6, t5, 25<br> [0x8000081c]:sd t6, 256(t2)<br>    |
|  54|[0x800023b8]<br>0xFFFFF800FFFFFFFF|- rs1_w0_val == -3<br>                                                                                                                            |[0x8000082c]:SRAI32_U t6, t5, 2<br> [0x80000830]:sd t6, 264(t2)<br>     |
|  55|[0x800023c0]<br>0x0000000208000000|- rs1_w0_val == 536870912<br>                                                                                                                     |[0x8000083c]:SRAI32_U t6, t5, 2<br> [0x80000840]:sd t6, 272(t2)<br>     |
|  56|[0x800023c8]<br>0x0000000000001000|- rs1_w0_val == 134217728<br>                                                                                                                     |[0x8000084c]:SRAI32_U t6, t5, 15<br> [0x80000850]:sd t6, 280(t2)<br>    |
|  57|[0x800023d0]<br>0x0000000000000000|- rs1_w1_val == -5<br> - rs1_w0_val == 33554432<br>                                                                                               |[0x8000085c]:SRAI32_U t6, t5, 28<br> [0x80000860]:sd t6, 288(t2)<br>    |
|  58|[0x800023d8]<br>0x0000000800000020|- rs1_w1_val == 2097152<br> - rs1_w0_val == 8388608<br>                                                                                           |[0x80000870]:SRAI32_U t6, t5, 18<br> [0x80000874]:sd t6, 296(t2)<br>    |
|  59|[0x800023e0]<br>0x0000000000000000|- rs1_w0_val == 2097152<br>                                                                                                                       |[0x80000888]:SRAI32_U t6, t5, 27<br> [0x8000088c]:sd t6, 304(t2)<br>    |
|  60|[0x800023e8]<br>0xFFFFFFC000000001|- rs1_w0_val == 131072<br>                                                                                                                        |[0x800008a4]:SRAI32_U t6, t5, 17<br> [0x800008a8]:sd t6, 312(t2)<br>    |
|  61|[0x800023f0]<br>0x0000000000000000|- rs1_w1_val == -3<br> - rs1_w0_val == 8192<br>                                                                                                   |[0x800008b8]:SRAI32_U t6, t5, 23<br> [0x800008bc]:sd t6, 320(t2)<br>    |
|  62|[0x800023f8]<br>0x0000000000000001|- rs1_w0_val == 2048<br>                                                                                                                          |[0x800008d0]:SRAI32_U t6, t5, 11<br> [0x800008d4]:sd t6, 328(t2)<br>    |
|  63|[0x80002400]<br>0x00AAAAAB00000008|- rs1_w0_val == 1024<br>                                                                                                                          |[0x800008e8]:SRAI32_U t6, t5, 7<br> [0x800008ec]:sd t6, 336(t2)<br>     |
|  64|[0x80002408]<br>0x0000000000000000|- rs1_w0_val == 512<br>                                                                                                                           |[0x800008fc]:SRAI32_U t6, t5, 27<br> [0x80000900]:sd t6, 344(t2)<br>    |
|  65|[0x80002410]<br>0x0000000000000000|- rs1_w0_val == 128<br>                                                                                                                           |[0x80000910]:SRAI32_U t6, t5, 30<br> [0x80000914]:sd t6, 352(t2)<br>    |
|  66|[0x80002418]<br>0x0000000000000000|- rs1_w0_val == 64<br>                                                                                                                            |[0x80000924]:SRAI32_U t6, t5, 21<br> [0x80000928]:sd t6, 360(t2)<br>    |
|  67|[0x80002420]<br>0x0000000000000000|- rs1_w0_val == 32<br>                                                                                                                            |[0x80000938]:SRAI32_U t6, t5, 24<br> [0x8000093c]:sd t6, 368(t2)<br>    |
|  68|[0x80002428]<br>0x0000000000000000|- rs1_w0_val == -1<br>                                                                                                                            |[0x8000094c]:SRAI32_U t6, t5, 31<br> [0x80000950]:sd t6, 376(t2)<br>    |
|  69|[0x80002430]<br>0x0000000000000001|- rs1_w1_val == -33<br> - rs1_w0_val == 1431655765<br>                                                                                            |[0x80000964]:SRAI32_U t6, t5, 31<br> [0x80000968]:sd t6, 384(t2)<br>    |
|  70|[0x80002438]<br>0x0000000000010000|- rs1_w1_val == -17<br> - rs1_w0_val == 268435456<br>                                                                                             |[0x80000974]:SRAI32_U t6, t5, 12<br> [0x80000978]:sd t6, 392(t2)<br>    |
|  71|[0x80002440]<br>0x0000000000000001|- rs1_w1_val == -9<br>                                                                                                                            |[0x80000984]:SRAI32_U t6, t5, 28<br> [0x80000988]:sd t6, 400(t2)<br>    |
|  72|[0x80002448]<br>0x0000000000000000|- rs1_w1_val == -2<br> - rs1_w0_val == -257<br>                                                                                                   |[0x80000998]:SRAI32_U t6, t5, 21<br> [0x8000099c]:sd t6, 408(t2)<br>    |
|  73|[0x80002450]<br>0xFFFFFC0000000000|- rs1_w1_val == -2147483648<br>                                                                                                                   |[0x800009b0]:SRAI32_U t6, t5, 21<br> [0x800009b4]:sd t6, 416(t2)<br>    |
|  74|[0x80002458]<br>0x0800000000020000|- rs1_w1_val == 1073741824<br>                                                                                                                    |[0x800009c8]:SRAI32_U t6, t5, 3<br> [0x800009cc]:sd t6, 424(t2)<br>     |
|  75|[0x80002460]<br>0x0000008000000100|- rs1_w1_val == 536870912<br>                                                                                                                     |[0x800009e4]:SRAI32_U t6, t5, 22<br> [0x800009e8]:sd t6, 432(t2)<br>    |
|  76|[0x80002468]<br>0x0004000000000000|- rs1_w1_val == 268435456<br> - rs1_w0_val == -129<br>                                                                                            |[0x800009fc]:SRAI32_U t6, t5, 10<br> [0x80000a00]:sd t6, 440(t2)<br>    |
|  77|[0x80002470]<br>0x0100000000000100|- rs1_w1_val == 134217728<br>                                                                                                                     |[0x80000a18]:SRAI32_U t6, t5, 3<br> [0x80000a1c]:sd t6, 448(t2)<br>     |
|  78|[0x80002478]<br>0x0000020000000000|- rs1_w1_val == 33554432<br>                                                                                                                      |[0x80000a30]:SRAI32_U t6, t5, 16<br> [0x80000a34]:sd t6, 456(t2)<br>    |
|  79|[0x80002480]<br>0x0000800000001000|- rs1_w1_val == 4194304<br>                                                                                                                       |[0x80000a48]:SRAI32_U t6, t5, 7<br> [0x80000a4c]:sd t6, 464(t2)<br>     |
|  80|[0x80002488]<br>0x0000000000000001|- rs1_w1_val == 1048576<br>                                                                                                                       |[0x80000a5c]:SRAI32_U t6, t5, 23<br> [0x80000a60]:sd t6, 472(t2)<br>    |
|  81|[0x80002490]<br>0x0000080000000000|- rs1_w1_val == 262144<br>                                                                                                                        |[0x80000a74]:SRAI32_U t6, t5, 7<br> [0x80000a78]:sd t6, 480(t2)<br>     |
|  82|[0x80002498]<br>0x00000004FFFFFFE0|- rs1_w1_val == 131072<br>                                                                                                                        |[0x80000a8c]:SRAI32_U t6, t5, 15<br> [0x80000a90]:sd t6, 488(t2)<br>    |
|  83|[0x800024a0]<br>0x0000000000000040|- rs1_w1_val == 16384<br>                                                                                                                         |[0x80000aa0]:SRAI32_U t6, t5, 16<br> [0x80000aa4]:sd t6, 496(t2)<br>    |
|  84|[0x800024a8]<br>0x0000000000000000|- rs1_w1_val == 8192<br>                                                                                                                          |[0x80000ac0]:SRAI32_U t6, t5, 19<br> [0x80000ac4]:sd t6, 504(t2)<br>    |
|  85|[0x800024b0]<br>0x0000000000000004|- rs1_w1_val == 2048<br>                                                                                                                          |[0x80000ad4]:SRAI32_U t6, t5, 14<br> [0x80000ad8]:sd t6, 512(t2)<br>    |
|  86|[0x800024b8]<br>0x0000040000200000|- rs1_w1_val == 1024<br>                                                                                                                          |[0x80000ae8]:SRAI32_U t6, t5, 0<br> [0x80000aec]:sd t6, 520(t2)<br>     |
|  87|[0x800024c0]<br>0x0000000000000000|- rs1_w1_val == 512<br>                                                                                                                           |[0x80000afc]:SRAI32_U t6, t5, 18<br> [0x80000b00]:sd t6, 528(t2)<br>    |
|  88|[0x800024c8]<br>0x00000000FFFFFE00|- rs1_w1_val == 128<br>                                                                                                                           |[0x80000b14]:SRAI32_U t6, t5, 11<br> [0x80000b18]:sd t6, 536(t2)<br>    |
|  89|[0x800024d0]<br>0x00000000FFFFFFF8|- rs1_w1_val == 16<br>                                                                                                                            |[0x80000b28]:SRAI32_U t6, t5, 24<br> [0x80000b2c]:sd t6, 544(t2)<br>    |
|  90|[0x800024d8]<br>0x00000000FFFFFFFC|- rs1_w1_val == 8<br>                                                                                                                             |[0x80000b40]:SRAI32_U t6, t5, 18<br> [0x80000b44]:sd t6, 552(t2)<br>    |
|  91|[0x800024e0]<br>0x00000000FFFFFF00|- rs1_w1_val == 4<br>                                                                                                                             |[0x80000b50]:SRAI32_U t6, t5, 23<br> [0x80000b54]:sd t6, 560(t2)<br>    |
|  92|[0x800024e8]<br>0x0000000000000000|- rs1_w1_val == 2<br>                                                                                                                             |[0x80000b64]:SRAI32_U t6, t5, 14<br> [0x80000b68]:sd t6, 568(t2)<br>    |
|  93|[0x800024f0]<br>0x00000000FFFFFF00|- rs1_w1_val == 1<br>                                                                                                                             |[0x80000b7c]:SRAI32_U t6, t5, 5<br> [0x80000b80]:sd t6, 576(t2)<br>     |
|  94|[0x800024f8]<br>0x00000001FFFFFD55|- rs1_w0_val == -1431655766<br>                                                                                                                   |[0x80000b9c]:SRAI32_U t6, t5, 21<br> [0x80000ba0]:sd t6, 584(t2)<br>    |
|  95|[0x80002500]<br>0x00000004F0000000|- rs1_w0_val == -536870913<br>                                                                                                                    |[0x80000bb0]:SRAI32_U t6, t5, 1<br> [0x80000bb4]:sd t6, 592(t2)<br>     |
|  96|[0x80002508]<br>0xFFFFFFFFFFFFFFE0|- rs1_w0_val == -33554433<br>                                                                                                                     |[0x80000bc8]:SRAI32_U t6, t5, 20<br> [0x80000bcc]:sd t6, 600(t2)<br>    |
|  97|[0x80002510]<br>0x0000000000000000|- rs1_w0_val == -16777217<br>                                                                                                                     |[0x80000bdc]:SRAI32_U t6, t5, 31<br> [0x80000be0]:sd t6, 608(t2)<br>    |
|  98|[0x80002518]<br>0x00000000FFFFFF80|- rs1_w0_val == -8388609<br>                                                                                                                      |[0x80000bf4]:SRAI32_U t6, t5, 16<br> [0x80000bf8]:sd t6, 616(t2)<br>    |
|  99|[0x80002520]<br>0x00000000FFFFF000|- rs1_w0_val == -4194305<br>                                                                                                                      |[0x80000c0c]:SRAI32_U t6, t5, 10<br> [0x80000c10]:sd t6, 624(t2)<br>    |
| 100|[0x80002528]<br>0xFFFFFFE0FFFFFFF0|- rs1_w0_val == -2097153<br>                                                                                                                      |[0x80000c28]:SRAI32_U t6, t5, 17<br> [0x80000c2c]:sd t6, 632(t2)<br>    |
| 101|[0x80002530]<br>0xFFFFC000FFFFF000|- rs1_w0_val == -262145<br>                                                                                                                       |[0x80000c44]:SRAI32_U t6, t5, 6<br> [0x80000c48]:sd t6, 640(t2)<br>     |
| 102|[0x80002538]<br>0x0000000000000000|- rs1_w0_val == -131073<br>                                                                                                                       |[0x80000c5c]:SRAI32_U t6, t5, 30<br> [0x80000c60]:sd t6, 648(t2)<br>    |
| 103|[0x80002540]<br>0xFFFFFFFFFFFFFFF8|- rs1_w0_val == -65537<br>                                                                                                                        |[0x80000c74]:SRAI32_U t6, t5, 13<br> [0x80000c78]:sd t6, 656(t2)<br>    |
| 104|[0x80002548]<br>0xF0000000FFFFFE00|- rs1_w0_val == -2049<br>                                                                                                                         |[0x80000c90]:SRAI32_U t6, t5, 2<br> [0x80000c94]:sd t6, 664(t2)<br>     |
| 105|[0x80002550]<br>0x0000000000000000|- rs1_w0_val == -1025<br>                                                                                                                         |[0x80000ca4]:SRAI32_U t6, t5, 27<br> [0x80000ca8]:sd t6, 672(t2)<br>    |
| 106|[0x80002558]<br>0x0000000000000000|- rs1_w0_val == -513<br>                                                                                                                          |[0x80000cb8]:SRAI32_U t6, t5, 20<br> [0x80000cbc]:sd t6, 680(t2)<br>    |
| 107|[0x80002560]<br>0x00000040FFFFFFC0|- rs1_w0_val == -32769<br>                                                                                                                        |[0x80000cd8]:SRAI32_U t6, t5, 9<br> [0x80000cdc]:sd t6, 688(t2)<br>     |
