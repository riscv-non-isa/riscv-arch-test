
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
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | mul      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mul-01.S/mul-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 99      |
| STAT1                     | 97      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000818]:mul a2, a0, a1
      [0x8000081c]:sw a2, 312(t2)
 -- Signature Address: 0x8000338c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000083c]:mul a2, a0, a1
      [0x80000840]:sw a2, 320(t2)
 -- Signature Address: 0x80003394 Data: 0xFFFF0000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -65537
      - rs1_val == 65536






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

|s.no|        signature         |                                                                                         coverpoints                                                                                          |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00001081|- opcode : mul<br> - rs1 : x19<br> - rs2 : x19<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -65<br> - rs1_val == -65<br> |[0x80000108]:mul a6, s3, s3<br> [0x8000010c]:sw a6, 0(sp)<br>      |
|   2|[0x80003214]<br>0x00000001|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br>                                                                                                                         |[0x80000118]:mul a4, a4, a4<br> [0x8000011c]:sw a4, 4(sp)<br>      |
|   3|[0x80003218]<br>0xFFFFFFFA|- rs1 : x26<br> - rs2 : x20<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br> |[0x8000012c]:mul s10, s10, s4<br> [0x80000130]:sw s10, 8(sp)<br>   |
|   4|[0x8000321c]<br>0x00080000|- rs1 : x16<br> - rs2 : x9<br> - rd : x21<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br> - rs2_val == 524288<br>                                                        |[0x8000013c]:mul s5, a6, s1<br> [0x80000140]:sw s5, 12(sp)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x8<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 1024<br>     |[0x8000014c]:mul a5, fp, a5<br> [0x80000150]:sw a5, 16(sp)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x13<br> - rs2 : x7<br> - rd : x24<br> - rs2_val == 0<br> - rs1_val == 2<br>                                                                                                           |[0x8000015c]:mul s8, a3, t2<br> [0x80000160]:sw s8, 20(sp)<br>     |
|   7|[0x80003228]<br>0x80000101|- rs1 : x4<br> - rs2 : x26<br> - rd : x30<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -257<br>                            |[0x80000170]:mul t5, tp, s10<br> [0x80000174]:sw t5, 24(sp)<br>    |
|   8|[0x8000322c]<br>0xFFEFFFFF|- rs1 : x3<br> - rs2 : x8<br> - rd : x27<br> - rs2_val == 1<br> - rs1_val == -1048577<br>                                                                                                     |[0x80000184]:mul s11, gp, fp<br> [0x80000188]:sw s11, 28(sp)<br>   |
|   9|[0x80003230]<br>0x00000000|- rs1 : x0<br> - rs2 : x23<br> - rd : x18<br> - rs1_val == 0<br> - rs2_val == 4194304<br>                                                                                                     |[0x80000198]:mul s2, zero, s7<br> [0x8000019c]:sw s2, 32(sp)<br>   |
|  10|[0x80003234]<br>0xFF7FFFFC|- rs1 : x23<br> - rs2 : x28<br> - rd : x25<br> - rs2_val == -2097153<br> - rs1_val == 4<br>                                                                                                   |[0x800001ac]:mul s9, s7, t3<br> [0x800001b0]:sw s9, 36(sp)<br>     |
|  11|[0x80003238]<br>0xFFFFFEF8|- rs1 : x1<br> - rs2 : x13<br> - rd : x7<br> - rs2_val == -33<br> - rs1_val == 8<br>                                                                                                          |[0x800001bc]:mul t2, ra, a3<br> [0x800001c0]:sw t2, 40(sp)<br>     |
|  12|[0x8000323c]<br>0xFFDFFFF0|- rs1 : x31<br> - rs2 : x11<br> - rd : x10<br> - rs2_val == -131073<br> - rs1_val == 16<br>                                                                                                   |[0x800001d0]:mul a0, t6, a1<br> [0x800001d4]:sw a0, 44(sp)<br>     |
|  13|[0x80003240]<br>0xFFFFFEE0|- rs1 : x24<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == -9<br> - rs1_val == 32<br>                                                                                                        |[0x800001e0]:mul s6, s8, s5<br> [0x800001e4]:sw s6, 48(sp)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x18<br> - rs2 : x6<br> - rd : x29<br> - rs2_val == 268435456<br> - rs1_val == 64<br>                                                                                                  |[0x800001f0]:mul t4, s2, t1<br> [0x800001f4]:sw t4, 52(sp)<br>     |
|  15|[0x80003248]<br>0x40000000|- rs1 : x7<br> - rs2 : x25<br> - rd : x9<br> - rs2_val == 8388608<br> - rs1_val == 128<br>                                                                                                    |[0x80000200]:mul s1, t2, s9<br> [0x80000204]:sw s1, 56(sp)<br>     |
|  16|[0x8000324c]<br>0xFDFFFF00|- rs1 : x9<br> - rs2 : x31<br> - rd : x11<br> - rs1_val == 256<br>                                                                                                                            |[0x80000214]:mul a1, s1, t6<br> [0x80000218]:sw a1, 60(sp)<br>     |
|  17|[0x80003250]<br>0xFFBFFE00|- rs1 : x30<br> - rs2 : x3<br> - rd : x5<br> - rs2_val == -8193<br> - rs1_val == 512<br>                                                                                                      |[0x80000228]:mul t0, t5, gp<br> [0x8000022c]:sw t0, 64(sp)<br>     |
|  18|[0x80003254]<br>0xFFFFF000|- rs1 : x27<br> - rs2 : x5<br> - rd : x31<br> - rs2_val == -2<br> - rs1_val == 2048<br>                                                                                                       |[0x80000244]:mul t6, s11, t0<br> [0x80000248]:sw t6, 0(t2)<br>     |
|  19|[0x80003258]<br>0xFFFFF000|- rs1 : x21<br> - rs2 : x24<br> - rd : x3<br> - rs1_val == 4096<br>                                                                                                                           |[0x80000258]:mul gp, s5, s8<br> [0x8000025c]:sw gp, 4(t2)<br>      |
|  20|[0x8000325c]<br>0xBFFFE000|- rs1 : x29<br> - rs2 : x27<br> - rd : x6<br> - rs1_val == 8192<br>                                                                                                                           |[0x8000026c]:mul t1, t4, s11<br> [0x80000270]:sw t1, 8(t2)<br>     |
|  21|[0x80003260]<br>0xFFFFC000|- rs1 : x20<br> - rs2 : x22<br> - rd : x28<br> - rs2_val == -4194305<br> - rs1_val == 16384<br>                                                                                               |[0x80000280]:mul t3, s4, s6<br> [0x80000284]:sw t3, 12(t2)<br>     |
|  22|[0x80003264]<br>0x80000000|- rs1 : x11<br> - rs2 : x29<br> - rd : x19<br> - rs2_val == 65536<br> - rs1_val == 32768<br>                                                                                                  |[0x80000290]:mul s3, a1, t4<br> [0x80000294]:sw s3, 16(t2)<br>     |
|  23|[0x80003268]<br>0x00000000|- rs1 : x10<br> - rs2 : x17<br> - rd : x0<br> - rs2_val == -65537<br> - rs1_val == 65536<br>                                                                                                  |[0x800002a4]:mul zero, a0, a7<br> [0x800002a8]:sw zero, 20(t2)<br> |
|  24|[0x8000326c]<br>0xFFFE0000|- rs1 : x12<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == -262145<br> - rs1_val == 131072<br>                                                                                                 |[0x800002b8]:mul ra, a2, sp<br> [0x800002bc]:sw ra, 24(t2)<br>     |
|  25|[0x80003270]<br>0xFFFC0000|- rs1 : x28<br> - rs2 : x30<br> - rd : x12<br> - rs2_val == -33554433<br> - rs1_val == 262144<br>                                                                                             |[0x800002cc]:mul a2, t3, t5<br> [0x800002d0]:sw a2, 28(t2)<br>     |
|  26|[0x80003274]<br>0xFFF80000|- rs1 : x5<br> - rs2 : x16<br> - rd : x23<br> - rs2_val == -16777217<br> - rs1_val == 524288<br>                                                                                              |[0x800002e0]:mul s7, t0, a6<br> [0x800002e4]:sw s7, 32(t2)<br>     |
|  27|[0x80003278]<br>0x00600000|- rs1 : x22<br> - rs2 : x1<br> - rd : x13<br> - rs1_val == 1048576<br>                                                                                                                        |[0x800002f0]:mul a3, s6, ra<br> [0x800002f4]:sw a3, 36(t2)<br>     |
|  28|[0x8000327c]<br>0xF7E00000|- rs1 : x2<br> - rs2 : x4<br> - rd : x17<br> - rs1_val == 2097152<br>                                                                                                                         |[0x80000300]:mul a7, sp, tp<br> [0x80000304]:sw a7, 40(t2)<br>     |
|  29|[0x80003280]<br>0x00000000|- rs1 : x6<br> - rs2 : x10<br> - rd : x8<br> - rs1_val == 8388608<br>                                                                                                                         |[0x80000310]:mul fp, t1, a0<br> [0x80000314]:sw fp, 44(t2)<br>     |
|  30|[0x80003284]<br>0xFF000000|- rs1 : x15<br> - rs2 : x12<br> - rd : x2<br> - rs1_val == 16777216<br>                                                                                                                       |[0x80000324]:mul sp, a5, a2<br> [0x80000328]:sw sp, 48(t2)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x25<br> - rs2 : x0<br> - rd : x20<br> - rs1_val == 33554432<br>                                                                                                                       |[0x80000338]:mul s4, s9, zero<br> [0x8000033c]:sw s4, 52(t2)<br>   |
|  32|[0x8000328c]<br>0x7C000000|- rs1 : x17<br> - rs2 : x18<br> - rd : x4<br> - rs1_val == 67108864<br>                                                                                                                       |[0x80000348]:mul tp, a7, s2<br> [0x8000034c]:sw tp, 56(t2)<br>     |
|  33|[0x80003290]<br>0xD8000000|- rs2_val == -5<br> - rs1_val == 134217728<br>                                                                                                                                                |[0x80000358]:mul a2, a0, a1<br> [0x8000035c]:sw a2, 60(t2)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                    |[0x80000368]:mul a2, a0, a1<br> [0x8000036c]:sw a2, 64(t2)<br>     |
|  35|[0x80003298]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                                                                                    |[0x80000378]:mul a2, a0, a1<br> [0x8000037c]:sw a2, 68(t2)<br>     |
|  36|[0x8000329c]<br>0x00000000|- rs2_val == 32768<br> - rs1_val == 1073741824<br>                                                                                                                                            |[0x80000388]:mul a2, a0, a1<br> [0x8000038c]:sw a2, 72(t2)<br>     |
|  37|[0x800032a0]<br>0x02000002|- rs1_val == -2<br>                                                                                                                                                                           |[0x8000039c]:mul a2, a0, a1<br> [0x800003a0]:sw a2, 76(t2)<br>     |
|  38|[0x800032a4]<br>0xFFA00000|- rs2_val == 2097152<br> - rs1_val == -3<br>                                                                                                                                                  |[0x800003ac]:mul a2, a0, a1<br> [0x800003b0]:sw a2, 80(t2)<br>     |
|  39|[0x800032a8]<br>0x00000019|- rs1_val == -5<br>                                                                                                                                                                           |[0x800003bc]:mul a2, a0, a1<br> [0x800003c0]:sw a2, 84(t2)<br>     |
|  40|[0x800032ac]<br>0xFFFFFB80|- rs2_val == 128<br> - rs1_val == -9<br>                                                                                                                                                      |[0x800003cc]:mul a2, a0, a1<br> [0x800003d0]:sw a2, 88(t2)<br>     |
|  41|[0x800032b0]<br>0x5555555B|- rs2_val == 1431655765<br> - rs1_val == -17<br>                                                                                                                                              |[0x800003e0]:mul a2, a0, a1<br> [0x800003e4]:sw a2, 92(t2)<br>     |
|  42|[0x800032b4]<br>0x10000021|- rs2_val == -268435457<br> - rs1_val == -33<br>                                                                                                                                              |[0x800003f4]:mul a2, a0, a1<br> [0x800003f8]:sw a2, 96(t2)<br>     |
|  43|[0x800032b8]<br>0xFFFEFC00|- rs2_val == 1024<br>                                                                                                                                                                         |[0x80000404]:mul a2, a0, a1<br> [0x80000408]:sw a2, 100(t2)<br>    |
|  44|[0x800032bc]<br>0xFFFFE000|- rs2_val == -524289<br>                                                                                                                                                                      |[0x80000418]:mul a2, a0, a1<br> [0x8000041c]:sw a2, 104(t2)<br>    |
|  45|[0x800032c0]<br>0x80100801|- rs2_val == -1048577<br> - rs1_val == -2049<br>                                                                                                                                              |[0x80000430]:mul a2, a0, a1<br> [0x80000434]:sw a2, 108(t2)<br>    |
|  46|[0x800032c4]<br>0x40800001|- rs2_val == -8388609<br> - rs1_val == -1073741825<br>                                                                                                                                        |[0x80000448]:mul a2, a0, a1<br> [0x8000044c]:sw a2, 112(t2)<br>    |
|  47|[0x800032c8]<br>0xFFFFE000|- rs2_val == -67108865<br>                                                                                                                                                                    |[0x8000045c]:mul a2, a0, a1<br> [0x80000460]:sw a2, 116(t2)<br>    |
|  48|[0x800032cc]<br>0xDFFFFFFC|- rs2_val == -134217729<br>                                                                                                                                                                   |[0x80000470]:mul a2, a0, a1<br> [0x80000474]:sw a2, 120(t2)<br>    |
|  49|[0x800032d0]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                                                                   |[0x80000484]:mul a2, a0, a1<br> [0x80000488]:sw a2, 124(t2)<br>    |
|  50|[0x800032d4]<br>0xE0000000|- rs2_val == -1073741825<br>                                                                                                                                                                  |[0x80000498]:mul a2, a0, a1<br> [0x8000049c]:sw a2, 128(t2)<br>    |
|  51|[0x800032d8]<br>0x55555000|- rs2_val == -1431655766<br>                                                                                                                                                                  |[0x800004b0]:mul a2, a0, a1<br> [0x800004b4]:sw a2, 132(t2)<br>    |
|  52|[0x800032dc]<br>0x10200081|- rs1_val == -129<br>                                                                                                                                                                         |[0x800004c4]:mul a2, a0, a1<br> [0x800004c8]:sw a2, 136(t2)<br>    |
|  53|[0x800032e0]<br>0x04000201|- rs1_val == -513<br>                                                                                                                                                                         |[0x800004d8]:mul a2, a0, a1<br> [0x800004dc]:sw a2, 140(t2)<br>    |
|  54|[0x800032e4]<br>0xFFDFF800|- rs2_val == 2048<br> - rs1_val == -1025<br>                                                                                                                                                  |[0x800004ec]:mul a2, a0, a1<br> [0x800004f0]:sw a2, 144(t2)<br>    |
|  55|[0x800032e8]<br>0xFFFBFFC0|- rs2_val == 64<br> - rs1_val == -4097<br>                                                                                                                                                    |[0x80000500]:mul a2, a0, a1<br> [0x80000504]:sw a2, 148(t2)<br>    |
|  56|[0x800032ec]<br>0xFFE00000|- rs1_val == -8193<br>                                                                                                                                                                        |[0x80000514]:mul a2, a0, a1<br> [0x80000518]:sw a2, 152(t2)<br>    |
|  57|[0x800032f0]<br>0xFFEFFFC0|- rs1_val == -16385<br>                                                                                                                                                                       |[0x80000528]:mul a2, a0, a1<br> [0x8000052c]:sw a2, 156(t2)<br>    |
|  58|[0x800032f4]<br>0xFFE00000|- rs1_val == -32769<br>                                                                                                                                                                       |[0x8000053c]:mul a2, a0, a1<br> [0x80000540]:sw a2, 160(t2)<br>    |
|  59|[0x800032f8]<br>0x00020002|- rs1_val == -65537<br>                                                                                                                                                                       |[0x80000550]:mul a2, a0, a1<br> [0x80000554]:sw a2, 164(t2)<br>    |
|  60|[0x800032fc]<br>0x40000000|- rs1_val == -131073<br>                                                                                                                                                                      |[0x80000564]:mul a2, a0, a1<br> [0x80000568]:sw a2, 168(t2)<br>    |
|  61|[0x80003300]<br>0xBFFFF000|- rs2_val == 4096<br> - rs1_val == -262145<br>                                                                                                                                                |[0x80000578]:mul a2, a0, a1<br> [0x8000057c]:sw a2, 172(t2)<br>    |
|  62|[0x80003304]<br>0xF7FFFF00|- rs2_val == 256<br> - rs1_val == -524289<br>                                                                                                                                                 |[0x8000058c]:mul a2, a0, a1<br> [0x80000590]:sw a2, 176(t2)<br>    |
|  63|[0x80003308]<br>0x02200011|- rs2_val == -17<br> - rs1_val == -2097153<br>                                                                                                                                                |[0x800005a0]:mul a2, a0, a1<br> [0x800005a4]:sw a2, 180(t2)<br>    |
|  64|[0x8000330c]<br>0x00440001|- rs1_val == -4194305<br>                                                                                                                                                                     |[0x800005b8]:mul a2, a0, a1<br> [0x800005bc]:sw a2, 184(t2)<br>    |
|  65|[0x80003310]<br>0xFBFFFFF8|- rs2_val == 8<br> - rs1_val == -8388609<br>                                                                                                                                                  |[0x800005cc]:mul a2, a0, a1<br> [0x800005d0]:sw a2, 188(t2)<br>    |
|  66|[0x80003314]<br>0x03000001|- rs1_val == -16777217<br>                                                                                                                                                                    |[0x800005e4]:mul a2, a0, a1<br> [0x800005e8]:sw a2, 192(t2)<br>    |
|  67|[0x80003318]<br>0x1400000A|- rs1_val == -33554433<br>                                                                                                                                                                    |[0x800005f8]:mul a2, a0, a1<br> [0x800005fc]:sw a2, 196(t2)<br>    |
|  68|[0x8000331c]<br>0x08000002|- rs1_val == -67108865<br>                                                                                                                                                                    |[0x8000060c]:mul a2, a0, a1<br> [0x80000610]:sw a2, 200(t2)<br>    |
|  69|[0x80003320]<br>0x08000041|- rs1_val == -134217729<br>                                                                                                                                                                   |[0x80000620]:mul a2, a0, a1<br> [0x80000624]:sw a2, 204(t2)<br>    |
|  70|[0x80003324]<br>0xC0000000|- rs2_val == 1073741824<br> - rs1_val == -268435457<br>                                                                                                                                       |[0x80000634]:mul a2, a0, a1<br> [0x80000638]:sw a2, 208(t2)<br>    |
|  71|[0x80003328]<br>0xBFFFFFFE|- rs2_val == 2<br> - rs1_val == -536870913<br>                                                                                                                                                |[0x80000648]:mul a2, a0, a1<br> [0x8000064c]:sw a2, 212(t2)<br>    |
|  72|[0x8000332c]<br>0x000000AB|- rs2_val == -513<br> - rs1_val == 1431655765<br>                                                                                                                                             |[0x8000065c]:mul a2, a0, a1<br> [0x80000660]:sw a2, 216(t2)<br>    |
|  73|[0x80003330]<br>0x71C71C72|- rs1_val == -1431655766<br>                                                                                                                                                                  |[0x80000674]:mul a2, a0, a1<br> [0x80000678]:sw a2, 220(t2)<br>    |
|  74|[0x80003334]<br>0xFF7FFFFC|- rs2_val == 4<br>                                                                                                                                                                            |[0x80000688]:mul a2, a0, a1<br> [0x8000068c]:sw a2, 224(t2)<br>    |
|  75|[0x80003338]<br>0x00000090|- rs2_val == 16<br>                                                                                                                                                                           |[0x80000698]:mul a2, a0, a1<br> [0x8000069c]:sw a2, 228(t2)<br>    |
|  76|[0x8000333c]<br>0x02000000|- rs2_val == 32<br>                                                                                                                                                                           |[0x800006a8]:mul a2, a0, a1<br> [0x800006ac]:sw a2, 232(t2)<br>    |
|  77|[0x80003340]<br>0xFFFFEC00|- rs2_val == 512<br>                                                                                                                                                                          |[0x800006b8]:mul a2, a0, a1<br> [0x800006bc]:sw a2, 236(t2)<br>    |
|  78|[0x80003344]<br>0x00012000|- rs2_val == 8192<br>                                                                                                                                                                         |[0x800006c8]:mul a2, a0, a1<br> [0x800006cc]:sw a2, 240(t2)<br>    |
|  79|[0x80003348]<br>0xFBFFC000|- rs2_val == 16384<br>                                                                                                                                                                        |[0x800006dc]:mul a2, a0, a1<br> [0x800006e0]:sw a2, 244(t2)<br>    |
|  80|[0x8000334c]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                       |[0x800006ec]:mul a2, a0, a1<br> [0x800006f0]:sw a2, 248(t2)<br>    |
|  81|[0x80003350]<br>0xFFF00000|- rs2_val == 1048576<br>                                                                                                                                                                      |[0x80000700]:mul a2, a0, a1<br> [0x80000704]:sw a2, 252(t2)<br>    |
|  82|[0x80003354]<br>0xFF000000|- rs2_val == 16777216<br>                                                                                                                                                                     |[0x80000714]:mul a2, a0, a1<br> [0x80000718]:sw a2, 256(t2)<br>    |
|  83|[0x80003358]<br>0xFE000000|- rs2_val == 33554432<br>                                                                                                                                                                     |[0x80000728]:mul a2, a0, a1<br> [0x8000072c]:sw a2, 260(t2)<br>    |
|  84|[0x8000335c]<br>0xFC000000|- rs2_val == 67108864<br>                                                                                                                                                                     |[0x8000073c]:mul a2, a0, a1<br> [0x80000740]:sw a2, 264(t2)<br>    |
|  85|[0x80003360]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                                                    |[0x80000750]:mul a2, a0, a1<br> [0x80000754]:sw a2, 268(t2)<br>    |
|  86|[0x80003364]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                                                                    |[0x80000760]:mul a2, a0, a1<br> [0x80000764]:sw a2, 272(t2)<br>    |
|  87|[0x80003368]<br>0x0C000003|- rs2_val == -3<br>                                                                                                                                                                           |[0x80000774]:mul a2, a0, a1<br> [0x80000778]:sw a2, 276(t2)<br>    |
|  88|[0x8000336c]<br>0x00020481|- rs2_val == -129<br>                                                                                                                                                                         |[0x80000784]:mul a2, a0, a1<br> [0x80000788]:sw a2, 280(t2)<br>    |
|  89|[0x80003370]<br>0x00101101|- rs2_val == -257<br>                                                                                                                                                                         |[0x80000798]:mul a2, a0, a1<br> [0x8000079c]:sw a2, 284(t2)<br>    |
|  90|[0x80003374]<br>0x00100801|- rs2_val == -1025<br>                                                                                                                                                                        |[0x800007a8]:mul a2, a0, a1<br> [0x800007ac]:sw a2, 288(t2)<br>    |
|  91|[0x80003378]<br>0x00080901|- rs2_val == -2049<br>                                                                                                                                                                        |[0x800007bc]:mul a2, a0, a1<br> [0x800007c0]:sw a2, 292(t2)<br>    |
|  92|[0x8000337c]<br>0xC0000000|- rs2_val == -4097<br>                                                                                                                                                                        |[0x800007d0]:mul a2, a0, a1<br> [0x800007d4]:sw a2, 296(t2)<br>    |
|  93|[0x80003380]<br>0x80004001|- rs2_val == -16385<br>                                                                                                                                                                       |[0x800007e8]:mul a2, a0, a1<br> [0x800007ec]:sw a2, 300(t2)<br>    |
|  94|[0x80003384]<br>0x00080000|- rs2_val == 131072<br>                                                                                                                                                                       |[0x800007f8]:mul a2, a0, a1<br> [0x800007fc]:sw a2, 304(t2)<br>    |
|  95|[0x80003388]<br>0x80000000|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                                  |[0x80000808]:mul a2, a0, a1<br> [0x8000080c]:sw a2, 308(t2)<br>    |
|  96|[0x80003390]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                      |[0x80000828]:mul a2, a0, a1<br> [0x8000082c]:sw a2, 316(t2)<br>    |
|  97|[0x80003398]<br>0xFE000000|- rs2_val == -32769<br>                                                                                                                                                                       |[0x80000850]:mul a2, a0, a1<br> [0x80000854]:sw a2, 324(t2)<br>    |
