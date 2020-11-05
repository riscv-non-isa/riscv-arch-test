
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000600')]      |
| SIG_REGION                | [('0x80003204', '0x80003328', '73 words')]      |
| COV_LABELS                | sll      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sll-01.S/sll-01.S    |
| Total Number of coverpoints| 189     |
| Total Coverpoints Hit     | 189      |
| Total Signature Updates   | 73      |
| STAT1                     | 73      |
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

|s.no|        signature         |                                                                                             coverpoints                                                                                             |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : sll<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                        |[0x8000010c]:sll s10, zero, zero<br> [0x80000110]:sw s10, 0(fp)<br> |
|   2|[0x80003208]<br>0x00200000|- rs1 : x3<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 131072<br> - rs2_val == 4<br>                                   |[0x8000011c]:sll t2, gp, t2<br> [0x80000120]:sw t2, 4(fp)<br>       |
|   3|[0x8000320c]<br>0xAAAAAAAA|- rs1 : x17<br> - rs2 : x22<br> - rd : x17<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val == -1431655766<br>                                                                |[0x80000130]:sll a7, a7, s6<br> [0x80000134]:sw a7, 8(fp)<br>       |
|   4|[0x80003210]<br>0x00000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br>                                                                                                                                |[0x80000140]:sll s8, s8, s8<br> [0x80000144]:sw s8, 12(fp)<br>      |
|   5|[0x80003214]<br>0x00000018|- rs1 : x13<br> - rs2 : x23<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                                             |[0x80000150]:sll s11, a3, s7<br> [0x80000154]:sw s11, 16(fp)<br>    |
|   6|[0x80003218]<br>0x00000000|- rs1 : x18<br> - rs2 : x29<br> - rd : x30<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br> |[0x80000160]:sll t5, s2, t4<br> [0x80000164]:sw t5, 20(fp)<br>      |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x1<br> - rs2 : x27<br> - rd : x20<br> - rs2_val == 1<br>                                                                                                                                     |[0x80000170]:sll s4, ra, s11<br> [0x80000174]:sw s4, 24(fp)<br>     |
|   8|[0x80003220]<br>0xFFFFFFFE|- rs1 : x2<br> - rs2 : x12<br> - rd : x5<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                        |[0x80000184]:sll t0, sp, a2<br> [0x80000188]:sw t0, 28(fp)<br>      |
|   9|[0x80003224]<br>0x00000008|- rs1 : x21<br> - rs2 : x13<br> - rd : x18<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                             |[0x80000194]:sll s2, s5, a3<br> [0x80000198]:sw s2, 32(fp)<br>      |
|  10|[0x80003228]<br>0xDFFFFFFC|- rs1 : x14<br> - rs2 : x2<br> - rd : x13<br> - rs1_val == -134217729<br> - rs2_val == 2<br>                                                                                                         |[0x800001a8]:sll a3, a4, sp<br> [0x800001ac]:sw a3, 36(fp)<br>      |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x6<br> - rs2 : x28<br> - rd : x25<br> - rs1_val == 67108864<br> - rs2_val == 8<br>                                                                                                           |[0x800001b8]:sll s9, t1, t3<br> [0x800001bc]:sw s9, 40(fp)<br>      |
|  12|[0x80003230]<br>0xFFFC0000|- rs1 : x31<br> - rs2 : x1<br> - rd : x14<br> - rs2_val == 16<br>                                                                                                                                    |[0x800001c8]:sll a4, t6, ra<br> [0x800001cc]:sw a4, 44(fp)<br>      |
|  13|[0x80003234]<br>0xC0000000|- rs1 : x10<br> - rs2 : x25<br> - rd : x4<br> - rs1_val == -32769<br> - rs2_val == 30<br>                                                                                                            |[0x800001dc]:sll tp, a0, s9<br> [0x800001e0]:sw tp, 48(fp)<br>      |
|  14|[0x80003238]<br>0xE0000000|- rs1 : x7<br> - rs2 : x15<br> - rd : x6<br> - rs1_val == -8193<br> - rs2_val == 29<br>                                                                                                              |[0x800001f0]:sll t1, t2, a5<br> [0x800001f4]:sw t1, 52(fp)<br>      |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x4<br> - rs2 : x5<br> - rd : x0<br> - rs2_val == 27<br>                                                                                                                                      |[0x80000204]:sll zero, tp, t0<br> [0x80000208]:sw zero, 56(fp)<br>  |
|  16|[0x80003240]<br>0xFF800000|- rs1 : x25<br> - rs2 : x18<br> - rd : x23<br> - rs1_val == -67108865<br> - rs2_val == 23<br>                                                                                                        |[0x80000218]:sll s7, s9, s2<br> [0x8000021c]:sw s7, 60(fp)<br>      |
|  17|[0x80003244]<br>0xFFFC0000|- rs1 : x27<br> - rs2 : x9<br> - rd : x28<br> - rs2_val == 15<br>                                                                                                                                    |[0x80000228]:sll t3, s11, s1<br> [0x8000022c]:sw t3, 64(fp)<br>     |
|  18|[0x80003248]<br>0x00000000|- rs1 : x16<br> - rs2 : x17<br> - rd : x12<br> - rs1_val == 16777216<br> - rs2_val == 21<br>                                                                                                         |[0x80000238]:sll a2, a6, a7<br> [0x8000023c]:sw a2, 68(fp)<br>      |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x5<br> - rs2 : x8<br> - rd : x29<br> - rs1_val == 134217728<br> - rs2_val == 10<br>                                                                                                          |[0x80000250]:sll t4, t0, fp<br> [0x80000254]:sw t4, 0(t2)<br>       |
|  20|[0x80003250]<br>0x00008000|- rs1 : x28<br> - rs2 : x11<br> - rd : x2<br> - rs1_val == 2<br>                                                                                                                                     |[0x80000260]:sll sp, t3, a1<br> [0x80000264]:sw sp, 4(t2)<br>       |
|  21|[0x80003254]<br>0x00000020|- rs1 : x23<br> - rs2 : x31<br> - rd : x19<br> - rs1_val == 4<br>                                                                                                                                    |[0x80000270]:sll s3, s7, t6<br> [0x80000274]:sw s3, 8(t2)<br>       |
|  22|[0x80003258]<br>0x40000000|- rs1 : x22<br> - rs2 : x14<br> - rd : x1<br> - rs1_val == 8<br>                                                                                                                                     |[0x80000280]:sll ra, s6, a4<br> [0x80000284]:sw ra, 12(t2)<br>      |
|  23|[0x8000325c]<br>0x00800000|- rs1 : x19<br> - rs2 : x10<br> - rd : x8<br> - rs1_val == 16<br>                                                                                                                                    |[0x80000290]:sll fp, s3, a0<br> [0x80000294]:sw fp, 16(t2)<br>      |
|  24|[0x80003260]<br>0x10000000|- rs1 : x11<br> - rs2 : x19<br> - rd : x21<br> - rs1_val == 32<br>                                                                                                                                   |[0x800002a0]:sll s5, a1, s3<br> [0x800002a4]:sw s5, 20(t2)<br>      |
|  25|[0x80003264]<br>0x00000800|- rs1 : x8<br> - rs2 : x4<br> - rd : x31<br> - rs1_val == 64<br>                                                                                                                                     |[0x800002b0]:sll t6, fp, tp<br> [0x800002b4]:sw t6, 24(t2)<br>      |
|  26|[0x80003268]<br>0x02000000|- rs1 : x12<br> - rs2 : x20<br> - rd : x9<br> - rs1_val == 128<br>                                                                                                                                   |[0x800002c0]:sll s1, a2, s4<br> [0x800002c4]:sw s1, 28(t2)<br>      |
|  27|[0x8000326c]<br>0x00080000|- rs1 : x26<br> - rs2 : x30<br> - rd : x16<br> - rs1_val == 256<br>                                                                                                                                  |[0x800002d0]:sll a6, s10, t5<br> [0x800002d4]:sw a6, 32(t2)<br>     |
|  28|[0x80003270]<br>0x00004000|- rs1 : x15<br> - rs2 : x6<br> - rd : x11<br> - rs1_val == 512<br>                                                                                                                                   |[0x800002e0]:sll a1, a5, t1<br> [0x800002e4]:sw a1, 36(t2)<br>      |
|  29|[0x80003274]<br>0x00004000|- rs1 : x30<br> - rs2 : x26<br> - rd : x22<br> - rs1_val == 1024<br>                                                                                                                                 |[0x800002f0]:sll s6, t5, s10<br> [0x800002f4]:sw s6, 40(t2)<br>     |
|  30|[0x80003278]<br>0x00040000|- rs1 : x20<br> - rs2 : x16<br> - rd : x3<br> - rs1_val == 2048<br>                                                                                                                                  |[0x80000304]:sll gp, s4, a6<br> [0x80000308]:sw gp, 44(t2)<br>      |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x9<br> - rs2 : x3<br> - rd : x15<br> - rs1_val == 4096<br>                                                                                                                                   |[0x80000314]:sll a5, s1, gp<br> [0x80000318]:sw a5, 48(t2)<br>      |
|  32|[0x80003280]<br>0x02000000|- rs1 : x29<br> - rs2 : x21<br> - rd : x10<br> - rs1_val == 8192<br>                                                                                                                                 |[0x80000324]:sll a0, t4, s5<br> [0x80000328]:sw a0, 52(t2)<br>      |
|  33|[0x80003284]<br>0x00100000|- rs1_val == 16384<br>                                                                                                                                                                               |[0x80000334]:sll a2, a0, a1<br> [0x80000338]:sw a2, 56(t2)<br>      |
|  34|[0x80003288]<br>0x04000000|- rs1_val == 32768<br>                                                                                                                                                                               |[0x80000344]:sll a2, a0, a1<br> [0x80000348]:sw a2, 60(t2)<br>      |
|  35|[0x8000328c]<br>0x00800000|- rs1_val == 65536<br>                                                                                                                                                                               |[0x80000354]:sll a2, a0, a1<br> [0x80000358]:sw a2, 64(t2)<br>      |
|  36|[0x80003290]<br>0x02000000|- rs1_val == 262144<br>                                                                                                                                                                              |[0x80000364]:sll a2, a0, a1<br> [0x80000368]:sw a2, 68(t2)<br>      |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 524288<br>                                                                                                                                                                              |[0x80000374]:sll a2, a0, a1<br> [0x80000378]:sw a2, 72(t2)<br>      |
|  38|[0x80003298]<br>0x00800000|- rs1_val == 1048576<br>                                                                                                                                                                             |[0x80000384]:sll a2, a0, a1<br> [0x80000388]:sw a2, 76(t2)<br>      |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                                                                             |[0x80000394]:sll a2, a0, a1<br> [0x80000398]:sw a2, 80(t2)<br>      |
|  40|[0x800032a0]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                             |[0x800003a4]:sll a2, a0, a1<br> [0x800003a8]:sw a2, 84(t2)<br>      |
|  41|[0x800032a4]<br>0x00800000|- rs1_val > 0 and rs2_val == 0<br> - rs1_val == 8388608<br>                                                                                                                                          |[0x800003b4]:sll a2, a0, a1<br> [0x800003b8]:sw a2, 88(t2)<br>      |
|  42|[0x800032a8]<br>0xFFFFDFFC|- rs1_val == -2049<br>                                                                                                                                                                               |[0x800003c8]:sll a2, a0, a1<br> [0x800003cc]:sw a2, 92(t2)<br>      |
|  43|[0x800032ac]<br>0xFFF7FF80|- rs1_val == -4097<br>                                                                                                                                                                               |[0x800003dc]:sll a2, a0, a1<br> [0x800003e0]:sw a2, 96(t2)<br>      |
|  44|[0x800032b0]<br>0xFFFBFFF0|- rs1_val == -16385<br>                                                                                                                                                                              |[0x800003f0]:sll a2, a0, a1<br> [0x800003f4]:sw a2, 100(t2)<br>     |
|  45|[0x800032b4]<br>0xFFFF0000|- rs1_val == -65537<br>                                                                                                                                                                              |[0x80000404]:sll a2, a0, a1<br> [0x80000408]:sw a2, 104(t2)<br>     |
|  46|[0x800032b8]<br>0xFFFE0000|- rs1_val == -262145<br>                                                                                                                                                                             |[0x80000418]:sll a2, a0, a1<br> [0x8000041c]:sw a2, 108(t2)<br>     |
|  47|[0x800032bc]<br>0xFFFF8000|- rs1_val == -524289<br>                                                                                                                                                                             |[0x8000042c]:sll a2, a0, a1<br> [0x80000430]:sw a2, 112(t2)<br>     |
|  48|[0x800032c0]<br>0xFFE00000|- rs1_val == -1048577<br>                                                                                                                                                                            |[0x80000440]:sll a2, a0, a1<br> [0x80000444]:sw a2, 116(t2)<br>     |
|  49|[0x800032c4]<br>0xF8000000|- rs1_val == -2097153<br>                                                                                                                                                                            |[0x80000454]:sll a2, a0, a1<br> [0x80000458]:sw a2, 120(t2)<br>     |
|  50|[0x800032c8]<br>0xFEFFFFFC|- rs1_val == -4194305<br>                                                                                                                                                                            |[0x80000468]:sll a2, a0, a1<br> [0x8000046c]:sw a2, 124(t2)<br>     |
|  51|[0x800032cc]<br>0xFBFFFFF8|- rs1_val == -8388609<br>                                                                                                                                                                            |[0x8000047c]:sll a2, a0, a1<br> [0x80000480]:sw a2, 128(t2)<br>     |
|  52|[0x800032d0]<br>0xE0000000|- rs1_val == -16777217<br>                                                                                                                                                                           |[0x80000490]:sll a2, a0, a1<br> [0x80000494]:sw a2, 132(t2)<br>     |
|  53|[0x800032d4]<br>0x7FFFFFC0|- rs1_val == -33554433<br>                                                                                                                                                                           |[0x800004a4]:sll a2, a0, a1<br> [0x800004a8]:sw a2, 136(t2)<br>     |
|  54|[0x800032d8]<br>0xE0000000|- rs1_val == -268435457<br>                                                                                                                                                                          |[0x800004b8]:sll a2, a0, a1<br> [0x800004bc]:sw a2, 140(t2)<br>     |
|  55|[0x800032dc]<br>0xFFFFFE00|- rs1_val == -536870913<br>                                                                                                                                                                          |[0x800004cc]:sll a2, a0, a1<br> [0x800004d0]:sw a2, 144(t2)<br>     |
|  56|[0x800032e0]<br>0xFFFC0000|- rs1_val == -1073741825<br>                                                                                                                                                                         |[0x800004e0]:sll a2, a0, a1<br> [0x800004e4]:sw a2, 148(t2)<br>     |
|  57|[0x800032e4]<br>0x55550000|- rs1_val == 1431655765<br>                                                                                                                                                                          |[0x800004f4]:sll a2, a0, a1<br> [0x800004f8]:sw a2, 152(t2)<br>     |
|  58|[0x800032e8]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                                            |[0x80000504]:sll a2, a0, a1<br> [0x80000508]:sw a2, 156(t2)<br>     |
|  59|[0x800032ec]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                           |[0x80000514]:sll a2, a0, a1<br> [0x80000518]:sw a2, 160(t2)<br>     |
|  60|[0x800032f0]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                           |[0x80000524]:sll a2, a0, a1<br> [0x80000528]:sw a2, 164(t2)<br>     |
|  61|[0x800032f4]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                          |[0x80000534]:sll a2, a0, a1<br> [0x80000538]:sw a2, 168(t2)<br>     |
|  62|[0x800032f8]<br>0xFFFC0000|- rs1_val == -2<br>                                                                                                                                                                                  |[0x80000544]:sll a2, a0, a1<br> [0x80000548]:sw a2, 172(t2)<br>     |
|  63|[0x800032fc]<br>0xFFFFFE80|- rs1_val == -3<br>                                                                                                                                                                                  |[0x80000554]:sll a2, a0, a1<br> [0x80000558]:sw a2, 176(t2)<br>     |
|  64|[0x80003300]<br>0xFFFFFFEC|- rs1_val == -5<br>                                                                                                                                                                                  |[0x80000564]:sll a2, a0, a1<br> [0x80000568]:sw a2, 180(t2)<br>     |
|  65|[0x80003304]<br>0xB8000000|- rs1_val == -9<br>                                                                                                                                                                                  |[0x80000574]:sll a2, a0, a1<br> [0x80000578]:sw a2, 184(t2)<br>     |
|  66|[0x80003308]<br>0xFFFFFDE0|- rs1_val == -17<br>                                                                                                                                                                                 |[0x80000584]:sll a2, a0, a1<br> [0x80000588]:sw a2, 188(t2)<br>     |
|  67|[0x8000330c]<br>0xFFFFBE00|- rs1_val == -33<br>                                                                                                                                                                                 |[0x80000594]:sll a2, a0, a1<br> [0x80000598]:sw a2, 192(t2)<br>     |
|  68|[0x80003310]<br>0xFFFFFDF8|- rs1_val == -65<br>                                                                                                                                                                                 |[0x800005a4]:sll a2, a0, a1<br> [0x800005a8]:sw a2, 196(t2)<br>     |
|  69|[0x80003314]<br>0xFFFFFF7F|- rs1_val == -129<br>                                                                                                                                                                                |[0x800005b4]:sll a2, a0, a1<br> [0x800005b8]:sw a2, 200(t2)<br>     |
|  70|[0x80003318]<br>0xFFFEFF00|- rs1_val == -257<br>                                                                                                                                                                                |[0x800005c4]:sll a2, a0, a1<br> [0x800005c8]:sw a2, 204(t2)<br>     |
|  71|[0x8000331c]<br>0xFFFEFF80|- rs1_val == -513<br>                                                                                                                                                                                |[0x800005d4]:sll a2, a0, a1<br> [0x800005d8]:sw a2, 208(t2)<br>     |
|  72|[0x80003320]<br>0xFFFBFF00|- rs1_val == -1025<br>                                                                                                                                                                               |[0x800005e4]:sll a2, a0, a1<br> [0x800005e8]:sw a2, 212(t2)<br>     |
|  73|[0x80003324]<br>0xDFFFF000|- rs1_val == -131073<br>                                                                                                                                                                             |[0x800005f8]:sll a2, a0, a1<br> [0x800005fc]:sw a2, 216(t2)<br>     |
