
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000640')]      |
| SIG_REGION                | [('0x80003204', '0x80003334', '76 words')]      |
| COV_LABELS                | sll      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sll-01.S/sll-01.S    |
| Total Number of coverpoints| 189     |
| Total Coverpoints Hit     | 189      |
| Total Signature Updates   | 76      |
| STAT1                     | 74      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000061c]:sll a2, a0, a1
      [0x80000620]:sw a2, 224(tp)
 -- Signature Address: 0x8000332c Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000062c]:sll a2, a0, a1
      [0x80000630]:sw a2, 228(tp)
 -- Signature Address: 0x80003330 Data: 0x02000000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 8192






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

|s.no|        signature         |                                                                            coverpoints                                                                             |                                code                                |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFF780|- opcode : sll<br> - rs1 : x24<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -17<br>    |[0x80000108]:sll t2, s8, t2<br> [0x8000010c]:sw t2, 0(a2)<br>       |
|   2|[0x80003208]<br>0x00000500|- rs1 : x3<br> - rs2 : x29<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs2_val == 8<br> |[0x80000118]:sll s2, gp, t4<br> [0x8000011c]:sw s2, 4(a2)<br>       |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x18<br> - rs2 : x18<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                        |[0x8000012c]:sll a6, s2, s2<br> [0x80000130]:sw a6, 8(a2)<br>       |
|   4|[0x80003210]<br>0x00000000|- rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br>                                                                                               |[0x8000013c]:sll t5, t5, t5<br> [0x80000140]:sw t5, 12(a2)<br>      |
|   5|[0x80003214]<br>0x00000018|- rs1 : x9<br> - rs2 : x11<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                                     |[0x8000014c]:sll s1, s1, a1<br> [0x80000150]:sw s1, 16(a2)<br>      |
|   6|[0x80003218]<br>0x00000000|- rs1 : x25<br> - rs2 : x8<br> - rd : x31<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                      |[0x8000015c]:sll t6, s9, fp<br> [0x80000160]:sw t6, 20(a2)<br>      |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x10<br> - rs2 : x13<br> - rd : x6<br> - rs2_val == 10<br>                                                                                                   |[0x8000016c]:sll t1, a0, a3<br> [0x80000170]:sw t1, 24(a2)<br>      |
|   8|[0x80003220]<br>0xFFFFFFC0|- rs1 : x5<br> - rs2 : x31<br> - rd : x13<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                      |[0x80000180]:sll a3, t0, t6<br> [0x80000184]:sw a3, 28(a2)<br>      |
|   9|[0x80003224]<br>0x00000020|- rs1 : x29<br> - rs2 : x4<br> - rd : x24<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                             |[0x80000190]:sll s8, t4, tp<br> [0x80000194]:sw s8, 32(a2)<br>      |
|  10|[0x80003228]<br>0xFBFFFFFE|- rs1 : x11<br> - rs2 : x6<br> - rd : x4<br> - rs1_val == -33554433<br> - rs2_val == 1<br>                                                                          |[0x800001a4]:sll tp, a1, t1<br> [0x800001a8]:sw tp, 36(a2)<br>      |
|  11|[0x8000322c]<br>0xFFBFFFFC|- rs1 : x22<br> - rs2 : x15<br> - rd : x5<br> - rs1_val == -1048577<br> - rs2_val == 2<br>                                                                          |[0x800001b8]:sll t0, s6, a5<br> [0x800001bc]:sw t0, 40(a2)<br>      |
|  12|[0x80003230]<br>0xFFFFF7F0|- rs1 : x2<br> - rs2 : x9<br> - rd : x11<br> - rs1_val == -129<br> - rs2_val == 4<br>                                                                               |[0x800001c8]:sll a1, sp, s1<br> [0x800001cc]:sw a1, 44(a2)<br>      |
|  13|[0x80003234]<br>0xFFFD0000|- rs1 : x14<br> - rs2 : x16<br> - rd : x17<br> - rs1_val == -3<br> - rs2_val == 16<br>                                                                              |[0x800001d8]:sll a7, a4, a6<br> [0x800001dc]:sw a7, 48(a2)<br>      |
|  14|[0x80003238]<br>0xC0000000|- rs1 : x8<br> - rs2 : x28<br> - rd : x2<br> - rs1_val == -65537<br> - rs2_val == 30<br>                                                                            |[0x800001ec]:sll sp, fp, t3<br> [0x800001f0]:sw sp, 52(a2)<br>      |
|  15|[0x8000323c]<br>0xE0000000|- rs1 : x4<br> - rs2 : x1<br> - rd : x27<br> - rs2_val == 29<br>                                                                                                    |[0x80000200]:sll s11, tp, ra<br> [0x80000204]:sw s11, 56(a2)<br>    |
|  16|[0x80003240]<br>0x00000000|- rs1 : x7<br> - rs2 : x14<br> - rd : x29<br> - rs1_val == 4194304<br> - rs2_val == 27<br>                                                                          |[0x80000210]:sll t4, t2, a4<br> [0x80000214]:sw t4, 60(a2)<br>      |
|  17|[0x80003244]<br>0xFF800000|- rs1 : x19<br> - rs2 : x23<br> - rd : x25<br> - rs1_val == -536870913<br> - rs2_val == 23<br>                                                                      |[0x80000224]:sll s9, s3, s7<br> [0x80000228]:sw s9, 64(a2)<br>      |
|  18|[0x80003248]<br>0xFFDF8000|- rs1 : x15<br> - rs2 : x21<br> - rd : x28<br> - rs1_val == -65<br> - rs2_val == 15<br>                                                                             |[0x80000234]:sll t3, a5, s5<br> [0x80000238]:sw t3, 68(a2)<br>      |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x0<br> - rs2 : x22<br> - rd : x12<br> - rs2_val == 21<br>                                                                                                   |[0x8000024c]:sll a2, zero, s6<br> [0x80000250]:sw a2, 0(tp)<br>     |
|  20|[0x80003250]<br>0x00000080|- rs1 : x17<br> - rs2 : x19<br> - rd : x1<br> - rs1_val == 2<br>                                                                                                    |[0x8000025c]:sll ra, a7, s3<br> [0x80000260]:sw ra, 4(tp)<br>       |
|  21|[0x80003254]<br>0x20000000|- rs1 : x20<br> - rs2 : x2<br> - rd : x22<br> - rs1_val == 4<br>                                                                                                    |[0x8000026c]:sll s6, s4, sp<br> [0x80000270]:sw s6, 8(tp)<br>       |
|  22|[0x80003258]<br>0x00000008|- rs1 : x12<br> - rs2 : x0<br> - rd : x23<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 8<br>                                                                 |[0x8000027c]:sll s7, a2, zero<br> [0x80000280]:sw s7, 12(tp)<br>    |
|  23|[0x8000325c]<br>0x02000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x8<br> - rs1_val == 16<br>                                                                                                   |[0x8000028c]:sll fp, s10, s9<br> [0x80000290]:sw fp, 16(tp)<br>     |
|  24|[0x80003260]<br>0x00800000|- rs1 : x23<br> - rs2 : x24<br> - rd : x19<br> - rs1_val == 32<br>                                                                                                  |[0x8000029c]:sll s3, s7, s8<br> [0x800002a0]:sw s3, 20(tp)<br>      |
|  25|[0x80003264]<br>0x00040000|- rs1 : x1<br> - rs2 : x5<br> - rd : x20<br> - rs1_val == 64<br>                                                                                                    |[0x800002ac]:sll s4, ra, t0<br> [0x800002b0]:sw s4, 24(tp)<br>      |
|  26|[0x80003268]<br>0x00002000|- rs1 : x28<br> - rs2 : x17<br> - rd : x3<br> - rs1_val == 128<br>                                                                                                  |[0x800002bc]:sll gp, t3, a7<br> [0x800002c0]:sw gp, 28(tp)<br>      |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x27<br> - rs2 : x12<br> - rd : x10<br> - rs1_val == 512<br>                                                                                                 |[0x800002cc]:sll a0, s11, a2<br> [0x800002d0]:sw a0, 32(tp)<br>     |
|  28|[0x80003270]<br>0x00008000|- rs1 : x13<br> - rs2 : x27<br> - rd : x21<br> - rs1_val == 1024<br>                                                                                                |[0x800002dc]:sll s5, a3, s11<br> [0x800002e0]:sw s5, 36(tp)<br>     |
|  29|[0x80003274]<br>0x00000000|- rs1 : x31<br> - rs2 : x20<br> - rd : x14<br> - rs1_val == 2048<br>                                                                                                |[0x800002f0]:sll a4, t6, s4<br> [0x800002f4]:sw a4, 40(tp)<br>      |
|  30|[0x80003278]<br>0x20000000|- rs1 : x21<br> - rs2 : x3<br> - rd : x26<br> - rs1_val == 4096<br>                                                                                                 |[0x80000300]:sll s10, s5, gp<br> [0x80000304]:sw s10, 44(tp)<br>    |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x16<br> - rs2 : x26<br> - rd : x0<br> - rs1_val == 8192<br>                                                                                                 |[0x80000310]:sll zero, a6, s10<br> [0x80000314]:sw zero, 48(tp)<br> |
|  32|[0x80003280]<br>0x08000000|- rs1 : x6<br> - rs2 : x10<br> - rd : x15<br> - rs1_val == 16384<br>                                                                                                |[0x80000320]:sll a5, t1, a0<br> [0x80000324]:sw a5, 52(tp)<br>      |
|  33|[0x80003284]<br>0x00800000|- rs1_val == 32768<br>                                                                                                                                              |[0x80000330]:sll a2, a0, a1<br> [0x80000334]:sw a2, 56(tp)<br>      |
|  34|[0x80003288]<br>0x80000000|- rs1_val == 65536<br>                                                                                                                                              |[0x80000340]:sll a2, a0, a1<br> [0x80000344]:sw a2, 60(tp)<br>      |
|  35|[0x8000328c]<br>0x02000000|- rs1_val == 131072<br>                                                                                                                                             |[0x80000350]:sll a2, a0, a1<br> [0x80000354]:sw a2, 64(tp)<br>      |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                             |[0x80000360]:sll a2, a0, a1<br> [0x80000364]:sw a2, 68(tp)<br>      |
|  37|[0x80003294]<br>0x00800000|- rs1_val == 524288<br>                                                                                                                                             |[0x80000370]:sll a2, a0, a1<br> [0x80000374]:sw a2, 72(tp)<br>      |
|  38|[0x80003298]<br>0x00800000|- rs1_val == 1048576<br>                                                                                                                                            |[0x80000380]:sll a2, a0, a1<br> [0x80000384]:sw a2, 76(tp)<br>      |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                                                            |[0x80000390]:sll a2, a0, a1<br> [0x80000394]:sw a2, 80(tp)<br>      |
|  40|[0x800032a0]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                                           |[0x800003a0]:sll a2, a0, a1<br> [0x800003a4]:sw a2, 84(tp)<br>      |
|  41|[0x800032a4]<br>0xFFEFFE00|- rs1_val == -2049<br>                                                                                                                                              |[0x800003b4]:sll a2, a0, a1<br> [0x800003b8]:sw a2, 88(tp)<br>      |
|  42|[0x800032a8]<br>0xFF7FF800|- rs1_val == -4097<br>                                                                                                                                              |[0x800003c8]:sll a2, a0, a1<br> [0x800003cc]:sw a2, 92(tp)<br>      |
|  43|[0x800032ac]<br>0xFDFFF000|- rs1_val == -8193<br>                                                                                                                                              |[0x800003dc]:sll a2, a0, a1<br> [0x800003e0]:sw a2, 96(tp)<br>      |
|  44|[0x800032b0]<br>0xFEFFFC00|- rs1_val == -16385<br>                                                                                                                                             |[0x800003f0]:sll a2, a0, a1<br> [0x800003f4]:sw a2, 100(tp)<br>     |
|  45|[0x800032b4]<br>0xDFFFC000|- rs1_val == -32769<br>                                                                                                                                             |[0x80000404]:sll a2, a0, a1<br> [0x80000408]:sw a2, 104(tp)<br>     |
|  46|[0x800032b8]<br>0xFFFBFFFE|- rs1_val == -131073<br>                                                                                                                                            |[0x80000418]:sll a2, a0, a1<br> [0x8000041c]:sw a2, 108(tp)<br>     |
|  47|[0x800032bc]<br>0xC0000000|- rs1_val == -262145<br>                                                                                                                                            |[0x8000042c]:sll a2, a0, a1<br> [0x80000430]:sw a2, 112(tp)<br>     |
|  48|[0x800032c0]<br>0xC0000000|- rs1_val == -524289<br>                                                                                                                                            |[0x80000440]:sll a2, a0, a1<br> [0x80000444]:sw a2, 116(tp)<br>     |
|  49|[0x800032c4]<br>0xF7FFFFC0|- rs1_val == -2097153<br>                                                                                                                                           |[0x80000454]:sll a2, a0, a1<br> [0x80000458]:sw a2, 120(tp)<br>     |
|  50|[0x800032c8]<br>0xFFFFF000|- rs1_val == -4194305<br>                                                                                                                                           |[0x80000468]:sll a2, a0, a1<br> [0x8000046c]:sw a2, 124(tp)<br>     |
|  51|[0x800032cc]<br>0xFFFFFC00|- rs1_val == -8388609<br>                                                                                                                                           |[0x8000047c]:sll a2, a0, a1<br> [0x80000480]:sw a2, 128(tp)<br>     |
|  52|[0x800032d0]<br>0xFFFFE000|- rs1_val == -16777217<br>                                                                                                                                          |[0x80000490]:sll a2, a0, a1<br> [0x80000494]:sw a2, 132(tp)<br>     |
|  53|[0x800032d4]<br>0xF8000000|- rs1_val == -67108865<br>                                                                                                                                          |[0x800004a4]:sll a2, a0, a1<br> [0x800004a8]:sw a2, 136(tp)<br>     |
|  54|[0x800032d8]<br>0xFFFF0000|- rs1_val == -134217729<br>                                                                                                                                         |[0x800004b8]:sll a2, a0, a1<br> [0x800004bc]:sw a2, 140(tp)<br>     |
|  55|[0x800032dc]<br>0xFFFE0000|- rs1_val == -268435457<br>                                                                                                                                         |[0x800004cc]:sll a2, a0, a1<br> [0x800004d0]:sw a2, 144(tp)<br>     |
|  56|[0x800032e0]<br>0xFFFF0000|- rs1_val == -1073741825<br>                                                                                                                                        |[0x800004e0]:sll a2, a0, a1<br> [0x800004e4]:sw a2, 148(tp)<br>     |
|  57|[0x800032e4]<br>0xFFFFEF80|- rs1_val == -33<br>                                                                                                                                                |[0x800004f0]:sll a2, a0, a1<br> [0x800004f4]:sw a2, 152(tp)<br>     |
|  58|[0x800032e8]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                           |[0x80000500]:sll a2, a0, a1<br> [0x80000504]:sw a2, 156(tp)<br>     |
|  59|[0x800032ec]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                           |[0x80000510]:sll a2, a0, a1<br> [0x80000514]:sw a2, 160(tp)<br>     |
|  60|[0x800032f0]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                          |[0x80000520]:sll a2, a0, a1<br> [0x80000524]:sw a2, 164(tp)<br>     |
|  61|[0x800032f4]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                          |[0x80000530]:sll a2, a0, a1<br> [0x80000534]:sw a2, 168(tp)<br>     |
|  62|[0x800032f8]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                          |[0x80000540]:sll a2, a0, a1<br> [0x80000544]:sw a2, 172(tp)<br>     |
|  63|[0x800032fc]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                         |[0x80000550]:sll a2, a0, a1<br> [0x80000554]:sw a2, 176(tp)<br>     |
|  64|[0x80003300]<br>0x80000000|- rs1_val == 1431655765<br>                                                                                                                                         |[0x80000564]:sll a2, a0, a1<br> [0x80000568]:sw a2, 180(tp)<br>     |
|  65|[0x80003304]<br>0xFFFC0000|- rs1_val == -2<br>                                                                                                                                                 |[0x80000574]:sll a2, a0, a1<br> [0x80000578]:sw a2, 184(tp)<br>     |
|  66|[0x80003308]<br>0x55555550|- rs1_val == -1431655766<br>                                                                                                                                        |[0x80000588]:sll a2, a0, a1<br> [0x8000058c]:sw a2, 188(tp)<br>     |
|  67|[0x8000330c]<br>0xFFFFFD80|- rs1_val == -5<br>                                                                                                                                                 |[0x80000598]:sll a2, a0, a1<br> [0x8000059c]:sw a2, 192(tp)<br>     |
|  68|[0x80003310]<br>0xFFDC0000|- rs1_val == -9<br>                                                                                                                                                 |[0x800005a8]:sll a2, a0, a1<br> [0x800005ac]:sw a2, 196(tp)<br>     |
|  69|[0x80003314]<br>0xFEFF0000|- rs1_val == -257<br>                                                                                                                                               |[0x800005b8]:sll a2, a0, a1<br> [0x800005bc]:sw a2, 200(tp)<br>     |
|  70|[0x80003318]<br>0xFF7FC000|- rs1_val == -513<br>                                                                                                                                               |[0x800005c8]:sll a2, a0, a1<br> [0x800005cc]:sw a2, 204(tp)<br>     |
|  71|[0x8000331c]<br>0xFFFF7FE0|- rs1_val == -1025<br>                                                                                                                                              |[0x800005d8]:sll a2, a0, a1<br> [0x800005dc]:sw a2, 208(tp)<br>     |
|  72|[0x80003320]<br>0xFDFFFFFF|- rs1_val < 0 and rs2_val == 0<br>                                                                                                                                  |[0x800005ec]:sll a2, a0, a1<br> [0x800005f0]:sw a2, 212(tp)<br>     |
|  73|[0x80003324]<br>0x00200000|- rs1_val == 2097152<br>                                                                                                                                            |[0x800005fc]:sll a2, a0, a1<br> [0x80000600]:sw a2, 216(tp)<br>     |
|  74|[0x80003328]<br>0x20000000|- rs1_val == 256<br>                                                                                                                                                |[0x8000060c]:sll a2, a0, a1<br> [0x80000610]:sw a2, 220(tp)<br>     |
