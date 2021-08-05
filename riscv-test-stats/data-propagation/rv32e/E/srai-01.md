
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000540')]      |
| SIG_REGION                | [('0x80002204', '0x80002360', '87 words')]      |
| COV_LABELS                | srai      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/srai-01.S/srai-01.S    |
| Total Number of coverpoints| 151     |
| Total Coverpoints Hit     | 146      |
| Total Signature Updates   | 87      |
| STAT1                     | 86      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000538]:srai a1, a0, 18
      [0x8000053c]:sw a1, 284(ra)
 -- Signature Address: 0x8000235c Data: 0xFFFFFFBF
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == -16777217
      - rs1_val < 0 and imm_val > 0 and imm_val < xlen






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

|s.no|        signature         |                                                                                             coverpoints                                                                                             |                               code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000000|- opcode : srai<br> - rs1 : x0<br> - rd : x2<br> - rs1 != rd<br> - rs1_val==0<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                             |[0x80000084]:srai sp, zero, 31<br> [0x80000088]:sw sp, 0(ra)<br>   |
|   2|[0x80002208]<br>0x0007FFFF|- rs1 : x14<br> - rd : x14<br> - rs1 == rd<br> - rs1_val == 2147483647<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> |[0x80000094]:srai a4, a4, 12<br> [0x80000098]:sw a4, 4(ra)<br>     |
|   3|[0x8000220c]<br>0xFF7FFFFF|- rs1 : x3<br> - rd : x11<br> - rs1_val == -1073741825<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br>                                                                                      |[0x800000a4]:srai a1, gp, 7<br> [0x800000a8]:sw a1, 8(ra)<br>      |
|   4|[0x80002210]<br>0xEFFFFFFF|- rs1 : x15<br> - rd : x4<br> - rs1_val == -268435457<br> - rs1_val < 0 and imm_val == 0<br>                                                                                                         |[0x800000b4]:srai tp, a5, 0<br> [0x800000b8]:sw tp, 12(ra)<br>     |
|   5|[0x80002214]<br>0xFFFFFFBF|- rs1 : x7<br> - rd : x10<br> - rs1_val == -134217729<br> - imm_val == 21<br>                                                                                                                        |[0x800000c4]:srai a0, t2, 21<br> [0x800000c8]:sw a0, 16(ra)<br>    |
|   6|[0x80002218]<br>0xFFFEFFFF|- rs1 : x8<br> - rd : x6<br> - rs1_val == -67108865<br> - imm_val == 10<br>                                                                                                                          |[0x800000d4]:srai t1, fp, 10<br> [0x800000d8]:sw t1, 20(ra)<br>    |
|   7|[0x8000221c]<br>0xFF7FFFFF|- rs1 : x9<br> - rd : x13<br> - rs1_val == -33554433<br> - imm_val == 2<br>                                                                                                                          |[0x800000e4]:srai a3, s1, 2<br> [0x800000e8]:sw a3, 24(ra)<br>     |
|   8|[0x80002220]<br>0x00000000|- rs1 : x5<br> - rd : x0<br> - rs1_val == -16777217<br>                                                                                                                                              |[0x800000fc]:srai zero, t0, 18<br> [0x80000100]:sw zero, 0(gp)<br> |
|   9|[0x80002224]<br>0xFFFFFFFF|- rs1 : x10<br> - rd : x8<br> - rs1_val == -8388609<br> - imm_val == 30<br>                                                                                                                          |[0x8000010c]:srai fp, a0, 30<br> [0x80000110]:sw fp, 4(gp)<br>     |
|  10|[0x80002228]<br>0xFFFFDFFF|- rs1 : x13<br> - rd : x5<br> - rs1_val == -4194305<br>                                                                                                                                              |[0x8000011c]:srai t0, a3, 9<br> [0x80000120]:sw t0, 8(gp)<br>      |
|  11|[0x8000222c]<br>0xFFFFBFFF|- rs1 : x4<br> - rd : x12<br> - rs1_val == -2097153<br>                                                                                                                                              |[0x8000012c]:srai a2, tp, 7<br> [0x80000130]:sw a2, 12(gp)<br>     |
|  12|[0x80002230]<br>0xFFFFDFFF|- rs1 : x12<br> - rd : x7<br> - rs1_val == -1048577<br>                                                                                                                                              |[0x8000013c]:srai t2, a2, 7<br> [0x80000140]:sw t2, 16(gp)<br>     |
|  13|[0x80002234]<br>0xFFFFEFFF|- rs1 : x2<br> - rd : x15<br> - rs1_val == -524289<br>                                                                                                                                               |[0x8000014c]:srai a5, sp, 7<br> [0x80000150]:sw a5, 20(gp)<br>     |
|  14|[0x80002238]<br>0xFFFFFBFF|- rs1 : x1<br> - rd : x9<br> - rs1_val == -262145<br> - imm_val == 8<br>                                                                                                                             |[0x8000015c]:srai s1, ra, 8<br> [0x80000160]:sw s1, 24(gp)<br>     |
|  15|[0x8000223c]<br>0xFFFFFFFF|- rs1 : x6<br> - rd : x1<br> - rs1_val == -131073<br>                                                                                                                                                |[0x8000016c]:srai ra, t1, 19<br> [0x80000170]:sw ra, 28(gp)<br>    |
|  16|[0x80002240]<br>0xFFFFEFFF|- rs1 : x11<br> - rd : x3<br> - rs1_val == -65537<br> - imm_val == 4<br>                                                                                                                             |[0x80000184]:srai gp, a1, 4<br> [0x80000188]:sw gp, 0(ra)<br>      |
|  17|[0x80002244]<br>0xFFFFFEFF|- rs1_val == -32769<br>                                                                                                                                                                              |[0x80000194]:srai a1, a0, 7<br> [0x80000198]:sw a1, 4(ra)<br>      |
|  18|[0x80002248]<br>0xFFFFFFFF|- rs1_val == -16385<br> - imm_val == 16<br>                                                                                                                                                          |[0x800001a4]:srai a1, a0, 16<br> [0x800001a8]:sw a1, 8(ra)<br>     |
|  19|[0x8000224c]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                                               |[0x800001b4]:srai a1, a0, 19<br> [0x800001b8]:sw a1, 12(ra)<br>    |
|  20|[0x80002250]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                               |[0x800001c4]:srai a1, a0, 30<br> [0x800001c8]:sw a1, 16(ra)<br>    |
|  21|[0x80002254]<br>0xFFFFFFFF|- rs1_val == -2049<br> - imm_val == 15<br>                                                                                                                                                           |[0x800001d4]:srai a1, a0, 15<br> [0x800001d8]:sw a1, 20(ra)<br>    |
|  22|[0x80002258]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                               |[0x800001e0]:srai a1, a0, 17<br> [0x800001e4]:sw a1, 24(ra)<br>    |
|  23|[0x8000225c]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                                |[0x800001ec]:srai a1, a0, 11<br> [0x800001f0]:sw a1, 28(ra)<br>    |
|  24|[0x80002260]<br>0xFFFFFF7F|- rs1_val == -257<br> - imm_val == 1<br>                                                                                                                                                             |[0x800001f8]:srai a1, a0, 1<br> [0x800001fc]:sw a1, 32(ra)<br>     |
|  25|[0x80002264]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                                |[0x80000204]:srai a1, a0, 12<br> [0x80000208]:sw a1, 36(ra)<br>    |
|  26|[0x80002268]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                                 |[0x80000210]:srai a1, a0, 19<br> [0x80000214]:sw a1, 40(ra)<br>    |
|  27|[0x8000226c]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                 |[0x8000021c]:srai a1, a0, 13<br> [0x80000220]:sw a1, 44(ra)<br>    |
|  28|[0x80002270]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                                 |[0x80000228]:srai a1, a0, 30<br> [0x8000022c]:sw a1, 48(ra)<br>    |
|  29|[0x80002274]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                                  |[0x80000234]:srai a1, a0, 18<br> [0x80000238]:sw a1, 52(ra)<br>    |
|  30|[0x80002278]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                  |[0x80000240]:srai a1, a0, 15<br> [0x80000244]:sw a1, 56(ra)<br>    |
|  31|[0x8000227c]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                  |[0x8000024c]:srai a1, a0, 9<br> [0x80000250]:sw a1, 60(ra)<br>     |
|  32|[0x80002280]<br>0xFFFFFFFF|- rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -2<br>                                                                                                                                        |[0x80000258]:srai a1, a0, 31<br> [0x8000025c]:sw a1, 64(ra)<br>    |
|  33|[0x80002284]<br>0x00000000|- imm_val == 23<br> - rs1_val == 4096<br>                                                                                                                                                            |[0x80000264]:srai a1, a0, 23<br> [0x80000268]:sw a1, 68(ra)<br>    |
|  34|[0x80002288]<br>0xFFFFFFF5|- imm_val == 27<br> - rs1_val==-1431655766<br> - rs1_val == -1431655766<br>                                                                                                                          |[0x80000274]:srai a1, a0, 27<br> [0x80000278]:sw a1, 72(ra)<br>    |
|  35|[0x8000228c]<br>0x00000000|- imm_val == 29<br>                                                                                                                                                                                  |[0x80000280]:srai a1, a0, 29<br> [0x80000284]:sw a1, 76(ra)<br>    |
|  36|[0x80002290]<br>0xE0000000|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br>                                                                                                     |[0x8000028c]:srai a1, a0, 2<br> [0x80000290]:sw a1, 80(ra)<br>     |
|  37|[0x80002294]<br>0x10000000|- rs1_val == 1073741824<br>                                                                                                                                                                          |[0x80000298]:srai a1, a0, 2<br> [0x8000029c]:sw a1, 84(ra)<br>     |
|  38|[0x80002298]<br>0x02000000|- rs1_val == 536870912<br>                                                                                                                                                                           |[0x800002a4]:srai a1, a0, 4<br> [0x800002a8]:sw a1, 88(ra)<br>     |
|  39|[0x8000229c]<br>0x00004000|- rs1_val == 268435456<br>                                                                                                                                                                           |[0x800002b0]:srai a1, a0, 14<br> [0x800002b4]:sw a1, 92(ra)<br>    |
|  40|[0x800022a0]<br>0x00000040|- rs1_val == 134217728<br>                                                                                                                                                                           |[0x800002bc]:srai a1, a0, 21<br> [0x800002c0]:sw a1, 96(ra)<br>    |
|  41|[0x800022a4]<br>0x00004000|- rs1_val == 67108864<br>                                                                                                                                                                            |[0x800002c8]:srai a1, a0, 12<br> [0x800002cc]:sw a1, 100(ra)<br>   |
|  42|[0x800022a8]<br>0x00010000|- rs1_val == 33554432<br>                                                                                                                                                                            |[0x800002d4]:srai a1, a0, 9<br> [0x800002d8]:sw a1, 104(ra)<br>    |
|  43|[0x800022ac]<br>0x00000400|- rs1_val == 16777216<br>                                                                                                                                                                            |[0x800002e0]:srai a1, a0, 14<br> [0x800002e4]:sw a1, 108(ra)<br>   |
|  44|[0x800022b0]<br>0x00001000|- rs1_val == 8388608<br>                                                                                                                                                                             |[0x800002ec]:srai a1, a0, 11<br> [0x800002f0]:sw a1, 112(ra)<br>   |
|  45|[0x800022b4]<br>0x00000020|- rs1_val == 4194304<br>                                                                                                                                                                             |[0x800002f8]:srai a1, a0, 17<br> [0x800002fc]:sw a1, 116(ra)<br>   |
|  46|[0x800022b8]<br>0x00020000|- rs1_val == 2097152<br>                                                                                                                                                                             |[0x80000304]:srai a1, a0, 4<br> [0x80000308]:sw a1, 120(ra)<br>    |
|  47|[0x800022bc]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                                                                                             |[0x80000310]:srai a1, a0, 27<br> [0x80000314]:sw a1, 124(ra)<br>   |
|  48|[0x800022c0]<br>0x00000000|- rs1_val == 524288<br>                                                                                                                                                                              |[0x8000031c]:srai a1, a0, 23<br> [0x80000320]:sw a1, 128(ra)<br>   |
|  49|[0x800022c4]<br>0x00000002|- rs1_val == 262144<br>                                                                                                                                                                              |[0x80000328]:srai a1, a0, 17<br> [0x8000032c]:sw a1, 132(ra)<br>   |
|  50|[0x800022c8]<br>0x00000100|- rs1_val == 131072<br>                                                                                                                                                                              |[0x80000334]:srai a1, a0, 9<br> [0x80000338]:sw a1, 136(ra)<br>    |
|  51|[0x800022cc]<br>0x00000001|- rs1_val == 65536<br>                                                                                                                                                                               |[0x80000340]:srai a1, a0, 16<br> [0x80000344]:sw a1, 140(ra)<br>   |
|  52|[0x800022d0]<br>0x00000020|- rs1_val == 32768<br>                                                                                                                                                                               |[0x8000034c]:srai a1, a0, 10<br> [0x80000350]:sw a1, 144(ra)<br>   |
|  53|[0x800022d4]<br>0x00000000|- rs1_val == 16384<br>                                                                                                                                                                               |[0x80000358]:srai a1, a0, 18<br> [0x8000035c]:sw a1, 148(ra)<br>   |
|  54|[0x800022d8]<br>0x00000100|- rs1_val == 8192<br>                                                                                                                                                                                |[0x80000364]:srai a1, a0, 5<br> [0x80000368]:sw a1, 152(ra)<br>    |
|  55|[0x800022dc]<br>0x00000020|- rs1_val == 2048<br>                                                                                                                                                                                |[0x80000374]:srai a1, a0, 6<br> [0x80000378]:sw a1, 156(ra)<br>    |
|  56|[0x800022e0]<br>0x00000000|- rs1_val == 1024<br>                                                                                                                                                                                |[0x80000380]:srai a1, a0, 23<br> [0x80000384]:sw a1, 160(ra)<br>   |
|  57|[0x800022e4]<br>0x00000000|- rs1_val == 512<br>                                                                                                                                                                                 |[0x8000038c]:srai a1, a0, 11<br> [0x80000390]:sw a1, 164(ra)<br>   |
|  58|[0x800022e8]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                                                                 |[0x80000398]:srai a1, a0, 9<br> [0x8000039c]:sw a1, 168(ra)<br>    |
|  59|[0x800022ec]<br>0x00000020|- rs1_val == 128<br>                                                                                                                                                                                 |[0x800003a4]:srai a1, a0, 2<br> [0x800003a8]:sw a1, 172(ra)<br>    |
|  60|[0x800022f0]<br>0x00000000|- rs1_val == 64<br>                                                                                                                                                                                  |[0x800003b0]:srai a1, a0, 17<br> [0x800003b4]:sw a1, 176(ra)<br>   |
|  61|[0x800022f4]<br>0x00000000|- rs1_val == 32<br>                                                                                                                                                                                  |[0x800003bc]:srai a1, a0, 11<br> [0x800003c0]:sw a1, 180(ra)<br>   |
|  62|[0x800022f8]<br>0x00000000|- rs1_val == 16<br>                                                                                                                                                                                  |[0x800003c8]:srai a1, a0, 13<br> [0x800003cc]:sw a1, 184(ra)<br>   |
|  63|[0x800022fc]<br>0x00000000|- rs1_val == 8<br> - rs1_val > 0 and imm_val == (xlen-1)<br>                                                                                                                                         |[0x800003d4]:srai a1, a0, 31<br> [0x800003d8]:sw a1, 188(ra)<br>   |
|  64|[0x80002300]<br>0x00000000|- rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                                                  |[0x800003e0]:srai a1, a0, 31<br> [0x800003e4]:sw a1, 192(ra)<br>   |
|  65|[0x80002304]<br>0x00000000|- rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                                                  |[0x800003ec]:srai a1, a0, 12<br> [0x800003f0]:sw a1, 196(ra)<br>   |
|  66|[0x80002308]<br>0x00000000|- rs1_val == 1<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br>                                                                                                                            |[0x800003f8]:srai a1, a0, 9<br> [0x800003fc]:sw a1, 200(ra)<br>    |
|  67|[0x8000230c]<br>0x00000016|- rs1_val==46341<br>                                                                                                                                                                                 |[0x80000408]:srai a1, a0, 11<br> [0x8000040c]:sw a1, 204(ra)<br>   |
|  68|[0x80002310]<br>0xFFFFFFFE|- rs1_val==-46339<br>                                                                                                                                                                                |[0x80000418]:srai a1, a0, 15<br> [0x8000041c]:sw a1, 208(ra)<br>   |
|  69|[0x80002314]<br>0x00666666|- rs1_val==1717986919<br>                                                                                                                                                                            |[0x80000428]:srai a1, a0, 8<br> [0x8000042c]:sw a1, 212(ra)<br>    |
|  70|[0x80002318]<br>0x00033333|- rs1_val==858993460<br>                                                                                                                                                                             |[0x80000438]:srai a1, a0, 12<br> [0x8000043c]:sw a1, 216(ra)<br>   |
|  71|[0x8000231c]<br>0x00000000|- rs1_val==6<br>                                                                                                                                                                                     |[0x80000444]:srai a1, a0, 23<br> [0x80000448]:sw a1, 220(ra)<br>   |
|  72|[0x80002320]<br>0xFFF55555|- rs1_val==-1431655765<br>                                                                                                                                                                           |[0x80000454]:srai a1, a0, 11<br> [0x80000458]:sw a1, 224(ra)<br>   |
|  73|[0x80002324]<br>0x00000000|- rs1_val==3<br>                                                                                                                                                                                     |[0x80000460]:srai a1, a0, 8<br> [0x80000464]:sw a1, 228(ra)<br>    |
|  74|[0x80002328]<br>0x00000001|- rs1_val==1431655765<br> - rs1_val == 1431655765<br>                                                                                                                                                |[0x80000470]:srai a1, a0, 30<br> [0x80000474]:sw a1, 232(ra)<br>   |
|  75|[0x8000232c]<br>0x00000000|- rs1_val==5<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br>                                                                                                                         |[0x8000047c]:srai a1, a0, 5<br> [0x80000480]:sw a1, 236(ra)<br>    |
|  76|[0x80002330]<br>0x00000002|- rs1_val > 0 and imm_val == 0<br>                                                                                                                                                                   |[0x80000488]:srai a1, a0, 0<br> [0x8000048c]:sw a1, 240(ra)<br>    |
|  77|[0x80002334]<br>0x15555555|- rs1_val==1431655766<br>                                                                                                                                                                            |[0x80000498]:srai a1, a0, 2<br> [0x8000049c]:sw a1, 244(ra)<br>    |
|  78|[0x80002338]<br>0x00005A81|- rs1_val==46339<br>                                                                                                                                                                                 |[0x800004a8]:srai a1, a0, 1<br> [0x800004ac]:sw a1, 248(ra)<br>    |
|  79|[0x8000233c]<br>0x00006666|- rs1_val==1717986917<br>                                                                                                                                                                            |[0x800004b8]:srai a1, a0, 16<br> [0x800004bc]:sw a1, 252(ra)<br>   |
|  80|[0x80002340]<br>0x00000CCC|- rs1_val==858993458<br>                                                                                                                                                                             |[0x800004c8]:srai a1, a0, 18<br> [0x800004cc]:sw a1, 256(ra)<br>   |
|  81|[0x80002344]<br>0x0000000A|- rs1_val==1431655764<br>                                                                                                                                                                            |[0x800004d8]:srai a1, a0, 27<br> [0x800004dc]:sw a1, 260(ra)<br>   |
|  82|[0x80002348]<br>0x00000000|- rs1_val==46340<br>                                                                                                                                                                                 |[0x800004e8]:srai a1, a0, 30<br> [0x800004ec]:sw a1, 264(ra)<br>   |
|  83|[0x8000234c]<br>0xFFFFFFFF|- rs1_val==-46340<br>                                                                                                                                                                                |[0x800004f8]:srai a1, a0, 17<br> [0x800004fc]:sw a1, 268(ra)<br>   |
|  84|[0x80002350]<br>0x00019999|- rs1_val==1717986918<br>                                                                                                                                                                            |[0x80000508]:srai a1, a0, 14<br> [0x8000050c]:sw a1, 272(ra)<br>   |
|  85|[0x80002354]<br>0x00000CCC|- rs1_val==858993459<br>                                                                                                                                                                             |[0x80000518]:srai a1, a0, 18<br> [0x8000051c]:sw a1, 276(ra)<br>   |
|  86|[0x80002358]<br>0xFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                          |[0x80000528]:srai a1, a0, 31<br> [0x8000052c]:sw a1, 280(ra)<br>   |
