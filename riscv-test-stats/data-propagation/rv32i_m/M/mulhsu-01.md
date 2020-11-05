
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000870')]      |
| SIG_REGION                | [('0x80003204', '0x800033a4', '104 words')]      |
| COV_LABELS                | mulhsu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulhsu-01.S/mulhsu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 101      |
| STAT1                     | 99      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003a4]:mulhsu a2, a0, a1
      [0x800003a8]:sw a2, 16(ra)
 -- Signature Address: 0x800032a4 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000084c]:mulhsu a2, a0, a1
      [0x80000850]:sw a2, 264(ra)
 -- Signature Address: 0x8000339c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val == rs2_val
      - rs2_val == 32
      - rs1_val == 32






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

|s.no|        signature         |                                                                                                     coverpoints                                                                                                      |                                 code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFEFF|- opcode : mulhsu<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -257<br> - rs1_val == -257<br>                    |[0x80000108]:mulhsu a2, s8, s8<br> [0x8000010c]:sw a2, 0(fp)<br>      |
|   2|[0x80003214]<br>0xFFFFFFFE|- rs1 : x11<br> - rs2 : x11<br> - rd : x11<br> - rs1 == rs2 == rd<br> - rs2_val == -2<br> - rs1_val == -2<br>                                                                                                         |[0x80000118]:mulhsu a1, a1, a1<br> [0x8000011c]:sw a1, 4(fp)<br>      |
|   3|[0x80003218]<br>0x001FFFFF|- rs1 : x14<br> - rs2 : x1<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 4194304<br> - rs1_val == 2147483647<br> |[0x8000012c]:mulhsu a4, a4, ra<br> [0x80000130]:sw a4, 8(fp)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x4<br> - rs2 : x14<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -1431655766<br>                                         |[0x80000140]:mulhsu t6, tp, a4<br> [0x80000144]:sw t6, 12(fp)<br>     |
|   5|[0x80003220]<br>0x00000040|- rs1 : x12<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 128<br>                                                               |[0x80000150]:mulhsu a3, a2, a3<br> [0x80000154]:sw a3, 16(fp)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x7<br> - rs2 : x23<br> - rd : x2<br> - rs2_val == 0<br> - rs1_val == 4096<br>                                                                                                                                 |[0x80000160]:mulhsu sp, t2, s7<br> [0x80000164]:sw sp, 20(fp)<br>     |
|   7|[0x80003228]<br>0x000007FF|- rs1 : x16<br> - rs2 : x28<br> - rd : x15<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                                           |[0x80000174]:mulhsu a5, a6, t3<br> [0x80000178]:sw a5, 24(fp)<br>     |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x23<br> - rs2 : x15<br> - rd : x5<br> - rs2_val == 1<br> - rs1_val == 0<br>                                                                                                                                   |[0x80000184]:mulhsu t0, s7, a5<br> [0x80000188]:sw t0, 28(fp)<br>     |
|   9|[0x80003230]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x18<br> - rd : x7<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 32<br> - rs1_val == -5<br>                                                                                                |[0x80000194]:mulhsu t2, ra, s2<br> [0x80000198]:sw t2, 32(fp)<br>     |
|  10|[0x80003234]<br>0x00000000|- rs1 : x25<br> - rs2 : x6<br> - rd : x0<br> - rs1_val == 32<br>                                                                                                                                                      |[0x800001a4]:mulhsu zero, s9, t1<br> [0x800001a8]:sw zero, 36(fp)<br> |
|  11|[0x80003238]<br>0x00000001|- rs1 : x6<br> - rs2 : x12<br> - rd : x3<br> - rs2_val == -16777217<br> - rs1_val == 2<br>                                                                                                                            |[0x800001b8]:mulhsu gp, t1, a2<br> [0x800001bc]:sw gp, 40(fp)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x10<br> - rs2 : x4<br> - rd : x6<br> - rs2_val == 256<br> - rs1_val == 4<br>                                                                                                                                  |[0x800001c8]:mulhsu t1, a0, tp<br> [0x800001cc]:sw t1, 44(fp)<br>     |
|  13|[0x80003240]<br>0x00000007|- rs1 : x30<br> - rs2 : x20<br> - rd : x16<br> - rs2_val == -4194305<br> - rs1_val == 8<br>                                                                                                                           |[0x800001dc]:mulhsu a6, t5, s4<br> [0x800001e0]:sw a6, 48(fp)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x21<br> - rs2 : x26<br> - rd : x17<br> - rs2_val == 16384<br> - rs1_val == 16<br>                                                                                                                             |[0x800001ec]:mulhsu a7, s5, s10<br> [0x800001f0]:sw a7, 52(fp)<br>    |
|  15|[0x80003248]<br>0x0000000F|- rs1 : x5<br> - rs2 : x22<br> - rd : x28<br> - rs1_val == 64<br>                                                                                                                                                     |[0x80000200]:mulhsu t3, t0, s6<br> [0x80000204]:sw t3, 56(fp)<br>     |
|  16|[0x8000324c]<br>0x000000FF|- rs1 : x28<br> - rs2 : x10<br> - rd : x29<br> - rs2_val == -1025<br> - rs1_val == 256<br>                                                                                                                            |[0x80000210]:mulhsu t4, t3, a0<br> [0x80000214]:sw t4, 60(fp)<br>     |
|  17|[0x80003250]<br>0x000001FE|- rs1 : x31<br> - rs2 : x29<br> - rd : x19<br> - rs2_val == -8388609<br> - rs1_val == 512<br>                                                                                                                         |[0x80000224]:mulhsu s3, t6, t4<br> [0x80000228]:sw s3, 64(fp)<br>     |
|  18|[0x80003254]<br>0x000003FF|- rs1 : x26<br> - rs2 : x17<br> - rd : x4<br> - rs1_val == 1024<br>                                                                                                                                                   |[0x8000023c]:mulhsu tp, s10, a7<br> [0x80000240]:sw tp, 0(t1)<br>     |
|  19|[0x80003258]<br>0x00000040|- rs1 : x15<br> - rs2 : x9<br> - rd : x8<br> - rs2_val == 134217728<br> - rs1_val == 2048<br>                                                                                                                         |[0x80000250]:mulhsu fp, a5, s1<br> [0x80000254]:sw fp, 4(t1)<br>      |
|  20|[0x8000325c]<br>0x00001FFF|- rs1 : x8<br> - rs2 : x27<br> - rd : x22<br> - rs1_val == 8192<br>                                                                                                                                                   |[0x80000260]:mulhsu s6, fp, s11<br> [0x80000264]:sw s6, 8(t1)<br>     |
|  21|[0x80003260]<br>0x00003DFF|- rs1 : x27<br> - rs2 : x25<br> - rd : x23<br> - rs2_val == -134217729<br> - rs1_val == 16384<br>                                                                                                                     |[0x80000274]:mulhsu s7, s11, s9<br> [0x80000278]:sw s7, 12(t1)<br>    |
|  22|[0x80003264]<br>0x00000000|- rs1 : x0<br> - rs2 : x31<br> - rd : x25<br> - rs2_val == -8193<br>                                                                                                                                                  |[0x8000028c]:mulhsu s9, zero, t6<br> [0x80000290]:sw s9, 16(t1)<br>   |
|  23|[0x80003268]<br>0x0000FFFF|- rs1 : x18<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == -2049<br> - rs1_val == 65536<br>                                                                                                                            |[0x800002a0]:mulhsu ra, s2, sp<br> [0x800002a4]:sw ra, 20(t1)<br>     |
|  24|[0x8000326c]<br>0x0001FFFF|- rs1 : x19<br> - rs2 : x7<br> - rd : x24<br> - rs1_val == 131072<br>                                                                                                                                                 |[0x800002b0]:mulhsu s8, s3, t2<br> [0x800002b4]:sw s8, 24(t1)<br>     |
|  25|[0x80003270]<br>0x00000000|- rs1 : x22<br> - rs2 : x0<br> - rd : x18<br> - rs1_val == 262144<br>                                                                                                                                                 |[0x800002c0]:mulhsu s2, s6, zero<br> [0x800002c4]:sw s2, 28(t1)<br>   |
|  26|[0x80003274]<br>0x0007FFFF|- rs1 : x2<br> - rs2 : x8<br> - rd : x9<br> - rs1_val == 524288<br>                                                                                                                                                   |[0x800002d0]:mulhsu s1, sp, fp<br> [0x800002d4]:sw s1, 32(t1)<br>     |
|  27|[0x80003278]<br>0x000FDFFF|- rs1 : x20<br> - rs2 : x3<br> - rd : x10<br> - rs2_val == -33554433<br> - rs1_val == 1048576<br>                                                                                                                     |[0x800002e4]:mulhsu a0, s4, gp<br> [0x800002e8]:sw a0, 36(t1)<br>     |
|  28|[0x8000327c]<br>0x001FEFFF|- rs1 : x29<br> - rs2 : x30<br> - rd : x20<br> - rs1_val == 2097152<br>                                                                                                                                               |[0x800002f8]:mulhsu s4, t4, t5<br> [0x800002fc]:sw s4, 40(t1)<br>     |
|  29|[0x80003280]<br>0x003FFFFF|- rs1 : x9<br> - rs2 : x5<br> - rd : x27<br> - rs2_val == -9<br> - rs1_val == 4194304<br>                                                                                                                             |[0x80000308]:mulhsu s11, s1, t0<br> [0x8000030c]:sw s11, 44(t1)<br>   |
|  30|[0x80003284]<br>0x007FFFFF|- rs1 : x17<br> - rs2 : x21<br> - rd : x26<br> - rs2_val == -3<br> - rs1_val == 8388608<br>                                                                                                                           |[0x80000318]:mulhsu s10, a7, s5<br> [0x8000031c]:sw s10, 48(t1)<br>   |
|  31|[0x80003288]<br>0x00040000|- rs1 : x3<br> - rs2 : x16<br> - rd : x30<br> - rs2_val == 67108864<br> - rs1_val == 16777216<br>                                                                                                                     |[0x80000328]:mulhsu t5, gp, a6<br> [0x8000032c]:sw t5, 52(t1)<br>     |
|  32|[0x8000328c]<br>0x00000008|- rs1 : x13<br> - rs2 : x19<br> - rd : x21<br> - rs2_val == 1024<br> - rs1_val == 33554432<br>                                                                                                                        |[0x80000338]:mulhsu s5, a3, s3<br> [0x8000033c]:sw s5, 56(t1)<br>     |
|  33|[0x80003290]<br>0x00004000|- rs2_val == 1048576<br> - rs1_val == 67108864<br>                                                                                                                                                                    |[0x80000348]:mulhsu a2, a0, a1<br> [0x8000034c]:sw a2, 60(t1)<br>     |
|  34|[0x80003294]<br>0x00000008|- rs1_val == 134217728<br>                                                                                                                                                                                            |[0x80000360]:mulhsu a2, a0, a1<br> [0x80000364]:sw a2, 0(ra)<br>      |
|  35|[0x80003298]<br>0x0DFFFFFF|- rs2_val == -536870913<br> - rs1_val == 268435456<br>                                                                                                                                                                |[0x80000374]:mulhsu a2, a0, a1<br> [0x80000378]:sw a2, 4(ra)<br>      |
|  36|[0x8000329c]<br>0x1FFFFFFE|- rs1_val == 536870912<br>                                                                                                                                                                                            |[0x80000384]:mulhsu a2, a0, a1<br> [0x80000388]:sw a2, 8(ra)<br>      |
|  37|[0x800032a0]<br>0x3FFFFFFE|- rs1_val == 1073741824<br>                                                                                                                                                                                           |[0x80000394]:mulhsu a2, a0, a1<br> [0x80000398]:sw a2, 12(ra)<br>     |
|  38|[0x800032a8]<br>0xFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                                                                   |[0x800003b8]:mulhsu a2, a0, a1<br> [0x800003bc]:sw a2, 20(ra)<br>     |
|  39|[0x800032ac]<br>0xFFFFFFFF|- rs2_val == 8<br> - rs1_val == -9<br>                                                                                                                                                                                |[0x800003c8]:mulhsu a2, a0, a1<br> [0x800003cc]:sw a2, 24(ra)<br>     |
|  40|[0x800032b0]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                                                                                                                  |[0x800003dc]:mulhsu a2, a0, a1<br> [0x800003e0]:sw a2, 28(ra)<br>     |
|  41|[0x800032b4]<br>0xFFFFFFDF|- rs2_val == -67108865<br> - rs1_val == -33<br>                                                                                                                                                                       |[0x800003f0]:mulhsu a2, a0, a1<br> [0x800003f4]:sw a2, 32(ra)<br>     |
|  42|[0x800032b8]<br>0xFFFFFFEF|- rs1_val == -65<br>                                                                                                                                                                                                  |[0x80000404]:mulhsu a2, a0, a1<br> [0x80000408]:sw a2, 36(ra)<br>     |
|  43|[0x800032bc]<br>0xFFFFFFFB|- rs1_val == -129<br>                                                                                                                                                                                                 |[0x80000414]:mulhsu a2, a0, a1<br> [0x80000418]:sw a2, 40(ra)<br>     |
|  44|[0x800032c0]<br>0xFFFFFFBF|- rs2_val == 1073741824<br>                                                                                                                                                                                           |[0x80000424]:mulhsu a2, a0, a1<br> [0x80000428]:sw a2, 44(ra)<br>     |
|  45|[0x800032c4]<br>0x1FFF7FFF|- rs2_val == -262145<br>                                                                                                                                                                                              |[0x80000438]:mulhsu a2, a0, a1<br> [0x8000043c]:sw a2, 48(ra)<br>     |
|  46|[0x800032c8]<br>0xFE000FFF|- rs2_val == -524289<br> - rs1_val == -33554433<br>                                                                                                                                                                   |[0x80000450]:mulhsu a2, a0, a1<br> [0x80000454]:sw a2, 52(ra)<br>     |
|  47|[0x800032cc]<br>0x00000004|- rs2_val == -1048577<br>                                                                                                                                                                                             |[0x80000464]:mulhsu a2, a0, a1<br> [0x80000468]:sw a2, 56(ra)<br>     |
|  48|[0x800032d0]<br>0xFFFE003F|- rs2_val == -2097153<br> - rs1_val == -131073<br>                                                                                                                                                                    |[0x8000047c]:mulhsu a2, a0, a1<br> [0x80000480]:sw a2, 60(ra)<br>     |
|  49|[0x800032d4]<br>0x0000003B|- rs2_val == -268435457<br>                                                                                                                                                                                           |[0x80000490]:mulhsu a2, a0, a1<br> [0x80000494]:sw a2, 64(ra)<br>     |
|  50|[0x800032d8]<br>0x05FFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                                          |[0x800004a4]:mulhsu a2, a0, a1<br> [0x800004a8]:sw a2, 68(ra)<br>     |
|  51|[0x800032dc]<br>0xFFFFFFFD|- rs2_val == 1431655765<br>                                                                                                                                                                                           |[0x800004b8]:mulhsu a2, a0, a1<br> [0x800004bc]:sw a2, 72(ra)<br>     |
|  52|[0x800032e0]<br>0xFFFFFFFF|- rs2_val == 4096<br> - rs1_val == -513<br>                                                                                                                                                                           |[0x800004c8]:mulhsu a2, a0, a1<br> [0x800004cc]:sw a2, 76(ra)<br>     |
|  53|[0x800032e4]<br>0xFFFFFFFF|- rs2_val == 262144<br> - rs1_val == -1025<br>                                                                                                                                                                        |[0x800004d8]:mulhsu a2, a0, a1<br> [0x800004dc]:sw a2, 80(ra)<br>     |
|  54|[0x800032e8]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                                                                                |[0x800004ec]:mulhsu a2, a0, a1<br> [0x800004f0]:sw a2, 84(ra)<br>     |
|  55|[0x800032ec]<br>0xFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                                                                |[0x80000504]:mulhsu a2, a0, a1<br> [0x80000508]:sw a2, 88(ra)<br>     |
|  56|[0x800032f0]<br>0xFFFFFF7F|- rs1_val == -8193<br>                                                                                                                                                                                                |[0x80000518]:mulhsu a2, a0, a1<br> [0x8000051c]:sw a2, 92(ra)<br>     |
|  57|[0x800032f4]<br>0xFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                                                                               |[0x8000052c]:mulhsu a2, a0, a1<br> [0x80000530]:sw a2, 96(ra)<br>     |
|  58|[0x800032f8]<br>0xFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                                                                               |[0x80000540]:mulhsu a2, a0, a1<br> [0x80000544]:sw a2, 100(ra)<br>    |
|  59|[0x800032fc]<br>0xFFFFFFFF|- rs2_val == 128<br> - rs1_val == -65537<br>                                                                                                                                                                          |[0x80000554]:mulhsu a2, a0, a1<br> [0x80000558]:sw a2, 104(ra)<br>    |
|  60|[0x80003300]<br>0xFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                                                                              |[0x80000568]:mulhsu a2, a0, a1<br> [0x8000056c]:sw a2, 108(ra)<br>    |
|  61|[0x80003304]<br>0xFFF7FFFF|- rs2_val == -129<br> - rs1_val == -524289<br>                                                                                                                                                                        |[0x8000057c]:mulhsu a2, a0, a1<br> [0x80000580]:sw a2, 112(ra)<br>    |
|  62|[0x80003308]<br>0xFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                                             |[0x80000590]:mulhsu a2, a0, a1<br> [0x80000594]:sw a2, 116(ra)<br>    |
|  63|[0x8000330c]<br>0xFFE01FFF|- rs1_val == -2097153<br>                                                                                                                                                                                             |[0x800005a8]:mulhsu a2, a0, a1<br> [0x800005ac]:sw a2, 120(ra)<br>    |
|  64|[0x80003310]<br>0xFFFFFFFD|- rs2_val == 2048<br> - rs1_val == -4194305<br>                                                                                                                                                                       |[0x800005c0]:mulhsu a2, a0, a1<br> [0x800005c4]:sw a2, 124(ra)<br>    |
|  65|[0x80003314]<br>0xFFFFFFFB|- rs1_val == -8388609<br>                                                                                                                                                                                             |[0x800005d8]:mulhsu a2, a0, a1<br> [0x800005dc]:sw a2, 128(ra)<br>    |
|  66|[0x80003318]<br>0xFFFFFFFE|- rs1_val == -16777217<br>                                                                                                                                                                                            |[0x800005ec]:mulhsu a2, a0, a1<br> [0x800005f0]:sw a2, 132(ra)<br>    |
|  67|[0x8000331c]<br>0xFC00001F|- rs1_val == -67108865<br>                                                                                                                                                                                            |[0x80000604]:mulhsu a2, a0, a1<br> [0x80000608]:sw a2, 136(ra)<br>    |
|  68|[0x80003320]<br>0xF8FFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                           |[0x8000061c]:mulhsu a2, a0, a1<br> [0x80000620]:sw a2, 140(ra)<br>    |
|  69|[0x80003324]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                           |[0x80000630]:mulhsu a2, a0, a1<br> [0x80000634]:sw a2, 144(ra)<br>    |
|  70|[0x80003328]<br>0xFBFFFFFF|- rs2_val == 536870912<br> - rs1_val == -536870913<br>                                                                                                                                                                |[0x80000644]:mulhsu a2, a0, a1<br> [0x80000648]:sw a2, 148(ra)<br>    |
|  71|[0x8000332c]<br>0xFFFFBFFF|- rs2_val == 65536<br> - rs1_val == -1073741825<br>                                                                                                                                                                   |[0x80000658]:mulhsu a2, a0, a1<br> [0x8000065c]:sw a2, 152(ra)<br>    |
|  72|[0x80003330]<br>0x00000002|- rs1_val == 1431655765<br>                                                                                                                                                                                           |[0x8000066c]:mulhsu a2, a0, a1<br> [0x80000670]:sw a2, 156(ra)<br>    |
|  73|[0x80003334]<br>0xAAAAAAAC|- rs1_val == -1431655766<br>                                                                                                                                                                                          |[0x80000680]:mulhsu a2, a0, a1<br> [0x80000684]:sw a2, 160(ra)<br>    |
|  74|[0x80003338]<br>0xFFFFFFFF|- rs2_val == 2<br>                                                                                                                                                                                                    |[0x80000694]:mulhsu a2, a0, a1<br> [0x80000698]:sw a2, 164(ra)<br>    |
|  75|[0x8000333c]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                                                                    |[0x800006a4]:mulhsu a2, a0, a1<br> [0x800006a8]:sw a2, 168(ra)<br>    |
|  76|[0x80003340]<br>0xFFFFFFFF|- rs2_val == 16<br>                                                                                                                                                                                                   |[0x800006b8]:mulhsu a2, a0, a1<br> [0x800006bc]:sw a2, 172(ra)<br>    |
|  77|[0x80003344]<br>0xFFFFFFFF|- rs2_val == 64<br>                                                                                                                                                                                                   |[0x800006cc]:mulhsu a2, a0, a1<br> [0x800006d0]:sw a2, 176(ra)<br>    |
|  78|[0x80003348]<br>0xFFFFFFFF|- rs2_val == 512<br>                                                                                                                                                                                                  |[0x800006dc]:mulhsu a2, a0, a1<br> [0x800006e0]:sw a2, 180(ra)<br>    |
|  79|[0x8000334c]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                                                                 |[0x800006ec]:mulhsu a2, a0, a1<br> [0x800006f0]:sw a2, 184(ra)<br>    |
|  80|[0x80003350]<br>0x00000000|- rs2_val == 32768<br>                                                                                                                                                                                                |[0x800006fc]:mulhsu a2, a0, a1<br> [0x80000700]:sw a2, 188(ra)<br>    |
|  81|[0x80003354]<br>0xFFFFFFFF|- rs2_val == 131072<br>                                                                                                                                                                                               |[0x8000070c]:mulhsu a2, a0, a1<br> [0x80000710]:sw a2, 192(ra)<br>    |
|  82|[0x80003358]<br>0xFFFFFFFF|- rs2_val == 524288<br>                                                                                                                                                                                               |[0x8000071c]:mulhsu a2, a0, a1<br> [0x80000720]:sw a2, 196(ra)<br>    |
|  83|[0x8000335c]<br>0x00000000|- rs2_val == 2097152<br>                                                                                                                                                                                              |[0x8000072c]:mulhsu a2, a0, a1<br> [0x80000730]:sw a2, 200(ra)<br>    |
|  84|[0x80003360]<br>0x00000004|- rs2_val == 8388608<br>                                                                                                                                                                                              |[0x80000740]:mulhsu a2, a0, a1<br> [0x80000744]:sw a2, 204(ra)<br>    |
|  85|[0x80003364]<br>0xFFFFFFFD|- rs2_val == 16777216<br>                                                                                                                                                                                             |[0x80000750]:mulhsu a2, a0, a1<br> [0x80000754]:sw a2, 208(ra)<br>    |
|  86|[0x80003368]<br>0x00000080|- rs2_val == 33554432<br>                                                                                                                                                                                             |[0x80000760]:mulhsu a2, a0, a1<br> [0x80000764]:sw a2, 212(ra)<br>    |
|  87|[0x8000336c]<br>0xFFFFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                            |[0x80000770]:mulhsu a2, a0, a1<br> [0x80000774]:sw a2, 216(ra)<br>    |
|  88|[0x80003370]<br>0x0003FFFF|- rs2_val == -5<br>                                                                                                                                                                                                   |[0x80000780]:mulhsu a2, a0, a1<br> [0x80000784]:sw a2, 220(ra)<br>    |
|  89|[0x80003374]<br>0x00000003|- rs2_val == -17<br>                                                                                                                                                                                                  |[0x80000790]:mulhsu a2, a0, a1<br> [0x80000794]:sw a2, 224(ra)<br>    |
|  90|[0x80003378]<br>0xFFFFDFFF|- rs2_val == -33<br>                                                                                                                                                                                                  |[0x800007a4]:mulhsu a2, a0, a1<br> [0x800007a8]:sw a2, 228(ra)<br>    |
|  91|[0x8000337c]<br>0x00001FFF|- rs2_val == -65<br>                                                                                                                                                                                                  |[0x800007b4]:mulhsu a2, a0, a1<br> [0x800007b8]:sw a2, 232(ra)<br>    |
|  92|[0x80003380]<br>0xFFFFFFFD|- rs2_val == -513<br>                                                                                                                                                                                                 |[0x800007c4]:mulhsu a2, a0, a1<br> [0x800007c8]:sw a2, 236(ra)<br>    |
|  93|[0x80003384]<br>0xFFFFFFF9|- rs2_val == -4097<br>                                                                                                                                                                                                |[0x800007d8]:mulhsu a2, a0, a1<br> [0x800007dc]:sw a2, 240(ra)<br>    |
|  94|[0x80003388]<br>0xFFFFFFF6|- rs2_val == -16385<br>                                                                                                                                                                                               |[0x800007ec]:mulhsu a2, a0, a1<br> [0x800007f0]:sw a2, 244(ra)<br>    |
|  95|[0x8000338c]<br>0x7FFFBFFE|- rs2_val == -32769<br>                                                                                                                                                                                               |[0x80000804]:mulhsu a2, a0, a1<br> [0x80000808]:sw a2, 248(ra)<br>    |
|  96|[0x80003390]<br>0x00000000|- rs2_val == -65537<br>                                                                                                                                                                                               |[0x80000818]:mulhsu a2, a0, a1<br> [0x8000081c]:sw a2, 252(ra)<br>    |
|  97|[0x80003394]<br>0x000003FF|- rs2_val == -131073<br>                                                                                                                                                                                              |[0x8000082c]:mulhsu a2, a0, a1<br> [0x80000830]:sw a2, 256(ra)<br>    |
|  98|[0x80003398]<br>0x80000080|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                                                          |[0x8000083c]:mulhsu a2, a0, a1<br> [0x80000840]:sw a2, 260(ra)<br>    |
|  99|[0x800033a0]<br>0x00007FFF|- rs1_val == 32768<br>                                                                                                                                                                                                |[0x80000860]:mulhsu a2, a0, a1<br> [0x80000864]:sw a2, 268(ra)<br>    |
