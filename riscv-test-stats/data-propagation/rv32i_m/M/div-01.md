
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000850')]      |
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | div      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/div-01.S/div-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 99      |
| STAT1                     | 94      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000614]:div a2, a0, a1
      [0x80000618]:sw a2, 196(t0)
 -- Signature Address: 0x8000331c Data: 0x00001FFF
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -32769
      - rs1_val == -268435457




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:div a2, a0, a1
      [0x80000810]:sw a2, 308(t0)
 -- Signature Address: 0x8000338c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs2_val == -4194305




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000081c]:div a2, a0, a1
      [0x80000820]:sw a2, 312(t0)
 -- Signature Address: 0x80003390 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val == rs2_val
      - rs2_val == 512
      - rs1_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:div a2, a0, a1
      [0x80000834]:sw a2, 316(t0)
 -- Signature Address: 0x80003394 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 65536
      - rs1_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:div a2, a0, a1
      [0x80000848]:sw a2, 320(t0)
 -- Signature Address: 0x80003398 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -1431655766
      - rs1_val == 1048576






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

|s.no|        signature         |                                                                                                   coverpoints                                                                                                    |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000001|- opcode : div<br> - rs1 : x15<br> - rs2 : x15<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -268435457<br> - rs1_val == -268435457<br>       |[0x8000010c]:div s11, a5, a5<br> [0x80000110]:sw s11, 0(a1)<br>    |
|   2|[0x80003214]<br>0x00000001|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs2_val == -4194305<br> - rs1_val == -4194305<br>                                                                                         |[0x80000120]:div a4, a4, a4<br> [0x80000124]:sw a4, 4(a1)<br>      |
|   3|[0x80003218]<br>0x01FFFFFF|- rs1 : x12<br> - rs2 : x31<br> - rd : x12<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 64<br> - rs1_val == 2147483647<br> |[0x80000134]:div a2, a2, t6<br> [0x80000138]:sw a2, 8(a1)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x4<br> - rs2 : x30<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br> - rs2_val == 32<br>                                                                                 |[0x80000144]:div fp, tp, t5<br> [0x80000148]:sw fp, 12(a1)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x19<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -257<br>                                                          |[0x80000154]:div s9, s3, s9<br> [0x80000158]:sw s9, 16(a1)<br>     |
|   6|[0x80003224]<br>0xFFFFFFFF|- rs1 : x5<br> - rs2 : x12<br> - rd : x10<br> - rs2_val == 0<br> - rs1_val == -134217729<br>                                                                                                                      |[0x80000168]:div a0, t0, a2<br> [0x8000016c]:sw a0, 20(a1)<br>     |
|   7|[0x80003228]<br>0x00000000|- rs1 : x25<br> - rs2 : x28<br> - rd : x7<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -65<br>                                                 |[0x8000017c]:div t2, s9, t3<br> [0x80000180]:sw t2, 24(a1)<br>     |
|   8|[0x8000322c]<br>0x55555555|- rs1 : x28<br> - rs2 : x17<br> - rd : x1<br> - rs2_val == 1<br> - rs1_val == 1431655765<br>                                                                                                                      |[0x80000190]:div ra, t3, a7<br> [0x80000194]:sw ra, 28(a1)<br>     |
|   9|[0x80003230]<br>0xFFFFFF81|- rs1 : x21<br> - rs2 : x19<br> - rd : x9<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 536870912<br>                                                                                                        |[0x800001a4]:div s1, s5, s3<br> [0x800001a8]:sw s1, 32(a1)<br>     |
|  10|[0x80003234]<br>0x00000000|- rs1 : x23<br> - rs2 : x18<br> - rd : x0<br> - rs2_val == 512<br> - rs1_val == 512<br>                                                                                                                           |[0x800001b4]:div zero, s7, s2<br> [0x800001b8]:sw zero, 36(a1)<br> |
|  11|[0x80003238]<br>0x00000000|- rs1 : x2<br> - rs2 : x13<br> - rd : x30<br> - rs2_val == 33554432<br> - rs1_val == 2<br>                                                                                                                        |[0x800001c4]:div t5, sp, a3<br> [0x800001c8]:sw t5, 40(a1)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x31<br> - rs2 : x23<br> - rd : x17<br> - rs2_val == -524289<br> - rs1_val == 4<br>                                                                                                                        |[0x800001d8]:div a7, t6, s7<br> [0x800001dc]:sw a7, 44(a1)<br>     |
|  13|[0x80003240]<br>0x00000000|- rs1 : x8<br> - rs2 : x9<br> - rd : x19<br> - rs2_val == -65537<br> - rs1_val == 8<br>                                                                                                                           |[0x800001ec]:div s3, fp, s1<br> [0x800001f0]:sw s3, 48(a1)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x16<br> - rs2 : x4<br> - rd : x26<br> - rs1_val == 16<br>                                                                                                                                                 |[0x800001fc]:div s10, a6, tp<br> [0x80000200]:sw s10, 52(a1)<br>   |
|  15|[0x80003248]<br>0x00000000|- rs1 : x1<br> - rs2 : x5<br> - rd : x22<br> - rs2_val == 8192<br> - rs1_val == 32<br>                                                                                                                            |[0x8000020c]:div s6, ra, t0<br> [0x80000210]:sw s6, 56(a1)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x7<br> - rs2 : x20<br> - rd : x13<br> - rs2_val == -131073<br> - rs1_val == 64<br>                                                                                                                        |[0x80000220]:div a3, t2, s4<br> [0x80000224]:sw a3, 60(a1)<br>     |
|  17|[0x80003250]<br>0xFFFFFFE7|- rs1 : x10<br> - rs2 : x26<br> - rd : x31<br> - rs2_val == -5<br> - rs1_val == 128<br>                                                                                                                           |[0x80000230]:div t6, a0, s10<br> [0x80000234]:sw t6, 64(a1)<br>    |
|  18|[0x80003254]<br>0x00000000|- rs1 : x3<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == -134217729<br> - rs1_val == 256<br>                                                                                                                      |[0x80000244]:div t0, gp, t1<br> [0x80000248]:sw t0, 68(a1)<br>     |
|  19|[0x80003258]<br>0x00000000|- rs1 : x20<br> - rs2 : x11<br> - rd : x15<br> - rs1_val == 1024<br>                                                                                                                                              |[0x8000025c]:div a5, s4, a1<br> [0x80000260]:sw a5, 0(t0)<br>      |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x0<br> - rs2 : x27<br> - rd : x4<br> - rs1_val == 0<br> - rs2_val == 65536<br>                                                                                                                            |[0x80000270]:div tp, zero, s11<br> [0x80000274]:sw tp, 4(t0)<br>   |
|  21|[0x80003260]<br>0x00000000|- rs1 : x6<br> - rs2 : x29<br> - rd : x23<br> - rs2_val == -67108865<br> - rs1_val == 4096<br>                                                                                                                    |[0x80000284]:div s7, t1, t4<br> [0x80000288]:sw s7, 8(t0)<br>      |
|  22|[0x80003264]<br>0x00000000|- rs1 : x9<br> - rs2 : x16<br> - rd : x21<br> - rs2_val == -1048577<br> - rs1_val == 8192<br>                                                                                                                     |[0x80000298]:div s5, s1, a6<br> [0x8000029c]:sw s5, 12(t0)<br>     |
|  23|[0x80003268]<br>0x00000200|- rs1 : x22<br> - rs2 : x8<br> - rd : x18<br> - rs1_val == 16384<br>                                                                                                                                              |[0x800002a8]:div s2, s6, fp<br> [0x800002ac]:sw s2, 16(t0)<br>     |
|  24|[0x8000326c]<br>0x00002000|- rs1 : x27<br> - rs2 : x24<br> - rd : x2<br> - rs2_val == 4<br> - rs1_val == 32768<br>                                                                                                                           |[0x800002b8]:div sp, s11, s8<br> [0x800002bc]:sw sp, 20(t0)<br>    |
|  25|[0x80003270]<br>0xFFFFFF81|- rs1 : x18<br> - rs2 : x22<br> - rd : x6<br> - rs2_val == -513<br> - rs1_val == 65536<br>                                                                                                                        |[0x800002c8]:div t1, s2, s6<br> [0x800002cc]:sw t1, 24(t0)<br>     |
|  26|[0x80003274]<br>0xFFFFFFFD|- rs1 : x26<br> - rs2 : x2<br> - rd : x3<br> - rs2_val == -32769<br> - rs1_val == 131072<br>                                                                                                                      |[0x800002dc]:div gp, s10, sp<br> [0x800002e0]:sw gp, 28(t0)<br>    |
|  27|[0x80003278]<br>0x00000008|- rs1 : x24<br> - rs2 : x7<br> - rd : x28<br> - rs2_val == 32768<br> - rs1_val == 262144<br>                                                                                                                      |[0x800002ec]:div t3, s8, t2<br> [0x800002f0]:sw t3, 32(t0)<br>     |
|  28|[0x8000327c]<br>0xFFFFFC02|- rs1 : x17<br> - rs2 : x1<br> - rd : x11<br> - rs1_val == 524288<br>                                                                                                                                             |[0x800002fc]:div a1, a7, ra<br> [0x80000300]:sw a1, 36(t0)<br>     |
|  29|[0x80003280]<br>0xFFFFFFFF|- rs1 : x30<br> - rs2 : x0<br> - rd : x16<br> - rs1_val == 1048576<br>                                                                                                                                            |[0x80000310]:div a6, t5, zero<br> [0x80000314]:sw a6, 40(t0)<br>   |
|  30|[0x80003284]<br>0x00000400|- rs1 : x13<br> - rs2 : x21<br> - rd : x29<br> - rs2_val == 2048<br> - rs1_val == 2097152<br>                                                                                                                     |[0x80000324]:div t4, a3, s5<br> [0x80000328]:sw t4, 44(t0)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x29<br> - rs2 : x3<br> - rd : x24<br> - rs2_val == 134217728<br> - rs1_val == 4194304<br>                                                                                                                 |[0x80000334]:div s8, t4, gp<br> [0x80000338]:sw s8, 48(t0)<br>     |
|  32|[0x8000328c]<br>0xFFFFFFE1|- rs1 : x11<br> - rs2 : x10<br> - rd : x20<br> - rs2_val == -262145<br> - rs1_val == 8388608<br>                                                                                                                  |[0x80000348]:div s4, a1, a0<br> [0x8000034c]:sw s4, 52(t0)<br>     |
|  33|[0x80003290]<br>0xFFAAAAAB|- rs2_val == -3<br> - rs1_val == 16777216<br>                                                                                                                                                                     |[0x80000358]:div a2, a0, a1<br> [0x8000035c]:sw a2, 56(t0)<br>     |
|  34|[0x80003294]<br>0x00000001|- rs1_val == 33554432<br>                                                                                                                                                                                         |[0x80000368]:div a2, a0, a1<br> [0x8000036c]:sw a2, 60(t0)<br>     |
|  35|[0x80003298]<br>0xFFFFFFFF|- rs1_val == 67108864<br>                                                                                                                                                                                         |[0x80000378]:div a2, a0, a1<br> [0x8000037c]:sw a2, 64(t0)<br>     |
|  36|[0x8000329c]<br>0xFFFFFFF1|- rs2_val == -8388609<br> - rs1_val == 134217728<br>                                                                                                                                                              |[0x8000038c]:div a2, a0, a1<br> [0x80000390]:sw a2, 68(t0)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs2_val == 1431655765<br> - rs1_val == 268435456<br>                                                                                                                                                            |[0x800003a0]:div a2, a0, a1<br> [0x800003a4]:sw a2, 72(t0)<br>     |
|  38|[0x800032a4]<br>0xFFFFF801|- rs1_val == 1073741824<br>                                                                                                                                                                                       |[0x800003b4]:div a2, a0, a1<br> [0x800003b8]:sw a2, 76(t0)<br>     |
|  39|[0x800032a8]<br>0x00000000|- rs1_val == -2<br>                                                                                                                                                                                               |[0x800003c8]:div a2, a0, a1<br> [0x800003cc]:sw a2, 80(t0)<br>     |
|  40|[0x800032ac]<br>0x00000000|- rs1_val == -3<br>                                                                                                                                                                                               |[0x800003dc]:div a2, a0, a1<br> [0x800003e0]:sw a2, 84(t0)<br>     |
|  41|[0x800032b0]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                                                                               |[0x800003ec]:div a2, a0, a1<br> [0x800003f0]:sw a2, 88(t0)<br>     |
|  42|[0x800032b4]<br>0x00000000|- rs2_val == -2097153<br>                                                                                                                                                                                         |[0x80000400]:div a2, a0, a1<br> [0x80000404]:sw a2, 92(t0)<br>     |
|  43|[0x800032b8]<br>0x00000000|- rs2_val == -16777217<br>                                                                                                                                                                                        |[0x80000418]:div a2, a0, a1<br> [0x8000041c]:sw a2, 96(t0)<br>     |
|  44|[0x800032bc]<br>0x00000003|- rs2_val == -33554433<br>                                                                                                                                                                                        |[0x80000430]:div a2, a0, a1<br> [0x80000434]:sw a2, 100(t0)<br>    |
|  45|[0x800032c0]<br>0x00000000|- rs2_val == -536870913<br>                                                                                                                                                                                       |[0x80000444]:div a2, a0, a1<br> [0x80000448]:sw a2, 104(t0)<br>    |
|  46|[0x800032c4]<br>0x00000001|- rs2_val == -1073741825<br> - rs1_val == -1431655766<br>                                                                                                                                                         |[0x8000045c]:div a2, a0, a1<br> [0x80000460]:sw a2, 108(t0)<br>    |
|  47|[0x800032c8]<br>0x00000000|- rs2_val == 8388608<br> - rs1_val == -9<br>                                                                                                                                                                      |[0x8000046c]:div a2, a0, a1<br> [0x80000470]:sw a2, 112(t0)<br>    |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == -2049<br> - rs1_val == -17<br>                                                                                                                                                                       |[0x80000480]:div a2, a0, a1<br> [0x80000484]:sw a2, 116(t0)<br>    |
|  49|[0x800032d0]<br>0x00000000|- rs2_val == 67108864<br> - rs1_val == -33<br>                                                                                                                                                                    |[0x80000490]:div a2, a0, a1<br> [0x80000494]:sw a2, 120(t0)<br>    |
|  50|[0x800032d4]<br>0xFFFFFFEB|- rs1_val == -129<br>                                                                                                                                                                                             |[0x800004a0]:div a2, a0, a1<br> [0x800004a4]:sw a2, 124(t0)<br>    |
|  51|[0x800032d8]<br>0x00000000|- rs1_val == -513<br>                                                                                                                                                                                             |[0x800004b0]:div a2, a0, a1<br> [0x800004b4]:sw a2, 128(t0)<br>    |
|  52|[0x800032dc]<br>0x00000000|- rs1_val == -1025<br>                                                                                                                                                                                            |[0x800004c4]:div a2, a0, a1<br> [0x800004c8]:sw a2, 132(t0)<br>    |
|  53|[0x800032e0]<br>0x00000000|- rs1_val == -2049<br>                                                                                                                                                                                            |[0x800004d8]:div a2, a0, a1<br> [0x800004dc]:sw a2, 136(t0)<br>    |
|  54|[0x800032e4]<br>0x00000000|- rs2_val == -1431655766<br> - rs1_val == -4097<br>                                                                                                                                                               |[0x800004f0]:div a2, a0, a1<br> [0x800004f4]:sw a2, 140(t0)<br>    |
|  55|[0x800032e8]<br>0x00000000|- rs1_val == -8193<br>                                                                                                                                                                                            |[0x80000508]:div a2, a0, a1<br> [0x8000050c]:sw a2, 144(t0)<br>    |
|  56|[0x800032ec]<br>0x00000000|- rs2_val == 131072<br> - rs1_val == -16385<br>                                                                                                                                                                   |[0x8000051c]:div a2, a0, a1<br> [0x80000520]:sw a2, 148(t0)<br>    |
|  57|[0x800032f0]<br>0x00000000|- rs1_val == -32769<br>                                                                                                                                                                                           |[0x80000534]:div a2, a0, a1<br> [0x80000538]:sw a2, 152(t0)<br>    |
|  58|[0x800032f4]<br>0x00000000|- rs2_val == 2097152<br> - rs1_val == -65537<br>                                                                                                                                                                  |[0x80000548]:div a2, a0, a1<br> [0x8000054c]:sw a2, 156(t0)<br>    |
|  59|[0x800032f8]<br>0x000007E0|- rs2_val == -65<br> - rs1_val == -131073<br>                                                                                                                                                                     |[0x8000055c]:div a2, a0, a1<br> [0x80000560]:sw a2, 160(t0)<br>    |
|  60|[0x800032fc]<br>0xFFFEAAAB|- rs1_val == -262145<br>                                                                                                                                                                                          |[0x80000570]:div a2, a0, a1<br> [0x80000574]:sw a2, 164(t0)<br>    |
|  61|[0x80003300]<br>0x00001F81|- rs1_val == -524289<br>                                                                                                                                                                                          |[0x80000584]:div a2, a0, a1<br> [0x80000588]:sw a2, 168(t0)<br>    |
|  62|[0x80003304]<br>0xFFFF8000|- rs1_val == -1048577<br>                                                                                                                                                                                         |[0x80000598]:div a2, a0, a1<br> [0x8000059c]:sw a2, 172(t0)<br>    |
|  63|[0x80003308]<br>0xFFFFFFFF|- rs1_val == -2097153<br>                                                                                                                                                                                         |[0x800005ac]:div a2, a0, a1<br> [0x800005b0]:sw a2, 176(t0)<br>    |
|  64|[0x8000330c]<br>0x00800001|- rs1_val == -8388609<br>                                                                                                                                                                                         |[0x800005c0]:div a2, a0, a1<br> [0x800005c4]:sw a2, 180(t0)<br>    |
|  65|[0x80003310]<br>0x00555555|- rs1_val == -16777217<br>                                                                                                                                                                                        |[0x800005d4]:div a2, a0, a1<br> [0x800005d8]:sw a2, 184(t0)<br>    |
|  66|[0x80003314]<br>0xFFC71C72|- rs1_val == -33554433<br>                                                                                                                                                                                        |[0x800005e8]:div a2, a0, a1<br> [0x800005ec]:sw a2, 188(t0)<br>    |
|  67|[0x80003318]<br>0xFFFFFF80|- rs2_val == 524288<br> - rs1_val == -67108865<br>                                                                                                                                                                |[0x800005fc]:div a2, a0, a1<br> [0x80000600]:sw a2, 192(t0)<br>    |
|  68|[0x80003320]<br>0xFFFFFFF8|- rs1_val == -536870913<br>                                                                                                                                                                                       |[0x80000628]:div a2, a0, a1<br> [0x8000062c]:sw a2, 200(t0)<br>    |
|  69|[0x80003324]<br>0x03C3C3C3|- rs2_val == -17<br> - rs1_val == -1073741825<br>                                                                                                                                                                 |[0x8000063c]:div a2, a0, a1<br> [0x80000640]:sw a2, 204(t0)<br>    |
|  70|[0x80003328]<br>0xFFFFFFFD|- rs2_val == 2<br>                                                                                                                                                                                                |[0x8000064c]:div a2, a0, a1<br> [0x80000650]:sw a2, 208(t0)<br>    |
|  71|[0x8000332c]<br>0xFF000000|- rs2_val == 8<br>                                                                                                                                                                                                |[0x80000660]:div a2, a0, a1<br> [0x80000664]:sw a2, 212(t0)<br>    |
|  72|[0x80003330]<br>0x00000000|- rs2_val == 16<br>                                                                                                                                                                                               |[0x80000670]:div a2, a0, a1<br> [0x80000674]:sw a2, 216(t0)<br>    |
|  73|[0x80003334]<br>0x00000000|- rs2_val == 128<br>                                                                                                                                                                                              |[0x80000680]:div a2, a0, a1<br> [0x80000684]:sw a2, 220(t0)<br>    |
|  74|[0x80003338]<br>0xFFFFFFF0|- rs2_val == 256<br>                                                                                                                                                                                              |[0x80000694]:div a2, a0, a1<br> [0x80000698]:sw a2, 224(t0)<br>    |
|  75|[0x8000333c]<br>0x00000000|- rs2_val == 1024<br>                                                                                                                                                                                             |[0x800006a4]:div a2, a0, a1<br> [0x800006a8]:sw a2, 228(t0)<br>    |
|  76|[0x80003340]<br>0x00000000|- rs2_val == 4096<br> - rs1_val == 2048<br>                                                                                                                                                                       |[0x800006b8]:div a2, a0, a1<br> [0x800006bc]:sw a2, 232(t0)<br>    |
|  77|[0x80003344]<br>0xFFFFFFC0|- rs2_val == 16384<br>                                                                                                                                                                                            |[0x800006cc]:div a2, a0, a1<br> [0x800006d0]:sw a2, 236(t0)<br>    |
|  78|[0x80003348]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                           |[0x800006dc]:div a2, a0, a1<br> [0x800006e0]:sw a2, 240(t0)<br>    |
|  79|[0x8000334c]<br>0x00000000|- rs2_val == 1048576<br>                                                                                                                                                                                          |[0x800006ec]:div a2, a0, a1<br> [0x800006f0]:sw a2, 244(t0)<br>    |
|  80|[0x80003350]<br>0x00000008|- rs2_val == 4194304<br>                                                                                                                                                                                          |[0x800006fc]:div a2, a0, a1<br> [0x80000700]:sw a2, 248(t0)<br>    |
|  81|[0x80003354]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                                                                                                         |[0x8000070c]:div a2, a0, a1<br> [0x80000710]:sw a2, 252(t0)<br>    |
|  82|[0x80003358]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                                                                        |[0x8000071c]:div a2, a0, a1<br> [0x80000720]:sw a2, 256(t0)<br>    |
|  83|[0x8000335c]<br>0x00000000|- rs2_val == 536870912<br>                                                                                                                                                                                        |[0x80000730]:div a2, a0, a1<br> [0x80000734]:sw a2, 260(t0)<br>    |
|  84|[0x80003360]<br>0x00000000|- rs2_val == 1073741824<br>                                                                                                                                                                                       |[0x80000740]:div a2, a0, a1<br> [0x80000744]:sw a2, 264(t0)<br>    |
|  85|[0x80003364]<br>0xFFFFFFFC|- rs2_val == -2<br>                                                                                                                                                                                               |[0x80000750]:div a2, a0, a1<br> [0x80000754]:sw a2, 268(t0)<br>    |
|  86|[0x80003368]<br>0x000000E3|- rs2_val == -9<br>                                                                                                                                                                                               |[0x80000764]:div a2, a0, a1<br> [0x80000768]:sw a2, 272(t0)<br>    |
|  87|[0x8000336c]<br>0xFFF07C20|- rs2_val == -33<br>                                                                                                                                                                                              |[0x80000774]:div a2, a0, a1<br> [0x80000778]:sw a2, 276(t0)<br>    |
|  88|[0x80003370]<br>0xFFFFF810|- rs2_val == -129<br>                                                                                                                                                                                             |[0x80000784]:div a2, a0, a1<br> [0x80000788]:sw a2, 280(t0)<br>    |
|  89|[0x80003374]<br>0x00000000|- rs2_val == -257<br>                                                                                                                                                                                             |[0x80000794]:div a2, a0, a1<br> [0x80000798]:sw a2, 284(t0)<br>    |
|  90|[0x80003378]<br>0x00000000|- rs2_val == -1025<br>                                                                                                                                                                                            |[0x800007a4]:div a2, a0, a1<br> [0x800007a8]:sw a2, 288(t0)<br>    |
|  91|[0x8000337c]<br>0xFFFFFFF9|- rs2_val == -4097<br>                                                                                                                                                                                            |[0x800007b8]:div a2, a0, a1<br> [0x800007bc]:sw a2, 292(t0)<br>    |
|  92|[0x80003380]<br>0x0000007F|- rs2_val == -8193<br>                                                                                                                                                                                            |[0x800007d0]:div a2, a0, a1<br> [0x800007d4]:sw a2, 296(t0)<br>    |
|  93|[0x80003384]<br>0x0000FFFC|- rs2_val == -16385<br>                                                                                                                                                                                           |[0x800007e4]:div a2, a0, a1<br> [0x800007e8]:sw a2, 300(t0)<br>    |
|  94|[0x80003388]<br>0x00000007|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                                                      |[0x800007f8]:div a2, a0, a1<br> [0x800007fc]:sw a2, 304(t0)<br>    |
