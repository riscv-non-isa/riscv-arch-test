
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000740')]      |
| SIG_REGION                | [('0x80003204', '0x80003380', '95 words')]      |
| COV_LABELS                | cadd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Number of coverpoints| 206     |
| Total Coverpoints Hit     | 206      |
| Total Signature Updates   | 95      |
| STAT1                     | 92      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e8]:c.add a0, a1
      [0x800006ea]:sw a0, 276(gp)
 -- Signature Address: 0x8000336c Data: 0xC0040000
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 262144




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000071e]:c.add a0, a1
      [0x80000720]:sw a0, 288(gp)
 -- Signature Address: 0x80003378 Data: 0x00040400
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 1024
      - rs1_val == 262144




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000730]:c.add a0, a1
      [0x80000732]:sw a0, 292(gp)
 -- Signature Address: 0x8000337c Data: 0xFFFF0006
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -65537






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

|s.no|        signature         |                                                              coverpoints                                                               |                             code                              |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003204]<br>0x00080000|- opcode : c.add<br> - rs1 : x16<br> - rs2 : x16<br> - rs1 == rs2<br> - rs2_val > 0<br> - rs2_val == 262144<br> - rs1_val == 262144<br> |[0x80000108]:c.add a6, a6<br> [0x8000010a]:sw a6, 0(ra)<br>    |
|   2|[0x80003208]<br>0x00000000|- rs1 : x0<br> - rs2 : x7<br> - rs1 != rs2<br> - rs1_val == 0<br> - rs2_val < 0<br> - rs2_val == -65537<br>                             |[0x8000011a]:c.add.hint.t2<br> [0x8000011c]:sw zero, 4(ra)<br> |
|   3|[0x8000320c]<br>0x7FFFFF7F|- rs1 : x15<br> - rs2 : x9<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -129<br> - rs1_val == -2147483648<br>                       |[0x80000128]:c.add a5, s1<br> [0x8000012a]:sw a5, 8(ra)<br>    |
|   4|[0x80003210]<br>0x00000002|- rs1 : x13<br> - rs2 : x29<br> - rs2_val == 2<br>                                                                                      |[0x80000136]:c.add a3, t4<br> [0x80000138]:sw a3, 12(ra)<br>   |
|   5|[0x80003214]<br>0x80000000|- rs1 : x4<br> - rs2 : x2<br> - rs2_val == 1<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                           |[0x80000148]:c.add tp, sp<br> [0x8000014a]:sw tp, 16(ra)<br>   |
|   6|[0x80003218]<br>0xFFFF8000|- rs1 : x10<br> - rs2 : x12<br> - rs1_val == 1<br> - rs2_val == -32769<br>                                                              |[0x8000015a]:c.add a0, a2<br> [0x8000015c]:sw a0, 20(ra)<br>   |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x17<br> - rs2 : x5<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                             |[0x80000168]:c.add a7, t0<br> [0x8000016a]:sw a7, 24(ra)<br>   |
|   8|[0x80003220]<br>0x00010000|- rs1 : x29<br> - rs2 : x21<br> - rs2_val == 0<br> - rs1_val == 65536<br>                                                               |[0x80000176]:c.add t4, s5<br> [0x80000178]:sw t4, 28(ra)<br>   |
|   9|[0x80003224]<br>0x7FEFFFFE|- rs1 : x20<br> - rs2 : x30<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -1048577<br>                  |[0x8000018c]:c.add s4, t5<br> [0x8000018e]:sw s4, 32(ra)<br>   |
|  10|[0x80003228]<br>0x00008002|- rs1 : x3<br> - rs2 : x17<br> - rs2_val == 32768<br> - rs1_val == 2<br>                                                                |[0x8000019a]:c.add gp, a7<br> [0x8000019c]:sw gp, 36(ra)<br>   |
|  11|[0x8000322c]<br>0xFFFFF803|- rs1 : x14<br> - rs2 : x31<br> - rs2_val == -2049<br> - rs1_val == 4<br>                                                               |[0x800001ac]:c.add a4, t6<br> [0x800001ae]:sw a4, 40(ra)<br>   |
|  12|[0x80003230]<br>0xFFFFFF07|- rs1 : x5<br> - rs2 : x22<br> - rs2_val == -257<br> - rs1_val == 8<br>                                                                 |[0x800001ba]:c.add t0, s6<br> [0x800001bc]:sw t0, 44(ra)<br>   |
|  13|[0x80003234]<br>0xFFF0000F|- rs1 : x11<br> - rs2 : x3<br> - rs2_val == -1048577<br> - rs1_val == 16<br>                                                            |[0x800001cc]:c.add a1, gp<br> [0x800001ce]:sw a1, 48(ra)<br>   |
|  14|[0x80003238]<br>0x8000001F|- rs1 : x7<br> - rs2 : x18<br> - rs1_val == 32<br>                                                                                      |[0x800001de]:c.add t2, s2<br> [0x800001e0]:sw t2, 52(ra)<br>   |
|  15|[0x8000323c]<br>0xFFFFFC3F|- rs1 : x27<br> - rs2 : x23<br> - rs2_val == -1025<br> - rs1_val == 64<br>                                                              |[0x800001ec]:c.add s11, s7<br> [0x800001ee]:sw s11, 56(ra)<br> |
|  16|[0x80003240]<br>0x00002080|- rs1 : x9<br> - rs2 : x8<br> - rs2_val == 8192<br> - rs1_val == 128<br>                                                                |[0x800001fa]:c.add s1, fp<br> [0x800001fc]:sw s1, 60(ra)<br>   |
|  17|[0x80003244]<br>0x00200100|- rs1 : x26<br> - rs2 : x13<br> - rs2_val == 2097152<br> - rs1_val == 256<br>                                                           |[0x80000208]:c.add s10, a3<br> [0x8000020a]:sw s10, 64(ra)<br> |
|  18|[0x80003248]<br>0x00000600|- rs1 : x8<br> - rs2 : x15<br> - rs2_val == 1024<br> - rs1_val == 512<br>                                                               |[0x80000216]:c.add fp, a5<br> [0x80000218]:sw fp, 68(ra)<br>   |
|  19|[0x8000324c]<br>0x00000403|- rs1 : x30<br> - rs2 : x28<br> - rs1_val == 1024<br>                                                                                   |[0x80000224]:c.add t5, t3<br> [0x80000226]:sw t5, 72(ra)<br>   |
|  20|[0x80003250]<br>0x00000880|- rs1 : x25<br> - rs2 : x4<br> - rs2_val == 128<br> - rs1_val == 2048<br>                                                               |[0x80000236]:c.add s9, tp<br> [0x80000238]:sw s9, 76(ra)<br>   |
|  21|[0x80003254]<br>0x00000FFB|- rs1 : x19<br> - rs2 : x10<br> - rs2_val == -5<br> - rs1_val == 4096<br>                                                               |[0x80000244]:c.add s3, a0<br> [0x80000246]:sw s3, 80(ra)<br>   |
|  22|[0x80003258]<br>0xC0001FFF|- rs1 : x31<br> - rs2 : x27<br> - rs2_val == -1073741825<br> - rs1_val == 8192<br>                                                      |[0x8000025e]:c.add t6, s11<br> [0x80000260]:sw t6, 0(gp)<br>   |
|  23|[0x8000325c]<br>0x00004200|- rs1 : x28<br> - rs2 : x20<br> - rs2_val == 512<br> - rs1_val == 16384<br>                                                             |[0x8000026c]:c.add t3, s4<br> [0x8000026e]:sw t3, 4(gp)<br>    |
|  24|[0x80003260]<br>0x0000C000|- rs1 : x22<br> - rs2 : x26<br> - rs2_val == 16384<br> - rs1_val == 32768<br>                                                           |[0x8000027a]:c.add s6, s10<br> [0x8000027c]:sw s6, 8(gp)<br>   |
|  25|[0x80003264]<br>0x00020005|- rs1 : x21<br> - rs2 : x1<br> - rs1_val == 131072<br>                                                                                  |[0x80000288]:c.add s5, ra<br> [0x8000028a]:sw s5, 12(gp)<br>   |
|  26|[0x80003268]<br>0x0007FFEF|- rs1 : x6<br> - rs2 : x25<br> - rs2_val == -17<br> - rs1_val == 524288<br>                                                             |[0x80000296]:c.add t1, s9<br> [0x80000298]:sw t1, 16(gp)<br>   |
|  27|[0x8000326c]<br>0x00100400|- rs1 : x2<br> - rs2 : x24<br> - rs1_val == 1048576<br>                                                                                 |[0x800002a4]:c.add sp, s8<br> [0x800002a6]:sw sp, 20(gp)<br>   |
|  28|[0x80003270]<br>0x00200100|- rs1 : x18<br> - rs2 : x6<br> - rs2_val == 256<br> - rs1_val == 2097152<br>                                                            |[0x800002b2]:c.add s2, t1<br> [0x800002b4]:sw s2, 24(gp)<br>   |
|  29|[0x80003274]<br>0x00480000|- rs1 : x1<br> - rs2 : x19<br> - rs2_val == 524288<br> - rs1_val == 4194304<br>                                                         |[0x800002c0]:c.add ra, s3<br> [0x800002c2]:sw ra, 28(gp)<br>   |
|  30|[0x80003278]<br>0x007FFFFF|- rs1 : x23<br> - rs2 : x11<br> - rs1_val == 8388608<br>                                                                                |[0x800002ce]:c.add s7, a1<br> [0x800002d0]:sw s7, 32(gp)<br>   |
|  31|[0x8000327c]<br>0x01000080|- rs1 : x12<br> - rs2 : x14<br> - rs1_val == 16777216<br>                                                                               |[0x800002dc]:c.add a2, a4<br> [0x800002de]:sw a2, 36(gp)<br>   |
|  32|[0x80003280]<br>0x03000000|- rs1 : x24<br> - rs2_val == 16777216<br> - rs1_val == 33554432<br>                                                                     |[0x800002ea]:c.add s8, a0<br> [0x800002ec]:sw s8, 40(gp)<br>   |
|  33|[0x80003284]<br>0x06000000|- rs2_val == 33554432<br> - rs1_val == 67108864<br>                                                                                     |[0x800002f8]:c.add a0, a1<br> [0x800002fa]:sw a0, 44(gp)<br>   |
|  34|[0x80003288]<br>0x0C000000|- rs2_val == 67108864<br> - rs1_val == 134217728<br>                                                                                    |[0x80000306]:c.add a0, a1<br> [0x80000308]:sw a0, 48(gp)<br>   |
|  35|[0x8000328c]<br>0x0FFFFFFD|- rs2_val == -3<br> - rs1_val == 268435456<br>                                                                                          |[0x80000314]:c.add a0, a1<br> [0x80000316]:sw a0, 52(gp)<br>   |
|  36|[0x80003290]<br>0x20020000|- rs2_val == 131072<br> - rs1_val == 536870912<br>                                                                                      |[0x80000322]:c.add a0, a1<br> [0x80000324]:sw a0, 56(gp)<br>   |
|  37|[0x80003294]<br>0x40100000|- rs2_val == 1048576<br> - rs1_val == 1073741824<br>                                                                                    |[0x80000330]:c.add a0, a1<br> [0x80000332]:sw a0, 60(gp)<br>   |
|  38|[0x80003298]<br>0xFFF7FFFD|- rs2_val == -524289<br> - rs1_val == -2<br>                                                                                            |[0x80000342]:c.add a0, a1<br> [0x80000344]:sw a0, 64(gp)<br>   |
|  39|[0x8000329c]<br>0x0000FFFD|- rs2_val == 65536<br> - rs1_val == -3<br>                                                                                              |[0x80000350]:c.add a0, a1<br> [0x80000352]:sw a0, 68(gp)<br>   |
|  40|[0x800032a0]<br>0xFFDFFFFA|- rs2_val == -2097153<br> - rs1_val == -5<br>                                                                                           |[0x80000362]:c.add a0, a1<br> [0x80000364]:sw a0, 72(gp)<br>   |
|  41|[0x800032a4]<br>0x003FFFF7|- rs2_val == 4194304<br> - rs1_val == -9<br>                                                                                            |[0x80000370]:c.add a0, a1<br> [0x80000372]:sw a0, 76(gp)<br>   |
|  42|[0x800032a8]<br>0xFFC7FFFF|- rs2_val == -4194305<br>                                                                                                               |[0x80000382]:c.add a0, a1<br> [0x80000384]:sw a0, 80(gp)<br>   |
|  43|[0x800032ac]<br>0xFF7FFFFD|- rs2_val == -8388609<br>                                                                                                               |[0x80000394]:c.add a0, a1<br> [0x80000396]:sw a0, 84(gp)<br>   |
|  44|[0x800032b0]<br>0x02FFFFFF|- rs2_val == -16777217<br>                                                                                                              |[0x800003a6]:c.add a0, a1<br> [0x800003a8]:sw a0, 88(gp)<br>   |
|  45|[0x800032b4]<br>0xFE7FFFFF|- rs2_val == -33554433<br>                                                                                                              |[0x800003b8]:c.add a0, a1<br> [0x800003ba]:sw a0, 92(gp)<br>   |
|  46|[0x800032b8]<br>0xFC001FFF|- rs2_val == -67108865<br>                                                                                                              |[0x800003ca]:c.add a0, a1<br> [0x800003cc]:sw a0, 96(gp)<br>   |
|  47|[0x800032bc]<br>0xF807FFFF|- rs2_val == -134217729<br>                                                                                                             |[0x800003dc]:c.add a0, a1<br> [0x800003de]:sw a0, 100(gp)<br>  |
|  48|[0x800032c0]<br>0xF0000000|- rs2_val == -268435457<br>                                                                                                             |[0x800003ee]:c.add a0, a1<br> [0x800003f0]:sw a0, 104(gp)<br>  |
|  49|[0x800032c4]<br>0xE0001FFF|- rs2_val == -536870913<br>                                                                                                             |[0x80000400]:c.add a0, a1<br> [0x80000402]:sw a0, 108(gp)<br>  |
|  50|[0x800032c8]<br>0x95555554|- rs2_val == 1431655765<br>                                                                                                             |[0x80000416]:c.add a0, a1<br> [0x80000418]:sw a0, 112(gp)<br>  |
|  51|[0x800032cc]<br>0xAAAAAAAE|- rs2_val == -1431655766<br>                                                                                                            |[0x80000428]:c.add a0, a1<br> [0x8000042a]:sw a0, 116(gp)<br>  |
|  52|[0x800032d0]<br>0x000001EF|- rs1_val == -17<br>                                                                                                                    |[0x80000436]:c.add a0, a1<br> [0x80000438]:sw a0, 120(gp)<br>  |
|  53|[0x800032d4]<br>0x00007FDF|- rs1_val == -33<br>                                                                                                                    |[0x80000444]:c.add a0, a1<br> [0x80000446]:sw a0, 124(gp)<br>  |
|  54|[0x800032d8]<br>0x000007BF|- rs2_val == 2048<br> - rs1_val == -65<br>                                                                                              |[0x80000456]:c.add a0, a1<br> [0x80000458]:sw a0, 128(gp)<br>  |
|  55|[0x800032dc]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                   |[0x80000464]:c.add a0, a1<br> [0x80000466]:sw a0, 132(gp)<br>  |
|  56|[0x800032e0]<br>0xF7FFFEFE|- rs1_val == -257<br>                                                                                                                   |[0x80000476]:c.add a0, a1<br> [0x80000478]:sw a0, 136(gp)<br>  |
|  57|[0x800032e4]<br>0x00007DFF|- rs1_val == -513<br>                                                                                                                   |[0x80000484]:c.add a0, a1<br> [0x80000486]:sw a0, 140(gp)<br>  |
|  58|[0x800032e8]<br>0xFFFFFBFF|- rs1_val == -1025<br>                                                                                                                  |[0x80000492]:c.add a0, a1<br> [0x80000494]:sw a0, 144(gp)<br>  |
|  59|[0x800032ec]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                  |[0x800004a8]:c.add a0, a1<br> [0x800004aa]:sw a0, 148(gp)<br>  |
|  60|[0x800032f0]<br>0xFFFDEFFE|- rs2_val == -131073<br> - rs1_val == -4097<br>                                                                                         |[0x800004be]:c.add a0, a1<br> [0x800004c0]:sw a0, 152(gp)<br>  |
|  61|[0x800032f4]<br>0x00001FFF|- rs1_val == -8193<br>                                                                                                                  |[0x800004d0]:c.add a0, a1<br> [0x800004d2]:sw a0, 156(gp)<br>  |
|  62|[0x800032f8]<br>0xFFFDBFFE|- rs1_val == -16385<br>                                                                                                                 |[0x800004e6]:c.add a0, a1<br> [0x800004e8]:sw a0, 160(gp)<br>  |
|  63|[0x800032fc]<br>0x07FF7FFF|- rs2_val == 134217728<br> - rs1_val == -32769<br>                                                                                      |[0x800004f8]:c.add a0, a1<br> [0x800004fa]:sw a0, 164(gp)<br>  |
|  64|[0x80003300]<br>0xFFFF0003|- rs2_val == 4<br> - rs1_val == -65537<br>                                                                                              |[0x8000050a]:c.add a0, a1<br> [0x8000050c]:sw a0, 168(gp)<br>  |
|  65|[0x80003304]<br>0xFFFDEFFE|- rs2_val == -4097<br> - rs1_val == -131073<br>                                                                                         |[0x80000520]:c.add a0, a1<br> [0x80000522]:sw a0, 172(gp)<br>  |
|  66|[0x80003308]<br>0xFFFC007F|- rs1_val == -262145<br>                                                                                                                |[0x80000532]:c.add a0, a1<br> [0x80000534]:sw a0, 176(gp)<br>  |
|  67|[0x8000330c]<br>0xFEFFFFFE|- rs1_val == -8388609<br>                                                                                                               |[0x80000548]:c.add a0, a1<br> [0x8000054a]:sw a0, 180(gp)<br>  |
|  68|[0x80003310]<br>0xFEEFFFFE|- rs1_val == -16777217<br>                                                                                                              |[0x8000055e]:c.add a0, a1<br> [0x80000560]:sw a0, 184(gp)<br>  |
|  69|[0x80003314]<br>0xFDFFFFF9|- rs1_val == -33554433<br>                                                                                                              |[0x80000570]:c.add a0, a1<br> [0x80000572]:sw a0, 188(gp)<br>  |
|  70|[0x80003318]<br>0xFC000004|- rs1_val == -67108865<br>                                                                                                              |[0x80000582]:c.add a0, a1<br> [0x80000584]:sw a0, 192(gp)<br>  |
|  71|[0x8000331c]<br>0xA2AAAAA9|- rs1_val == -134217729<br>                                                                                                             |[0x80000598]:c.add a0, a1<br> [0x8000059a]:sw a0, 196(gp)<br>  |
|  72|[0x80003320]<br>0x0FFFFFFF|- rs2_val == 536870912<br> - rs1_val == -268435457<br>                                                                                  |[0x800005aa]:c.add a0, a1<br> [0x800005ac]:sw a0, 200(gp)<br>  |
|  73|[0x80003324]<br>0xDFFBFFFE|- rs2_val == -262145<br> - rs1_val == -536870913<br>                                                                                    |[0x800005c0]:c.add a0, a1<br> [0x800005c2]:sw a0, 204(gp)<br>  |
|  74|[0x80003328]<br>0xBF7FFFFE|- rs1_val == -1073741825<br>                                                                                                            |[0x800005d6]:c.add a0, a1<br> [0x800005d8]:sw a0, 208(gp)<br>  |
|  75|[0x8000332c]<br>0x59555555|- rs1_val == 1431655765<br>                                                                                                             |[0x800005e8]:c.add a0, a1<br> [0x800005ea]:sw a0, 212(gp)<br>  |
|  76|[0x80003330]<br>0xAAAA9AA9|- rs1_val == -1431655766<br>                                                                                                            |[0x800005fe]:c.add a0, a1<br> [0x80000600]:sw a0, 216(gp)<br>  |
|  77|[0x80003334]<br>0x20000008|- rs2_val == 8<br>                                                                                                                      |[0x8000060c]:c.add a0, a1<br> [0x8000060e]:sw a0, 220(gp)<br>  |
|  78|[0x80003338]<br>0x00000014|- rs2_val == 16<br>                                                                                                                     |[0x8000061a]:c.add a0, a1<br> [0x8000061c]:sw a0, 224(gp)<br>  |
|  79|[0x8000333c]<br>0xFFFFE01F|- rs2_val == 32<br>                                                                                                                     |[0x8000062c]:c.add a0, a1<br> [0x8000062e]:sw a0, 228(gp)<br>  |
|  80|[0x80003340]<br>0x0000002F|- rs2_val == 64<br>                                                                                                                     |[0x8000063a]:c.add a0, a1<br> [0x8000063c]:sw a0, 232(gp)<br>  |
|  81|[0x80003344]<br>0x00A00000|- rs2_val == 8388608<br>                                                                                                                |[0x80000648]:c.add a0, a1<br> [0x8000064a]:sw a0, 236(gp)<br>  |
|  82|[0x80003348]<br>0x0FF7FFFF|- rs2_val == 268435456<br> - rs1_val == -524289<br>                                                                                     |[0x8000065a]:c.add a0, a1<br> [0x8000065c]:sw a0, 240(gp)<br>  |
|  83|[0x8000334c]<br>0x40000010|- rs2_val == 1073741824<br>                                                                                                             |[0x80000668]:c.add a0, a1<br> [0x8000066a]:sw a0, 244(gp)<br>  |
|  84|[0x80003350]<br>0xEFFFFFFD|- rs2_val == -2<br>                                                                                                                     |[0x8000067a]:c.add a0, a1<br> [0x8000067c]:sw a0, 248(gp)<br>  |
|  85|[0x80003354]<br>0x7FFFFFF6|- rs2_val == -9<br>                                                                                                                     |[0x8000068c]:c.add a0, a1<br> [0x8000068e]:sw a0, 252(gp)<br>  |
|  86|[0x80003358]<br>0xFFFFFFD6|- rs2_val == -33<br>                                                                                                                    |[0x8000069a]:c.add a0, a1<br> [0x8000069c]:sw a0, 256(gp)<br>  |
|  87|[0x8000335c]<br>0x0FFFFFBF|- rs2_val == -65<br>                                                                                                                    |[0x800006a8]:c.add a0, a1<br> [0x800006aa]:sw a0, 260(gp)<br>  |
|  88|[0x80003360]<br>0xFFBFFDFE|- rs2_val == -513<br> - rs1_val == -4194305<br>                                                                                         |[0x800006ba]:c.add a0, a1<br> [0x800006bc]:sw a0, 264(gp)<br>  |
|  89|[0x80003364]<br>0x00001003|- rs2_val == 4096<br>                                                                                                                   |[0x800006c8]:c.add a0, a1<br> [0x800006ca]:sw a0, 268(gp)<br>  |
|  90|[0x80003368]<br>0xFFFFC004|- rs2_val == -16385<br>                                                                                                                 |[0x800006da]:c.add a0, a1<br> [0x800006dc]:sw a0, 272(gp)<br>  |
|  91|[0x80003370]<br>0xFEDFFFFE|- rs1_val == -2097153<br>                                                                                                               |[0x800006fe]:c.add a0, a1<br> [0x80000700]:sw a0, 280(gp)<br>  |
|  92|[0x80003374]<br>0xFFFFE006|- rs2_val == -8193<br>                                                                                                                  |[0x80000710]:c.add a0, a1<br> [0x80000712]:sw a0, 284(gp)<br>  |
