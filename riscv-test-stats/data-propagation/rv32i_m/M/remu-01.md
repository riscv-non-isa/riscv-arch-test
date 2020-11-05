
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000860')]      |
| SIG_REGION                | [('0x80003204', '0x800033a4', '104 words')]      |
| COV_LABELS                | remu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/remu-01.S/remu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 101      |
| STAT1                     | 100      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000082c]:remu a2, a0, a1
      [0x80000830]:sw a2, 264(ra)
 -- Signature Address: 0x80003398 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : remu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs2_val == 67108864






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

|s.no|        signature         |                                                                                                    coverpoints                                                                                                    |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : remu<br> - rs1 : x20<br> - rs2 : x20<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br>                                                               |[0x80000108]:remu a4, s4, s4<br> [0x8000010c]:sw a4, 0(ra)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs2_val == 67108864<br> - rs1_val == 67108864<br>                                                                                             |[0x80000118]:remu fp, fp, fp<br> [0x8000011c]:sw fp, 4(ra)<br>      |
|   3|[0x80003218]<br>0x7FFFFFFF|- rs1 : x26<br> - rs2 : x2<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -513<br> - rs1_val == 2147483647<br> |[0x8000012c]:remu s10, s10, sp<br> [0x80000130]:sw s10, 8(ra)<br>   |
|   4|[0x8000321c]<br>0x00000001|- rs1 : x4<br> - rs2 : x29<br> - rd : x11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 0<br> - rs1_val == 1<br>                                                                                  |[0x8000013c]:remu a1, tp, t4<br> [0x80000140]:sw a1, 12(ra)<br>     |
|   5|[0x80003220]<br>0x7FF7FFFF|- rs1 : x23<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -524289<br>                        |[0x80000150]:remu t1, s7, t1<br> [0x80000154]:sw t1, 16(ra)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x0<br> - rs2 : x19<br> - rd : x22<br> - rs2_val == (2**(xlen-1)-1)<br> - rs1_val == 0<br> - rs2_val == 2147483647<br>                                                                                      |[0x80000164]:remu s6, zero, s3<br> [0x80000168]:sw s6, 20(ra)<br>   |
|   7|[0x80003228]<br>0x00000000|- rs1 : x10<br> - rs2 : x15<br> - rd : x23<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br>                                                                                                                |[0x80000174]:remu s7, a0, a5<br> [0x80000178]:sw s7, 24(ra)<br>     |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x25<br> - rs2 : x27<br> - rd : x19<br> - rs2_val == -524289<br>                                                                                                                                            |[0x8000018c]:remu s3, s9, s11<br> [0x80000190]:sw s3, 28(ra)<br>    |
|   9|[0x80003230]<br>0x00000002|- rs1 : x28<br> - rs2 : x16<br> - rd : x27<br> - rs2_val == 134217728<br> - rs1_val == 2<br>                                                                                                                       |[0x8000019c]:remu s11, t3, a6<br> [0x800001a0]:sw s11, 32(ra)<br>   |
|  10|[0x80003234]<br>0x00000004|- rs1 : x15<br> - rs2 : x14<br> - rd : x21<br> - rs2_val == -5<br> - rs1_val == 4<br>                                                                                                                              |[0x800001ac]:remu s5, a5, a4<br> [0x800001b0]:sw s5, 36(ra)<br>     |
|  11|[0x80003238]<br>0x00000008|- rs1 : x21<br> - rs2 : x12<br> - rd : x10<br> - rs2_val == -65<br> - rs1_val == 8<br>                                                                                                                             |[0x800001bc]:remu a0, s5, a2<br> [0x800001c0]:sw a0, 40(ra)<br>     |
|  12|[0x8000323c]<br>0x00000010|- rs1 : x17<br> - rs2 : x13<br> - rd : x29<br> - rs1_val == 16<br>                                                                                                                                                 |[0x800001cc]:remu t4, a7, a3<br> [0x800001d0]:sw t4, 44(ra)<br>     |
|  13|[0x80003240]<br>0x00000004|- rs1 : x31<br> - rs2 : x7<br> - rd : x9<br> - rs1_val == 32<br>                                                                                                                                                   |[0x800001dc]:remu s1, t6, t2<br> [0x800001e0]:sw s1, 48(ra)<br>     |
|  14|[0x80003244]<br>0x00000040|- rs1 : x29<br> - rs2 : x30<br> - rd : x12<br> - rs2_val == 4194304<br> - rs1_val == 64<br>                                                                                                                        |[0x800001ec]:remu a2, t4, t5<br> [0x800001f0]:sw a2, 52(ra)<br>     |
|  15|[0x80003248]<br>0x00000080|- rs1 : x18<br> - rs2 : x10<br> - rd : x3<br> - rs2_val == 512<br> - rs1_val == 128<br>                                                                                                                            |[0x800001fc]:remu gp, s2, a0<br> [0x80000200]:sw gp, 56(ra)<br>     |
|  16|[0x8000324c]<br>0x00000100|- rs1 : x19<br> - rs2 : x26<br> - rd : x24<br> - rs2_val == -33554433<br> - rs1_val == 256<br>                                                                                                                     |[0x80000218]:remu s8, s3, s10<br> [0x8000021c]:sw s8, 0(fp)<br>     |
|  17|[0x80003250]<br>0x00000400|- rs1 : x11<br> - rs2 : x3<br> - rd : x20<br> - rs2_val == 268435456<br> - rs1_val == 1024<br>                                                                                                                     |[0x80000228]:remu s4, a1, gp<br> [0x8000022c]:sw s4, 4(fp)<br>      |
|  18|[0x80003254]<br>0x00000800|- rs1 : x27<br> - rs2 : x22<br> - rd : x5<br> - rs2_val == 8388608<br> - rs1_val == 2048<br>                                                                                                                       |[0x8000023c]:remu t0, s11, s6<br> [0x80000240]:sw t0, 8(fp)<br>     |
|  19|[0x80003258]<br>0x00001000|- rs1 : x13<br> - rs2 : x5<br> - rd : x2<br> - rs2_val == 65536<br> - rs1_val == 4096<br>                                                                                                                          |[0x8000024c]:remu sp, a3, t0<br> [0x80000250]:sw sp, 12(fp)<br>     |
|  20|[0x8000325c]<br>0x00002000|- rs1 : x30<br> - rs2 : x18<br> - rd : x31<br> - rs2_val == -3<br> - rs1_val == 8192<br>                                                                                                                           |[0x8000025c]:remu t6, t5, s2<br> [0x80000260]:sw t6, 16(fp)<br>     |
|  21|[0x80003260]<br>0x00004000|- rs1 : x1<br> - rs2 : x28<br> - rd : x4<br> - rs1_val == 16384<br>                                                                                                                                                |[0x80000270]:remu tp, ra, t3<br> [0x80000274]:sw tp, 20(fp)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x22<br> - rs2 : x24<br> - rd : x0<br> - rs1_val == 32768<br>                                                                                                                                               |[0x80000280]:remu zero, s6, s8<br> [0x80000284]:sw zero, 24(fp)<br> |
|  23|[0x80003268]<br>0x00010000|- rs1 : x24<br> - rs2 : x21<br> - rd : x17<br> - rs2_val == -32769<br> - rs1_val == 65536<br>                                                                                                                      |[0x80000294]:remu a7, s8, s5<br> [0x80000298]:sw a7, 28(fp)<br>     |
|  24|[0x8000326c]<br>0x00020000|- rs1 : x6<br> - rs2 : x31<br> - rd : x1<br> - rs2_val == -4194305<br> - rs1_val == 131072<br>                                                                                                                     |[0x800002a8]:remu ra, t1, t6<br> [0x800002ac]:sw ra, 32(fp)<br>     |
|  25|[0x80003270]<br>0x00040000|- rs1 : x16<br> - rs2 : x11<br> - rd : x25<br> - rs2_val == -268435457<br> - rs1_val == 262144<br>                                                                                                                 |[0x800002bc]:remu s9, a6, a1<br> [0x800002c0]:sw s9, 36(fp)<br>     |
|  26|[0x80003274]<br>0x00080000|- rs1 : x2<br> - rs2 : x4<br> - rd : x18<br> - rs1_val == 524288<br>                                                                                                                                               |[0x800002cc]:remu s2, sp, tp<br> [0x800002d0]:sw s2, 40(fp)<br>     |
|  27|[0x80003278]<br>0x00100000|- rs1 : x7<br> - rs2 : x25<br> - rd : x28<br> - rs1_val == 1048576<br>                                                                                                                                             |[0x800002dc]:remu t3, t2, s9<br> [0x800002e0]:sw t3, 44(fp)<br>     |
|  28|[0x8000327c]<br>0x00200000|- rs1 : x9<br> - rs2 : x23<br> - rd : x30<br> - rs2_val == -262145<br> - rs1_val == 2097152<br>                                                                                                                    |[0x800002f0]:remu t5, s1, s7<br> [0x800002f4]:sw t5, 48(fp)<br>     |
|  29|[0x80003280]<br>0x00400000|- rs1 : x5<br> - rs2 : x1<br> - rd : x15<br> - rs1_val == 4194304<br>                                                                                                                                              |[0x80000300]:remu a5, t0, ra<br> [0x80000304]:sw a5, 52(fp)<br>     |
|  30|[0x80003284]<br>0x00800000|- rs1 : x14<br> - rs2 : x17<br> - rd : x16<br> - rs2_val == -2097153<br> - rs1_val == 8388608<br>                                                                                                                  |[0x80000314]:remu a6, a4, a7<br> [0x80000318]:sw a6, 56(fp)<br>     |
|  31|[0x80003288]<br>0x01000000|- rs1 : x3<br> - rs2 : x0<br> - rd : x13<br> - rs1_val == 16777216<br>                                                                                                                                             |[0x80000324]:remu a3, gp, zero<br> [0x80000328]:sw a3, 60(fp)<br>   |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x12<br> - rs2 : x9<br> - rd : x7<br> - rs2_val == 32<br> - rs1_val == 33554432<br>                                                                                                                         |[0x80000334]:remu t2, a2, s1<br> [0x80000338]:sw t2, 64(fp)<br>     |
|  33|[0x80003290]<br>0x00000000|- rs2_val == 33554432<br>                                                                                                                                                                                          |[0x8000034c]:remu a2, a0, a1<br> [0x80000350]:sw a2, 0(ra)<br>      |
|  34|[0x80003294]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                                                                                                         |[0x80000360]:remu a2, a0, a1<br> [0x80000364]:sw a2, 4(ra)<br>      |
|  35|[0x80003298]<br>0x10000000|- rs2_val == -129<br> - rs1_val == 268435456<br>                                                                                                                                                                   |[0x80000370]:remu a2, a0, a1<br> [0x80000374]:sw a2, 8(ra)<br>      |
|  36|[0x8000329c]<br>0x00000000|- rs2_val == 64<br> - rs1_val == 536870912<br>                                                                                                                                                                     |[0x80000380]:remu a2, a0, a1<br> [0x80000384]:sw a2, 12(ra)<br>     |
|  37|[0x800032a0]<br>0x40000000|- rs2_val == -16385<br> - rs1_val == 1073741824<br>                                                                                                                                                                |[0x80000394]:remu a2, a0, a1<br> [0x80000398]:sw a2, 16(ra)<br>     |
|  38|[0x800032a4]<br>0x00001FFE|- rs2_val == 8192<br> - rs1_val == -2<br>                                                                                                                                                                          |[0x800003a4]:remu a2, a0, a1<br> [0x800003a8]:sw a2, 20(ra)<br>     |
|  39|[0x800032a8]<br>0x00000001|- rs1_val == -3<br>                                                                                                                                                                                                |[0x800003b8]:remu a2, a0, a1<br> [0x800003bc]:sw a2, 24(ra)<br>     |
|  40|[0x800032ac]<br>0x003FFFFB|- rs1_val == -5<br>                                                                                                                                                                                                |[0x800003c8]:remu a2, a0, a1<br> [0x800003cc]:sw a2, 28(ra)<br>     |
|  41|[0x800032b0]<br>0x00000038|- rs1_val == -9<br>                                                                                                                                                                                                |[0x800003d8]:remu a2, a0, a1<br> [0x800003dc]:sw a2, 32(ra)<br>     |
|  42|[0x800032b4]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                                                                                                               |[0x800003e8]:remu a2, a0, a1<br> [0x800003ec]:sw a2, 36(ra)<br>     |
|  43|[0x800032b8]<br>0xFFFFFFDF|- rs1_val == -33<br>                                                                                                                                                                                               |[0x800003f8]:remu a2, a0, a1<br> [0x800003fc]:sw a2, 40(ra)<br>     |
|  44|[0x800032bc]<br>0x000FFFC0|- rs2_val == -1048577<br> - rs1_val == -65<br>                                                                                                                                                                     |[0x8000040c]:remu a2, a0, a1<br> [0x80000410]:sw a2, 44(ra)<br>     |
|  45|[0x800032c0]<br>0x00000008|- rs2_val == -8388609<br>                                                                                                                                                                                          |[0x80000420]:remu a2, a0, a1<br> [0x80000424]:sw a2, 48(ra)<br>     |
|  46|[0x800032c4]<br>0x00000100|- rs2_val == -16777217<br>                                                                                                                                                                                         |[0x80000434]:remu a2, a0, a1<br> [0x80000438]:sw a2, 52(ra)<br>     |
|  47|[0x800032c8]<br>0xC0000000|- rs2_val == -67108865<br>                                                                                                                                                                                         |[0x80000448]:remu a2, a0, a1<br> [0x8000044c]:sw a2, 56(ra)<br>     |
|  48|[0x800032cc]<br>0x00000008|- rs2_val == -134217729<br>                                                                                                                                                                                        |[0x8000045c]:remu a2, a0, a1<br> [0x80000460]:sw a2, 60(ra)<br>     |
|  49|[0x800032d0]<br>0x1FFFFFF8|- rs2_val == -536870913<br>                                                                                                                                                                                        |[0x80000470]:remu a2, a0, a1<br> [0x80000474]:sw a2, 64(ra)<br>     |
|  50|[0x800032d4]<br>0x00000005|- rs2_val == -1073741825<br>                                                                                                                                                                                       |[0x80000484]:remu a2, a0, a1<br> [0x80000488]:sw a2, 68(ra)<br>     |
|  51|[0x800032d8]<br>0x40000000|- rs2_val == 1431655765<br>                                                                                                                                                                                        |[0x80000498]:remu a2, a0, a1<br> [0x8000049c]:sw a2, 72(ra)<br>     |
|  52|[0x800032dc]<br>0x55555551|- rs2_val == -1431655766<br>                                                                                                                                                                                       |[0x800004ac]:remu a2, a0, a1<br> [0x800004b0]:sw a2, 76(ra)<br>     |
|  53|[0x800032e0]<br>0x00001F7F|- rs1_val == -129<br>                                                                                                                                                                                              |[0x800004bc]:remu a2, a0, a1<br> [0x800004c0]:sw a2, 80(ra)<br>     |
|  54|[0x800032e4]<br>0x0003FEFF|- rs2_val == 262144<br> - rs1_val == -257<br>                                                                                                                                                                      |[0x800004cc]:remu a2, a0, a1<br> [0x800004d0]:sw a2, 84(ra)<br>     |
|  55|[0x800032e8]<br>0x1FFFFDFF|- rs2_val == 536870912<br> - rs1_val == -513<br>                                                                                                                                                                   |[0x800004dc]:remu a2, a0, a1<br> [0x800004e0]:sw a2, 88(ra)<br>     |
|  56|[0x800032ec]<br>0x00001BFF|- rs1_val == -1025<br>                                                                                                                                                                                             |[0x800004ec]:remu a2, a0, a1<br> [0x800004f0]:sw a2, 92(ra)<br>     |
|  57|[0x800032f0]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                                                                             |[0x80000500]:remu a2, a0, a1<br> [0x80000504]:sw a2, 96(ra)<br>     |
|  58|[0x800032f4]<br>0x00000000|- rs1_val == -4097<br>                                                                                                                                                                                             |[0x80000514]:remu a2, a0, a1<br> [0x80000518]:sw a2, 100(ra)<br>    |
|  59|[0x800032f8]<br>0xFFFFDFFF|- rs2_val == -33<br> - rs1_val == -8193<br>                                                                                                                                                                        |[0x80000528]:remu a2, a0, a1<br> [0x8000052c]:sw a2, 104(ra)<br>    |
|  60|[0x800032fc]<br>0xFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                                                                            |[0x8000053c]:remu a2, a0, a1<br> [0x80000540]:sw a2, 108(ra)<br>    |
|  61|[0x80003300]<br>0xFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                                                                            |[0x80000550]:remu a2, a0, a1<br> [0x80000554]:sw a2, 112(ra)<br>    |
|  62|[0x80003304]<br>0x007EFFFF|- rs1_val == -65537<br>                                                                                                                                                                                            |[0x80000564]:remu a2, a0, a1<br> [0x80000568]:sw a2, 116(ra)<br>    |
|  63|[0x80003308]<br>0x55535555|- rs1_val == -131073<br>                                                                                                                                                                                           |[0x8000057c]:remu a2, a0, a1<br> [0x80000580]:sw a2, 120(ra)<br>    |
|  64|[0x8000330c]<br>0xFFFBFFFF|- rs1_val == -262145<br>                                                                                                                                                                                           |[0x80000590]:remu a2, a0, a1<br> [0x80000594]:sw a2, 124(ra)<br>    |
|  65|[0x80003310]<br>0x006FFFFF|- rs1_val == -1048577<br>                                                                                                                                                                                          |[0x800005a4]:remu a2, a0, a1<br> [0x800005a8]:sw a2, 128(ra)<br>    |
|  66|[0x80003314]<br>0xFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                                                                          |[0x800005b8]:remu a2, a0, a1<br> [0x800005bc]:sw a2, 132(ra)<br>    |
|  67|[0x80003318]<br>0x000000FF|- rs2_val == 256<br> - rs1_val == -4194305<br>                                                                                                                                                                     |[0x800005cc]:remu a2, a0, a1<br> [0x800005d0]:sw a2, 136(ra)<br>    |
|  68|[0x8000331c]<br>0x00000002|- rs1_val == -8388609<br>                                                                                                                                                                                          |[0x800005e0]:remu a2, a0, a1<br> [0x800005e4]:sw a2, 140(ra)<br>    |
|  69|[0x80003320]<br>0x00000001|- rs2_val == 2<br> - rs1_val == -16777217<br>                                                                                                                                                                      |[0x800005f4]:remu a2, a0, a1<br> [0x800005f8]:sw a2, 144(ra)<br>    |
|  70|[0x80003324]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                                                                                                         |[0x80000608]:remu a2, a0, a1<br> [0x8000060c]:sw a2, 148(ra)<br>    |
|  71|[0x80003328]<br>0xFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                         |[0x8000061c]:remu a2, a0, a1<br> [0x80000620]:sw a2, 152(ra)<br>    |
|  72|[0x8000332c]<br>0x18000000|- rs1_val == -134217729<br>                                                                                                                                                                                        |[0x80000634]:remu a2, a0, a1<br> [0x80000638]:sw a2, 156(ra)<br>    |
|  73|[0x80003330]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                        |[0x80000648]:remu a2, a0, a1<br> [0x8000064c]:sw a2, 160(ra)<br>    |
|  74|[0x80003334]<br>0x1FFFFFFF|- rs2_val == 1073741824<br> - rs1_val == -536870913<br>                                                                                                                                                            |[0x8000065c]:remu a2, a0, a1<br> [0x80000660]:sw a2, 164(ra)<br>    |
|  75|[0x80003338]<br>0x0003FFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                       |[0x80000670]:remu a2, a0, a1<br> [0x80000674]:sw a2, 168(ra)<br>    |
|  76|[0x8000333c]<br>0x00000555|- rs2_val == 2048<br> - rs1_val == 1431655765<br>                                                                                                                                                                  |[0x80000688]:remu a2, a0, a1<br> [0x8000068c]:sw a2, 172(ra)<br>    |
|  77|[0x80003340]<br>0xAAAAAAAA|- rs2_val == -1025<br> - rs1_val == -1431655766<br>                                                                                                                                                                |[0x8000069c]:remu a2, a0, a1<br> [0x800006a0]:sw a2, 176(ra)<br>    |
|  78|[0x80003344]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                                                                 |[0x800006ac]:remu a2, a0, a1<br> [0x800006b0]:sw a2, 180(ra)<br>    |
|  79|[0x80003348]<br>0x00000007|- rs2_val == 8<br>                                                                                                                                                                                                 |[0x800006c0]:remu a2, a0, a1<br> [0x800006c4]:sw a2, 184(ra)<br>    |
|  80|[0x8000334c]<br>0x0000000E|- rs2_val == 16<br>                                                                                                                                                                                                |[0x800006d0]:remu a2, a0, a1<br> [0x800006d4]:sw a2, 188(ra)<br>    |
|  81|[0x80003350]<br>0x00000000|- rs2_val == 128<br>                                                                                                                                                                                               |[0x800006e0]:remu a2, a0, a1<br> [0x800006e4]:sw a2, 192(ra)<br>    |
|  82|[0x80003354]<br>0x00000000|- rs2_val == 1024<br>                                                                                                                                                                                              |[0x800006f0]:remu a2, a0, a1<br> [0x800006f4]:sw a2, 196(ra)<br>    |
|  83|[0x80003358]<br>0x00000FFF|- rs2_val == 4096<br>                                                                                                                                                                                              |[0x80000704]:remu a2, a0, a1<br> [0x80000708]:sw a2, 200(ra)<br>    |
|  84|[0x8000335c]<br>0x0005FFFF|- rs2_val == 524288<br>                                                                                                                                                                                            |[0x80000718]:remu a2, a0, a1<br> [0x8000071c]:sw a2, 204(ra)<br>    |
|  85|[0x80003360]<br>0x000FFFFD|- rs2_val == 1048576<br>                                                                                                                                                                                           |[0x80000728]:remu a2, a0, a1<br> [0x8000072c]:sw a2, 208(ra)<br>    |
|  86|[0x80003364]<br>0x00000000|- rs1_val == (-2**(xlen-1))<br> - rs2_val == 2097152<br> - rs1_val == -2147483648<br>                                                                                                                              |[0x80000738]:remu a2, a0, a1<br> [0x8000073c]:sw a2, 212(ra)<br>    |
|  87|[0x80003368]<br>0x00FFFFFD|- rs2_val == 16777216<br>                                                                                                                                                                                          |[0x80000748]:remu a2, a0, a1<br> [0x8000074c]:sw a2, 216(ra)<br>    |
|  88|[0x8000336c]<br>0x0001FFFC|- rs2_val == -131073<br>                                                                                                                                                                                           |[0x8000075c]:remu a2, a0, a1<br> [0x80000760]:sw a2, 220(ra)<br>    |
|  89|[0x80003370]<br>0x40000000|- rs2_val == -2<br>                                                                                                                                                                                                |[0x8000076c]:remu a2, a0, a1<br> [0x80000770]:sw a2, 224(ra)<br>    |
|  90|[0x80003374]<br>0x55555555|- rs2_val == -9<br>                                                                                                                                                                                                |[0x80000780]:remu a2, a0, a1<br> [0x80000784]:sw a2, 228(ra)<br>    |
|  91|[0x80003378]<br>0xFFFFEFFF|- rs2_val == -17<br>                                                                                                                                                                                               |[0x80000794]:remu a2, a0, a1<br> [0x80000798]:sw a2, 232(ra)<br>    |
|  92|[0x8000337c]<br>0xFFFEFFFF|- rs2_val == -2049<br>                                                                                                                                                                                             |[0x800007ac]:remu a2, a0, a1<br> [0x800007b0]:sw a2, 236(ra)<br>    |
|  93|[0x80003380]<br>0x00000400|- rs2_val == -4097<br>                                                                                                                                                                                             |[0x800007c0]:remu a2, a0, a1<br> [0x800007c4]:sw a2, 240(ra)<br>    |
|  94|[0x80003384]<br>0x00200000|- rs2_val == -8193<br>                                                                                                                                                                                             |[0x800007d4]:remu a2, a0, a1<br> [0x800007d8]:sw a2, 244(ra)<br>    |
|  95|[0x80003388]<br>0x00003FFD|- rs2_val == 16384<br>                                                                                                                                                                                             |[0x800007e4]:remu a2, a0, a1<br> [0x800007e8]:sw a2, 248(ra)<br>    |
|  96|[0x8000338c]<br>0x00007FEF|- rs2_val == 32768<br>                                                                                                                                                                                             |[0x800007f4]:remu a2, a0, a1<br> [0x800007f8]:sw a2, 252(ra)<br>    |
|  97|[0x80003390]<br>0xBFFFFFFF|- rs2_val == -65537<br>                                                                                                                                                                                            |[0x8000080c]:remu a2, a0, a1<br> [0x80000810]:sw a2, 256(ra)<br>    |
|  98|[0x80003394]<br>0x00008000|- rs2_val == 131072<br>                                                                                                                                                                                            |[0x8000081c]:remu a2, a0, a1<br> [0x80000820]:sw a2, 260(ra)<br>    |
|  99|[0x8000339c]<br>0x00000200|- rs1_val == 512<br>                                                                                                                                                                                               |[0x80000840]:remu a2, a0, a1<br> [0x80000844]:sw a2, 268(ra)<br>    |
| 100|[0x800033a0]<br>0x01000000|- rs2_val == -257<br>                                                                                                                                                                                              |[0x80000850]:remu a2, a0, a1<br> [0x80000854]:sw a2, 272(ra)<br>    |
