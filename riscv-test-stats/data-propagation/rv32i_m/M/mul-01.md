
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000810')]      |
| SIG_REGION                | [('0x80003204', '0x80003388', '97 words')]      |
| COV_LABELS                | mul      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mul-01.S/mul-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 97      |
| STAT1                     | 94      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c8]:mul a2, a0, a1
      [0x800007cc]:sw a2, 304(sp)
 -- Signature Address: 0x80003378 Data: 0x80000000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648
      - rs1_val == -134217729




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007dc]:mul a2, a0, a1
      [0x800007e0]:sw a2, 308(sp)
 -- Signature Address: 0x8000337c Data: 0xFDFFFF80
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -262145
      - rs1_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f0]:mul a2, a0, a1
      [0x800007f4]:sw a2, 312(sp)
 -- Signature Address: 0x80003380 Data: 0xFFFFFC00
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -8388609
      - rs1_val == 1024






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

|s.no|        signature         |                                                                                                            coverpoints                                                                                                            |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : mul<br> - rs1 : x2<br> - rs2 : x17<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 64<br> - rs1_val == -2147483648<br> |[0x80000108]:mul sp, sp, a7<br> [0x8000010c]:sw sp, 0(t0)<br>        |
|   2|[0x80003208]<br>0x00000000|- rs1 : x24<br> - rs2 : x12<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == rs2_val<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                         |[0x80000118]:mul fp, s8, a2<br> [0x8000011c]:sw fp, 4(t0)<br>        |
|   3|[0x8000320c]<br>0x80010001|- rs1 : x16<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -65537<br> - rs1_val == 2147483647<br>                                       |[0x80000130]:mul a3, a6, a3<br> [0x80000134]:sw a3, 8(t0)<br>        |
|   4|[0x80003210]<br>0x00000024|- rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0<br>                                                                                                                            |[0x80000140]:mul a0, a0, a0<br> [0x80000144]:sw a0, 12(t0)<br>       |
|   5|[0x80003214]<br>0x00000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x15<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                               |[0x80000154]:mul a5, s9, s9<br> [0x80000158]:sw a5, 16(t0)<br>       |
|   6|[0x80003218]<br>0x81000001|- rs1 : x8<br> - rs2 : x21<br> - rd : x12<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -16777217<br>                                                                                              |[0x8000016c]:mul a2, fp, s5<br> [0x80000170]:sw a2, 20(t0)<br>       |
|   7|[0x8000321c]<br>0xFFFFFFFC|- rs1 : x28<br> - rs2 : x4<br> - rd : x16<br> - rs2_val == 1<br>                                                                                                                                                                   |[0x8000017c]:mul a6, t3, tp<br> [0x80000180]:sw a6, 24(t0)<br>       |
|   8|[0x80003220]<br>0xEFFFFFFE|- rs1 : x9<br> - rs2 : x2<br> - rd : x30<br> - rs2_val == -134217729<br> - rs1_val == 2<br>                                                                                                                                        |[0x80000190]:mul t5, s1, sp<br> [0x80000194]:sw t5, 28(t0)<br>       |
|   9|[0x80003224]<br>0xFFFFFFDC|- rs1 : x7<br> - rs2 : x18<br> - rd : x20<br> - rs2_val == -9<br> - rs1_val == 4<br>                                                                                                                                               |[0x800001a0]:mul s4, t2, s2<br> [0x800001a4]:sw s4, 32(t0)<br>       |
|  10|[0x80003228]<br>0xFFFFFFE8|- rs1 : x31<br> - rs2 : x8<br> - rd : x29<br> - rs2_val == -3<br> - rs1_val == 8<br>                                                                                                                                               |[0x800001b0]:mul t4, t6, fp<br> [0x800001b4]:sw t4, 36(t0)<br>       |
|  11|[0x8000322c]<br>0x20000000|- rs1 : x17<br> - rs2 : x30<br> - rd : x3<br> - rs2_val == 33554432<br> - rs1_val == 16<br>                                                                                                                                        |[0x800001c0]:mul gp, a7, t5<br> [0x800001c4]:sw gp, 40(t0)<br>       |
|  12|[0x80003230]<br>0xFBFFFFE0|- rs1 : x18<br> - rs2 : x23<br> - rd : x31<br> - rs2_val == -2097153<br> - rs1_val == 32<br>                                                                                                                                       |[0x800001d4]:mul t6, s2, s7<br> [0x800001d8]:sw t6, 44(t0)<br>       |
|  13|[0x80003234]<br>0x00040000|- rs1 : x19<br> - rs2 : x16<br> - rd : x17<br> - rs2_val == 4096<br> - rs1_val == 64<br>                                                                                                                                           |[0x800001e4]:mul a7, s3, a6<br> [0x800001e8]:sw a7, 48(t0)<br>       |
|  14|[0x80003238]<br>0x00000000|- rs1 : x0<br> - rs2 : x11<br> - rd : x1<br> - rs2_val == -262145<br>                                                                                                                                                              |[0x800001f8]:mul ra, zero, a1<br> [0x800001fc]:sw ra, 52(t0)<br>     |
|  15|[0x8000323c]<br>0xFFFFF900|- rs1 : x6<br> - rs2 : x15<br> - rd : x19<br> - rs1_val == 256<br>                                                                                                                                                                 |[0x80000208]:mul s3, t1, a5<br> [0x8000020c]:sw s3, 56(t0)<br>       |
|  16|[0x80003240]<br>0x00000000|- rs1 : x20<br> - rs2 : x29<br> - rd : x23<br> - rs2_val == 16777216<br> - rs1_val == 512<br>                                                                                                                                      |[0x80000218]:mul s7, s4, t4<br> [0x8000021c]:sw s7, 60(t0)<br>       |
|  17|[0x80003244]<br>0x00000000|- rs1 : x26<br> - rs2 : x27<br> - rd : x0<br> - rs2_val == -8388609<br> - rs1_val == 1024<br>                                                                                                                                      |[0x8000022c]:mul zero, s10, s11<br> [0x80000230]:sw zero, 64(t0)<br> |
|  18|[0x80003248]<br>0x00000000|- rs1 : x4<br> - rs2 : x19<br> - rd : x9<br> - rs2_val == 8388608<br> - rs1_val == 2048<br>                                                                                                                                        |[0x80000248]:mul s1, tp, s3<br> [0x8000024c]:sw s1, 0(sp)<br>        |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x13<br> - rs2 : x0<br> - rd : x18<br> - rs1_val == 4096<br>                                                                                                                                                                |[0x8000025c]:mul s2, a3, zero<br> [0x80000260]:sw s2, 4(sp)<br>      |
|  20|[0x80003250]<br>0x00000000|- rs1 : x14<br> - rs2 : x22<br> - rd : x5<br> - rs1_val == 8192<br>                                                                                                                                                                |[0x8000026c]:mul t0, a4, s6<br> [0x80000270]:sw t0, 8(sp)<br>        |
|  21|[0x80003254]<br>0xFFFFC000|- rs1 : x22<br> - rs2 : x7<br> - rd : x25<br> - rs2_val == -16777217<br> - rs1_val == 16384<br>                                                                                                                                    |[0x80000280]:mul s9, s6, t2<br> [0x80000284]:sw s9, 12(sp)<br>       |
|  22|[0x80003258]<br>0x00038000|- rs1 : x27<br> - rs2 : x28<br> - rd : x11<br> - rs1_val == 32768<br>                                                                                                                                                              |[0x80000290]:mul a1, s11, t3<br> [0x80000294]:sw a1, 16(sp)<br>      |
|  23|[0x8000325c]<br>0x00200000|- rs1 : x23<br> - rs2 : x20<br> - rd : x4<br> - rs2_val == 32<br> - rs1_val == 65536<br>                                                                                                                                           |[0x800002a0]:mul tp, s7, s4<br> [0x800002a4]:sw tp, 20(sp)<br>       |
|  24|[0x80003260]<br>0xFFFE0000|- rs1 : x12<br> - rs2 : x24<br> - rd : x27<br> - rs2_val == -131073<br> - rs1_val == 131072<br>                                                                                                                                    |[0x800002b4]:mul s11, a2, s8<br> [0x800002b8]:sw s11, 24(sp)<br>     |
|  25|[0x80003264]<br>0xFFF40000|- rs1 : x11<br> - rs2 : x3<br> - rd : x22<br> - rs1_val == 262144<br>                                                                                                                                                              |[0x800002c4]:mul s6, a1, gp<br> [0x800002c8]:sw s6, 28(sp)<br>       |
|  26|[0x80003268]<br>0x00000000|- rs1 : x15<br> - rs2 : x1<br> - rd : x26<br> - rs2_val == 67108864<br> - rs1_val == 524288<br>                                                                                                                                    |[0x800002d4]:mul s10, a5, ra<br> [0x800002d8]:sw s10, 32(sp)<br>     |
|  27|[0x8000326c]<br>0x00800000|- rs1 : x29<br> - rs2 : x26<br> - rd : x28<br> - rs2_val == 8<br> - rs1_val == 1048576<br>                                                                                                                                         |[0x800002e4]:mul t3, t4, s10<br> [0x800002e8]:sw t3, 36(sp)<br>      |
|  28|[0x80003270]<br>0x01000000|- rs1 : x3<br> - rs2 : x6<br> - rd : x21<br> - rs1_val == 2097152<br>                                                                                                                                                              |[0x800002f4]:mul s5, gp, t1<br> [0x800002f8]:sw s5, 40(sp)<br>       |
|  29|[0x80003274]<br>0xFFC00000|- rs1 : x21<br> - rs2 : x14<br> - rd : x7<br> - rs1_val == 4194304<br>                                                                                                                                                             |[0x80000308]:mul t2, s5, a4<br> [0x8000030c]:sw t2, 44(sp)<br>       |
|  30|[0x80003278]<br>0xFF000000|- rs1 : x30<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == -2<br> - rs1_val == 8388608<br>                                                                                                                                          |[0x80000318]:mul t1, t5, t0<br> [0x8000031c]:sw t1, 48(sp)<br>       |
|  31|[0x8000327c]<br>0xEF000000|- rs1 : x1<br> - rs2 : x31<br> - rd : x14<br> - rs2_val == -17<br> - rs1_val == 16777216<br>                                                                                                                                       |[0x80000328]:mul a4, ra, t6<br> [0x8000032c]:sw a4, 52(sp)<br>       |
|  32|[0x80003280]<br>0x00000000|- rs1 : x5<br> - rs2 : x9<br> - rd : x24<br> - rs2_val == 8192<br> - rs1_val == 33554432<br>                                                                                                                                       |[0x80000338]:mul s8, t0, s1<br> [0x8000033c]:sw s8, 56(sp)<br>       |
|  33|[0x80003284]<br>0x00000000|- rs2_val == 1048576<br> - rs1_val == 67108864<br>                                                                                                                                                                                 |[0x80000348]:mul a2, a0, a1<br> [0x8000034c]:sw a2, 60(sp)<br>       |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                                                                                         |[0x80000358]:mul a2, a0, a1<br> [0x8000035c]:sw a2, 64(sp)<br>       |
|  35|[0x8000328c]<br>0x50000000|- rs1_val == 268435456<br>                                                                                                                                                                                                         |[0x80000368]:mul a2, a0, a1<br> [0x8000036c]:sw a2, 68(sp)<br>       |
|  36|[0x80003290]<br>0x00000000|- rs2_val == 536870912<br> - rs1_val == 536870912<br>                                                                                                                                                                              |[0x80000378]:mul a2, a0, a1<br> [0x8000037c]:sw a2, 72(sp)<br>       |
|  37|[0x80003294]<br>0x00000000|- rs2_val == 256<br> - rs1_val == 1073741824<br>                                                                                                                                                                                   |[0x80000388]:mul a2, a0, a1<br> [0x8000038c]:sw a2, 76(sp)<br>       |
|  38|[0x80003298]<br>0xAAAAAAAC|- rs2_val == -1431655766<br> - rs1_val == -2<br>                                                                                                                                                                                   |[0x8000039c]:mul a2, a0, a1<br> [0x800003a0]:sw a2, 80(sp)<br>       |
|  39|[0x8000329c]<br>0x00000006|- rs1_val == -3<br>                                                                                                                                                                                                                |[0x800003ac]:mul a2, a0, a1<br> [0x800003b0]:sw a2, 84(sp)<br>       |
|  40|[0x800032a0]<br>0x00000285|- rs2_val == -129<br> - rs1_val == -5<br>                                                                                                                                                                                          |[0x800003bc]:mul a2, a0, a1<br> [0x800003c0]:sw a2, 88(sp)<br>       |
|  41|[0x800032a4]<br>0xC0000000|- rs2_val == 1073741824<br> - rs1_val == -9<br>                                                                                                                                                                                    |[0x800003cc]:mul a2, a0, a1<br> [0x800003d0]:sw a2, 92(sp)<br>       |
|  42|[0x800032a8]<br>0xFFFBC000|- rs2_val == 16384<br> - rs1_val == -17<br>                                                                                                                                                                                        |[0x800003dc]:mul a2, a0, a1<br> [0x800003e0]:sw a2, 96(sp)<br>       |
|  43|[0x800032ac]<br>0xFFB7FFF7|- rs2_val == -524289<br>                                                                                                                                                                                                           |[0x800003f0]:mul a2, a0, a1<br> [0x800003f4]:sw a2, 100(sp)<br>      |
|  44|[0x800032b0]<br>0x10100001|- rs2_val == -1048577<br> - rs1_val == -268435457<br>                                                                                                                                                                              |[0x80000408]:mul a2, a0, a1<br> [0x8000040c]:sw a2, 104(sp)<br>      |
|  45|[0x800032b4]<br>0xFFFF0000|- rs2_val == -4194305<br>                                                                                                                                                                                                          |[0x8000041c]:mul a2, a0, a1<br> [0x80000420]:sw a2, 108(sp)<br>      |
|  46|[0x800032b8]<br>0xFFC00000|- rs2_val == -33554433<br>                                                                                                                                                                                                         |[0x80000430]:mul a2, a0, a1<br> [0x80000434]:sw a2, 112(sp)<br>      |
|  47|[0x800032bc]<br>0xFFFFFF80|- rs2_val == -67108865<br> - rs1_val == 128<br>                                                                                                                                                                                    |[0x80000444]:mul a2, a0, a1<br> [0x80000448]:sw a2, 116(sp)<br>      |
|  48|[0x800032c0]<br>0x20008001|- rs2_val == -536870913<br> - rs1_val == -32769<br>                                                                                                                                                                                |[0x8000045c]:mul a2, a0, a1<br> [0x80000460]:sw a2, 120(sp)<br>      |
|  49|[0x800032c4]<br>0xFFFF8000|- rs2_val == -1073741825<br>                                                                                                                                                                                                       |[0x80000470]:mul a2, a0, a1<br> [0x80000474]:sw a2, 124(sp)<br>      |
|  50|[0x800032c8]<br>0x55555540|- rs2_val == 1431655765<br>                                                                                                                                                                                                        |[0x80000484]:mul a2, a0, a1<br> [0x80000488]:sw a2, 128(sp)<br>      |
|  51|[0x800032cc]<br>0xFFBE0000|- rs2_val == 131072<br> - rs1_val == -33<br>                                                                                                                                                                                       |[0x80000494]:mul a2, a0, a1<br> [0x80000498]:sw a2, 132(sp)<br>      |
|  52|[0x800032d0]<br>0x80000041|- rs1_val == -65<br>                                                                                                                                                                                                               |[0x800004a8]:mul a2, a0, a1<br> [0x800004ac]:sw a2, 136(sp)<br>      |
|  53|[0x800032d4]<br>0x00020481|- rs2_val == -1025<br> - rs1_val == -129<br>                                                                                                                                                                                       |[0x800004b8]:mul a2, a0, a1<br> [0x800004bc]:sw a2, 140(sp)<br>      |
|  54|[0x800032d8]<br>0x00008181|- rs1_val == -257<br>                                                                                                                                                                                                              |[0x800004c8]:mul a2, a0, a1<br> [0x800004cc]:sw a2, 144(sp)<br>      |
|  55|[0x800032dc]<br>0x00000402|- rs1_val == -513<br>                                                                                                                                                                                                              |[0x800004d8]:mul a2, a0, a1<br> [0x800004dc]:sw a2, 148(sp)<br>      |
|  56|[0x800032e0]<br>0xFF800000|- rs1_val == -1025<br>                                                                                                                                                                                                             |[0x800004e8]:mul a2, a0, a1<br> [0x800004ec]:sw a2, 152(sp)<br>      |
|  57|[0x800032e4]<br>0xFFDFFC00|- rs2_val == 1024<br> - rs1_val == -2049<br>                                                                                                                                                                                       |[0x800004fc]:mul a2, a0, a1<br> [0x80000500]:sw a2, 156(sp)<br>      |
|  58|[0x800032e8]<br>0xFFF00000|- rs1_val == -4097<br>                                                                                                                                                                                                             |[0x80000510]:mul a2, a0, a1<br> [0x80000514]:sw a2, 160(sp)<br>      |
|  59|[0x800032ec]<br>0xFFEFFF80|- rs2_val == 128<br> - rs1_val == -8193<br>                                                                                                                                                                                        |[0x80000524]:mul a2, a0, a1<br> [0x80000528]:sw a2, 164(sp)<br>      |
|  60|[0x800032f0]<br>0x00104041|- rs2_val == -65<br> - rs1_val == -16385<br>                                                                                                                                                                                       |[0x80000538]:mul a2, a0, a1<br> [0x8000053c]:sw a2, 168(sp)<br>      |
|  61|[0x800032f4]<br>0xFFF8FFF9|- rs1_val == -65537<br>                                                                                                                                                                                                            |[0x8000054c]:mul a2, a0, a1<br> [0x80000550]:sw a2, 172(sp)<br>      |
|  62|[0x800032f8]<br>0x00820041|- rs1_val == -131073<br>                                                                                                                                                                                                           |[0x80000560]:mul a2, a0, a1<br> [0x80000564]:sw a2, 176(sp)<br>      |
|  63|[0x800032fc]<br>0xFF7FFFE0|- rs1_val == -262145<br>                                                                                                                                                                                                           |[0x80000574]:mul a2, a0, a1<br> [0x80000578]:sw a2, 180(sp)<br>      |
|  64|[0x80003300]<br>0x00200004|- rs1_val == -524289<br>                                                                                                                                                                                                           |[0x80000588]:mul a2, a0, a1<br> [0x8000058c]:sw a2, 184(sp)<br>      |
|  65|[0x80003304]<br>0x10100101|- rs2_val == -257<br> - rs1_val == -1048577<br>                                                                                                                                                                                    |[0x8000059c]:mul a2, a0, a1<br> [0x800005a0]:sw a2, 188(sp)<br>      |
|  66|[0x80003308]<br>0x00A00005|- rs2_val == -5<br> - rs1_val == -2097153<br>                                                                                                                                                                                      |[0x800005b0]:mul a2, a0, a1<br> [0x800005b4]:sw a2, 192(sp)<br>      |
|  67|[0x8000330c]<br>0xFFE00000|- rs2_val == 2097152<br> - rs1_val == -4194305<br>                                                                                                                                                                                 |[0x800005c4]:mul a2, a0, a1<br> [0x800005c8]:sw a2, 196(sp)<br>      |
|  68|[0x80003310]<br>0xBFFFFF80|- rs1_val == -8388609<br>                                                                                                                                                                                                          |[0x800005d8]:mul a2, a0, a1<br> [0x800005dc]:sw a2, 200(sp)<br>      |
|  69|[0x80003314]<br>0x02000401|- rs1_val == -33554433<br>                                                                                                                                                                                                         |[0x800005ec]:mul a2, a0, a1<br> [0x800005f0]:sw a2, 204(sp)<br>      |
|  70|[0x80003318]<br>0xFFFFFFC0|- rs1_val == -67108865<br>                                                                                                                                                                                                         |[0x80000600]:mul a2, a0, a1<br> [0x80000604]:sw a2, 208(sp)<br>      |
|  71|[0x8000331c]<br>0xC0000000|- rs1_val == -536870913<br>                                                                                                                                                                                                        |[0x80000614]:mul a2, a0, a1<br> [0x80000618]:sw a2, 212(sp)<br>      |
|  72|[0x80003320]<br>0xC0000003|- rs1_val == -1073741825<br>                                                                                                                                                                                                       |[0x80000628]:mul a2, a0, a1<br> [0x8000062c]:sw a2, 216(sp)<br>      |
|  73|[0x80003324]<br>0x00002AAB|- rs2_val == -32769<br> - rs1_val == 1431655765<br>                                                                                                                                                                                |[0x80000640]:mul a2, a0, a1<br> [0x80000644]:sw a2, 220(sp)<br>      |
|  74|[0x80003328]<br>0x00005556|- rs1_val == -1431655766<br>                                                                                                                                                                                                       |[0x80000658]:mul a2, a0, a1<br> [0x8000065c]:sw a2, 224(sp)<br>      |
|  75|[0x8000332c]<br>0xFFFFDFFE|- rs2_val == 2<br>                                                                                                                                                                                                                 |[0x8000066c]:mul a2, a0, a1<br> [0x80000670]:sw a2, 228(sp)<br>      |
|  76|[0x80003330]<br>0xAAAAAAA8|- rs2_val == 4<br>                                                                                                                                                                                                                 |[0x80000680]:mul a2, a0, a1<br> [0x80000684]:sw a2, 232(sp)<br>      |
|  77|[0x80003334]<br>0x08000000|- rs2_val == 16<br>                                                                                                                                                                                                                |[0x80000690]:mul a2, a0, a1<br> [0x80000694]:sw a2, 236(sp)<br>      |
|  78|[0x80003338]<br>0xFFFC0000|- rs2_val == 262144<br> - rs1_val == -134217729<br>                                                                                                                                                                                |[0x800006a4]:mul a2, a0, a1<br> [0x800006a8]:sw a2, 240(sp)<br>      |
|  79|[0x8000333c]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                                                              |[0x800006b8]:mul a2, a0, a1<br> [0x800006bc]:sw a2, 244(sp)<br>      |
|  80|[0x80003340]<br>0x80000000|- rs2_val == 524288<br>                                                                                                                                                                                                            |[0x800006c8]:mul a2, a0, a1<br> [0x800006cc]:sw a2, 248(sp)<br>      |
|  81|[0x80003344]<br>0x04000000|- rs2_val == 4194304<br>                                                                                                                                                                                                           |[0x800006d8]:mul a2, a0, a1<br> [0x800006dc]:sw a2, 252(sp)<br>      |
|  82|[0x80003348]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                                                                                         |[0x800006e8]:mul a2, a0, a1<br> [0x800006ec]:sw a2, 256(sp)<br>      |
|  83|[0x8000334c]<br>0xF0000000|- rs2_val == 268435456<br>                                                                                                                                                                                                         |[0x800006fc]:mul a2, a0, a1<br> [0x80000700]:sw a2, 260(sp)<br>      |
|  84|[0x80003350]<br>0xEF800000|- rs2_val == -33<br>                                                                                                                                                                                                               |[0x8000070c]:mul a2, a0, a1<br> [0x80000710]:sw a2, 264(sp)<br>      |
|  85|[0x80003354]<br>0xFFFFFE00|- rs2_val == 512<br>                                                                                                                                                                                                               |[0x80000720]:mul a2, a0, a1<br> [0x80000724]:sw a2, 268(sp)<br>      |
|  86|[0x80003358]<br>0x00000000|- rs2_val == -513<br>                                                                                                                                                                                                              |[0x80000730]:mul a2, a0, a1<br> [0x80000734]:sw a2, 272(sp)<br>      |
|  87|[0x8000335c]<br>0xFFFFB7F7|- rs2_val == -2049<br>                                                                                                                                                                                                             |[0x80000744]:mul a2, a0, a1<br> [0x80000748]:sw a2, 276(sp)<br>      |
|  88|[0x80003360]<br>0x00201001|- rs2_val == -4097<br>                                                                                                                                                                                                             |[0x8000075c]:mul a2, a0, a1<br> [0x80000760]:sw a2, 280(sp)<br>      |
|  89|[0x80003364]<br>0x00402201|- rs2_val == -8193<br>                                                                                                                                                                                                             |[0x80000770]:mul a2, a0, a1<br> [0x80000774]:sw a2, 284(sp)<br>      |
|  90|[0x80003368]<br>0xFBFFF000|- rs2_val == -16385<br>                                                                                                                                                                                                            |[0x80000784]:mul a2, a0, a1<br> [0x80000788]:sw a2, 288(sp)<br>      |
|  91|[0x8000336c]<br>0xFFFD8000|- rs2_val == 32768<br>                                                                                                                                                                                                             |[0x80000794]:mul a2, a0, a1<br> [0x80000798]:sw a2, 292(sp)<br>      |
|  92|[0x80003370]<br>0x10000000|- rs2_val == 65536<br>                                                                                                                                                                                                             |[0x800007a4]:mul a2, a0, a1<br> [0x800007a8]:sw a2, 296(sp)<br>      |
|  93|[0x80003374]<br>0x00000006|- rs1_val == 1<br>                                                                                                                                                                                                                 |[0x800007b4]:mul a2, a0, a1<br> [0x800007b8]:sw a2, 300(sp)<br>      |
|  94|[0x80003384]<br>0xFFFFF000|- rs2_val == -268435457<br>                                                                                                                                                                                                        |[0x80000804]:mul a2, a0, a1<br> [0x80000808]:sw a2, 316(sp)<br>      |
