
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
| SIG_REGION                | [('0x80003204', '0x800033a0', '103 words')]      |
| COV_LABELS                | and      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/and-01.S/and-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 100      |
| STAT1                     | 97      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000394]:and a2, a0, a1
      [0x80000398]:sw a2, 28(sp)
 -- Signature Address: 0x800032a0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : and
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648
      - rs1_val == 134217728




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:and a2, a0, a1
      [0x80000834]:sw a2, 276(sp)
 -- Signature Address: 0x80003398 Data: 0x00000080
 -- Redundant Coverpoints hit by the op
      - opcode : and
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -16777217
      - rs1_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000840]:and a2, a0, a1
      [0x80000844]:sw a2, 280(sp)
 -- Signature Address: 0x8000339c Data: 0x00000200
 -- Redundant Coverpoints hit by the op
      - opcode : and
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -65
      - rs1_val == 512






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

|s.no|        signature         |                                                                                                                coverpoints                                                                                                                 |                               code                               |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80003210]<br>0x80000000|- opcode : and<br> - rs1 : x19<br> - rs2 : x16<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -33554433<br> - rs1_val == -2147483648<br> |[0x8000010c]:and s3, s3, a6<br> [0x80000110]:sw s3, 0(a4)<br>     |
|   2|[0x80003214]<br>0xFFFFFFF8|- rs1 : x6<br> - rs2 : x6<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val<br>                                                                                                                                                |[0x8000011c]:and a0, t1, t1<br> [0x80000120]:sw a0, 4(a4)<br>     |
|   3|[0x80003218]<br>0x08000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 134217728<br> - rs1_val == 134217728<br>                                                                               |[0x80000130]:and s9, s9, s9<br> [0x80000134]:sw s9, 8(a4)<br>     |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x15<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs1_val == 1<br> - rs2_val == 256<br>                                                                                                                               |[0x80000140]:and s6, a5, s6<br> [0x80000144]:sw s6, 12(a4)<br>    |
|   5|[0x80003220]<br>0x80000000|- rs1 : x28<br> - rs2 : x10<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -129<br>                                                             |[0x80000150]:and s7, t3, a0<br> [0x80000154]:sw s7, 16(a4)<br>    |
|   6|[0x80003224]<br>0x00000000|- rs1 : x22<br> - rs2 : x2<br> - rd : x5<br> - rs2_val == 0<br> - rs1_val == -1025<br>                                                                                                                                                      |[0x80000160]:and t0, s6, sp<br> [0x80000164]:sw t0, 20(a4)<br>    |
|   7|[0x80003228]<br>0x7FFFFFBF|- rs1 : x17<br> - rs2 : x4<br> - rd : x26<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -65<br>                                                                           |[0x80000174]:and s10, a7, tp<br> [0x80000178]:sw s10, 24(a4)<br>  |
|   8|[0x8000322c]<br>0x00000001|- rs1 : x9<br> - rs2 : x3<br> - rd : x21<br> - rs2_val == 1<br> - rs1_val == -268435457<br>                                                                                                                                                 |[0x80000188]:and s5, s1, gp<br> [0x8000018c]:sw s5, 28(a4)<br>    |
|   9|[0x80003230]<br>0x00000003|- rs1 : x11<br> - rs2 : x8<br> - rd : x2<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -4194305<br>                                                                                                                                    |[0x8000019c]:and sp, a1, fp<br> [0x800001a0]:sw sp, 32(a4)<br>    |
|  10|[0x80003234]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x24<br> - rd : x29<br>                                                                                                                                                                                              |[0x800001ac]:and t4, s2, s8<br> [0x800001b0]:sw t4, 36(a4)<br>    |
|  11|[0x80003238]<br>0x00000000|- rs1 : x7<br> - rs2 : x1<br> - rd : x3<br> - rs2_val == 2048<br> - rs1_val == 2<br>                                                                                                                                                        |[0x800001c0]:and gp, t2, ra<br> [0x800001c4]:sw gp, 40(a4)<br>    |
|  12|[0x8000323c]<br>0x00000004|- rs1 : x5<br> - rs2 : x7<br> - rd : x31<br> - rs2_val == 4<br> - rs1_val == 4<br>                                                                                                                                                          |[0x800001d0]:and t6, t0, t2<br> [0x800001d4]:sw t6, 44(a4)<br>    |
|  13|[0x80003240]<br>0x00000008|- rs1 : x26<br> - rs2 : x12<br> - rd : x24<br> - rs2_val == -16385<br> - rs1_val == 8<br>                                                                                                                                                   |[0x800001e4]:and s8, s10, a2<br> [0x800001e8]:sw s8, 48(a4)<br>   |
|  14|[0x80003244]<br>0x00000010|- rs1 : x13<br> - rs2 : x29<br> - rd : x30<br> - rs2_val == -268435457<br> - rs1_val == 16<br>                                                                                                                                              |[0x800001f8]:and t5, a3, t4<br> [0x800001fc]:sw t5, 52(a4)<br>    |
|  15|[0x80003248]<br>0x00000000|- rs1 : x14<br> - rs2 : x31<br> - rd : x11<br> - rs1_val == 32<br>                                                                                                                                                                          |[0x80000210]:and a1, a4, t6<br> [0x80000214]:sw a1, 0(a0)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x23<br> - rs2 : x26<br> - rd : x17<br> - rs2_val == 4194304<br> - rs1_val == 64<br>                                                                                                                                                 |[0x80000220]:and a7, s7, s10<br> [0x80000224]:sw a7, 4(a0)<br>    |
|  17|[0x80003250]<br>0x00000000|- rs1 : x21<br> - rs2 : x13<br> - rd : x0<br> - rs2_val == -16777217<br> - rs1_val == 128<br>                                                                                                                                               |[0x80000234]:and zero, s5, a3<br> [0x80000238]:sw zero, 8(a0)<br> |
|  18|[0x80003254]<br>0x00000000|- rs1 : x0<br> - rs2 : x28<br> - rd : x6<br> - rs1_val == 0<br>                                                                                                                                                                             |[0x80000248]:and t1, zero, t3<br> [0x8000024c]:sw t1, 12(a0)<br>  |
|  19|[0x80003258]<br>0x00000000|- rs1 : x30<br> - rs2 : x0<br> - rd : x8<br> - rs1_val == 512<br>                                                                                                                                                                           |[0x80000258]:and fp, t5, zero<br> [0x8000025c]:sw fp, 16(a0)<br>  |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x24<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 2<br> - rs1_val == 1024<br>                                                                                                                                                     |[0x80000268]:and a6, s8, a5<br> [0x8000026c]:sw a6, 20(a0)<br>    |
|  21|[0x80003260]<br>0x00000000|- rs1 : x20<br> - rs2 : x23<br> - rd : x18<br> - rs1_val == 2048<br>                                                                                                                                                                        |[0x8000027c]:and s2, s4, s7<br> [0x80000280]:sw s2, 24(a0)<br>    |
|  22|[0x80003264]<br>0x00001000|- rs1 : x8<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == -65537<br> - rs1_val == 4096<br>                                                                                                                                                 |[0x80000290]:and a2, fp, a1<br> [0x80000294]:sw a2, 28(a0)<br>    |
|  23|[0x80003268]<br>0x00002000|- rs1 : x2<br> - rs2 : x17<br> - rd : x14<br> - rs2_val == -2049<br> - rs1_val == 8192<br>                                                                                                                                                  |[0x800002a4]:and a4, sp, a7<br> [0x800002a8]:sw a4, 32(a0)<br>    |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x3<br> - rs2 : x5<br> - rd : x13<br> - rs1_val == 16384<br>                                                                                                                                                                         |[0x800002b4]:and a3, gp, t0<br> [0x800002b8]:sw a3, 36(a0)<br>    |
|  25|[0x80003270]<br>0x00008000|- rs1 : x31<br> - rs2 : x30<br> - rd : x1<br> - rs1_val == 32768<br>                                                                                                                                                                        |[0x800002c4]:and ra, t6, t5<br> [0x800002c8]:sw ra, 40(a0)<br>    |
|  26|[0x80003274]<br>0x00000000|- rs1 : x16<br> - rs2 : x19<br> - rd : x9<br> - rs1_val == 65536<br>                                                                                                                                                                        |[0x800002d4]:and s1, a6, s3<br> [0x800002d8]:sw s1, 44(a0)<br>    |
|  27|[0x80003278]<br>0x00000000|- rs1 : x12<br> - rs2 : x27<br> - rd : x4<br> - rs2_val == 33554432<br> - rs1_val == 131072<br>                                                                                                                                             |[0x800002e4]:and tp, a2, s11<br> [0x800002e8]:sw tp, 48(a0)<br>   |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x4<br> - rs2 : x18<br> - rd : x20<br> - rs2_val == 131072<br> - rs1_val == 262144<br>                                                                                                                                               |[0x800002f4]:and s4, tp, s2<br> [0x800002f8]:sw s4, 52(a0)<br>    |
|  29|[0x80003280]<br>0x00080000|- rs1 : x29<br> - rs2 : x14<br> - rd : x7<br> - rs2_val == -8388609<br> - rs1_val == 524288<br>                                                                                                                                             |[0x80000308]:and t2, t4, a4<br> [0x8000030c]:sw t2, 56(a0)<br>    |
|  30|[0x80003284]<br>0x00000000|- rs1 : x27<br> - rs2 : x21<br> - rd : x28<br> - rs2_val == 16777216<br> - rs1_val == 1048576<br>                                                                                                                                           |[0x80000320]:and t3, s11, s5<br> [0x80000324]:sw t3, 0(sp)<br>    |
|  31|[0x80003288]<br>0x00000000|- rs1 : x10<br> - rs2 : x9<br> - rd : x27<br> - rs1_val == 2097152<br>                                                                                                                                                                      |[0x80000330]:and s11, a0, s1<br> [0x80000334]:sw s11, 4(sp)<br>   |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x1<br> - rs2 : x20<br> - rd : x15<br> - rs2_val == 32<br> - rs1_val == 4194304<br>                                                                                                                                                  |[0x80000340]:and a5, ra, s4<br> [0x80000344]:sw a5, 8(sp)<br>     |
|  33|[0x80003290]<br>0x00800000|- rs1_val == 8388608<br>                                                                                                                                                                                                                    |[0x80000350]:and a2, a0, a1<br> [0x80000354]:sw a2, 12(sp)<br>    |
|  34|[0x80003294]<br>0x01000000|- rs2_val == -67108865<br> - rs1_val == 16777216<br>                                                                                                                                                                                        |[0x80000364]:and a2, a0, a1<br> [0x80000368]:sw a2, 16(sp)<br>    |
|  35|[0x80003298]<br>0x02000000|- rs1_val == 33554432<br>                                                                                                                                                                                                                   |[0x80000374]:and a2, a0, a1<br> [0x80000378]:sw a2, 20(sp)<br>    |
|  36|[0x8000329c]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                                                   |[0x80000384]:and a2, a0, a1<br> [0x80000388]:sw a2, 24(sp)<br>    |
|  37|[0x800032a4]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                                                                  |[0x800003a4]:and a2, a0, a1<br> [0x800003a8]:sw a2, 32(sp)<br>    |
|  38|[0x800032a8]<br>0x00000000|- rs2_val == 268435456<br> - rs1_val == 536870912<br>                                                                                                                                                                                       |[0x800003b4]:and a2, a0, a1<br> [0x800003b8]:sw a2, 36(sp)<br>    |
|  39|[0x800032ac]<br>0x40000000|- rs2_val == -257<br> - rs1_val == 1073741824<br>                                                                                                                                                                                           |[0x800003c4]:and a2, a0, a1<br> [0x800003c8]:sw a2, 40(sp)<br>    |
|  40|[0x800032b0]<br>0xFFFBFFFE|- rs2_val == -262145<br> - rs1_val == -2<br>                                                                                                                                                                                                |[0x800003d8]:and a2, a0, a1<br> [0x800003dc]:sw a2, 44(sp)<br>    |
|  41|[0x800032b4]<br>0xFFFFFFBD|- rs2_val == -65<br> - rs1_val == -3<br>                                                                                                                                                                                                    |[0x800003e8]:and a2, a0, a1<br> [0x800003ec]:sw a2, 48(sp)<br>    |
|  42|[0x800032b8]<br>0xFFFFFFF8|- rs1_val == -5<br>                                                                                                                                                                                                                         |[0x800003f8]:and a2, a0, a1<br> [0x800003fc]:sw a2, 52(sp)<br>    |
|  43|[0x800032bc]<br>0x00000003|- rs1_val == -9<br>                                                                                                                                                                                                                         |[0x80000408]:and a2, a0, a1<br> [0x8000040c]:sw a2, 56(sp)<br>    |
|  44|[0x800032c0]<br>0xFFFFFEEF|- rs1_val == -17<br>                                                                                                                                                                                                                        |[0x80000418]:and a2, a0, a1<br> [0x8000041c]:sw a2, 60(sp)<br>    |
|  45|[0x800032c4]<br>0xFFFFFFDD|- rs2_val == -3<br> - rs1_val == -33<br>                                                                                                                                                                                                    |[0x80000428]:and a2, a0, a1<br> [0x8000042c]:sw a2, 64(sp)<br>    |
|  46|[0x800032c8]<br>0x20000000|- rs2_val == -524289<br>                                                                                                                                                                                                                    |[0x8000043c]:and a2, a0, a1<br> [0x80000440]:sw a2, 68(sp)<br>    |
|  47|[0x800032cc]<br>0xFFE7FFFF|- rs2_val == -1048577<br> - rs1_val == -524289<br>                                                                                                                                                                                          |[0x80000454]:and a2, a0, a1<br> [0x80000458]:sw a2, 72(sp)<br>    |
|  48|[0x800032d0]<br>0x00800000|- rs2_val == -2097153<br>                                                                                                                                                                                                                   |[0x80000468]:and a2, a0, a1<br> [0x8000046c]:sw a2, 76(sp)<br>    |
|  49|[0x800032d4]<br>0xF7DFFFFF|- rs2_val == -134217729<br> - rs1_val == -2097153<br>                                                                                                                                                                                       |[0x80000480]:and a2, a0, a1<br> [0x80000484]:sw a2, 80(sp)<br>    |
|  50|[0x800032d8]<br>0xDFFFFFFF|- rs2_val == -536870913<br> - rs1_val == -536870913<br>                                                                                                                                                                                     |[0x80000498]:and a2, a0, a1<br> [0x8000049c]:sw a2, 84(sp)<br>    |
|  51|[0x800032dc]<br>0xBFFFFEFF|- rs2_val == -1073741825<br> - rs1_val == -257<br>                                                                                                                                                                                          |[0x800004ac]:and a2, a0, a1<br> [0x800004b0]:sw a2, 88(sp)<br>    |
|  52|[0x800032e0]<br>0x00004000|- rs2_val == 1431655765<br>                                                                                                                                                                                                                 |[0x800004c0]:and a2, a0, a1<br> [0x800004c4]:sw a2, 92(sp)<br>    |
|  53|[0x800032e4]<br>0x00000000|- rs2_val == -1431655766<br>                                                                                                                                                                                                                |[0x800004d4]:and a2, a0, a1<br> [0x800004d8]:sw a2, 96(sp)<br>    |
|  54|[0x800032e8]<br>0x55555555|- rs1_val == -513<br>                                                                                                                                                                                                                       |[0x800004e8]:and a2, a0, a1<br> [0x800004ec]:sw a2, 100(sp)<br>   |
|  55|[0x800032ec]<br>0xAAAAA2AA|- rs1_val == -2049<br>                                                                                                                                                                                                                      |[0x80000500]:and a2, a0, a1<br> [0x80000504]:sw a2, 104(sp)<br>   |
|  56|[0x800032f0]<br>0x00000400|- rs2_val == 1024<br> - rs1_val == -4097<br>                                                                                                                                                                                                |[0x80000514]:and a2, a0, a1<br> [0x80000518]:sw a2, 108(sp)<br>   |
|  57|[0x800032f4]<br>0xFFFFDFBF|- rs1_val == -8193<br>                                                                                                                                                                                                                      |[0x80000528]:and a2, a0, a1<br> [0x8000052c]:sw a2, 112(sp)<br>   |
|  58|[0x800032f8]<br>0xFFFDBFFF|- rs2_val == -131073<br> - rs1_val == -16385<br>                                                                                                                                                                                            |[0x80000540]:and a2, a0, a1<br> [0x80000544]:sw a2, 116(sp)<br>   |
|  59|[0x800032fc]<br>0x00000000|- rs2_val == 32768<br> - rs1_val == -32769<br>                                                                                                                                                                                              |[0x80000554]:and a2, a0, a1<br> [0x80000558]:sw a2, 120(sp)<br>   |
|  60|[0x80003300]<br>0x00000100|- rs1_val == -65537<br>                                                                                                                                                                                                                     |[0x80000568]:and a2, a0, a1<br> [0x8000056c]:sw a2, 124(sp)<br>   |
|  61|[0x80003304]<br>0x00000400|- rs1_val == -131073<br>                                                                                                                                                                                                                    |[0x8000057c]:and a2, a0, a1<br> [0x80000580]:sw a2, 128(sp)<br>   |
|  62|[0x80003308]<br>0xFFFBFFBF|- rs1_val == -262145<br>                                                                                                                                                                                                                    |[0x80000590]:and a2, a0, a1<br> [0x80000594]:sw a2, 132(sp)<br>   |
|  63|[0x8000330c]<br>0xFFEFEFFF|- rs2_val == -4097<br> - rs1_val == -1048577<br>                                                                                                                                                                                            |[0x800005a8]:and a2, a0, a1<br> [0x800005ac]:sw a2, 136(sp)<br>   |
|  64|[0x80003310]<br>0x08000000|- rs1_val == -4194305<br>                                                                                                                                                                                                                   |[0x800005bc]:and a2, a0, a1<br> [0x800005c0]:sw a2, 140(sp)<br>   |
|  65|[0x80003314]<br>0x3F7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                                   |[0x800005d4]:and a2, a0, a1<br> [0x800005d8]:sw a2, 144(sp)<br>   |
|  66|[0x80003318]<br>0xFEFFF7FF|- rs1_val == -16777217<br>                                                                                                                                                                                                                  |[0x800005ec]:and a2, a0, a1<br> [0x800005f0]:sw a2, 148(sp)<br>   |
|  67|[0x8000331c]<br>0x20000000|- rs2_val == 536870912<br> - rs1_val == -33554433<br>                                                                                                                                                                                       |[0x80000600]:and a2, a0, a1<br> [0x80000604]:sw a2, 152(sp)<br>   |
|  68|[0x80003320]<br>0x00000006|- rs1_val == -67108865<br>                                                                                                                                                                                                                  |[0x80000614]:and a2, a0, a1<br> [0x80000618]:sw a2, 156(sp)<br>   |
|  69|[0x80003324]<br>0x04000000|- rs2_val == 67108864<br> - rs1_val == -134217729<br>                                                                                                                                                                                       |[0x80000628]:and a2, a0, a1<br> [0x8000062c]:sw a2, 160(sp)<br>   |
|  70|[0x80003328]<br>0x00000080|- rs2_val == 128<br> - rs1_val == -1073741825<br>                                                                                                                                                                                           |[0x8000063c]:and a2, a0, a1<br> [0x80000640]:sw a2, 164(sp)<br>   |
|  71|[0x8000332c]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                                                                                                 |[0x80000650]:and a2, a0, a1<br> [0x80000654]:sw a2, 168(sp)<br>   |
|  72|[0x80003330]<br>0x20000000|- rs1_val == -1431655766<br>                                                                                                                                                                                                                |[0x80000664]:and a2, a0, a1<br> [0x80000668]:sw a2, 172(sp)<br>   |
|  73|[0x80003334]<br>0x00000008|- rs2_val == 8<br>                                                                                                                                                                                                                          |[0x80000678]:and a2, a0, a1<br> [0x8000067c]:sw a2, 176(sp)<br>   |
|  74|[0x80003338]<br>0x00000000|- rs2_val == 16<br>                                                                                                                                                                                                                         |[0x80000688]:and a2, a0, a1<br> [0x8000068c]:sw a2, 180(sp)<br>   |
|  75|[0x8000333c]<br>0x00000000|- rs2_val == 64<br>                                                                                                                                                                                                                         |[0x80000698]:and a2, a0, a1<br> [0x8000069c]:sw a2, 184(sp)<br>   |
|  76|[0x80003340]<br>0x00000200|- rs2_val == 512<br>                                                                                                                                                                                                                        |[0x800006ac]:and a2, a0, a1<br> [0x800006b0]:sw a2, 188(sp)<br>   |
|  77|[0x80003344]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                                                                                                                       |[0x800006bc]:and a2, a0, a1<br> [0x800006c0]:sw a2, 192(sp)<br>   |
|  78|[0x80003348]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                                                                                                                       |[0x800006d0]:and a2, a0, a1<br> [0x800006d4]:sw a2, 196(sp)<br>   |
|  79|[0x8000334c]<br>0x00000000|- rs2_val == 16384<br>                                                                                                                                                                                                                      |[0x800006e0]:and a2, a0, a1<br> [0x800006e4]:sw a2, 200(sp)<br>   |
|  80|[0x80003350]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                                                                                                                      |[0x800006f0]:and a2, a0, a1<br> [0x800006f4]:sw a2, 204(sp)<br>   |
|  81|[0x80003354]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                                     |[0x80000700]:and a2, a0, a1<br> [0x80000704]:sw a2, 208(sp)<br>   |
|  82|[0x80003358]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                                                                                     |[0x80000710]:and a2, a0, a1<br> [0x80000714]:sw a2, 212(sp)<br>   |
|  83|[0x8000335c]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                                                                                                                    |[0x80000724]:and a2, a0, a1<br> [0x80000728]:sw a2, 216(sp)<br>   |
|  84|[0x80003360]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                                                                                                                    |[0x80000734]:and a2, a0, a1<br> [0x80000738]:sw a2, 220(sp)<br>   |
|  85|[0x80003364]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                                                                                                                    |[0x80000744]:and a2, a0, a1<br> [0x80000748]:sw a2, 224(sp)<br>   |
|  86|[0x80003368]<br>0x00000000|- rs2_val == 1073741824<br>                                                                                                                                                                                                                 |[0x80000758]:and a2, a0, a1<br> [0x8000075c]:sw a2, 228(sp)<br>   |
|  87|[0x8000336c]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                                                                                                         |[0x80000768]:and a2, a0, a1<br> [0x8000076c]:sw a2, 232(sp)<br>   |
|  88|[0x80003370]<br>0xFFFFFFF8|- rs2_val == -5<br>                                                                                                                                                                                                                         |[0x80000778]:and a2, a0, a1<br> [0x8000077c]:sw a2, 236(sp)<br>   |
|  89|[0x80003374]<br>0xFFFFFFE7|- rs2_val == -9<br>                                                                                                                                                                                                                         |[0x80000788]:and a2, a0, a1<br> [0x8000078c]:sw a2, 240(sp)<br>   |
|  90|[0x80003378]<br>0xFFFFFFEB|- rs2_val == -17<br>                                                                                                                                                                                                                        |[0x80000798]:and a2, a0, a1<br> [0x8000079c]:sw a2, 244(sp)<br>   |
|  91|[0x8000337c]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                                                                                                                        |[0x800007a8]:and a2, a0, a1<br> [0x800007ac]:sw a2, 248(sp)<br>   |
|  92|[0x80003380]<br>0x00000100|- rs2_val == -129<br> - rs1_val == 256<br>                                                                                                                                                                                                  |[0x800007b8]:and a2, a0, a1<br> [0x800007bc]:sw a2, 252(sp)<br>   |
|  93|[0x80003384]<br>0x00400000|- rs2_val == -1025<br>                                                                                                                                                                                                                      |[0x800007c8]:and a2, a0, a1<br> [0x800007cc]:sw a2, 256(sp)<br>   |
|  94|[0x80003388]<br>0xFFF7DFFF|- rs2_val == -8193<br>                                                                                                                                                                                                                      |[0x800007e0]:and a2, a0, a1<br> [0x800007e4]:sw a2, 260(sp)<br>   |
|  95|[0x8000338c]<br>0xFFBF7FFF|- rs2_val == -32769<br>                                                                                                                                                                                                                     |[0x800007f8]:and a2, a0, a1<br> [0x800007fc]:sw a2, 264(sp)<br>   |
|  96|[0x80003390]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                                                                                                       |[0x80000808]:and a2, a0, a1<br> [0x8000080c]:sw a2, 268(sp)<br>   |
|  97|[0x80003394]<br>0x08000000|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                                                                                                                |[0x8000081c]:and a2, a0, a1<br> [0x80000820]:sw a2, 272(sp)<br>   |
