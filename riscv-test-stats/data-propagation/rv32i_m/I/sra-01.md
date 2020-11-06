
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
| SIG_REGION                | [('0x80003204', '0x80003328', '73 words')]      |
| COV_LABELS                | sra      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sra-01.S/sra-01.S    |
| Total Number of coverpoints| 189     |
| Total Coverpoints Hit     | 189      |
| Total Signature Updates   | 73      |
| STAT1                     | 70      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c8]:sra a2, a0, a1
      [0x800005cc]:sw a2, 204(sp)
 -- Signature Address: 0x80003318 Data: 0x00040000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val == 0
      - rs1_val == 262144




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d8]:sra a2, a0, a1
      [0x800005dc]:sw a2, 208(sp)
 -- Signature Address: 0x8000331c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == 1
      - rs2_val == 29




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ec]:sra a2, a0, a1
      [0x800005f0]:sw a2, 212(sp)
 -- Signature Address: 0x80003320 Data: 0xFFFFFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == -134217729
      - rs2_val == 23






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

|s.no|        signature         |                                                                                       coverpoints                                                                                       |                               code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFDF|- opcode : sra<br> - rs1 : x9<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -32769<br> - rs2_val == 10<br> |[0x8000010c]:sra s9, s1, s9<br> [0x80000110]:sw s9, 0(s5)<br>      |
|   2|[0x80003208]<br>0x00000000|- rs1 : x28<br> - rs2 : x3<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 16<br> - rs2_val == 27<br> |[0x8000011c]:sra a3, t3, gp<br> [0x80000120]:sw a3, 4(s5)<br>      |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x14<br> - rs2 : x14<br> - rd : x7<br> - rs1 == rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                              |[0x80000130]:sra t2, a4, a4<br> [0x80000134]:sw t2, 8(s5)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br>                                                                                                                       |[0x80000140]:sra sp, sp, sp<br> [0x80000144]:sw sp, 12(s5)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x22<br> - rs2 : x9<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 4<br> - rs2_val == 4<br>                   |[0x80000150]:sra s6, s6, s1<br> [0x80000154]:sw s6, 16(s5)<br>     |
|   6|[0x80003218]<br>0xFFFC0000|- rs1 : x18<br> - rs2 : x12<br> - rd : x6<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                                           |[0x80000160]:sra t1, s2, a2<br> [0x80000164]:sw t1, 20(s5)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x23<br> - rs2 : x24<br> - rd : x1<br> - rs2_val == 30<br>                                                                                                                        |[0x80000170]:sra ra, s7, s8<br> [0x80000174]:sw ra, 24(s5)<br>     |
|   8|[0x80003220]<br>0x00003FFF|- rs1 : x10<br> - rs2 : x19<br> - rd : x12<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                          |[0x80000184]:sra a2, a0, s3<br> [0x80000188]:sw a2, 28(s5)<br>     |
|   9|[0x80003224]<br>0x00000001|- rs1 : x8<br> - rs2 : x0<br> - rd : x28<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                |[0x80000194]:sra t3, fp, zero<br> [0x80000198]:sw t3, 32(s5)<br>   |
|  10|[0x80003228]<br>0xFFFFFF7F|- rs1 : x12<br> - rs2 : x17<br> - rd : x8<br> - rs1_val == -257<br> - rs2_val == 1<br>                                                                                                   |[0x800001a4]:sra fp, a2, a7<br> [0x800001a8]:sw fp, 36(s5)<br>     |
|  11|[0x8000322c]<br>0x00010000|- rs1 : x3<br> - rs2 : x29<br> - rd : x10<br> - rs1_val == 262144<br> - rs2_val == 2<br>                                                                                                 |[0x800001b4]:sra a0, gp, t4<br> [0x800001b8]:sw a0, 40(s5)<br>     |
|  12|[0x80003230]<br>0xFFFEFFFF|- rs1 : x19<br> - rs2 : x5<br> - rd : x11<br> - rs1_val == -16777217<br> - rs2_val == 8<br>                                                                                              |[0x800001c8]:sra a1, s3, t0<br> [0x800001cc]:sw a1, 44(s5)<br>     |
|  13|[0x80003234]<br>0xFFFFFFDF|- rs1 : x13<br> - rs2 : x16<br> - rd : x29<br> - rs1_val == -2097153<br> - rs2_val == 16<br>                                                                                             |[0x800001dc]:sra t4, a3, a6<br> [0x800001e0]:sw t4, 48(s5)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x25<br> - rs2 : x8<br> - rd : x0<br> - rs1_val == -134217729<br> - rs2_val == 23<br>                                                                                             |[0x800001f0]:sra zero, s9, fp<br> [0x800001f4]:sw zero, 52(s5)<br> |
|  15|[0x8000323c]<br>0x00008000|- rs1 : x11<br> - rs2 : x26<br> - rd : x3<br> - rs1_val == 1073741824<br> - rs2_val == 15<br>                                                                                            |[0x80000200]:sra gp, a1, s10<br> [0x80000204]:sw gp, 56(s5)<br>    |
|  16|[0x80003240]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x4<br> - rd : x15<br> - rs1_val == -4097<br> - rs2_val == 21<br>                                                                                                 |[0x80000214]:sra a5, s4, tp<br> [0x80000218]:sw a5, 60(s5)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x6<br> - rs2 : x28<br> - rd : x4<br> - rs1_val == 2<br>                                                                                                                          |[0x80000224]:sra tp, t1, t3<br> [0x80000228]:sw tp, 64(s5)<br>     |
|  18|[0x80003248]<br>0x00000000|- rs1 : x24<br> - rs2 : x7<br> - rd : x30<br> - rs1_val == 8<br> - rs2_val == 29<br>                                                                                                     |[0x80000234]:sra t5, s8, t2<br> [0x80000238]:sw t5, 68(s5)<br>     |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x4<br> - rs2 : x15<br> - rd : x17<br> - rs1_val == 32<br>                                                                                                                        |[0x8000024c]:sra a7, tp, a5<br> [0x80000250]:sw a7, 0(sp)<br>      |
|  20|[0x80003250]<br>0x00000000|- rs1 : x1<br> - rs2 : x21<br> - rd : x18<br> - rs1_val == 64<br>                                                                                                                        |[0x8000025c]:sra s2, ra, s5<br> [0x80000260]:sw s2, 4(sp)<br>      |
|  21|[0x80003254]<br>0x00000000|- rs1 : x7<br> - rs2 : x18<br> - rd : x31<br> - rs1_val == 128<br>                                                                                                                       |[0x8000026c]:sra t6, t2, s2<br> [0x80000270]:sw t6, 8(sp)<br>      |
|  22|[0x80003258]<br>0x00000010|- rs1 : x21<br> - rs2 : x27<br> - rd : x20<br> - rs1_val == 256<br>                                                                                                                      |[0x8000027c]:sra s4, s5, s11<br> [0x80000280]:sw s4, 12(sp)<br>    |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x31<br> - rs2 : x10<br> - rd : x5<br> - rs1_val == 512<br>                                                                                                                       |[0x8000028c]:sra t0, t6, a0<br> [0x80000290]:sw t0, 16(sp)<br>     |
|  24|[0x80003260]<br>0x00000100|- rs1 : x16<br> - rs2 : x20<br> - rd : x21<br> - rs1_val == 1024<br>                                                                                                                     |[0x8000029c]:sra s5, a6, s4<br> [0x800002a0]:sw s5, 20(sp)<br>     |
|  25|[0x80003264]<br>0x00000000|- rs1 : x5<br> - rs2 : x1<br> - rd : x26<br> - rs1_val == 2048<br>                                                                                                                       |[0x800002b0]:sra s10, t0, ra<br> [0x800002b4]:sw s10, 24(sp)<br>   |
|  26|[0x80003268]<br>0x00000000|- rs1 : x27<br> - rs2 : x30<br> - rd : x9<br> - rs1_val == 4096<br>                                                                                                                      |[0x800002c0]:sra s1, s11, t5<br> [0x800002c4]:sw s1, 28(sp)<br>    |
|  27|[0x8000326c]<br>0x00001000|- rs1 : x15<br> - rs2 : x6<br> - rd : x16<br> - rs1_val == 8192<br>                                                                                                                      |[0x800002d0]:sra a6, a5, t1<br> [0x800002d4]:sw a6, 32(sp)<br>     |
|  28|[0x80003270]<br>0x00000040|- rs1 : x30<br> - rs2 : x23<br> - rd : x19<br> - rs1_val == 16384<br>                                                                                                                    |[0x800002e0]:sra s3, t5, s7<br> [0x800002e4]:sw s3, 36(sp)<br>     |
|  29|[0x80003274]<br>0x00000020|- rs1 : x29<br> - rs2 : x13<br> - rd : x27<br> - rs1_val == 32768<br>                                                                                                                    |[0x800002f0]:sra s11, t4, a3<br> [0x800002f4]:sw s11, 40(sp)<br>   |
|  30|[0x80003278]<br>0x00000100|- rs1 : x17<br> - rs2 : x31<br> - rd : x24<br> - rs1_val == 65536<br>                                                                                                                    |[0x80000300]:sra s8, a7, t6<br> [0x80000304]:sw s8, 44(sp)<br>     |
|  31|[0x8000327c]<br>0x00000002|- rs1 : x26<br> - rs2 : x11<br> - rd : x14<br> - rs1_val == 131072<br>                                                                                                                   |[0x80000310]:sra a4, s10, a1<br> [0x80000314]:sw a4, 48(sp)<br>    |
|  32|[0x80003280]<br>0x00000000|- rs1 : x0<br> - rs2 : x22<br> - rd : x23<br>                                                                                                                                            |[0x80000324]:sra s7, zero, s6<br> [0x80000328]:sw s7, 52(sp)<br>   |
|  33|[0x80003284]<br>0x00080000|- rs1_val == 1048576<br>                                                                                                                                                                 |[0x80000334]:sra a2, a0, a1<br> [0x80000338]:sw a2, 56(sp)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                                                                 |[0x80000344]:sra a2, a0, a1<br> [0x80000348]:sw a2, 60(sp)<br>     |
|  35|[0x8000328c]<br>0x00008000|- rs1_val == 4194304<br>                                                                                                                                                                 |[0x80000354]:sra a2, a0, a1<br> [0x80000358]:sw a2, 64(sp)<br>     |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                                                                                 |[0x80000364]:sra a2, a0, a1<br> [0x80000368]:sw a2, 68(sp)<br>     |
|  37|[0x80003294]<br>0x00200000|- rs1_val == 16777216<br>                                                                                                                                                                |[0x80000374]:sra a2, a0, a1<br> [0x80000378]:sw a2, 72(sp)<br>     |
|  38|[0x80003298]<br>0x00000004|- rs1_val == 33554432<br>                                                                                                                                                                |[0x80000384]:sra a2, a0, a1<br> [0x80000388]:sw a2, 76(sp)<br>     |
|  39|[0x8000329c]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                                   |[0x80000398]:sra a2, a0, a1<br> [0x8000039c]:sw a2, 80(sp)<br>     |
|  40|[0x800032a0]<br>0xFFFFFF7F|- rs1_val == -8193<br>                                                                                                                                                                   |[0x800003ac]:sra a2, a0, a1<br> [0x800003b0]:sw a2, 84(sp)<br>     |
|  41|[0x800032a4]<br>0xFFFFEFFF|- rs1_val == -16385<br>                                                                                                                                                                  |[0x800003c0]:sra a2, a0, a1<br> [0x800003c4]:sw a2, 88(sp)<br>     |
|  42|[0x800032a8]<br>0xFFFFFFF7|- rs1_val == -65537<br>                                                                                                                                                                  |[0x800003d4]:sra a2, a0, a1<br> [0x800003d8]:sw a2, 92(sp)<br>     |
|  43|[0x800032ac]<br>0xFFFFFFBF|- rs1_val == -131073<br>                                                                                                                                                                 |[0x800003e8]:sra a2, a0, a1<br> [0x800003ec]:sw a2, 96(sp)<br>     |
|  44|[0x800032b0]<br>0xFFFF7FFF|- rs1_val == -262145<br>                                                                                                                                                                 |[0x800003fc]:sra a2, a0, a1<br> [0x80000400]:sw a2, 100(sp)<br>    |
|  45|[0x800032b4]<br>0xFFFFFFDF|- rs1_val == -524289<br>                                                                                                                                                                 |[0x80000410]:sra a2, a0, a1<br> [0x80000414]:sw a2, 104(sp)<br>    |
|  46|[0x800032b8]<br>0xFFEFFFFF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -1048577<br>                                                                                                                             |[0x80000424]:sra a2, a0, a1<br> [0x80000428]:sw a2, 108(sp)<br>    |
|  47|[0x800032bc]<br>0xFFFFBFFF|- rs1_val == -4194305<br>                                                                                                                                                                |[0x80000438]:sra a2, a0, a1<br> [0x8000043c]:sw a2, 112(sp)<br>    |
|  48|[0x800032c0]<br>0xFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                                                                |[0x8000044c]:sra a2, a0, a1<br> [0x80000450]:sw a2, 116(sp)<br>    |
|  49|[0x800032c4]<br>0xFFFFFFBF|- rs1_val == -33554433<br>                                                                                                                                                               |[0x80000460]:sra a2, a0, a1<br> [0x80000464]:sw a2, 120(sp)<br>    |
|  50|[0x800032c8]<br>0xFFFDFFFF|- rs1_val == -67108865<br>                                                                                                                                                               |[0x80000474]:sra a2, a0, a1<br> [0x80000478]:sw a2, 124(sp)<br>    |
|  51|[0x800032cc]<br>0xFDFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                              |[0x80000488]:sra a2, a0, a1<br> [0x8000048c]:sw a2, 128(sp)<br>    |
|  52|[0x800032d0]<br>0xFFBFFFFF|- rs1_val == -536870913<br>                                                                                                                                                              |[0x8000049c]:sra a2, a0, a1<br> [0x800004a0]:sw a2, 132(sp)<br>    |
|  53|[0x800032d4]<br>0xFFF7FFFF|- rs1_val == -1073741825<br>                                                                                                                                                             |[0x800004b0]:sra a2, a0, a1<br> [0x800004b4]:sw a2, 136(sp)<br>    |
|  54|[0x800032d8]<br>0x00155555|- rs1_val == 1431655765<br>                                                                                                                                                              |[0x800004c4]:sra a2, a0, a1<br> [0x800004c8]:sw a2, 140(sp)<br>    |
|  55|[0x800032dc]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                     |[0x800004d4]:sra a2, a0, a1<br> [0x800004d8]:sw a2, 144(sp)<br>    |
|  56|[0x800032e0]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                |[0x800004e4]:sra a2, a0, a1<br> [0x800004e8]:sw a2, 148(sp)<br>    |
|  57|[0x800032e4]<br>0x00004000|- rs1_val == 134217728<br>                                                                                                                                                               |[0x800004f4]:sra a2, a0, a1<br> [0x800004f8]:sw a2, 152(sp)<br>    |
|  58|[0x800032e8]<br>0x04000000|- rs1_val == 268435456<br>                                                                                                                                                               |[0x80000504]:sra a2, a0, a1<br> [0x80000508]:sw a2, 156(sp)<br>    |
|  59|[0x800032ec]<br>0x02000000|- rs1_val == 536870912<br>                                                                                                                                                               |[0x80000514]:sra a2, a0, a1<br> [0x80000518]:sw a2, 160(sp)<br>    |
|  60|[0x800032f0]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                      |[0x80000524]:sra a2, a0, a1<br> [0x80000528]:sw a2, 164(sp)<br>    |
|  61|[0x800032f4]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                      |[0x80000534]:sra a2, a0, a1<br> [0x80000538]:sw a2, 168(sp)<br>    |
|  62|[0x800032f8]<br>0xFFFF5555|- rs1_val == -1431655766<br>                                                                                                                                                             |[0x80000548]:sra a2, a0, a1<br> [0x8000054c]:sw a2, 172(sp)<br>    |
|  63|[0x800032fc]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                      |[0x80000558]:sra a2, a0, a1<br> [0x8000055c]:sw a2, 176(sp)<br>    |
|  64|[0x80003300]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                      |[0x80000568]:sra a2, a0, a1<br> [0x8000056c]:sw a2, 180(sp)<br>    |
|  65|[0x80003304]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                                                                                     |[0x80000578]:sra a2, a0, a1<br> [0x8000057c]:sw a2, 184(sp)<br>    |
|  66|[0x80003308]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                     |[0x80000588]:sra a2, a0, a1<br> [0x8000058c]:sw a2, 188(sp)<br>    |
|  67|[0x8000330c]<br>0xFFFFFFFE|- rs1_val == -129<br>                                                                                                                                                                    |[0x80000598]:sra a2, a0, a1<br> [0x8000059c]:sw a2, 192(sp)<br>    |
|  68|[0x80003310]<br>0xFFFFFFBF|- rs1_val == -513<br>                                                                                                                                                                    |[0x800005a8]:sra a2, a0, a1<br> [0x800005ac]:sw a2, 196(sp)<br>    |
|  69|[0x80003314]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                   |[0x800005b8]:sra a2, a0, a1<br> [0x800005bc]:sw a2, 200(sp)<br>    |
|  70|[0x80003324]<br>0x00000000|- rs1_val == 524288<br>                                                                                                                                                                  |[0x800005fc]:sra a2, a0, a1<br> [0x80000600]:sw a2, 216(sp)<br>    |
