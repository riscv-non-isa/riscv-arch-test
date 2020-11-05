
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000610')]      |
| SIG_REGION                | [('0x80003204', '0x80003334', '76 words')]      |
| COV_LABELS                | sra      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sra-01.S/sra-01.S    |
| Total Number of coverpoints| 189     |
| Total Coverpoints Hit     | 189      |
| Total Signature Updates   | 73      |
| STAT1                     | 72      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ec]:sra a2, a0, a1
      [0x800005f0]:sw a2, 152(ra)
 -- Signature Address: 0x8000332c Data: 0x40000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val == 0
      - rs1_val == 1073741824






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

|s.no|        signature         |                                                                                                        coverpoints                                                                                                         |                                code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFF80000|- opcode : sra<br> - rs1 : x23<br> - rs2 : x24<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br>                                                                               |[0x80000108]:sra s7, s7, s8<br> [0x8000010c]:sw s7, 0(sp)<br>        |
|   2|[0x80003214]<br>0x00000000|- rs1 : x12<br> - rs2 : x12<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 4<br> - rs2_val == 4<br> |[0x80000118]:sra t0, a2, a2<br> [0x8000011c]:sw t0, 4(sp)<br>        |
|   3|[0x80003218]<br>0x00000000|- rs1 : x16<br> - rs2 : x16<br> - rd : x16<br> - rs1 == rs2 == rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                |[0x80000128]:sra a6, a6, a6<br> [0x8000012c]:sw a6, 8(sp)<br>        |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x10<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 1073741824<br>                                                                                          |[0x80000138]:sra zero, a0, zero<br> [0x8000013c]:sw zero, 12(sp)<br> |
|   5|[0x80003220]<br>0x00000000|- rs1 : x8<br> - rs2 : x10<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 8<br> - rs2_val == 8<br>                                                                                           |[0x80000148]:sra a4, fp, a0<br> [0x8000014c]:sw a4, 16(sp)<br>       |
|   6|[0x80003224]<br>0xFFE00000|- rs1 : x3<br> - rs2 : x1<br> - rd : x22<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br> - rs2_val == 10<br>                                                           |[0x80000158]:sra s6, gp, ra<br> [0x8000015c]:sw s6, 20(sp)<br>       |
|   7|[0x80003228]<br>0x00000000|- rs1 : x22<br> - rs2 : x19<br> - rd : x9<br> - rs2_val == 1<br>                                                                                                                                                            |[0x80000168]:sra s1, s6, s3<br> [0x8000016c]:sw s1, 24(sp)<br>       |
|   8|[0x8000322c]<br>0x003FFFFF|- rs1 : x6<br> - rs2 : x14<br> - rd : x15<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                                              |[0x8000017c]:sra a5, t1, a4<br> [0x80000180]:sw a5, 28(sp)<br>       |
|   9|[0x80003230]<br>0x00000000|- rs1 : x11<br> - rs2 : x5<br> - rd : x21<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                                     |[0x8000018c]:sra s5, a1, t0<br> [0x80000190]:sw s5, 32(sp)<br>       |
|  10|[0x80003234]<br>0x00020000|- rs1 : x26<br> - rs2 : x28<br> - rd : x17<br> - rs1_val == 524288<br> - rs2_val == 2<br>                                                                                                                                   |[0x8000019c]:sra a7, s10, t3<br> [0x800001a0]:sw a7, 36(sp)<br>      |
|  11|[0x80003238]<br>0xFFFFFFFD|- rs1 : x28<br> - rs2 : x18<br> - rd : x31<br> - rs1_val == -131073<br> - rs2_val == 16<br>                                                                                                                                 |[0x800001b0]:sra t6, t3, s2<br> [0x800001b4]:sw t6, 40(sp)<br>       |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x4<br> - rs2 : x26<br> - rd : x12<br> - rs1_val == 2<br> - rs2_val == 30<br>                                                                                                                                        |[0x800001c0]:sra a2, tp, s10<br> [0x800001c4]:sw a2, 44(sp)<br>      |
|  13|[0x80003240]<br>0x00000000|- rs1 : x27<br> - rs2 : x31<br> - rd : x6<br> - rs1_val == 32<br> - rs2_val == 29<br>                                                                                                                                       |[0x800001d0]:sra t1, s11, t6<br> [0x800001d4]:sw t1, 48(sp)<br>      |
|  14|[0x80003244]<br>0x00000000|- rs1 : x0<br> - rs2 : x8<br> - rd : x27<br> - rs2_val == 27<br>                                                                                                                                                            |[0x800001e4]:sra s11, zero, fp<br> [0x800001e8]:sw s11, 52(sp)<br>   |
|  15|[0x80003248]<br>0x00000000|- rs1 : x9<br> - rs2 : x6<br> - rd : x7<br> - rs2_val == 23<br>                                                                                                                                                             |[0x800001f4]:sra t2, s1, t1<br> [0x800001f8]:sw t2, 56(sp)<br>       |
|  16|[0x8000324c]<br>0x00000008|- rs1 : x1<br> - rs2 : x17<br> - rd : x3<br> - rs1_val == 262144<br> - rs2_val == 15<br>                                                                                                                                    |[0x80000204]:sra gp, ra, a7<br> [0x80000208]:sw gp, 60(sp)<br>       |
|  17|[0x80003250]<br>0x00000040|- rs1 : x14<br> - rs2 : x30<br> - rd : x4<br> - rs1_val == 134217728<br> - rs2_val == 21<br>                                                                                                                                |[0x80000214]:sra tp, a4, t5<br> [0x80000218]:sw tp, 64(sp)<br>       |
|  18|[0x80003254]<br>0x00000000|- rs1 : x25<br> - rs2 : x13<br> - rd : x29<br>                                                                                                                                                                              |[0x80000224]:sra t4, s9, a3<br> [0x80000228]:sw t4, 68(sp)<br>       |
|  19|[0x80003258]<br>0x00000000|- rs1 : x17<br> - rs2 : x15<br> - rd : x18<br> - rs1_val == 16<br>                                                                                                                                                          |[0x8000023c]:sra s2, a7, a5<br> [0x80000240]:sw s2, 0(t1)<br>        |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x2<br> - rs2 : x27<br> - rd : x25<br> - rs1_val == 64<br>                                                                                                                                                           |[0x8000024c]:sra s9, sp, s11<br> [0x80000250]:sw s9, 4(t1)<br>       |
|  21|[0x80003260]<br>0x00000000|- rs1 : x20<br> - rs2 : x7<br> - rd : x11<br> - rs1_val == 128<br>                                                                                                                                                          |[0x8000025c]:sra a1, s4, t2<br> [0x80000260]:sw a1, 8(t1)<br>        |
|  22|[0x80003264]<br>0x00000000|- rs1 : x21<br> - rs2 : x23<br> - rd : x13<br> - rs1_val == 256<br>                                                                                                                                                         |[0x8000026c]:sra a3, s5, s7<br> [0x80000270]:sw a3, 12(t1)<br>       |
|  23|[0x80003268]<br>0x00000000|- rs1 : x18<br> - rs2 : x2<br> - rd : x20<br> - rs1_val == 512<br>                                                                                                                                                          |[0x8000027c]:sra s4, s2, sp<br> [0x80000280]:sw s4, 16(t1)<br>       |
|  24|[0x8000326c]<br>0x00000100|- rs1 : x13<br> - rs2 : x20<br> - rd : x28<br> - rs1_val == 1024<br>                                                                                                                                                        |[0x8000028c]:sra t3, a3, s4<br> [0x80000290]:sw t3, 20(t1)<br>       |
|  25|[0x80003270]<br>0x00000000|- rs1 : x24<br> - rs2 : x25<br> - rd : x2<br> - rs1_val == 2048<br>                                                                                                                                                         |[0x800002a0]:sra sp, s8, s9<br> [0x800002a4]:sw sp, 24(t1)<br>       |
|  26|[0x80003274]<br>0x00000000|- rs1 : x29<br> - rs2 : x9<br> - rd : x10<br> - rs1_val == 4096<br>                                                                                                                                                         |[0x800002b0]:sra a0, t4, s1<br> [0x800002b4]:sw a0, 28(t1)<br>       |
|  27|[0x80003278]<br>0x00000100|- rs1 : x15<br> - rs2 : x29<br> - rd : x19<br> - rs1_val == 8192<br>                                                                                                                                                        |[0x800002c0]:sra s3, a5, t4<br> [0x800002c4]:sw s3, 32(t1)<br>       |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x19<br> - rs2 : x3<br> - rd : x24<br> - rs1_val == 16384<br>                                                                                                                                                        |[0x800002d0]:sra s8, s3, gp<br> [0x800002d4]:sw s8, 36(t1)<br>       |
|  29|[0x80003280]<br>0x00000000|- rs1 : x30<br> - rs2 : x22<br> - rd : x1<br> - rs1_val == 32768<br>                                                                                                                                                        |[0x800002e0]:sra ra, t5, s6<br> [0x800002e4]:sw ra, 40(t1)<br>       |
|  30|[0x80003284]<br>0x00002000|- rs1 : x31<br> - rs2 : x11<br> - rd : x26<br> - rs1_val == 65536<br>                                                                                                                                                       |[0x800002f0]:sra s10, t6, a1<br> [0x800002f4]:sw s10, 44(t1)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x5<br> - rs2 : x4<br> - rd : x8<br> - rs1_val == 1048576<br>                                                                                                                                                        |[0x80000300]:sra fp, t0, tp<br> [0x80000304]:sw fp, 48(t1)<br>       |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x7<br> - rs2 : x21<br> - rd : x30<br> - rs1_val == 2097152<br>                                                                                                                                                      |[0x80000310]:sra t5, t2, s5<br> [0x80000314]:sw t5, 52(t1)<br>       |
|  33|[0x80003290]<br>0x00002000|- rs1_val == 4194304<br>                                                                                                                                                                                                    |[0x80000320]:sra a2, a0, a1<br> [0x80000324]:sw a2, 56(t1)<br>       |
|  34|[0x80003294]<br>0x00200000|- rs1_val == 8388608<br>                                                                                                                                                                                                    |[0x80000338]:sra a2, a0, a1<br> [0x8000033c]:sw a2, 0(ra)<br>        |
|  35|[0x80003298]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                                                                   |[0x80000348]:sra a2, a0, a1<br> [0x8000034c]:sw a2, 4(ra)<br>        |
|  36|[0x8000329c]<br>0x04000000|- rs1_val == 67108864<br>                                                                                                                                                                                                   |[0x80000358]:sra a2, a0, a1<br> [0x8000035c]:sw a2, 8(ra)<br>        |
|  37|[0x800032a0]<br>0x00010000|- rs1_val == 268435456<br>                                                                                                                                                                                                  |[0x80000368]:sra a2, a0, a1<br> [0x8000036c]:sw a2, 12(ra)<br>       |
|  38|[0x800032a4]<br>0x00001000|- rs1_val == 536870912<br>                                                                                                                                                                                                  |[0x80000378]:sra a2, a0, a1<br> [0x8000037c]:sw a2, 16(ra)<br>       |
|  39|[0x800032a8]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                                                                      |[0x8000038c]:sra a2, a0, a1<br> [0x80000390]:sw a2, 20(ra)<br>       |
|  40|[0x800032ac]<br>0xFFFFFEFF|- rs1_val == -4097<br>                                                                                                                                                                                                      |[0x800003a0]:sra a2, a0, a1<br> [0x800003a4]:sw a2, 24(ra)<br>       |
|  41|[0x800032b0]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                                                                      |[0x800003b4]:sra a2, a0, a1<br> [0x800003b8]:sw a2, 28(ra)<br>       |
|  42|[0x800032b4]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                                                                                     |[0x800003c8]:sra a2, a0, a1<br> [0x800003cc]:sw a2, 32(ra)<br>       |
|  43|[0x800032b8]<br>0xFFFFFFEF|- rs1_val == -32769<br>                                                                                                                                                                                                     |[0x800003dc]:sra a2, a0, a1<br> [0x800003e0]:sw a2, 36(ra)<br>       |
|  44|[0x800032bc]<br>0xFFFFFFBF|- rs1_val == -65537<br>                                                                                                                                                                                                     |[0x800003f0]:sra a2, a0, a1<br> [0x800003f4]:sw a2, 40(ra)<br>       |
|  45|[0x800032c0]<br>0xFFFFFDFF|- rs1_val == -262145<br>                                                                                                                                                                                                    |[0x80000404]:sra a2, a0, a1<br> [0x80000408]:sw a2, 44(ra)<br>       |
|  46|[0x800032c4]<br>0xFFFFDFFF|- rs1_val == -524289<br>                                                                                                                                                                                                    |[0x80000418]:sra a2, a0, a1<br> [0x8000041c]:sw a2, 48(ra)<br>       |
|  47|[0x800032c8]<br>0xFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                                                   |[0x8000042c]:sra a2, a0, a1<br> [0x80000430]:sw a2, 52(ra)<br>       |
|  48|[0x800032cc]<br>0xFFFFBFFF|- rs1_val == -2097153<br>                                                                                                                                                                                                   |[0x80000440]:sra a2, a0, a1<br> [0x80000444]:sw a2, 56(ra)<br>       |
|  49|[0x800032d0]<br>0xFFFFFFF7|- rs1_val == -4194305<br>                                                                                                                                                                                                   |[0x80000454]:sra a2, a0, a1<br> [0x80000458]:sw a2, 60(ra)<br>       |
|  50|[0x800032d4]<br>0xFFDFFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                   |[0x80000468]:sra a2, a0, a1<br> [0x8000046c]:sw a2, 64(ra)<br>       |
|  51|[0x800032d8]<br>0xFFFFFDFF|- rs1_val == -16777217<br>                                                                                                                                                                                                  |[0x8000047c]:sra a2, a0, a1<br> [0x80000480]:sw a2, 68(ra)<br>       |
|  52|[0x800032dc]<br>0xFFBFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                  |[0x80000490]:sra a2, a0, a1<br> [0x80000494]:sw a2, 72(ra)<br>       |
|  53|[0x800032e0]<br>0xFFFBFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                                  |[0x800004a4]:sra a2, a0, a1<br> [0x800004a8]:sw a2, 76(ra)<br>       |
|  54|[0x800032e4]<br>0xFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                                 |[0x800004b8]:sra a2, a0, a1<br> [0x800004bc]:sw a2, 80(ra)<br>       |
|  55|[0x800032e8]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                                        |[0x800004c8]:sra a2, a0, a1<br> [0x800004cc]:sw a2, 84(ra)<br>       |
|  56|[0x800032ec]<br>0xFFFFDFFF|- rs1_val == -268435457<br>                                                                                                                                                                                                 |[0x800004dc]:sra a2, a0, a1<br> [0x800004e0]:sw a2, 88(ra)<br>       |
|  57|[0x800032f0]<br>0xDFFFFFFF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -536870913<br>                                                                                                                                                              |[0x800004f0]:sra a2, a0, a1<br> [0x800004f4]:sw a2, 92(ra)<br>       |
|  58|[0x800032f4]<br>0xFFFFEFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                |[0x80000504]:sra a2, a0, a1<br> [0x80000508]:sw a2, 96(ra)<br>       |
|  59|[0x800032f8]<br>0x01555555|- rs1_val == 1431655765<br>                                                                                                                                                                                                 |[0x80000518]:sra a2, a0, a1<br> [0x8000051c]:sw a2, 100(ra)<br>      |
|  60|[0x800032fc]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                                         |[0x80000528]:sra a2, a0, a1<br> [0x8000052c]:sw a2, 104(ra)<br>      |
|  61|[0x80003300]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                                         |[0x80000538]:sra a2, a0, a1<br> [0x8000053c]:sw a2, 108(ra)<br>      |
|  62|[0x80003304]<br>0xFFFFFFFF|- rs1_val == -1431655766<br>                                                                                                                                                                                                |[0x8000054c]:sra a2, a0, a1<br> [0x80000550]:sw a2, 112(ra)<br>      |
|  63|[0x80003308]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                                         |[0x8000055c]:sra a2, a0, a1<br> [0x80000560]:sw a2, 116(ra)<br>      |
|  64|[0x8000330c]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                                                         |[0x8000056c]:sra a2, a0, a1<br> [0x80000570]:sw a2, 120(ra)<br>      |
|  65|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                                                        |[0x8000057c]:sra a2, a0, a1<br> [0x80000580]:sw a2, 124(ra)<br>      |
|  66|[0x80003314]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                                                       |[0x8000058c]:sra a2, a0, a1<br> [0x80000590]:sw a2, 128(ra)<br>      |
|  67|[0x80003318]<br>0xFFFFFF7F|- rs1_val == -257<br>                                                                                                                                                                                                       |[0x8000059c]:sra a2, a0, a1<br> [0x800005a0]:sw a2, 132(ra)<br>      |
|  68|[0x8000331c]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                                                                                                                                       |[0x800005ac]:sra a2, a0, a1<br> [0x800005b0]:sw a2, 136(ra)<br>      |
|  69|[0x80003320]<br>0xFFFFFFBF|- rs1_val == -1025<br>                                                                                                                                                                                                      |[0x800005bc]:sra a2, a0, a1<br> [0x800005c0]:sw a2, 140(ra)<br>      |
|  70|[0x80003324]<br>0x00100000|- rs1_val == 16777216<br>                                                                                                                                                                                                   |[0x800005cc]:sra a2, a0, a1<br> [0x800005d0]:sw a2, 144(ra)<br>      |
|  71|[0x80003328]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                                                                                                                        |[0x800005dc]:sra a2, a0, a1<br> [0x800005e0]:sw a2, 148(ra)<br>      |
|  72|[0x80003330]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                                                                                                     |[0x800005fc]:sra a2, a0, a1<br> [0x80000600]:sw a2, 156(ra)<br>      |
