
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000830')]      |
| SIG_REGION                | [('0x80003204', '0x8000338c', '98 words')]      |
| COV_LABELS                | sub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sub-01.S/sub-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 98      |
| STAT1                     | 96      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000818]:sub a2, a0, a1
      [0x8000081c]:sw a2, 256(ra)
 -- Signature Address: 0x80003384 Data: 0xFDFFDFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 33554432
      - rs1_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000828]:sub a2, a0, a1
      [0x8000082c]:sw a2, 260(ra)
 -- Signature Address: 0x80003388 Data: 0xFFF00400
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1048576
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

|s.no|        signature         |                                                                                              coverpoints                                                                                              |                               code                               |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : sub<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -16777217<br> - rs1_val == -16777217<br> |[0x8000010c]:sub tp, t1, t1<br> [0x80000110]:sw tp, 0(a1)<br>     |
|   2|[0x80003208]<br>0xFFFFFFF7|- rs1 : x19<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br>                                                                                      |[0x8000011c]:sub s4, s3, s4<br> [0x80000120]:sw s4, 4(a1)<br>     |
|   3|[0x8000320c]<br>0x7FFFBFFF|- rs1 : x3<br> - rs2 : x8<br> - rd : x3<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 16384<br> - rs1_val == 2147483647<br>               |[0x80000130]:sub gp, gp, fp<br> [0x80000134]:sw gp, 8(a1)<br>     |
|   4|[0x80003210]<br>0x00000000|- rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs2_val == -129<br> - rs1_val == -129<br>                                                                                      |[0x80000140]:sub a3, a3, a3<br> [0x80000144]:sw a3, 12(a1)<br>    |
|   5|[0x80003214]<br>0x7FFFFFFF|- rs1 : x4<br> - rs2 : x21<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                               |[0x80000150]:sub t5, tp, s5<br> [0x80000154]:sw t5, 16(a1)<br>    |
|   6|[0x80003218]<br>0xFFFFFBFF|- rs1 : x9<br> - rs2 : x23<br> - rd : x2<br> - rs2_val == 0<br> - rs1_val == -1025<br>                                                                                                                 |[0x80000160]:sub sp, s1, s7<br> [0x80000164]:sw sp, 20(a1)<br>    |
|   7|[0x8000321c]<br>0x80020001|- rs1 : x30<br> - rs2 : x16<br> - rd : x1<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 131072<br>                                                                     |[0x80000174]:sub ra, t5, a6<br> [0x80000178]:sw ra, 24(a1)<br>    |
|   8|[0x80003220]<br>0xFFFFFFFF|- rs1 : x0<br> - rs2 : x4<br> - rd : x10<br> - rs2_val == 1<br>                                                                                                                                        |[0x80000184]:sub a0, zero, tp<br> [0x80000188]:sw a0, 28(a1)<br>  |
|   9|[0x80003224]<br>0xFFFFDFFF|- rs1 : x22<br> - rs2 : x0<br> - rd : x25<br> - rs1_val == -8193<br>                                                                                                                                   |[0x8000019c]:sub s9, s6, zero<br> [0x800001a0]:sw s9, 32(a1)<br>  |
|  10|[0x80003228]<br>0xC0000003|- rs1 : x29<br> - rs2 : x10<br> - rd : x28<br> - rs1_val == 2<br>                                                                                                                                      |[0x800001b0]:sub t3, t4, a0<br> [0x800001b4]:sw t3, 36(a1)<br>    |
|  11|[0x8000322c]<br>0x40000005|- rs1 : x24<br> - rs2 : x27<br> - rd : x18<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -1073741825<br> - rs1_val == 4<br>                                                                       |[0x800001c4]:sub s2, s8, s11<br> [0x800001c8]:sw s2, 40(a1)<br>   |
|  12|[0x80003230]<br>0x00000000|- rs1 : x14<br> - rs2 : x25<br> - rd : x17<br> - rs2_val == 8<br> - rs1_val == 8<br>                                                                                                                   |[0x800001d4]:sub a7, a4, s9<br> [0x800001d8]:sw a7, 44(a1)<br>    |
|  13|[0x80003234]<br>0x00008011|- rs1 : x17<br> - rs2 : x18<br> - rd : x7<br> - rs2_val == -32769<br> - rs1_val == 16<br>                                                                                                              |[0x800001e8]:sub t2, a7, s2<br> [0x800001ec]:sw t2, 48(a1)<br>    |
|  14|[0x80003238]<br>0xAAAAAACB|- rs1 : x28<br> - rs2 : x5<br> - rd : x15<br> - rs2_val == 1431655765<br> - rs1_val == 32<br>                                                                                                          |[0x800001fc]:sub a5, t3, t0<br> [0x80000200]:sw a5, 52(a1)<br>    |
|  15|[0x8000323c]<br>0x00040041|- rs1 : x5<br> - rs2 : x14<br> - rd : x27<br> - rs2_val == -262145<br> - rs1_val == 64<br>                                                                                                             |[0x80000210]:sub s11, t0, a4<br> [0x80000214]:sw s11, 56(a1)<br>  |
|  16|[0x80003240]<br>0x0000007A|- rs1 : x16<br> - rs2 : x7<br> - rd : x8<br> - rs1_val == 128<br>                                                                                                                                      |[0x80000220]:sub fp, a6, t2<br> [0x80000224]:sw fp, 60(a1)<br>    |
|  17|[0x80003244]<br>0xF8000100|- rs1 : x31<br> - rs2 : x17<br> - rd : x23<br> - rs2_val == 134217728<br> - rs1_val == 256<br>                                                                                                         |[0x80000230]:sub s7, t6, a7<br> [0x80000234]:sw s7, 64(a1)<br>    |
|  18|[0x80003248]<br>0xFFFF0200|- rs1 : x12<br> - rs2 : x11<br> - rd : x31<br> - rs2_val == 65536<br> - rs1_val == 512<br>                                                                                                             |[0x80000248]:sub t6, a2, a1<br> [0x8000024c]:sw t6, 0(tp)<br>     |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x7<br> - rs2 : x29<br> - rd : x0<br> - rs2_val == 1048576<br> - rs1_val == 1024<br>                                                                                                            |[0x80000258]:sub zero, t2, t4<br> [0x8000025c]:sw zero, 4(tp)<br> |
|  20|[0x80003250]<br>0xFF000800|- rs1 : x26<br> - rs2 : x28<br> - rd : x12<br> - rs2_val == 16777216<br> - rs1_val == 2048<br>                                                                                                         |[0x8000026c]:sub a2, s10, t3<br> [0x80000270]:sw a2, 8(tp)<br>    |
|  21|[0x80003254]<br>0x20001001|- rs1 : x20<br> - rs2 : x9<br> - rd : x24<br> - rs2_val == -536870913<br> - rs1_val == 4096<br>                                                                                                        |[0x80000280]:sub s8, s4, s1<br> [0x80000284]:sw s8, 12(tp)<br>    |
|  22|[0x80003258]<br>0xFF002000|- rs1 : x21<br> - rs2 : x3<br> - rd : x22<br> - rs1_val == 8192<br>                                                                                                                                    |[0x80000290]:sub s6, s5, gp<br> [0x80000294]:sw s6, 16(tp)<br>    |
|  23|[0x8000325c]<br>0x40004001|- rs1 : x25<br> - rs2 : x15<br> - rd : x14<br> - rs1_val == 16384<br>                                                                                                                                  |[0x800002a4]:sub a4, s9, a5<br> [0x800002a8]:sw a4, 20(tp)<br>    |
|  24|[0x80003260]<br>0x80008000|- rs1 : x8<br> - rs2 : x2<br> - rd : x11<br> - rs1_val == 32768<br>                                                                                                                                    |[0x800002b4]:sub a1, fp, sp<br> [0x800002b8]:sw a1, 24(tp)<br>    |
|  25|[0x80003264]<br>0x00010006|- rs1 : x1<br> - rs2 : x22<br> - rd : x6<br> - rs1_val == 65536<br>                                                                                                                                    |[0x800002c4]:sub t1, ra, s6<br> [0x800002c8]:sw t1, 28(tp)<br>    |
|  26|[0x80003268]<br>0x00040001|- rs1 : x11<br> - rs2 : x24<br> - rd : x5<br> - rs1_val == 262144<br>                                                                                                                                  |[0x800002d4]:sub t0, a1, s8<br> [0x800002d8]:sw t0, 32(tp)<br>    |
|  27|[0x8000326c]<br>0x0007FFF7|- rs1 : x27<br> - rs2 : x19<br> - rd : x21<br> - rs1_val == 524288<br>                                                                                                                                 |[0x800002e4]:sub s5, s11, s3<br> [0x800002e8]:sw s5, 36(tp)<br>   |
|  28|[0x80003270]<br>0x00100004|- rs1 : x10<br> - rs2 : x31<br> - rd : x19<br> - rs1_val == 1048576<br>                                                                                                                                |[0x800002f4]:sub s3, a0, t6<br> [0x800002f8]:sw s3, 40(tp)<br>    |
|  29|[0x80003274]<br>0x00200401|- rs1 : x18<br> - rs2 : x1<br> - rd : x9<br> - rs2_val == -1025<br> - rs1_val == 2097152<br>                                                                                                           |[0x80000304]:sub s1, s2, ra<br> [0x80000308]:sw s1, 44(tp)<br>    |
|  30|[0x80003278]<br>0x55955556|- rs1 : x2<br> - rs2 : x12<br> - rd : x26<br> - rs2_val == -1431655766<br> - rs1_val == 4194304<br>                                                                                                    |[0x80000318]:sub s10, sp, a2<br> [0x8000031c]:sw s10, 48(tp)<br>  |
|  31|[0x8000327c]<br>0x007FFC00|- rs1 : x15<br> - rs2 : x26<br> - rd : x16<br> - rs2_val == 1024<br> - rs1_val == 8388608<br>                                                                                                          |[0x80000328]:sub a6, a5, s10<br> [0x8000032c]:sw a6, 52(tp)<br>   |
|  32|[0x80003280]<br>0x0100000A|- rs1 : x23<br> - rs2 : x30<br> - rd : x29<br> - rs1_val == 16777216<br>                                                                                                                               |[0x80000338]:sub t4, s7, t5<br> [0x8000033c]:sw t4, 56(tp)<br>    |
|  33|[0x80003284]<br>0x01F80000|- rs2_val == 524288<br> - rs1_val == 33554432<br>                                                                                                                                                      |[0x80000350]:sub a2, a0, a1<br> [0x80000354]:sw a2, 0(ra)<br>     |
|  34|[0x80003288]<br>0x06000001|- rs2_val == -33554433<br> - rs1_val == 67108864<br>                                                                                                                                                   |[0x80000364]:sub a2, a0, a1<br> [0x80000368]:sw a2, 4(ra)<br>     |
|  35|[0x8000328c]<br>0x07FFFFF8|- rs1_val == 134217728<br>                                                                                                                                                                             |[0x80000374]:sub a2, a0, a1<br> [0x80000378]:sw a2, 8(ra)<br>     |
|  36|[0x80003290]<br>0x0FFC0000|- rs2_val == 262144<br> - rs1_val == 268435456<br>                                                                                                                                                     |[0x80000384]:sub a2, a0, a1<br> [0x80000388]:sw a2, 12(ra)<br>    |
|  37|[0x80003294]<br>0x20000009|- rs2_val == -9<br> - rs1_val == 536870912<br>                                                                                                                                                         |[0x80000394]:sub a2, a0, a1<br> [0x80000398]:sw a2, 16(ra)<br>    |
|  38|[0x80003298]<br>0x40000000|- rs1_val == 1073741824<br>                                                                                                                                                                            |[0x800003a4]:sub a2, a0, a1<br> [0x800003a8]:sw a2, 20(ra)<br>    |
|  39|[0x8000329c]<br>0x003FFFFF|- rs2_val == -4194305<br> - rs1_val == -2<br>                                                                                                                                                          |[0x800003b8]:sub a2, a0, a1<br> [0x800003bc]:sw a2, 24(ra)<br>    |
|  40|[0x800032a0]<br>0xFFFFFFED|- rs1_val < 0 and rs2_val > 0<br> - rs2_val == 16<br> - rs1_val == -3<br>                                                                                                                              |[0x800003c8]:sub a2, a0, a1<br> [0x800003cc]:sw a2, 28(ra)<br>    |
|  41|[0x800032a4]<br>0xFFFFFEFB|- rs2_val == 256<br> - rs1_val == -5<br>                                                                                                                                                               |[0x800003d8]:sub a2, a0, a1<br> [0x800003dc]:sw a2, 32(ra)<br>    |
|  42|[0x800032a8]<br>0x5555554D|- rs1_val == -9<br>                                                                                                                                                                                    |[0x800003ec]:sub a2, a0, a1<br> [0x800003f0]:sw a2, 36(ra)<br>    |
|  43|[0x800032ac]<br>0x0003FFF0|- rs1_val == -17<br>                                                                                                                                                                                   |[0x80000400]:sub a2, a0, a1<br> [0x80000404]:sw a2, 40(ra)<br>    |
|  44|[0x800032b0]<br>0x55555535|- rs1_val == -33<br>                                                                                                                                                                                   |[0x80000414]:sub a2, a0, a1<br> [0x80000418]:sw a2, 44(ra)<br>    |
|  45|[0x800032b4]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                                                                                   |[0x80000424]:sub a2, a0, a1<br> [0x80000428]:sw a2, 48(ra)<br>    |
|  46|[0x800032b8]<br>0x0007C000|- rs2_val == -524289<br> - rs1_val == -16385<br>                                                                                                                                                       |[0x8000043c]:sub a2, a0, a1<br> [0x80000440]:sw a2, 52(ra)<br>    |
|  47|[0x800032bc]<br>0x00108001|- rs2_val == -1048577<br>                                                                                                                                                                              |[0x80000450]:sub a2, a0, a1<br> [0x80000454]:sw a2, 56(ra)<br>    |
|  48|[0x800032c0]<br>0x00200081|- rs2_val == -2097153<br>                                                                                                                                                                              |[0x80000464]:sub a2, a0, a1<br> [0x80000468]:sw a2, 60(ra)<br>    |
|  49|[0x800032c4]<br>0xAB2AAAAB|- rs2_val == -8388609<br> - rs1_val == -1431655766<br>                                                                                                                                                 |[0x8000047c]:sub a2, a0, a1<br> [0x80000480]:sw a2, 64(ra)<br>    |
|  50|[0x800032c8]<br>0x03800000|- rs2_val == -67108865<br> - rs1_val == -8388609<br>                                                                                                                                                   |[0x80000494]:sub a2, a0, a1<br> [0x80000498]:sw a2, 68(ra)<br>    |
|  51|[0x800032cc]<br>0x07FC0000|- rs2_val == -134217729<br> - rs1_val == -262145<br>                                                                                                                                                   |[0x800004ac]:sub a2, a0, a1<br> [0x800004b0]:sw a2, 72(ra)<br>    |
|  52|[0x800032d0]<br>0xBAAAAAAB|- rs2_val == -268435457<br>                                                                                                                                                                            |[0x800004c4]:sub a2, a0, a1<br> [0x800004c8]:sw a2, 76(ra)<br>    |
|  53|[0x800032d4]<br>0xFFFFFFA0|- rs2_val == -33<br>                                                                                                                                                                                   |[0x800004d4]:sub a2, a0, a1<br> [0x800004d8]:sw a2, 80(ra)<br>    |
|  54|[0x800032d8]<br>0xFFFFFEF6|- rs1_val == -257<br>                                                                                                                                                                                  |[0x800004e4]:sub a2, a0, a1<br> [0x800004e8]:sw a2, 84(ra)<br>    |
|  55|[0x800032dc]<br>0xFFFBFDFF|- rs1_val == -513<br>                                                                                                                                                                                  |[0x800004f4]:sub a2, a0, a1<br> [0x800004f8]:sw a2, 88(ra)<br>    |
|  56|[0x800032e0]<br>0xFFFFF805|- rs1_val == -2049<br>                                                                                                                                                                                 |[0x80000508]:sub a2, a0, a1<br> [0x8000050c]:sw a2, 92(ra)<br>    |
|  57|[0x800032e4]<br>0xFFFFEFFE|- rs1_val == -4097<br>                                                                                                                                                                                 |[0x8000051c]:sub a2, a0, a1<br> [0x80000520]:sw a2, 96(ra)<br>    |
|  58|[0x800032e8]<br>0xFFFF3FFF|- rs1_val == -32769<br>                                                                                                                                                                                |[0x80000530]:sub a2, a0, a1<br> [0x80000534]:sw a2, 100(ra)<br>   |
|  59|[0x800032ec]<br>0xFFFF0100|- rs2_val == -257<br> - rs1_val == -65537<br>                                                                                                                                                          |[0x80000544]:sub a2, a0, a1<br> [0x80000548]:sw a2, 104(ra)<br>   |
|  60|[0x800032f0]<br>0xFFFE2000|- rs2_val == -8193<br> - rs1_val == -131073<br>                                                                                                                                                        |[0x8000055c]:sub a2, a0, a1<br> [0x80000560]:sw a2, 108(ra)<br>   |
|  61|[0x800032f4]<br>0xFFF7DFFF|- rs2_val == 8192<br> - rs1_val == -524289<br>                                                                                                                                                         |[0x80000570]:sub a2, a0, a1<br> [0x80000574]:sw a2, 112(ra)<br>   |
|  62|[0x800032f8]<br>0xEFEFFFFF|- rs2_val == 268435456<br> - rs1_val == -1048577<br>                                                                                                                                                   |[0x80000584]:sub a2, a0, a1<br> [0x80000588]:sw a2, 116(ra)<br>   |
|  63|[0x800032fc]<br>0xFFE00001|- rs2_val == -2<br> - rs1_val == -2097153<br>                                                                                                                                                          |[0x80000598]:sub a2, a0, a1<br> [0x8000059c]:sw a2, 120(ra)<br>   |
|  64|[0x80003300]<br>0xFFBFFBFF|- rs1_val == -4194305<br>                                                                                                                                                                              |[0x800005ac]:sub a2, a0, a1<br> [0x800005b0]:sw a2, 124(ra)<br>   |
|  65|[0x80003304]<br>0xFEFFFF7F|- rs2_val == 128<br>                                                                                                                                                                                   |[0x800005c0]:sub a2, a0, a1<br> [0x800005c4]:sw a2, 128(ra)<br>   |
|  66|[0x80003308]<br>0xFF000000|- rs1_val == -33554433<br>                                                                                                                                                                             |[0x800005d8]:sub a2, a0, a1<br> [0x800005dc]:sw a2, 132(ra)<br>   |
|  67|[0x8000330c]<br>0xFBFDFFFF|- rs2_val == 131072<br> - rs1_val == -67108865<br>                                                                                                                                                     |[0x800005ec]:sub a2, a0, a1<br> [0x800005f0]:sw a2, 136(ra)<br>   |
|  68|[0x80003310]<br>0xF7BFFFFF|- rs2_val == 4194304<br> - rs1_val == -134217729<br>                                                                                                                                                   |[0x80000600]:sub a2, a0, a1<br> [0x80000604]:sw a2, 140(ra)<br>   |
|  69|[0x80003314]<br>0xEFFFFFF8|- rs1_val == -268435457<br>                                                                                                                                                                            |[0x80000614]:sub a2, a0, a1<br> [0x80000618]:sw a2, 144(ra)<br>   |
|  70|[0x80003318]<br>0xDDFFFFFF|- rs2_val == 33554432<br> - rs1_val == -536870913<br>                                                                                                                                                  |[0x80000628]:sub a2, a0, a1<br> [0x8000062c]:sw a2, 148(ra)<br>   |
|  71|[0x8000331c]<br>0x6AAAAAAA|- rs1_val == -1073741825<br>                                                                                                                                                                           |[0x80000640]:sub a2, a0, a1<br> [0x80000644]:sw a2, 152(ra)<br>   |
|  72|[0x80003320]<br>0x55554555|- rs2_val == 4096<br> - rs1_val == 1431655765<br>                                                                                                                                                      |[0x80000654]:sub a2, a0, a1<br> [0x80000658]:sw a2, 156(ra)<br>   |
|  73|[0x80003324]<br>0xDFFFFFFD|- rs2_val == 2<br>                                                                                                                                                                                     |[0x80000668]:sub a2, a0, a1<br> [0x8000066c]:sw a2, 160(ra)<br>   |
|  74|[0x80003328]<br>0xFBFFFFFB|- rs2_val == 4<br>                                                                                                                                                                                     |[0x8000067c]:sub a2, a0, a1<br> [0x80000680]:sw a2, 164(ra)<br>   |
|  75|[0x8000332c]<br>0xFFFFFEDF|- rs2_val == 32<br>                                                                                                                                                                                    |[0x8000068c]:sub a2, a0, a1<br> [0x80000690]:sw a2, 168(ra)<br>   |
|  76|[0x80003330]<br>0x00001FC0|- rs2_val == 64<br>                                                                                                                                                                                    |[0x8000069c]:sub a2, a0, a1<br> [0x800006a0]:sw a2, 172(ra)<br>   |
|  77|[0x80003334]<br>0xFFFFFE04|- rs2_val == 512<br>                                                                                                                                                                                   |[0x800006ac]:sub a2, a0, a1<br> [0x800006b0]:sw a2, 176(ra)<br>   |
|  78|[0x80003338]<br>0x55554D55|- rs2_val == 2048<br>                                                                                                                                                                                  |[0x800006c4]:sub a2, a0, a1<br> [0x800006c8]:sw a2, 180(ra)<br>   |
|  79|[0x8000333c]<br>0xFFFF7FF8|- rs2_val == 32768<br>                                                                                                                                                                                 |[0x800006d4]:sub a2, a0, a1<br> [0x800006d8]:sw a2, 184(ra)<br>   |
|  80|[0x80003340]<br>0xFFDFF7FF|- rs2_val == 2097152<br>                                                                                                                                                                               |[0x800006e8]:sub a2, a0, a1<br> [0x800006ec]:sw a2, 188(ra)<br>   |
|  81|[0x80003344]<br>0xFFC00000|- rs2_val == 8388608<br>                                                                                                                                                                               |[0x800006f8]:sub a2, a0, a1<br> [0x800006fc]:sw a2, 192(ra)<br>   |
|  82|[0x80003348]<br>0xF7FFFFFF|- rs2_val == 67108864<br>                                                                                                                                                                              |[0x8000070c]:sub a2, a0, a1<br> [0x80000710]:sw a2, 196(ra)<br>   |
|  83|[0x8000334c]<br>0xE0000400|- rs2_val == 536870912<br>                                                                                                                                                                             |[0x8000071c]:sub a2, a0, a1<br> [0x80000720]:sw a2, 200(ra)<br>   |
|  84|[0x80003350]<br>0xBFFFFFFD|- rs2_val == 1073741824<br>                                                                                                                                                                            |[0x8000072c]:sub a2, a0, a1<br> [0x80000730]:sw a2, 204(ra)<br>   |
|  85|[0x80003354]<br>0xFFFFFF82|- rs2_val == -3<br>                                                                                                                                                                                    |[0x8000073c]:sub a2, a0, a1<br> [0x80000740]:sw a2, 208(ra)<br>   |
|  86|[0x80003358]<br>0x00001005|- rs2_val == -5<br>                                                                                                                                                                                    |[0x8000074c]:sub a2, a0, a1<br> [0x80000750]:sw a2, 212(ra)<br>   |
|  87|[0x8000335c]<br>0xFFFFFF10|- rs2_val == -17<br>                                                                                                                                                                                   |[0x8000075c]:sub a2, a0, a1<br> [0x80000760]:sw a2, 216(ra)<br>   |
|  88|[0x80003360]<br>0x00004041|- rs2_val == -65<br>                                                                                                                                                                                   |[0x8000076c]:sub a2, a0, a1<br> [0x80000770]:sw a2, 220(ra)<br>   |
|  89|[0x80003364]<br>0x0000020A|- rs2_val == -513<br>                                                                                                                                                                                  |[0x8000077c]:sub a2, a0, a1<br> [0x80000780]:sw a2, 224(ra)<br>   |
|  90|[0x80003368]<br>0x00010801|- rs2_val == -2049<br>                                                                                                                                                                                 |[0x80000790]:sub a2, a0, a1<br> [0x80000794]:sw a2, 228(ra)<br>   |
|  91|[0x8000336c]<br>0x00000FFE|- rs2_val == -4097<br>                                                                                                                                                                                 |[0x800007a4]:sub a2, a0, a1<br> [0x800007a8]:sw a2, 232(ra)<br>   |
|  92|[0x80003370]<br>0x00204001|- rs2_val == -16385<br>                                                                                                                                                                                |[0x800007b8]:sub a2, a0, a1<br> [0x800007bc]:sw a2, 236(ra)<br>   |
|  93|[0x80003374]<br>0x00010003|- rs2_val == -65537<br>                                                                                                                                                                                |[0x800007cc]:sub a2, a0, a1<br> [0x800007d0]:sw a2, 240(ra)<br>   |
|  94|[0x80003378]<br>0x00020006|- rs2_val == -131073<br>                                                                                                                                                                               |[0x800007e0]:sub a2, a0, a1<br> [0x800007e4]:sw a2, 244(ra)<br>   |
|  95|[0x8000337c]<br>0x81000001|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                                           |[0x800007f4]:sub a2, a0, a1<br> [0x800007f8]:sw a2, 248(ra)<br>   |
|  96|[0x80003380]<br>0x00000082|- rs1_val == 1<br>                                                                                                                                                                                     |[0x80000804]:sub a2, a0, a1<br> [0x80000808]:sw a2, 252(ra)<br>   |
