
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005f0')]      |
| SIG_REGION                | [('0x80003204', '0x80003330', '75 words')]      |
| COV_LABELS                | sll      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sll-01.S/sll-01.S    |
| Total Number of coverpoints| 189     |
| Total Coverpoints Hit     | 189      |
| Total Signature Updates   | 72      |
| STAT1                     | 70      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c0]:sll a2, a0, a1
      [0x800005c4]:sw a2, 200(sp)
 -- Signature Address: 0x80003324 Data: 0x08000000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d0]:sll a2, a0, a1
      [0x800005d4]:sw a2, 204(sp)
 -- Signature Address: 0x80003328 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == 1
      - rs2_val == 1






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

|s.no|        signature         |                                                                                              coverpoints                                                                                               |                                code                                |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0001A000|- opcode : sll<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> |[0x80000108]:sll t4, t1, t1<br> [0x8000010c]:sw t4, 0(gp)<br>       |
|   2|[0x80003214]<br>0x00000000|- rs1 : x9<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 256<br>                                                                              |[0x80000118]:sll zero, s1, zero<br> [0x8000011c]:sw zero, 4(gp)<br> |
|   3|[0x80003218]<br>0xFFFF7FFF|- rs1 : x28<br> - rs2 : x14<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val == -32769<br>                                                                        |[0x8000012c]:sll t3, t3, a4<br> [0x80000130]:sw t3, 8(gp)<br>       |
|   4|[0x8000321c]<br>0x00000800|- rs1 : x27<br> - rs2 : x2<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 2048<br>                                                                                        |[0x80000140]:sll fp, s11, sp<br> [0x80000144]:sw fp, 12(gp)<br>     |
|   5|[0x80003220]<br>0x00000002|- rs1 : x17<br> - rs2 : x17<br> - rd : x17<br> - rs1 == rs2 == rd<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 1<br>                                      |[0x80000150]:sll a7, a7, a7<br> [0x80000154]:sw a7, 16(gp)<br>      |
|   6|[0x80003224]<br>0x00000000|- rs1 : x13<br> - rs2 : x16<br> - rd : x6<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>     |[0x80000160]:sll t1, a3, a6<br> [0x80000164]:sw t1, 20(gp)<br>      |
|   7|[0x80003228]<br>0x00000000|- rs1 : x23<br> - rs2 : x1<br> - rd : x13<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs2_val == 15<br>                                                                                |[0x80000170]:sll a3, s7, ra<br> [0x80000174]:sw a3, 24(gp)<br>      |
|   8|[0x8000322c]<br>0xFFFC0000|- rs1 : x10<br> - rs2 : x11<br> - rd : x14<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                         |[0x80000184]:sll a4, a0, a1<br> [0x80000188]:sw a4, 28(gp)<br>      |
|   9|[0x80003230]<br>0x00000000|- rs1 : x0<br> - rs2 : x8<br> - rd : x24<br> - rs2_val == 2<br>                                                                                                                                         |[0x80000194]:sll s8, zero, fp<br> [0x80000198]:sw s8, 32(gp)<br>    |
|  10|[0x80003234]<br>0xBFFFFFF0|- rs1 : x2<br> - rs2 : x15<br> - rd : x23<br> - rs1_val == -67108865<br> - rs2_val == 4<br>                                                                                                             |[0x800001a8]:sll s7, sp, a5<br> [0x800001ac]:sw s7, 36(gp)<br>      |
|  11|[0x80003238]<br>0x00000800|- rs1 : x25<br> - rs2 : x13<br> - rd : x12<br> - rs1_val == 8<br> - rs2_val == 8<br>                                                                                                                    |[0x800001b8]:sll a2, s9, a3<br> [0x800001bc]:sw a2, 40(gp)<br>      |
|  12|[0x8000323c]<br>0x00400000|- rs1 : x8<br> - rs2 : x25<br> - rd : x22<br> - rs1_val == 64<br> - rs2_val == 16<br>                                                                                                                   |[0x800001c8]:sll s6, fp, s9<br> [0x800001cc]:sw s6, 44(gp)<br>      |
|  13|[0x80003240]<br>0xC0000000|- rs1 : x18<br> - rs2 : x5<br> - rd : x31<br> - rs1_val == -8193<br> - rs2_val == 30<br>                                                                                                                |[0x800001dc]:sll t6, s2, t0<br> [0x800001e0]:sw t6, 48(gp)<br>      |
|  14|[0x80003244]<br>0x00000000|- rs1 : x15<br> - rs2 : x4<br> - rd : x2<br> - rs2_val == 29<br>                                                                                                                                        |[0x800001ec]:sll sp, a5, tp<br> [0x800001f0]:sw sp, 52(gp)<br>      |
|  15|[0x80003248]<br>0x00000000|- rs1 : x4<br> - rs2 : x27<br> - rd : x18<br> - rs1_val == 1048576<br> - rs2_val == 27<br>                                                                                                              |[0x800001fc]:sll s2, tp, s11<br> [0x80000200]:sw s2, 56(gp)<br>     |
|  16|[0x8000324c]<br>0xFF800000|- rs1 : x29<br> - rs2 : x10<br> - rd : x26<br> - rs1_val == -16385<br> - rs2_val == 23<br>                                                                                                              |[0x80000210]:sll s10, t4, a0<br> [0x80000214]:sw s10, 60(gp)<br>    |
|  17|[0x80003250]<br>0x00800000|- rs1 : x19<br> - rs2 : x28<br> - rd : x5<br> - rs1_val == 4<br> - rs2_val == 21<br>                                                                                                                    |[0x80000220]:sll t0, s3, t3<br> [0x80000224]:sw t0, 64(gp)<br>      |
|  18|[0x80003254]<br>0xFFFFFC00|- rs1 : x22<br> - rs2 : x30<br> - rd : x11<br> - rs1_val == -8388609<br> - rs2_val == 10<br>                                                                                                            |[0x80000234]:sll a1, s6, t5<br> [0x80000238]:sw a1, 68(gp)<br>      |
|  19|[0x80003258]<br>0x00000400|- rs1 : x16<br> - rs2 : x9<br> - rd : x7<br> - rs1_val == 2<br>                                                                                                                                         |[0x80000244]:sll t2, a6, s1<br> [0x80000248]:sw t2, 72(gp)<br>      |
|  20|[0x8000325c]<br>0x80000000|- rs1 : x14<br> - rs2 : x3<br> - rd : x1<br> - rs1_val == 16<br>                                                                                                                                        |[0x8000025c]:sll ra, a4, gp<br> [0x80000260]:sw ra, 0(sp)<br>       |
|  21|[0x80003260]<br>0x00000020|- rs1 : x31<br> - rs2 : x19<br> - rd : x3<br> - rs1_val == 32<br>                                                                                                                                       |[0x8000026c]:sll gp, t6, s3<br> [0x80000270]:sw gp, 4(sp)<br>       |
|  22|[0x80003264]<br>0x00000800|- rs1 : x21<br> - rs2 : x18<br> - rd : x30<br> - rs1_val == 128<br>                                                                                                                                     |[0x8000027c]:sll t5, s5, s2<br> [0x80000280]:sw t5, 8(sp)<br>       |
|  23|[0x80003268]<br>0x00000000|- rs1 : x3<br> - rs2 : x23<br> - rd : x10<br> - rs1_val == 512<br>                                                                                                                                      |[0x8000028c]:sll a0, gp, s7<br> [0x80000290]:sw a0, 12(sp)<br>      |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x12<br> - rs2 : x24<br> - rd : x21<br> - rs1_val == 1024<br>                                                                                                                                    |[0x8000029c]:sll s5, a2, s8<br> [0x800002a0]:sw s5, 16(sp)<br>      |
|  25|[0x80003270]<br>0x00000000|- rs1 : x5<br> - rs2 : x26<br> - rd : x15<br> - rs1_val == 4096<br>                                                                                                                                     |[0x800002ac]:sll a5, t0, s10<br> [0x800002b0]:sw a5, 20(sp)<br>     |
|  26|[0x80003274]<br>0x00020000|- rs1 : x11<br> - rs2 : x31<br> - rd : x16<br> - rs1_val == 8192<br>                                                                                                                                    |[0x800002bc]:sll a6, a1, t6<br> [0x800002c0]:sw a6, 24(sp)<br>      |
|  27|[0x80003278]<br>0x20000000|- rs1 : x26<br> - rs2 : x22<br> - rd : x20<br> - rs1_val == 16384<br>                                                                                                                                   |[0x800002cc]:sll s4, s10, s6<br> [0x800002d0]:sw s4, 28(sp)<br>     |
|  28|[0x8000327c]<br>0x01000000|- rs1 : x1<br> - rs2 : x7<br> - rd : x27<br> - rs1_val == 32768<br>                                                                                                                                     |[0x800002dc]:sll s11, ra, t2<br> [0x800002e0]:sw s11, 32(sp)<br>    |
|  29|[0x80003280]<br>0x00000000|- rs1 : x20<br> - rs2 : x29<br> - rd : x4<br> - rs1_val == 65536<br>                                                                                                                                    |[0x800002ec]:sll tp, s4, t4<br> [0x800002f0]:sw tp, 36(sp)<br>      |
|  30|[0x80003284]<br>0x01000000|- rs1 : x7<br> - rs2 : x20<br> - rd : x9<br> - rs1_val == 131072<br>                                                                                                                                    |[0x800002fc]:sll s1, t2, s4<br> [0x80000300]:sw s1, 40(sp)<br>      |
|  31|[0x80003288]<br>0x00000000|- rs1 : x24<br> - rs2 : x21<br> - rd : x25<br> - rs1_val == 262144<br>                                                                                                                                  |[0x8000030c]:sll s9, s8, s5<br> [0x80000310]:sw s9, 44(sp)<br>      |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x30<br> - rs2 : x12<br> - rd : x19<br> - rs1_val == 524288<br>                                                                                                                                  |[0x8000031c]:sll s3, t5, a2<br> [0x80000320]:sw s3, 48(sp)<br>      |
|  33|[0x80003290]<br>0x01000000|- rs1_val == 2097152<br>                                                                                                                                                                                |[0x8000032c]:sll a2, a0, a1<br> [0x80000330]:sw a2, 52(sp)<br>      |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                                |[0x8000033c]:sll a2, a0, a1<br> [0x80000340]:sw a2, 56(sp)<br>      |
|  35|[0x80003298]<br>0x01000000|- rs1_val == 8388608<br>                                                                                                                                                                                |[0x8000034c]:sll a2, a0, a1<br> [0x80000350]:sw a2, 60(sp)<br>      |
|  36|[0x8000329c]<br>0x80000000|- rs1_val == 16777216<br>                                                                                                                                                                               |[0x8000035c]:sll a2, a0, a1<br> [0x80000360]:sw a2, 64(sp)<br>      |
|  37|[0x800032a0]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                                               |[0x8000036c]:sll a2, a0, a1<br> [0x80000370]:sw a2, 68(sp)<br>      |
|  38|[0x800032a4]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                               |[0x8000037c]:sll a2, a0, a1<br> [0x80000380]:sw a2, 72(sp)<br>      |
|  39|[0x800032a8]<br>0xFDFFC000|- rs1_val == -2049<br>                                                                                                                                                                                  |[0x80000390]:sll a2, a0, a1<br> [0x80000394]:sw a2, 76(sp)<br>      |
|  40|[0x800032ac]<br>0xFFFDFFE0|- rs1_val == -4097<br>                                                                                                                                                                                  |[0x800003a4]:sll a2, a0, a1<br> [0x800003a8]:sw a2, 80(sp)<br>      |
|  41|[0x800032b0]<br>0xBFFFC000|- rs1_val == -65537<br>                                                                                                                                                                                 |[0x800003b8]:sll a2, a0, a1<br> [0x800003bc]:sw a2, 84(sp)<br>      |
|  42|[0x800032b4]<br>0xFDFFFF00|- rs1_val == -131073<br>                                                                                                                                                                                |[0x800003cc]:sll a2, a0, a1<br> [0x800003d0]:sw a2, 88(sp)<br>      |
|  43|[0x800032b8]<br>0xFBFFFF00|- rs1_val == -262145<br>                                                                                                                                                                                |[0x800003e0]:sll a2, a0, a1<br> [0x800003e4]:sw a2, 92(sp)<br>      |
|  44|[0x800032bc]<br>0xFFFF0000|- rs1_val == -524289<br>                                                                                                                                                                                |[0x800003f4]:sll a2, a0, a1<br> [0x800003f8]:sw a2, 96(sp)<br>      |
|  45|[0x800032c0]<br>0xFFFFE000|- rs1_val == -1048577<br>                                                                                                                                                                               |[0x80000408]:sll a2, a0, a1<br> [0x8000040c]:sw a2, 100(sp)<br>     |
|  46|[0x800032c4]<br>0xFFFFF000|- rs1_val == -2097153<br>                                                                                                                                                                               |[0x8000041c]:sll a2, a0, a1<br> [0x80000420]:sw a2, 104(sp)<br>     |
|  47|[0x800032c8]<br>0xF8000000|- rs1_val == -4194305<br>                                                                                                                                                                               |[0x80000430]:sll a2, a0, a1<br> [0x80000434]:sw a2, 108(sp)<br>     |
|  48|[0x800032cc]<br>0xFFFFFF00|- rs1_val == -16777217<br>                                                                                                                                                                              |[0x80000444]:sll a2, a0, a1<br> [0x80000448]:sw a2, 112(sp)<br>     |
|  49|[0x800032d0]<br>0xDFFFFFF0|- rs1_val == -33554433<br>                                                                                                                                                                              |[0x80000458]:sll a2, a0, a1<br> [0x8000045c]:sw a2, 116(sp)<br>     |
|  50|[0x800032d4]<br>0xFFFFFFC0|- rs1_val == -134217729<br>                                                                                                                                                                             |[0x8000046c]:sll a2, a0, a1<br> [0x80000470]:sw a2, 120(sp)<br>     |
|  51|[0x800032d8]<br>0xFFFFFF00|- rs1_val == -268435457<br>                                                                                                                                                                             |[0x80000480]:sll a2, a0, a1<br> [0x80000484]:sw a2, 124(sp)<br>     |
|  52|[0x800032dc]<br>0xFFFFFC00|- rs1_val == -536870913<br>                                                                                                                                                                             |[0x80000494]:sll a2, a0, a1<br> [0x80000498]:sw a2, 128(sp)<br>     |
|  53|[0x800032e0]<br>0xFFFE0000|- rs1_val == -1073741825<br>                                                                                                                                                                            |[0x800004a8]:sll a2, a0, a1<br> [0x800004ac]:sw a2, 132(sp)<br>     |
|  54|[0x800032e4]<br>0xAAA80000|- rs1_val == 1431655765<br>                                                                                                                                                                             |[0x800004bc]:sll a2, a0, a1<br> [0x800004c0]:sw a2, 136(sp)<br>     |
|  55|[0x800032e8]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                                                              |[0x800004cc]:sll a2, a0, a1<br> [0x800004d0]:sw a2, 140(sp)<br>     |
|  56|[0x800032ec]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                              |[0x800004dc]:sll a2, a0, a1<br> [0x800004e0]:sw a2, 144(sp)<br>     |
|  57|[0x800032f0]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                              |[0x800004ec]:sll a2, a0, a1<br> [0x800004f0]:sw a2, 148(sp)<br>     |
|  58|[0x800032f4]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                             |[0x800004fc]:sll a2, a0, a1<br> [0x80000500]:sw a2, 152(sp)<br>     |
|  59|[0x800032f8]<br>0xFFC00000|- rs1_val == -2<br>                                                                                                                                                                                     |[0x8000050c]:sll a2, a0, a1<br> [0x80000510]:sw a2, 156(sp)<br>     |
|  60|[0x800032fc]<br>0xFFFFFEC0|- rs1_val == -5<br>                                                                                                                                                                                     |[0x8000051c]:sll a2, a0, a1<br> [0x80000520]:sw a2, 160(sp)<br>     |
|  61|[0x80003300]<br>0xAAAAAAA0|- rs1_val == -1431655766<br>                                                                                                                                                                            |[0x80000530]:sll a2, a0, a1<br> [0x80000534]:sw a2, 164(sp)<br>     |
|  62|[0x80003304]<br>0xE8000000|- rs1_val == -3<br>                                                                                                                                                                                     |[0x80000540]:sll a2, a0, a1<br> [0x80000544]:sw a2, 168(sp)<br>     |
|  63|[0x80003308]<br>0xFDE00000|- rs1_val == -17<br>                                                                                                                                                                                    |[0x80000550]:sll a2, a0, a1<br> [0x80000554]:sw a2, 172(sp)<br>     |
|  64|[0x8000330c]<br>0xFFFFFDF0|- rs1_val == -33<br>                                                                                                                                                                                    |[0x80000560]:sll a2, a0, a1<br> [0x80000564]:sw a2, 176(sp)<br>     |
|  65|[0x80003310]<br>0xFFFFFBF0|- rs1_val == -65<br>                                                                                                                                                                                    |[0x80000570]:sll a2, a0, a1<br> [0x80000574]:sw a2, 180(sp)<br>     |
|  66|[0x80003314]<br>0xFFFFDFC0|- rs1_val == -129<br>                                                                                                                                                                                   |[0x80000580]:sll a2, a0, a1<br> [0x80000584]:sw a2, 184(sp)<br>     |
|  67|[0x80003318]<br>0xFFFFF7F8|- rs1_val == -257<br>                                                                                                                                                                                   |[0x80000590]:sll a2, a0, a1<br> [0x80000594]:sw a2, 188(sp)<br>     |
|  68|[0x8000331c]<br>0xFFFFEFF8|- rs1_val == -513<br>                                                                                                                                                                                   |[0x800005a0]:sll a2, a0, a1<br> [0x800005a4]:sw a2, 192(sp)<br>     |
|  69|[0x80003320]<br>0xDFF80000|- rs1_val == -1025<br>                                                                                                                                                                                  |[0x800005b0]:sll a2, a0, a1<br> [0x800005b4]:sw a2, 196(sp)<br>     |
|  70|[0x8000332c]<br>0xFFFFFFDC|- rs1_val == -9<br>                                                                                                                                                                                     |[0x800005e0]:sll a2, a0, a1<br> [0x800005e4]:sw a2, 208(sp)<br>     |
