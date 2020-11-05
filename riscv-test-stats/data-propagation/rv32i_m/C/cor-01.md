
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000720')]      |
| SIG_REGION                | [('0x80003204', '0x80003388', '97 words')]      |
| COV_LABELS                | cor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cor-01.S/cor-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 94      |
| STAT1                     | 93      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000658]:c.or a0, a1
      [0x8000065a]:sw a0, 328(ra)
 -- Signature Address: 0x80003358 Data: 0x40000007
 -- Redundant Coverpoints hit by the op
      - opcode : c.or
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 1073741824






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

|s.no|        signature         |                                                               coverpoints                                                               |                            code                             |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
|   1|[0x80003210]<br>0x40004000|- opcode : c.or<br> - rs1 : x12<br> - rs2 : x8<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 16384<br> - rs1_val == 1073741824<br> |[0x80000108]:c.or a2, s0<br> [0x8000010a]:sw a2, 0(ra)<br>   |
|   2|[0x80003214]<br>0x40000000|- rs1 : x15<br> - rs2 : x15<br> - rs1 == rs2<br> - rs2_val == 1073741824<br>                                                             |[0x80000116]:c.or a5, a5<br> [0x80000118]:sw a5, 4(ra)<br>   |
|   3|[0x80003218]<br>0xFFFFFFEF|- rs1 : x10<br> - rs2 : x11<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val < 0<br> - rs2_val == -17<br> - rs1_val == -2147483648<br>      |[0x80000124]:c.or a0, a1<br> [0x80000126]:sw a0, 8(ra)<br>   |
|   4|[0x8000321c]<br>0xFFFFFFFA|- rs1 : x13<br> - rs2 : x10<br> - rs1_val == 0<br>                                                                                       |[0x80000132]:c.or a3, a0<br> [0x80000134]:sw a3, 12(ra)<br>  |
|   5|[0x80003220]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                               |[0x80000144]:c.or s0, s1<br> [0x80000146]:sw fp, 16(ra)<br>  |
|   6|[0x80003224]<br>0x08000001|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == 1<br> - rs2_val == 134217728<br>                                                             |[0x80000152]:c.or s1, a3<br> [0x80000154]:sw s1, 20(ra)<br>  |
|   7|[0x80003228]<br>0xAAAAAAAA|- rs1 : x11<br> - rs2 : x14<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -1431655766<br>                |[0x80000164]:c.or a1, a4<br> [0x80000166]:sw a1, 24(ra)<br>  |
|   8|[0x8000322c]<br>0x00400000|- rs1 : x14<br> - rs2 : x12<br> - rs2_val == 0<br> - rs1_val == 4194304<br>                                                              |[0x80000172]:c.or a4, a2<br> [0x80000174]:sw a4, 28(ra)<br>  |
|   9|[0x80003230]<br>0x7FFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 262144<br>                                                     |[0x80000184]:c.or a0, a1<br> [0x80000186]:sw a0, 32(ra)<br>  |
|  10|[0x80003234]<br>0x00000801|- rs2_val == 1<br> - rs1_val == 2048<br>                                                                                                 |[0x80000196]:c.or a0, a1<br> [0x80000198]:sw a0, 36(ra)<br>  |
|  11|[0x80003238]<br>0x00000802|- rs2_val == 2048<br> - rs1_val == 2<br>                                                                                                 |[0x800001a8]:c.or a0, a1<br> [0x800001aa]:sw a0, 40(ra)<br>  |
|  12|[0x8000323c]<br>0x00001004|- rs2_val == 4096<br> - rs1_val == 4<br>                                                                                                 |[0x800001b6]:c.or a0, a1<br> [0x800001b8]:sw a0, 44(ra)<br>  |
|  13|[0x80003240]<br>0x00000408|- rs2_val == 1024<br> - rs1_val == 8<br>                                                                                                 |[0x800001c4]:c.or a0, a1<br> [0x800001c6]:sw a0, 48(ra)<br>  |
|  14|[0x80003244]<br>0xFFFFFDFF|- rs2_val == -513<br> - rs1_val == 16<br>                                                                                                |[0x800001d2]:c.or a0, a1<br> [0x800001d4]:sw a0, 52(ra)<br>  |
|  15|[0x80003248]<br>0xFFFFFFEF|- rs1_val == 32<br>                                                                                                                      |[0x800001e0]:c.or a0, a1<br> [0x800001e2]:sw a0, 56(ra)<br>  |
|  16|[0x8000324c]<br>0xFFFFFF7F|- rs2_val == -129<br> - rs1_val == 64<br>                                                                                                |[0x800001ee]:c.or a0, a1<br> [0x800001f0]:sw a0, 60(ra)<br>  |
|  17|[0x80003250]<br>0x20000080|- rs2_val == 536870912<br> - rs1_val == 128<br>                                                                                          |[0x800001fc]:c.or a0, a1<br> [0x800001fe]:sw a0, 64(ra)<br>  |
|  18|[0x80003254]<br>0xFFFFFFFA|- rs1_val == 256<br>                                                                                                                     |[0x8000020a]:c.or a0, a1<br> [0x8000020c]:sw a0, 68(ra)<br>  |
|  19|[0x80003258]<br>0x00010200|- rs2_val == 65536<br> - rs1_val == 512<br>                                                                                              |[0x80000218]:c.or a0, a1<br> [0x8000021a]:sw a0, 72(ra)<br>  |
|  20|[0x8000325c]<br>0x00000420|- rs2_val == 32<br> - rs1_val == 1024<br>                                                                                                |[0x80000226]:c.or a0, a1<br> [0x80000228]:sw a0, 76(ra)<br>  |
|  21|[0x80003260]<br>0x00401000|- rs2_val == 4194304<br> - rs1_val == 4096<br>                                                                                           |[0x80000234]:c.or a0, a1<br> [0x80000236]:sw a0, 80(ra)<br>  |
|  22|[0x80003264]<br>0xFFFFFDFF|- rs1_val == 8192<br>                                                                                                                    |[0x80000242]:c.or a0, a1<br> [0x80000244]:sw a0, 84(ra)<br>  |
|  23|[0x80003268]<br>0xFFBFFFFF|- rs2_val == -4194305<br> - rs1_val == 16384<br>                                                                                         |[0x80000254]:c.or a0, a1<br> [0x80000256]:sw a0, 88(ra)<br>  |
|  24|[0x8000326c]<br>0xBFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == 32768<br>                                                                                      |[0x80000266]:c.or a0, a1<br> [0x80000268]:sw a0, 92(ra)<br>  |
|  25|[0x80003270]<br>0xFFFFDFFF|- rs2_val == -8193<br> - rs1_val == 65536<br>                                                                                            |[0x80000278]:c.or a0, a1<br> [0x8000027a]:sw a0, 96(ra)<br>  |
|  26|[0x80003274]<br>0xFFFFDFFF|- rs1_val == 131072<br>                                                                                                                  |[0x8000028a]:c.or a0, a1<br> [0x8000028c]:sw a0, 100(ra)<br> |
|  27|[0x80003278]<br>0xFFBFFFFF|- rs1_val == 524288<br>                                                                                                                  |[0x8000029c]:c.or a0, a1<br> [0x8000029e]:sw a0, 104(ra)<br> |
|  28|[0x8000327c]<br>0x00110000|- rs1_val == 1048576<br>                                                                                                                 |[0x800002aa]:c.or a0, a1<br> [0x800002ac]:sw a0, 108(ra)<br> |
|  29|[0x80003280]<br>0x55755555|- rs2_val == 1431655765<br> - rs1_val == 2097152<br>                                                                                     |[0x800002bc]:c.or a0, a1<br> [0x800002be]:sw a0, 112(ra)<br> |
|  30|[0x80003284]<br>0x04800000|- rs2_val == 67108864<br> - rs1_val == 8388608<br>                                                                                       |[0x800002ca]:c.or a0, a1<br> [0x800002cc]:sw a0, 116(ra)<br> |
|  31|[0x80003288]<br>0x01002000|- rs2_val == 8192<br> - rs1_val == 16777216<br>                                                                                          |[0x800002d8]:c.or a0, a1<br> [0x800002da]:sw a0, 120(ra)<br> |
|  32|[0x8000328c]<br>0xFFFFFFDF|- rs2_val == -33<br> - rs1_val == 33554432<br>                                                                                           |[0x800002e6]:c.or a0, a1<br> [0x800002e8]:sw a0, 124(ra)<br> |
|  33|[0x80003290]<br>0x04000010|- rs2_val == 16<br> - rs1_val == 67108864<br>                                                                                            |[0x800002f4]:c.or a0, a1<br> [0x800002f6]:sw a0, 128(ra)<br> |
|  34|[0x80003294]<br>0xFDFFFFFF|- rs2_val == -33554433<br> - rs1_val == 134217728<br>                                                                                    |[0x80000306]:c.or a0, a1<br> [0x80000308]:sw a0, 132(ra)<br> |
|  35|[0x80003298]<br>0x10002000|- rs1_val == 268435456<br>                                                                                                               |[0x80000314]:c.or a0, a1<br> [0x80000316]:sw a0, 136(ra)<br> |
|  36|[0x8000329c]<br>0x20400000|- rs1_val == 536870912<br>                                                                                                               |[0x80000322]:c.or a0, a1<br> [0x80000324]:sw a0, 140(ra)<br> |
|  37|[0x800032a0]<br>0xFFFFFFFE|- rs1_val == -2<br>                                                                                                                      |[0x80000330]:c.or a0, a1<br> [0x80000332]:sw a0, 144(ra)<br> |
|  38|[0x800032a4]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                      |[0x80000342]:c.or a0, a1<br> [0x80000344]:sw a0, 148(ra)<br> |
|  39|[0x800032a8]<br>0xFFFFFFFF|- rs2_val == -131073<br> - rs1_val == -5<br>                                                                                             |[0x80000354]:c.or a0, a1<br> [0x80000356]:sw a0, 152(ra)<br> |
|  40|[0x800032ac]<br>0xFFFFFFFF|- rs2_val == -2<br> - rs1_val == -9<br>                                                                                                  |[0x80000362]:c.or a0, a1<br> [0x80000364]:sw a0, 156(ra)<br> |
|  41|[0x800032b0]<br>0xFFFFFFEF|- rs2_val == 262144<br> - rs1_val == -17<br>                                                                                             |[0x80000370]:c.or a0, a1<br> [0x80000372]:sw a0, 160(ra)<br> |
|  42|[0x800032b4]<br>0xFFFFFFDF|- rs1_val == -33<br>                                                                                                                     |[0x8000037e]:c.or a0, a1<br> [0x80000380]:sw a0, 164(ra)<br> |
|  43|[0x800032b8]<br>0xFFFFFFFF|- rs2_val == -2097153<br> - rs1_val == -65<br>                                                                                           |[0x80000390]:c.or a0, a1<br> [0x80000392]:sw a0, 168(ra)<br> |
|  44|[0x800032bc]<br>0xFFFFFF7F|- rs1_val == -129<br>                                                                                                                    |[0x8000039e]:c.or a0, a1<br> [0x800003a0]:sw a0, 172(ra)<br> |
|  45|[0x800032c0]<br>0xFFFFFFFF|- rs2_val == -8388609<br>                                                                                                                |[0x800003b0]:c.or a0, a1<br> [0x800003b2]:sw a0, 176(ra)<br> |
|  46|[0x800032c4]<br>0xFFFFFFFF|- rs2_val == -16777217<br> - rs1_val == 1431655765<br>                                                                                   |[0x800003c6]:c.or a0, a1<br> [0x800003c8]:sw a0, 180(ra)<br> |
|  47|[0x800032c8]<br>0xFFFFFFFF|- rs2_val == -67108865<br> - rs1_val == -16777217<br>                                                                                    |[0x800003dc]:c.or a0, a1<br> [0x800003de]:sw a0, 184(ra)<br> |
|  48|[0x800032cc]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                              |[0x800003ee]:c.or a0, a1<br> [0x800003f0]:sw a0, 188(ra)<br> |
|  49|[0x800032d0]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                              |[0x80000404]:c.or a0, a1<br> [0x80000406]:sw a0, 192(ra)<br> |
|  50|[0x800032d4]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                              |[0x80000416]:c.or a0, a1<br> [0x80000418]:sw a0, 196(ra)<br> |
|  51|[0x800032d8]<br>0xFFBFFFFF|- rs2_val == -1431655766<br> - rs1_val == -4194305<br>                                                                                   |[0x8000042c]:c.or a0, a1<br> [0x8000042e]:sw a0, 200(ra)<br> |
|  52|[0x800032dc]<br>0xFFFFFEFF|- rs1_val == -257<br>                                                                                                                    |[0x8000043a]:c.or a0, a1<br> [0x8000043c]:sw a0, 204(ra)<br> |
|  53|[0x800032e0]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                                                    |[0x80000448]:c.or a0, a1<br> [0x8000044a]:sw a0, 208(ra)<br> |
|  54|[0x800032e4]<br>0xFFFFFFFF|- rs2_val == -9<br> - rs1_val == -1025<br>                                                                                               |[0x80000456]:c.or a0, a1<br> [0x80000458]:sw a0, 212(ra)<br> |
|  55|[0x800032e8]<br>0xFFFFFFFF|- rs2_val == -16385<br> - rs1_val == -2049<br>                                                                                           |[0x8000046c]:c.or a0, a1<br> [0x8000046e]:sw a0, 216(ra)<br> |
|  56|[0x800032ec]<br>0xFFFFEFFF|- rs1_val == -4097<br>                                                                                                                   |[0x8000047e]:c.or a0, a1<br> [0x80000480]:sw a0, 220(ra)<br> |
|  57|[0x800032f0]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                   |[0x80000490]:c.or a0, a1<br> [0x80000492]:sw a0, 224(ra)<br> |
|  58|[0x800032f4]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                                  |[0x800004a6]:c.or a0, a1<br> [0x800004a8]:sw a0, 228(ra)<br> |
|  59|[0x800032f8]<br>0xFFFF7FFF|- rs2_val == 268435456<br> - rs1_val == -32769<br>                                                                                       |[0x800004b8]:c.or a0, a1<br> [0x800004ba]:sw a0, 232(ra)<br> |
|  60|[0x800032fc]<br>0xFFFEFFFF|- rs2_val == 64<br> - rs1_val == -65537<br>                                                                                              |[0x800004ca]:c.or a0, a1<br> [0x800004cc]:sw a0, 236(ra)<br> |
|  61|[0x80003300]<br>0xFFFFFFFF|- rs1_val == -131073<br>                                                                                                                 |[0x800004dc]:c.or a0, a1<br> [0x800004de]:sw a0, 240(ra)<br> |
|  62|[0x80003304]<br>0xFFFBFFFF|- rs1_val == -262145<br>                                                                                                                 |[0x800004f2]:c.or a0, a1<br> [0x800004f4]:sw a0, 244(ra)<br> |
|  63|[0x80003308]<br>0xFFFFFFFF|- rs1_val == -524289<br>                                                                                                                 |[0x80000504]:c.or a0, a1<br> [0x80000506]:sw a0, 248(ra)<br> |
|  64|[0x8000330c]<br>0xFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                |[0x80000516]:c.or a0, a1<br> [0x80000518]:sw a0, 252(ra)<br> |
|  65|[0x80003310]<br>0xFFFFFFFF|- rs2_val == -3<br> - rs1_val == -2097153<br>                                                                                            |[0x80000528]:c.or a0, a1<br> [0x8000052a]:sw a0, 256(ra)<br> |
|  66|[0x80003314]<br>0xFF7FFFFF|- rs2_val == 512<br> - rs1_val == -8388609<br>                                                                                           |[0x8000053a]:c.or a0, a1<br> [0x8000053c]:sw a0, 260(ra)<br> |
|  67|[0x80003318]<br>0xFFFFFFFF|- rs2_val == -1048577<br> - rs1_val == -33554433<br>                                                                                     |[0x80000550]:c.or a0, a1<br> [0x80000552]:sw a0, 264(ra)<br> |
|  68|[0x8000331c]<br>0xFBFFFFFF|- rs1_val == -67108865<br>                                                                                                               |[0x80000562]:c.or a0, a1<br> [0x80000564]:sw a0, 268(ra)<br> |
|  69|[0x80003320]<br>0xF7FFFFFF|- rs2_val == 131072<br> - rs1_val == -134217729<br>                                                                                      |[0x80000574]:c.or a0, a1<br> [0x80000576]:sw a0, 272(ra)<br> |
|  70|[0x80003324]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                                              |[0x80000586]:c.or a0, a1<br> [0x80000588]:sw a0, 276(ra)<br> |
|  71|[0x80003328]<br>0xDFFFFFFF|- rs2_val == 128<br> - rs1_val == -536870913<br>                                                                                         |[0x80000598]:c.or a0, a1<br> [0x8000059a]:sw a0, 280(ra)<br> |
|  72|[0x8000332c]<br>0xBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                             |[0x800005aa]:c.or a0, a1<br> [0x800005ac]:sw a0, 284(ra)<br> |
|  73|[0x80003330]<br>0xFDFFFFFF|- rs2_val == 2<br>                                                                                                                       |[0x800005bc]:c.or a0, a1<br> [0x800005be]:sw a0, 288(ra)<br> |
|  74|[0x80003334]<br>0xAAAAAAAE|- rs2_val == 4<br>                                                                                                                       |[0x800005ce]:c.or a0, a1<br> [0x800005d0]:sw a0, 292(ra)<br> |
|  75|[0x80003338]<br>0x00000088|- rs2_val == 8<br>                                                                                                                       |[0x800005dc]:c.or a0, a1<br> [0x800005de]:sw a0, 296(ra)<br> |
|  76|[0x8000333c]<br>0x00000105|- rs2_val == 256<br>                                                                                                                     |[0x800005ea]:c.or a0, a1<br> [0x800005ec]:sw a0, 300(ra)<br> |
|  77|[0x80003340]<br>0x00008001|- rs2_val == 32768<br>                                                                                                                   |[0x800005f8]:c.or a0, a1<br> [0x800005fa]:sw a0, 304(ra)<br> |
|  78|[0x80003344]<br>0x00080002|- rs2_val == 524288<br>                                                                                                                  |[0x80000606]:c.or a0, a1<br> [0x80000608]:sw a0, 308(ra)<br> |
|  79|[0x80003348]<br>0xFFFFBFFF|- rs2_val == 1048576<br>                                                                                                                 |[0x80000618]:c.or a0, a1<br> [0x8000061a]:sw a0, 312(ra)<br> |
|  80|[0x8000334c]<br>0xFFFEFFFF|- rs2_val == 8388608<br>                                                                                                                 |[0x8000062a]:c.or a0, a1<br> [0x8000062c]:sw a0, 316(ra)<br> |
|  81|[0x80003350]<br>0xFFBFFFFF|- rs2_val == 16777216<br>                                                                                                                |[0x8000063c]:c.or a0, a1<br> [0x8000063e]:sw a0, 320(ra)<br> |
|  82|[0x80003354]<br>0x02000001|- rs2_val == 33554432<br>                                                                                                                |[0x8000064a]:c.or a0, a1<br> [0x8000064c]:sw a0, 324(ra)<br> |
|  83|[0x8000335c]<br>0xFFFFFFFF|- rs2_val == -5<br>                                                                                                                      |[0x8000066a]:c.or a0, a1<br> [0x8000066c]:sw a0, 332(ra)<br> |
|  84|[0x80003360]<br>0xFFFFFFFF|- rs2_val == -65<br>                                                                                                                     |[0x8000067c]:c.or a0, a1<br> [0x8000067e]:sw a0, 336(ra)<br> |
|  85|[0x80003364]<br>0xFFFFFFFF|- rs2_val == -257<br>                                                                                                                    |[0x8000068e]:c.or a0, a1<br> [0x80000690]:sw a0, 340(ra)<br> |
|  86|[0x80003368]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                   |[0x8000069c]:c.or a0, a1<br> [0x8000069e]:sw a0, 344(ra)<br> |
|  87|[0x8000336c]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                   |[0x800006ae]:c.or a0, a1<br> [0x800006b0]:sw a0, 348(ra)<br> |
|  88|[0x80003370]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                   |[0x800006c0]:c.or a0, a1<br> [0x800006c2]:sw a0, 352(ra)<br> |
|  89|[0x80003374]<br>0xFFFFFFFF|- rs2_val == -32769<br>                                                                                                                  |[0x800006d2]:c.or a0, a1<br> [0x800006d4]:sw a0, 356(ra)<br> |
|  90|[0x80003378]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                  |[0x800006e4]:c.or a0, a1<br> [0x800006e6]:sw a0, 360(ra)<br> |
|  91|[0x8000337c]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                 |[0x800006f6]:c.or a0, a1<br> [0x800006f8]:sw a0, 364(ra)<br> |
|  92|[0x80003380]<br>0xFFFFFFFF|- rs2_val == -524289<br>                                                                                                                 |[0x8000070c]:c.or a0, a1<br> [0x8000070e]:sw a0, 368(ra)<br> |
|  93|[0x80003384]<br>0x00200020|- rs2_val == 2097152<br>                                                                                                                 |[0x8000071a]:c.or a0, a1<br> [0x8000071c]:sw a0, 372(ra)<br> |
