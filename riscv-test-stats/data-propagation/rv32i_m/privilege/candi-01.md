
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800013c2')]      |
| SIG_REGION                | [('0x80003204', '0x800037f4', '380 words')]      |
| COV_LABELS                | candi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/candi-01.S/candi-01.S    |
| Total Number of coverpoints| 409     |
| Total Coverpoints Hit     | 409      |
| Total Signature Updates   | 380      |
| STAT1                     | 380      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|        signature         |                                                  coverpoints                                                  |                              code                              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFFF|- opcode : c.andi<br> - rs1 : x15<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br>               |[0x80000104]:c.andi a5, 63<br> [0x80000106]:sw a5, 0(ra)<br>    |
|   2|[0x80003208]<br>0x00000000|- rs1 : x12<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 32768<br>              |[0x8000010e]:c.andi a2, 3<br> [0x80000110]:sw a2, 4(ra)<br>     |
|   3|[0x8000320c]<br>0x66666661|- rs1 : x8<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -5<br> - rs1_val==1717986917 and imm_val==-5<br> |[0x8000011c]:c.andi s0, 59<br> [0x8000011e]:sw fp, 8(ra)<br>    |
|   4|[0x80003210]<br>0x00000006|- rs1 : x10<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -1073741825<br>                                 |[0x8000012a]:c.andi a0, 6<br> [0x8000012c]:sw a0, 12(ra)<br>    |
|   5|[0x80003214]<br>0xEFFFFFE0|- rs1 : x14<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == -268435457<br>                  |[0x80000138]:c.andi a4, 32<br> [0x8000013a]:sw a4, 16(ra)<br>   |
|   6|[0x80003218]<br>0x00000000|- rs1 : x9<br> - imm_val == 0<br> - rs1_val == -67108865<br>                                                   |[0x80000146]:c.andi s1, 0<br> [0x80000148]:sw s1, 20(ra)<br>    |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x11<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == 512<br>                         |[0x80000150]:c.andi a1, 31<br> [0x80000152]:sw a1, 24(ra)<br>   |
|   8|[0x80003220]<br>0x00000000|- rs1 : x13<br> - imm_val == 1<br> - rs1_val == -2<br>                                                         |[0x8000015a]:c.andi a3, 1<br> [0x8000015c]:sw a3, 28(ra)<br>    |
|   9|[0x80003224]<br>0x00000000|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                   |[0x80000164]:c.andi a0, 9<br> [0x80000166]:sw a0, 32(ra)<br>    |
|  10|[0x80003228]<br>0x00000000|- rs1_val == 0<br> - imm_val == -2<br> - rs1_val==0 and imm_val==-2<br>                                        |[0x8000016e]:c.andi a0, 62<br> [0x80000170]:sw a0, 36(ra)<br>   |
|  11|[0x8000322c]<br>0x00000006|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                   |[0x8000017c]:c.andi a0, 6<br> [0x8000017e]:sw a0, 40(ra)<br>    |
|  12|[0x80003230]<br>0x00000001|- rs1_val == 1<br>                                                                                             |[0x80000186]:c.andi a0, 59<br> [0x80000188]:sw a0, 44(ra)<br>   |
|  13|[0x80003234]<br>0x00000000|- imm_val == 2<br> - rs1_val == 16384<br>                                                                      |[0x80000190]:c.andi a0, 2<br> [0x80000192]:sw a0, 48(ra)<br>    |
|  14|[0x80003238]<br>0x00000000|- imm_val == 4<br>                                                                                             |[0x8000019a]:c.andi a0, 4<br> [0x8000019c]:sw a0, 52(ra)<br>    |
|  15|[0x8000323c]<br>0x00000000|- imm_val == 8<br>                                                                                             |[0x800001a4]:c.andi a0, 8<br> [0x800001a6]:sw a0, 56(ra)<br>    |
|  16|[0x80003240]<br>0x00000010|- imm_val == 16<br>                                                                                            |[0x800001ae]:c.andi a0, 16<br> [0x800001b0]:sw a0, 60(ra)<br>   |
|  17|[0x80003244]<br>0x00000009|- imm_val == -3<br>                                                                                            |[0x800001b8]:c.andi a0, 61<br> [0x800001ba]:sw a0, 64(ra)<br>   |
|  18|[0x80003248]<br>0xAAAAAAA2|- imm_val == -9<br> - rs1_val == -1431655766<br>                                                               |[0x800001c6]:c.andi a0, 55<br> [0x800001c8]:sw a0, 68(ra)<br>   |
|  19|[0x8000324c]<br>0x0000B503|- imm_val == -17<br>                                                                                           |[0x800001d4]:c.andi a0, 47<br> [0x800001d6]:sw a0, 72(ra)<br>   |
|  20|[0x80003250]<br>0x00000000|- imm_val == 21<br> - rs1_val == 2<br>                                                                         |[0x800001de]:c.andi a0, 21<br> [0x800001e0]:sw a0, 76(ra)<br>   |
|  21|[0x80003254]<br>0xFBFFFFEA|- imm_val == -22<br>                                                                                           |[0x800001ec]:c.andi a0, 42<br> [0x800001ee]:sw a0, 80(ra)<br>   |
|  22|[0x80003258]<br>0x00000000|- rs1_val == 4<br>                                                                                             |[0x800001f6]:c.andi a0, 16<br> [0x800001f8]:sw a0, 84(ra)<br>   |
|  23|[0x8000325c]<br>0x00000000|- rs1_val == 8<br>                                                                                             |[0x80000200]:c.andi a0, 2<br> [0x80000202]:sw a0, 88(ra)<br>    |
|  24|[0x80003260]<br>0x00000010|- rs1_val == 16<br>                                                                                            |[0x8000020a]:c.andi a0, 61<br> [0x8000020c]:sw a0, 92(ra)<br>   |
|  25|[0x80003264]<br>0x00000000|- rs1_val == 32<br>                                                                                            |[0x80000214]:c.andi a0, 6<br> [0x80000216]:sw a0, 96(ra)<br>    |
|  26|[0x80003268]<br>0x00000040|- rs1_val == 64<br>                                                                                            |[0x8000021e]:c.andi a0, 48<br> [0x80000220]:sw a0, 100(ra)<br>  |
|  27|[0x8000326c]<br>0x00000000|- rs1_val == 128<br>                                                                                           |[0x80000228]:c.andi a0, 4<br> [0x8000022a]:sw a0, 104(ra)<br>   |
|  28|[0x80003270]<br>0x00000000|- rs1_val == 256<br>                                                                                           |[0x80000232]:c.andi a0, 6<br> [0x80000234]:sw a0, 108(ra)<br>   |
|  29|[0x80003274]<br>0x00000400|- rs1_val == 1024<br>                                                                                          |[0x8000023c]:c.andi a0, 42<br> [0x8000023e]:sw a0, 112(ra)<br>  |
|  30|[0x80003278]<br>0x00000800|- rs1_val == 2048<br>                                                                                          |[0x8000024a]:c.andi a0, 61<br> [0x8000024c]:sw a0, 116(ra)<br>  |
|  31|[0x8000327c]<br>0x00001000|- rs1_val == 4096<br>                                                                                          |[0x80000254]:c.andi a0, 57<br> [0x80000256]:sw a0, 120(ra)<br>  |
|  32|[0x80003280]<br>0x00002000|- rs1_val == 8192<br>                                                                                          |[0x8000025e]:c.andi a0, 58<br> [0x80000260]:sw a0, 124(ra)<br>  |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 65536<br>                                                                                         |[0x80000268]:c.andi a0, 2<br> [0x8000026a]:sw a0, 128(ra)<br>   |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 131072<br>                                                                                        |[0x80000272]:c.andi a0, 2<br> [0x80000274]:sw a0, 132(ra)<br>   |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 262144<br>                                                                                        |[0x8000027c]:c.andi a0, 7<br> [0x8000027e]:sw a0, 136(ra)<br>   |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 524288<br>                                                                                        |[0x80000286]:c.andi a0, 15<br> [0x80000288]:sw a0, 140(ra)<br>  |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 1048576<br>                                                                                       |[0x80000290]:c.andi a0, 3<br> [0x80000292]:sw a0, 144(ra)<br>   |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 2097152<br>                                                                                       |[0x8000029a]:c.andi a0, 0<br> [0x8000029c]:sw a0, 148(ra)<br>   |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == 4194304<br>                                                                                       |[0x800002a4]:c.andi a0, 21<br> [0x800002a6]:sw a0, 152(ra)<br>  |
|  40|[0x800032a0]<br>0x00000000|- rs1_val == 8388608<br>                                                                                       |[0x800002ae]:c.andi a0, 6<br> [0x800002b0]:sw a0, 156(ra)<br>   |
|  41|[0x800032a4]<br>0x00000000|- rs1_val == 16777216<br>                                                                                      |[0x800002b8]:c.andi a0, 0<br> [0x800002ba]:sw a0, 160(ra)<br>   |
|  42|[0x800032a8]<br>0x02000000|- rs1_val == 33554432<br>                                                                                      |[0x800002c2]:c.andi a0, 62<br> [0x800002c4]:sw a0, 164(ra)<br>  |
|  43|[0x800032ac]<br>0x00000000|- rs1_val == 67108864<br>                                                                                      |[0x800002cc]:c.andi a0, 10<br> [0x800002ce]:sw a0, 168(ra)<br>  |
|  44|[0x800032b0]<br>0x08000000|- rs1_val == 134217728<br>                                                                                     |[0x800002d6]:c.andi a0, 60<br> [0x800002d8]:sw a0, 172(ra)<br>  |
|  45|[0x800032b4]<br>0x10000000|- rs1_val == 268435456<br>                                                                                     |[0x800002e0]:c.andi a0, 54<br> [0x800002e2]:sw a0, 176(ra)<br>  |
|  46|[0x800032b8]<br>0x00000000|- rs1_val == 536870912<br>                                                                                     |[0x800002ea]:c.andi a0, 16<br> [0x800002ec]:sw a0, 180(ra)<br>  |
|  47|[0x800032bc]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                    |[0x800002f4]:c.andi a0, 2<br> [0x800002f6]:sw a0, 184(ra)<br>   |
|  48|[0x800032c0]<br>0xFFFFFFF5|- rs1_val == -3<br>                                                                                            |[0x800002fe]:c.andi a0, 55<br> [0x80000300]:sw a0, 188(ra)<br>  |
|  49|[0x800032c4]<br>0x00000003|- rs1_val == -5<br>                                                                                            |[0x80000308]:c.andi a0, 7<br> [0x8000030a]:sw a0, 192(ra)<br>   |
|  50|[0x800032c8]<br>0xFFFFFFF4|- rs1_val == -9<br>                                                                                            |[0x80000312]:c.andi a0, 60<br> [0x80000314]:sw a0, 196(ra)<br>  |
|  51|[0x800032cc]<br>0x00000007|- rs1_val == -17<br>                                                                                           |[0x8000031c]:c.andi a0, 7<br> [0x8000031e]:sw a0, 200(ra)<br>   |
|  52|[0x800032d0]<br>0xFFFFFFD6|- rs1_val == -33<br>                                                                                           |[0x80000326]:c.andi a0, 54<br> [0x80000328]:sw a0, 204(ra)<br>  |
|  53|[0x800032d4]<br>0x00000002|- rs1_val == -65<br>                                                                                           |[0x80000330]:c.andi a0, 2<br> [0x80000332]:sw a0, 208(ra)<br>   |
|  54|[0x800032d8]<br>0x00000006|- rs1_val == -129<br>                                                                                          |[0x8000033a]:c.andi a0, 6<br> [0x8000033c]:sw a0, 212(ra)<br>   |
|  55|[0x800032dc]<br>0x0000001F|- rs1_val == -257<br>                                                                                          |[0x80000344]:c.andi a0, 31<br> [0x80000346]:sw a0, 216(ra)<br>  |
|  56|[0x800032e0]<br>0xFFFFFDFB|- rs1_val == -513<br>                                                                                          |[0x8000034e]:c.andi a0, 59<br> [0x80000350]:sw a0, 220(ra)<br>  |
|  57|[0x800032e4]<br>0x00000015|- rs1_val == -1025<br>                                                                                         |[0x80000358]:c.andi a0, 21<br> [0x8000035a]:sw a0, 224(ra)<br>  |
|  58|[0x800032e8]<br>0x00000003|- rs1_val == -2049<br>                                                                                         |[0x80000366]:c.andi a0, 3<br> [0x80000368]:sw a0, 228(ra)<br>   |
|  59|[0x800032ec]<br>0x00000009|- rs1_val == -4097<br>                                                                                         |[0x80000374]:c.andi a0, 9<br> [0x80000376]:sw a0, 232(ra)<br>   |
|  60|[0x800032f0]<br>0x00000006|- rs1_val == -8193<br>                                                                                         |[0x80000382]:c.andi a0, 6<br> [0x80000384]:sw a0, 236(ra)<br>   |
|  61|[0x800032f4]<br>0x00000003|- rs1_val == -16385<br>                                                                                        |[0x80000390]:c.andi a0, 3<br> [0x80000392]:sw a0, 240(ra)<br>   |
|  62|[0x800032f8]<br>0x00000007|- rs1_val == -32769<br>                                                                                        |[0x8000039e]:c.andi a0, 7<br> [0x800003a0]:sw a0, 244(ra)<br>   |
|  63|[0x800032fc]<br>0x00000009|- rs1_val == -65537<br>                                                                                        |[0x800003ac]:c.andi a0, 9<br> [0x800003ae]:sw a0, 248(ra)<br>   |
|  64|[0x80003300]<br>0x00000004|- rs1_val == -131073<br>                                                                                       |[0x800003ba]:c.andi a0, 4<br> [0x800003bc]:sw a0, 252(ra)<br>   |
|  65|[0x80003304]<br>0x0000001F|- rs1_val == -262145<br>                                                                                       |[0x800003c8]:c.andi a0, 31<br> [0x800003ca]:sw a0, 256(ra)<br>  |
|  66|[0x80003308]<br>0x00000009|- rs1_val == -524289<br>                                                                                       |[0x800003d6]:c.andi a0, 9<br> [0x800003d8]:sw a0, 260(ra)<br>   |
|  67|[0x8000330c]<br>0x00000008|- rs1_val == -1048577<br>                                                                                      |[0x800003e4]:c.andi a0, 8<br> [0x800003e6]:sw a0, 264(ra)<br>   |
|  68|[0x80003310]<br>0xFFDFFFFF|- rs1_val == -2097153<br>                                                                                      |[0x800003f2]:c.andi a0, 63<br> [0x800003f4]:sw a0, 268(ra)<br>  |
|  69|[0x80003314]<br>0x00000002|- rs1_val == -4194305<br>                                                                                      |[0x80000400]:c.andi a0, 2<br> [0x80000402]:sw a0, 272(ra)<br>   |
|  70|[0x80003318]<br>0x00000004|- rs1_val == -8388609<br>                                                                                      |[0x8000040e]:c.andi a0, 4<br> [0x80000410]:sw a0, 276(ra)<br>   |
|  71|[0x8000331c]<br>0x00000015|- rs1_val == -16777217<br>                                                                                     |[0x8000041c]:c.andi a0, 21<br> [0x8000041e]:sw a0, 280(ra)<br>  |
|  72|[0x80003320]<br>0xFDFFFFFE|- rs1_val == -33554433<br>                                                                                     |[0x8000042a]:c.andi a0, 62<br> [0x8000042c]:sw a0, 284(ra)<br>  |
|  73|[0x80003324]<br>0x00000007|- rs1_val == -134217729<br>                                                                                    |[0x80000438]:c.andi a0, 7<br> [0x8000043a]:sw a0, 288(ra)<br>   |
|  74|[0x80003328]<br>0x00000006|- rs1_val == -536870913<br>                                                                                    |[0x80000446]:c.andi a0, 6<br> [0x80000448]:sw a0, 292(ra)<br>   |
|  75|[0x8000332c]<br>0x00000001|- rs1_val == 1431655765<br> - rs1_val==1431655765 and imm_val==9<br>                                           |[0x80000454]:c.andi a0, 9<br> [0x80000456]:sw a0, 296(ra)<br>   |
|  76|[0x80003330]<br>0x00000003|- rs1_val==3 and imm_val==3<br>                                                                                |[0x8000045e]:c.andi a0, 3<br> [0x80000460]:sw a0, 300(ra)<br>   |
|  77|[0x80003334]<br>0x00000001|- rs1_val==3 and imm_val==5<br>                                                                                |[0x80000468]:c.andi a0, 5<br> [0x8000046a]:sw a0, 304(ra)<br>   |
|  78|[0x80003338]<br>0x00000002|- rs1_val==3 and imm_val==10<br>                                                                               |[0x80000472]:c.andi a0, 10<br> [0x80000474]:sw a0, 308(ra)<br>  |
|  79|[0x8000333c]<br>0x00000002|- rs1_val==3 and imm_val==6<br>                                                                                |[0x8000047c]:c.andi a0, 6<br> [0x8000047e]:sw a0, 312(ra)<br>   |
|  80|[0x80003340]<br>0x00000002|- rs1_val==3 and imm_val==-2<br>                                                                               |[0x80000486]:c.andi a0, 62<br> [0x80000488]:sw a0, 316(ra)<br>  |
|  81|[0x80003344]<br>0x00000003|- rs1_val==3 and imm_val==-5<br>                                                                               |[0x80000490]:c.andi a0, 59<br> [0x80000492]:sw a0, 320(ra)<br>  |
|  82|[0x80003348]<br>0x00000002|- rs1_val==3 and imm_val==2<br>                                                                                |[0x8000049a]:c.andi a0, 2<br> [0x8000049c]:sw a0, 324(ra)<br>   |
|  83|[0x8000334c]<br>0x00000000|- rs1_val==3 and imm_val==4<br>                                                                                |[0x800004a4]:c.andi a0, 4<br> [0x800004a6]:sw a0, 328(ra)<br>   |
|  84|[0x80003350]<br>0x00000001|- rs1_val==3 and imm_val==9<br>                                                                                |[0x800004ae]:c.andi a0, 9<br> [0x800004b0]:sw a0, 332(ra)<br>   |
|  85|[0x80003354]<br>0x00000000|- rs1_val==3 and imm_val==0<br>                                                                                |[0x800004b8]:c.andi a0, 0<br> [0x800004ba]:sw a0, 336(ra)<br>   |
|  86|[0x80003358]<br>0x00000003|- rs1_val==3 and imm_val==11<br>                                                                               |[0x800004c2]:c.andi a0, 11<br> [0x800004c4]:sw a0, 340(ra)<br>  |
|  87|[0x8000335c]<br>0x00000003|- rs1_val==3 and imm_val==7<br>                                                                                |[0x800004cc]:c.andi a0, 7<br> [0x800004ce]:sw a0, 344(ra)<br>   |
|  88|[0x80003360]<br>0x00000003|- rs1_val==3 and imm_val==-1<br>                                                                               |[0x800004d6]:c.andi a0, 63<br> [0x800004d8]:sw a0, 348(ra)<br>  |
|  89|[0x80003364]<br>0x00000000|- rs1_val==3 and imm_val==-4<br>                                                                               |[0x800004e0]:c.andi a0, 60<br> [0x800004e2]:sw a0, 352(ra)<br>  |
|  90|[0x80003368]<br>0x00000001|- rs1_val==1431655765 and imm_val==3<br>                                                                       |[0x800004ee]:c.andi a0, 3<br> [0x800004f0]:sw a0, 356(ra)<br>   |
|  91|[0x8000336c]<br>0x00000005|- rs1_val==1431655765 and imm_val==5<br>                                                                       |[0x800004fc]:c.andi a0, 5<br> [0x800004fe]:sw a0, 360(ra)<br>   |
|  92|[0x80003370]<br>0x00000000|- rs1_val==1431655765 and imm_val==10<br>                                                                      |[0x8000050a]:c.andi a0, 10<br> [0x8000050c]:sw a0, 364(ra)<br>  |
|  93|[0x80003374]<br>0x00000004|- rs1_val==1431655765 and imm_val==6<br>                                                                       |[0x80000518]:c.andi a0, 6<br> [0x8000051a]:sw a0, 368(ra)<br>   |
|  94|[0x80003378]<br>0x55555554|- rs1_val==1431655765 and imm_val==-2<br>                                                                      |[0x80000526]:c.andi a0, 62<br> [0x80000528]:sw a0, 372(ra)<br>  |
|  95|[0x8000337c]<br>0x55555551|- rs1_val==1431655765 and imm_val==-5<br>                                                                      |[0x80000534]:c.andi a0, 59<br> [0x80000536]:sw a0, 376(ra)<br>  |
|  96|[0x80003380]<br>0x00000000|- rs1_val==1431655765 and imm_val==2<br>                                                                       |[0x80000542]:c.andi a0, 2<br> [0x80000544]:sw a0, 380(ra)<br>   |
|  97|[0x80003384]<br>0x00000004|- rs1_val==1431655765 and imm_val==4<br>                                                                       |[0x80000550]:c.andi a0, 4<br> [0x80000552]:sw a0, 384(ra)<br>   |
|  98|[0x80003388]<br>0x00000000|- rs1_val==1431655765 and imm_val==0<br>                                                                       |[0x8000055e]:c.andi a0, 0<br> [0x80000560]:sw a0, 388(ra)<br>   |
|  99|[0x8000338c]<br>0x00000001|- rs1_val==1431655765 and imm_val==11<br>                                                                      |[0x8000056c]:c.andi a0, 11<br> [0x8000056e]:sw a0, 392(ra)<br>  |
| 100|[0x80003390]<br>0x00000005|- rs1_val==1431655765 and imm_val==7<br>                                                                       |[0x8000057a]:c.andi a0, 7<br> [0x8000057c]:sw a0, 396(ra)<br>   |
| 101|[0x80003394]<br>0x55555555|- rs1_val==1431655765 and imm_val==-1<br>                                                                      |[0x80000588]:c.andi a0, 63<br> [0x8000058a]:sw a0, 400(ra)<br>  |
| 102|[0x80003398]<br>0x55555554|- rs1_val==1431655765 and imm_val==-4<br>                                                                      |[0x80000596]:c.andi a0, 60<br> [0x80000598]:sw a0, 404(ra)<br>  |
| 103|[0x8000339c]<br>0x00000002|- rs1_val==-1431655766 and imm_val==3<br>                                                                      |[0x800005a4]:c.andi a0, 3<br> [0x800005a6]:sw a0, 408(ra)<br>   |
| 104|[0x800033a0]<br>0x00000000|- rs1_val==-1431655766 and imm_val==5<br>                                                                      |[0x800005b2]:c.andi a0, 5<br> [0x800005b4]:sw a0, 412(ra)<br>   |
| 105|[0x800033a4]<br>0x0000000A|- rs1_val==-1431655766 and imm_val==10<br>                                                                     |[0x800005c0]:c.andi a0, 10<br> [0x800005c2]:sw a0, 416(ra)<br>  |
| 106|[0x800033a8]<br>0x00000002|- rs1_val==-1431655766 and imm_val==6<br>                                                                      |[0x800005ce]:c.andi a0, 6<br> [0x800005d0]:sw a0, 420(ra)<br>   |
| 107|[0x800033ac]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==-2<br>                                                                     |[0x800005dc]:c.andi a0, 62<br> [0x800005de]:sw a0, 424(ra)<br>  |
| 108|[0x800033b0]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==-5<br>                                                                     |[0x800005ea]:c.andi a0, 59<br> [0x800005ec]:sw a0, 428(ra)<br>  |
| 109|[0x800033b4]<br>0x00000002|- rs1_val==-1431655766 and imm_val==2<br>                                                                      |[0x800005f8]:c.andi a0, 2<br> [0x800005fa]:sw a0, 432(ra)<br>   |
| 110|[0x800033b8]<br>0x00000000|- rs1_val==-1431655766 and imm_val==4<br>                                                                      |[0x80000606]:c.andi a0, 4<br> [0x80000608]:sw a0, 436(ra)<br>   |
| 111|[0x800033bc]<br>0x00000008|- rs1_val==-1431655766 and imm_val==9<br>                                                                      |[0x80000614]:c.andi a0, 9<br> [0x80000616]:sw a0, 440(ra)<br>   |
| 112|[0x800033c0]<br>0x00000000|- rs1_val==-1431655766 and imm_val==0<br>                                                                      |[0x80000622]:c.andi a0, 0<br> [0x80000624]:sw a0, 444(ra)<br>   |
| 113|[0x800033c4]<br>0x0000000A|- rs1_val==-1431655766 and imm_val==11<br>                                                                     |[0x80000630]:c.andi a0, 11<br> [0x80000632]:sw a0, 448(ra)<br>  |
| 114|[0x800033c8]<br>0x00000002|- rs1_val==-1431655766 and imm_val==7<br>                                                                      |[0x8000063e]:c.andi a0, 7<br> [0x80000640]:sw a0, 452(ra)<br>   |
| 115|[0x800033cc]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==-1<br>                                                                     |[0x8000064c]:c.andi a0, 63<br> [0x8000064e]:sw a0, 456(ra)<br>  |
| 116|[0x800033d0]<br>0xAAAAAAA8|- rs1_val==-1431655766 and imm_val==-4<br>                                                                     |[0x8000065a]:c.andi a0, 60<br> [0x8000065c]:sw a0, 460(ra)<br>  |
| 117|[0x800033d4]<br>0x00000001|- rs1_val==5 and imm_val==3<br>                                                                                |[0x80000664]:c.andi a0, 3<br> [0x80000666]:sw a0, 464(ra)<br>   |
| 118|[0x800033d8]<br>0x00000005|- rs1_val==5 and imm_val==5<br>                                                                                |[0x8000066e]:c.andi a0, 5<br> [0x80000670]:sw a0, 468(ra)<br>   |
| 119|[0x800033dc]<br>0x00000000|- rs1_val==5 and imm_val==10<br>                                                                               |[0x80000678]:c.andi a0, 10<br> [0x8000067a]:sw a0, 472(ra)<br>  |
| 120|[0x800033e0]<br>0x00000004|- rs1_val==5 and imm_val==6<br>                                                                                |[0x80000682]:c.andi a0, 6<br> [0x80000684]:sw a0, 476(ra)<br>   |
| 121|[0x800033e4]<br>0x00000004|- rs1_val==5 and imm_val==-2<br>                                                                               |[0x8000068c]:c.andi a0, 62<br> [0x8000068e]:sw a0, 480(ra)<br>  |
| 122|[0x800033e8]<br>0x00000001|- rs1_val==5 and imm_val==-5<br>                                                                               |[0x80000696]:c.andi a0, 59<br> [0x80000698]:sw a0, 484(ra)<br>  |
| 123|[0x800033ec]<br>0x00000000|- rs1_val==5 and imm_val==2<br>                                                                                |[0x800006a0]:c.andi a0, 2<br> [0x800006a2]:sw a0, 488(ra)<br>   |
| 124|[0x800033f0]<br>0x00000004|- rs1_val==5 and imm_val==4<br>                                                                                |[0x800006aa]:c.andi a0, 4<br> [0x800006ac]:sw a0, 492(ra)<br>   |
| 125|[0x800033f4]<br>0x00000001|- rs1_val==5 and imm_val==9<br>                                                                                |[0x800006b4]:c.andi a0, 9<br> [0x800006b6]:sw a0, 496(ra)<br>   |
| 126|[0x800033f8]<br>0x00000000|- rs1_val==5 and imm_val==0<br>                                                                                |[0x800006be]:c.andi a0, 0<br> [0x800006c0]:sw a0, 500(ra)<br>   |
| 127|[0x800033fc]<br>0x00000001|- rs1_val==5 and imm_val==11<br>                                                                               |[0x800006c8]:c.andi a0, 11<br> [0x800006ca]:sw a0, 504(ra)<br>  |
| 128|[0x80003400]<br>0x00000005|- rs1_val==5 and imm_val==7<br>                                                                                |[0x800006d2]:c.andi a0, 7<br> [0x800006d4]:sw a0, 508(ra)<br>   |
| 129|[0x80003404]<br>0x00000005|- rs1_val==5 and imm_val==-1<br>                                                                               |[0x800006dc]:c.andi a0, 63<br> [0x800006de]:sw a0, 512(ra)<br>  |
| 130|[0x80003408]<br>0x00000004|- rs1_val==5 and imm_val==-4<br>                                                                               |[0x800006e6]:c.andi a0, 60<br> [0x800006e8]:sw a0, 516(ra)<br>  |
| 131|[0x8000340c]<br>0x00000003|- rs1_val==858993459 and imm_val==3<br>                                                                        |[0x800006f4]:c.andi a0, 3<br> [0x800006f6]:sw a0, 520(ra)<br>   |
| 132|[0x80003410]<br>0x00000001|- rs1_val==858993459 and imm_val==5<br>                                                                        |[0x80000702]:c.andi a0, 5<br> [0x80000704]:sw a0, 524(ra)<br>   |
| 133|[0x80003414]<br>0x00000002|- rs1_val==858993459 and imm_val==10<br>                                                                       |[0x80000710]:c.andi a0, 10<br> [0x80000712]:sw a0, 528(ra)<br>  |
| 134|[0x80003418]<br>0x00000002|- rs1_val==858993459 and imm_val==6<br>                                                                        |[0x8000071e]:c.andi a0, 6<br> [0x80000720]:sw a0, 532(ra)<br>   |
| 135|[0x8000341c]<br>0x33333332|- rs1_val==858993459 and imm_val==-2<br>                                                                       |[0x8000072c]:c.andi a0, 62<br> [0x8000072e]:sw a0, 536(ra)<br>  |
| 136|[0x80003420]<br>0x33333333|- rs1_val==858993459 and imm_val==-5<br>                                                                       |[0x8000073a]:c.andi a0, 59<br> [0x8000073c]:sw a0, 540(ra)<br>  |
| 137|[0x80003424]<br>0x00000002|- rs1_val==858993459 and imm_val==2<br>                                                                        |[0x80000748]:c.andi a0, 2<br> [0x8000074a]:sw a0, 544(ra)<br>   |
| 138|[0x80003428]<br>0x00000000|- rs1_val==858993459 and imm_val==4<br>                                                                        |[0x80000756]:c.andi a0, 4<br> [0x80000758]:sw a0, 548(ra)<br>   |
| 139|[0x8000342c]<br>0x00000001|- rs1_val==858993459 and imm_val==9<br>                                                                        |[0x80000764]:c.andi a0, 9<br> [0x80000766]:sw a0, 552(ra)<br>   |
| 140|[0x80003430]<br>0x00000000|- rs1_val==858993459 and imm_val==0<br>                                                                        |[0x80000772]:c.andi a0, 0<br> [0x80000774]:sw a0, 556(ra)<br>   |
| 141|[0x80003434]<br>0x00000003|- rs1_val==858993459 and imm_val==11<br>                                                                       |[0x80000780]:c.andi a0, 11<br> [0x80000782]:sw a0, 560(ra)<br>  |
| 142|[0x80003438]<br>0x00000003|- rs1_val==858993459 and imm_val==7<br>                                                                        |[0x8000078e]:c.andi a0, 7<br> [0x80000790]:sw a0, 564(ra)<br>   |
| 143|[0x8000343c]<br>0x33333333|- rs1_val==858993459 and imm_val==-1<br>                                                                       |[0x8000079c]:c.andi a0, 63<br> [0x8000079e]:sw a0, 568(ra)<br>  |
| 144|[0x80003440]<br>0x33333330|- rs1_val==858993459 and imm_val==-4<br>                                                                       |[0x800007aa]:c.andi a0, 60<br> [0x800007ac]:sw a0, 572(ra)<br>  |
| 145|[0x80003444]<br>0x00000002|- rs1_val==1717986918 and imm_val==3<br>                                                                       |[0x800007b8]:c.andi a0, 3<br> [0x800007ba]:sw a0, 576(ra)<br>   |
| 146|[0x80003448]<br>0x00000004|- rs1_val==1717986918 and imm_val==5<br>                                                                       |[0x800007c6]:c.andi a0, 5<br> [0x800007c8]:sw a0, 580(ra)<br>   |
| 147|[0x8000344c]<br>0x00000002|- rs1_val==1717986918 and imm_val==10<br>                                                                      |[0x800007d4]:c.andi a0, 10<br> [0x800007d6]:sw a0, 584(ra)<br>  |
| 148|[0x80003450]<br>0x00000006|- rs1_val==1717986918 and imm_val==6<br>                                                                       |[0x800007e2]:c.andi a0, 6<br> [0x800007e4]:sw a0, 588(ra)<br>   |
| 149|[0x80003454]<br>0x66666666|- rs1_val==1717986918 and imm_val==-2<br>                                                                      |[0x800007f0]:c.andi a0, 62<br> [0x800007f2]:sw a0, 592(ra)<br>  |
| 150|[0x80003458]<br>0x66666662|- rs1_val==1717986918 and imm_val==-5<br>                                                                      |[0x800007fe]:c.andi a0, 59<br> [0x80000800]:sw a0, 596(ra)<br>  |
| 151|[0x8000345c]<br>0x00000002|- rs1_val==1717986918 and imm_val==2<br>                                                                       |[0x8000080c]:c.andi a0, 2<br> [0x8000080e]:sw a0, 600(ra)<br>   |
| 152|[0x80003460]<br>0x00000004|- rs1_val==1717986918 and imm_val==4<br>                                                                       |[0x8000081a]:c.andi a0, 4<br> [0x8000081c]:sw a0, 604(ra)<br>   |
| 153|[0x80003464]<br>0x00000000|- rs1_val==1717986918 and imm_val==9<br>                                                                       |[0x80000828]:c.andi a0, 9<br> [0x8000082a]:sw a0, 608(ra)<br>   |
| 154|[0x80003468]<br>0x00000000|- rs1_val==1717986918 and imm_val==0<br>                                                                       |[0x80000836]:c.andi a0, 0<br> [0x80000838]:sw a0, 612(ra)<br>   |
| 155|[0x8000346c]<br>0x00000002|- rs1_val==1717986918 and imm_val==11<br>                                                                      |[0x80000844]:c.andi a0, 11<br> [0x80000846]:sw a0, 616(ra)<br>  |
| 156|[0x80003470]<br>0x00000006|- rs1_val==1717986918 and imm_val==7<br>                                                                       |[0x80000852]:c.andi a0, 7<br> [0x80000854]:sw a0, 620(ra)<br>   |
| 157|[0x80003474]<br>0x66666666|- rs1_val==1717986918 and imm_val==-1<br>                                                                      |[0x80000860]:c.andi a0, 63<br> [0x80000862]:sw a0, 624(ra)<br>  |
| 158|[0x80003478]<br>0x66666664|- rs1_val==1717986918 and imm_val==-4<br>                                                                      |[0x8000086e]:c.andi a0, 60<br> [0x80000870]:sw a0, 628(ra)<br>  |
| 159|[0x8000347c]<br>0x00000000|- rs1_val==-46340 and imm_val==3<br>                                                                           |[0x8000087c]:c.andi a0, 3<br> [0x8000087e]:sw a0, 632(ra)<br>   |
| 160|[0x80003480]<br>0x00000004|- rs1_val==-46340 and imm_val==5<br>                                                                           |[0x8000088a]:c.andi a0, 5<br> [0x8000088c]:sw a0, 636(ra)<br>   |
| 161|[0x80003484]<br>0x00000008|- rs1_val==-46340 and imm_val==10<br>                                                                          |[0x80000898]:c.andi a0, 10<br> [0x8000089a]:sw a0, 640(ra)<br>  |
| 162|[0x80003488]<br>0x00000004|- rs1_val==-46340 and imm_val==6<br>                                                                           |[0x800008a6]:c.andi a0, 6<br> [0x800008a8]:sw a0, 644(ra)<br>   |
| 163|[0x8000348c]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==-2<br>                                                                          |[0x800008b4]:c.andi a0, 62<br> [0x800008b6]:sw a0, 648(ra)<br>  |
| 164|[0x80003490]<br>0xFFFF4AF8|- rs1_val==-46340 and imm_val==-5<br>                                                                          |[0x800008c2]:c.andi a0, 59<br> [0x800008c4]:sw a0, 652(ra)<br>  |
| 165|[0x80003494]<br>0x00000000|- rs1_val==-46340 and imm_val==2<br>                                                                           |[0x800008d0]:c.andi a0, 2<br> [0x800008d2]:sw a0, 656(ra)<br>   |
| 166|[0x80003498]<br>0x00000004|- rs1_val==-46340 and imm_val==4<br>                                                                           |[0x800008de]:c.andi a0, 4<br> [0x800008e0]:sw a0, 660(ra)<br>   |
| 167|[0x8000349c]<br>0x00000008|- rs1_val==-46340 and imm_val==9<br>                                                                           |[0x800008ec]:c.andi a0, 9<br> [0x800008ee]:sw a0, 664(ra)<br>   |
| 168|[0x800034a0]<br>0x00000000|- rs1_val==-46340 and imm_val==0<br>                                                                           |[0x800008fa]:c.andi a0, 0<br> [0x800008fc]:sw a0, 668(ra)<br>   |
| 169|[0x800034a4]<br>0x00000008|- rs1_val==-46340 and imm_val==11<br>                                                                          |[0x80000908]:c.andi a0, 11<br> [0x8000090a]:sw a0, 672(ra)<br>  |
| 170|[0x800034a8]<br>0x00000004|- rs1_val==-46340 and imm_val==7<br>                                                                           |[0x80000916]:c.andi a0, 7<br> [0x80000918]:sw a0, 676(ra)<br>   |
| 171|[0x800034ac]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==-1<br>                                                                          |[0x80000924]:c.andi a0, 63<br> [0x80000926]:sw a0, 680(ra)<br>  |
| 172|[0x800034b0]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==-4<br>                                                                          |[0x80000932]:c.andi a0, 60<br> [0x80000934]:sw a0, 684(ra)<br>  |
| 173|[0x800034b4]<br>0x00000000|- rs1_val==46340 and imm_val==3<br>                                                                            |[0x80000940]:c.andi a0, 3<br> [0x80000942]:sw a0, 688(ra)<br>   |
| 174|[0x800034b8]<br>0x00000004|- rs1_val==46340 and imm_val==5<br>                                                                            |[0x8000094e]:c.andi a0, 5<br> [0x80000950]:sw a0, 692(ra)<br>   |
| 175|[0x800034bc]<br>0x00000000|- rs1_val==46340 and imm_val==10<br>                                                                           |[0x8000095c]:c.andi a0, 10<br> [0x8000095e]:sw a0, 696(ra)<br>  |
| 176|[0x800034c0]<br>0x00000004|- rs1_val==46340 and imm_val==6<br>                                                                            |[0x8000096a]:c.andi a0, 6<br> [0x8000096c]:sw a0, 700(ra)<br>   |
| 177|[0x800034c4]<br>0x0000B504|- rs1_val==46340 and imm_val==-2<br>                                                                           |[0x80000978]:c.andi a0, 62<br> [0x8000097a]:sw a0, 704(ra)<br>  |
| 178|[0x800034c8]<br>0x0000B500|- rs1_val==46340 and imm_val==-5<br>                                                                           |[0x80000986]:c.andi a0, 59<br> [0x80000988]:sw a0, 708(ra)<br>  |
| 179|[0x800034cc]<br>0x00000000|- rs1_val==46340 and imm_val==2<br>                                                                            |[0x80000994]:c.andi a0, 2<br> [0x80000996]:sw a0, 712(ra)<br>   |
| 180|[0x800034d0]<br>0x00000004|- rs1_val==46340 and imm_val==4<br>                                                                            |[0x800009a2]:c.andi a0, 4<br> [0x800009a4]:sw a0, 716(ra)<br>   |
| 181|[0x800034d4]<br>0x00000000|- rs1_val==46340 and imm_val==9<br>                                                                            |[0x800009b0]:c.andi a0, 9<br> [0x800009b2]:sw a0, 720(ra)<br>   |
| 182|[0x800034d8]<br>0x00000000|- rs1_val==46340 and imm_val==0<br>                                                                            |[0x800009be]:c.andi a0, 0<br> [0x800009c0]:sw a0, 724(ra)<br>   |
| 183|[0x800034dc]<br>0x00000000|- rs1_val==46340 and imm_val==11<br>                                                                           |[0x800009cc]:c.andi a0, 11<br> [0x800009ce]:sw a0, 728(ra)<br>  |
| 184|[0x800034e0]<br>0x00000004|- rs1_val==46340 and imm_val==7<br>                                                                            |[0x800009da]:c.andi a0, 7<br> [0x800009dc]:sw a0, 732(ra)<br>   |
| 185|[0x800034e4]<br>0x0000B504|- rs1_val==46340 and imm_val==-1<br>                                                                           |[0x800009e8]:c.andi a0, 63<br> [0x800009ea]:sw a0, 736(ra)<br>  |
| 186|[0x800034e8]<br>0x0000B504|- rs1_val==46340 and imm_val==-4<br>                                                                           |[0x800009f6]:c.andi a0, 60<br> [0x800009f8]:sw a0, 740(ra)<br>  |
| 187|[0x800034ec]<br>0x00000002|- rs1_val==2 and imm_val==3<br>                                                                                |[0x80000a00]:c.andi a0, 3<br> [0x80000a02]:sw a0, 744(ra)<br>   |
| 188|[0x800034f0]<br>0x00000000|- rs1_val==2 and imm_val==5<br>                                                                                |[0x80000a0a]:c.andi a0, 5<br> [0x80000a0c]:sw a0, 748(ra)<br>   |
| 189|[0x800034f4]<br>0x00000002|- rs1_val==2 and imm_val==10<br>                                                                               |[0x80000a14]:c.andi a0, 10<br> [0x80000a16]:sw a0, 752(ra)<br>  |
| 190|[0x800034f8]<br>0x00000002|- rs1_val==2 and imm_val==6<br>                                                                                |[0x80000a1e]:c.andi a0, 6<br> [0x80000a20]:sw a0, 756(ra)<br>   |
| 191|[0x800034fc]<br>0x00000002|- rs1_val==2 and imm_val==-2<br>                                                                               |[0x80000a28]:c.andi a0, 62<br> [0x80000a2a]:sw a0, 760(ra)<br>  |
| 192|[0x80003500]<br>0x00000002|- rs1_val==2 and imm_val==-5<br>                                                                               |[0x80000a32]:c.andi a0, 59<br> [0x80000a34]:sw a0, 764(ra)<br>  |
| 193|[0x80003504]<br>0x00000002|- rs1_val==2 and imm_val==2<br>                                                                                |[0x80000a3c]:c.andi a0, 2<br> [0x80000a3e]:sw a0, 768(ra)<br>   |
| 194|[0x80003508]<br>0x00000000|- rs1_val==2 and imm_val==4<br>                                                                                |[0x80000a46]:c.andi a0, 4<br> [0x80000a48]:sw a0, 772(ra)<br>   |
| 195|[0x8000350c]<br>0x00000000|- rs1_val==2 and imm_val==9<br>                                                                                |[0x80000a50]:c.andi a0, 9<br> [0x80000a52]:sw a0, 776(ra)<br>   |
| 196|[0x80003510]<br>0x00000000|- rs1_val==2 and imm_val==0<br>                                                                                |[0x80000a5a]:c.andi a0, 0<br> [0x80000a5c]:sw a0, 780(ra)<br>   |
| 197|[0x80003514]<br>0x00000002|- rs1_val==2 and imm_val==11<br>                                                                               |[0x80000a64]:c.andi a0, 11<br> [0x80000a66]:sw a0, 784(ra)<br>  |
| 198|[0x80003518]<br>0x00000002|- rs1_val==2 and imm_val==7<br>                                                                                |[0x80000a6e]:c.andi a0, 7<br> [0x80000a70]:sw a0, 788(ra)<br>   |
| 199|[0x8000351c]<br>0x00000002|- rs1_val==2 and imm_val==-1<br>                                                                               |[0x80000a78]:c.andi a0, 63<br> [0x80000a7a]:sw a0, 792(ra)<br>  |
| 200|[0x80003520]<br>0x00000000|- rs1_val==2 and imm_val==-4<br>                                                                               |[0x80000a82]:c.andi a0, 60<br> [0x80000a84]:sw a0, 796(ra)<br>  |
| 201|[0x80003524]<br>0x00000000|- rs1_val==1431655764 and imm_val==3<br>                                                                       |[0x80000a90]:c.andi a0, 3<br> [0x80000a92]:sw a0, 800(ra)<br>   |
| 202|[0x80003528]<br>0x00000004|- rs1_val==1431655764 and imm_val==5<br>                                                                       |[0x80000a9e]:c.andi a0, 5<br> [0x80000aa0]:sw a0, 804(ra)<br>   |
| 203|[0x8000352c]<br>0x00000000|- rs1_val==1431655764 and imm_val==10<br>                                                                      |[0x80000aac]:c.andi a0, 10<br> [0x80000aae]:sw a0, 808(ra)<br>  |
| 204|[0x80003530]<br>0x00000004|- rs1_val==1431655764 and imm_val==6<br>                                                                       |[0x80000aba]:c.andi a0, 6<br> [0x80000abc]:sw a0, 812(ra)<br>   |
| 205|[0x80003534]<br>0x55555554|- rs1_val==1431655764 and imm_val==-2<br>                                                                      |[0x80000ac8]:c.andi a0, 62<br> [0x80000aca]:sw a0, 816(ra)<br>  |
| 206|[0x80003538]<br>0x55555550|- rs1_val==1431655764 and imm_val==-5<br>                                                                      |[0x80000ad6]:c.andi a0, 59<br> [0x80000ad8]:sw a0, 820(ra)<br>  |
| 207|[0x8000353c]<br>0x00000000|- rs1_val==1431655764 and imm_val==2<br>                                                                       |[0x80000ae4]:c.andi a0, 2<br> [0x80000ae6]:sw a0, 824(ra)<br>   |
| 208|[0x80003540]<br>0x00000004|- rs1_val==1431655764 and imm_val==4<br>                                                                       |[0x80000af2]:c.andi a0, 4<br> [0x80000af4]:sw a0, 828(ra)<br>   |
| 209|[0x80003544]<br>0x00000000|- rs1_val==1431655764 and imm_val==9<br>                                                                       |[0x80000b00]:c.andi a0, 9<br> [0x80000b02]:sw a0, 832(ra)<br>   |
| 210|[0x80003548]<br>0x00000000|- rs1_val==1431655764 and imm_val==0<br>                                                                       |[0x80000b0e]:c.andi a0, 0<br> [0x80000b10]:sw a0, 836(ra)<br>   |
| 211|[0x8000354c]<br>0x00000000|- rs1_val==1431655764 and imm_val==11<br>                                                                      |[0x80000b1c]:c.andi a0, 11<br> [0x80000b1e]:sw a0, 840(ra)<br>  |
| 212|[0x80003550]<br>0x00000004|- rs1_val==1431655764 and imm_val==7<br>                                                                       |[0x80000b2a]:c.andi a0, 7<br> [0x80000b2c]:sw a0, 844(ra)<br>   |
| 213|[0x80003554]<br>0x55555554|- rs1_val==1431655764 and imm_val==-1<br>                                                                      |[0x80000b38]:c.andi a0, 63<br> [0x80000b3a]:sw a0, 848(ra)<br>  |
| 214|[0x80003558]<br>0x55555554|- rs1_val==1431655764 and imm_val==-4<br>                                                                      |[0x80000b46]:c.andi a0, 60<br> [0x80000b48]:sw a0, 852(ra)<br>  |
| 215|[0x8000355c]<br>0x00000000|- rs1_val==0 and imm_val==3<br>                                                                                |[0x80000b50]:c.andi a0, 3<br> [0x80000b52]:sw a0, 856(ra)<br>   |
| 216|[0x80003560]<br>0x00000000|- rs1_val==0 and imm_val==5<br>                                                                                |[0x80000b5a]:c.andi a0, 5<br> [0x80000b5c]:sw a0, 860(ra)<br>   |
| 217|[0x80003564]<br>0x00000000|- rs1_val==0 and imm_val==10<br>                                                                               |[0x80000b64]:c.andi a0, 10<br> [0x80000b66]:sw a0, 864(ra)<br>  |
| 218|[0x80003568]<br>0x00000000|- rs1_val==0 and imm_val==6<br>                                                                                |[0x80000b6e]:c.andi a0, 6<br> [0x80000b70]:sw a0, 868(ra)<br>   |
| 219|[0x8000356c]<br>0x00000000|- rs1_val==0 and imm_val==-5<br>                                                                               |[0x80000b78]:c.andi a0, 59<br> [0x80000b7a]:sw a0, 872(ra)<br>  |
| 220|[0x80003570]<br>0x00000000|- rs1_val==0 and imm_val==2<br>                                                                                |[0x80000b82]:c.andi a0, 2<br> [0x80000b84]:sw a0, 876(ra)<br>   |
| 221|[0x80003574]<br>0x00000000|- rs1_val==0 and imm_val==4<br>                                                                                |[0x80000b8c]:c.andi a0, 4<br> [0x80000b8e]:sw a0, 880(ra)<br>   |
| 222|[0x80003578]<br>0x00000000|- rs1_val==0 and imm_val==9<br>                                                                                |[0x80000b96]:c.andi a0, 9<br> [0x80000b98]:sw a0, 884(ra)<br>   |
| 223|[0x8000357c]<br>0x00000000|- rs1_val==0 and imm_val==0<br>                                                                                |[0x80000ba0]:c.andi a0, 0<br> [0x80000ba2]:sw a0, 888(ra)<br>   |
| 224|[0x80003580]<br>0x00000000|- rs1_val==0 and imm_val==11<br>                                                                               |[0x80000baa]:c.andi a0, 11<br> [0x80000bac]:sw a0, 892(ra)<br>  |
| 225|[0x80003584]<br>0x00000000|- rs1_val==0 and imm_val==7<br>                                                                                |[0x80000bb4]:c.andi a0, 7<br> [0x80000bb6]:sw a0, 896(ra)<br>   |
| 226|[0x80003588]<br>0x00000000|- rs1_val==0 and imm_val==-1<br>                                                                               |[0x80000bbe]:c.andi a0, 63<br> [0x80000bc0]:sw a0, 900(ra)<br>  |
| 227|[0x8000358c]<br>0x00000000|- rs1_val==0 and imm_val==-4<br>                                                                               |[0x80000bc8]:c.andi a0, 60<br> [0x80000bca]:sw a0, 904(ra)<br>  |
| 228|[0x80003590]<br>0x00000000|- rs1_val==4 and imm_val==3<br>                                                                                |[0x80000bd2]:c.andi a0, 3<br> [0x80000bd4]:sw a0, 908(ra)<br>   |
| 229|[0x80003594]<br>0x00000004|- rs1_val==4 and imm_val==5<br>                                                                                |[0x80000bdc]:c.andi a0, 5<br> [0x80000bde]:sw a0, 912(ra)<br>   |
| 230|[0x80003598]<br>0x00000000|- rs1_val==4 and imm_val==10<br>                                                                               |[0x80000be6]:c.andi a0, 10<br> [0x80000be8]:sw a0, 916(ra)<br>  |
| 231|[0x8000359c]<br>0x00000004|- rs1_val==4 and imm_val==6<br>                                                                                |[0x80000bf0]:c.andi a0, 6<br> [0x80000bf2]:sw a0, 920(ra)<br>   |
| 232|[0x800035a0]<br>0x00000004|- rs1_val==4 and imm_val==-2<br>                                                                               |[0x80000bfa]:c.andi a0, 62<br> [0x80000bfc]:sw a0, 924(ra)<br>  |
| 233|[0x800035a4]<br>0x00000000|- rs1_val==4 and imm_val==-5<br>                                                                               |[0x80000c04]:c.andi a0, 59<br> [0x80000c06]:sw a0, 928(ra)<br>  |
| 234|[0x800035a8]<br>0x00000000|- rs1_val==4 and imm_val==2<br>                                                                                |[0x80000c0e]:c.andi a0, 2<br> [0x80000c10]:sw a0, 932(ra)<br>   |
| 235|[0x800035ac]<br>0x00000004|- rs1_val==4 and imm_val==4<br>                                                                                |[0x80000c18]:c.andi a0, 4<br> [0x80000c1a]:sw a0, 936(ra)<br>   |
| 236|[0x800035b0]<br>0x00000000|- rs1_val==4 and imm_val==9<br>                                                                                |[0x80000c22]:c.andi a0, 9<br> [0x80000c24]:sw a0, 940(ra)<br>   |
| 237|[0x800035b4]<br>0x00000000|- rs1_val==4 and imm_val==0<br>                                                                                |[0x80000c2c]:c.andi a0, 0<br> [0x80000c2e]:sw a0, 944(ra)<br>   |
| 238|[0x800035b8]<br>0x00000000|- rs1_val==4 and imm_val==11<br>                                                                               |[0x80000c36]:c.andi a0, 11<br> [0x80000c38]:sw a0, 948(ra)<br>  |
| 239|[0x800035bc]<br>0x00000004|- rs1_val==4 and imm_val==7<br>                                                                                |[0x80000c40]:c.andi a0, 7<br> [0x80000c42]:sw a0, 952(ra)<br>   |
| 240|[0x800035c0]<br>0x00000004|- rs1_val==4 and imm_val==-1<br>                                                                               |[0x80000c4a]:c.andi a0, 63<br> [0x80000c4c]:sw a0, 956(ra)<br>  |
| 241|[0x800035c4]<br>0x00000004|- rs1_val==4 and imm_val==-4<br>                                                                               |[0x80000c54]:c.andi a0, 60<br> [0x80000c56]:sw a0, 960(ra)<br>  |
| 242|[0x800035c8]<br>0x00000002|- rs1_val==858993458 and imm_val==3<br>                                                                        |[0x80000c62]:c.andi a0, 3<br> [0x80000c64]:sw a0, 964(ra)<br>   |
| 243|[0x800035cc]<br>0x00000000|- rs1_val==858993458 and imm_val==5<br>                                                                        |[0x80000c70]:c.andi a0, 5<br> [0x80000c72]:sw a0, 968(ra)<br>   |
| 244|[0x800035d0]<br>0x00000002|- rs1_val==858993458 and imm_val==10<br>                                                                       |[0x80000c7e]:c.andi a0, 10<br> [0x80000c80]:sw a0, 972(ra)<br>  |
| 245|[0x800035d4]<br>0x00000002|- rs1_val==858993458 and imm_val==6<br>                                                                        |[0x80000c8c]:c.andi a0, 6<br> [0x80000c8e]:sw a0, 976(ra)<br>   |
| 246|[0x800035d8]<br>0x33333332|- rs1_val==858993458 and imm_val==-2<br>                                                                       |[0x80000c9a]:c.andi a0, 62<br> [0x80000c9c]:sw a0, 980(ra)<br>  |
| 247|[0x800035dc]<br>0x33333332|- rs1_val==858993458 and imm_val==-5<br>                                                                       |[0x80000ca8]:c.andi a0, 59<br> [0x80000caa]:sw a0, 984(ra)<br>  |
| 248|[0x800035e0]<br>0x00000002|- rs1_val==858993458 and imm_val==2<br>                                                                        |[0x80000cb6]:c.andi a0, 2<br> [0x80000cb8]:sw a0, 988(ra)<br>   |
| 249|[0x800035e4]<br>0x00000000|- rs1_val==858993458 and imm_val==4<br>                                                                        |[0x80000cc4]:c.andi a0, 4<br> [0x80000cc6]:sw a0, 992(ra)<br>   |
| 250|[0x800035e8]<br>0x00000000|- rs1_val==858993458 and imm_val==9<br>                                                                        |[0x80000cd2]:c.andi a0, 9<br> [0x80000cd4]:sw a0, 996(ra)<br>   |
| 251|[0x800035ec]<br>0x00000000|- rs1_val==858993458 and imm_val==0<br>                                                                        |[0x80000ce0]:c.andi a0, 0<br> [0x80000ce2]:sw a0, 1000(ra)<br>  |
| 252|[0x800035f0]<br>0x00000002|- rs1_val==858993458 and imm_val==11<br>                                                                       |[0x80000cee]:c.andi a0, 11<br> [0x80000cf0]:sw a0, 1004(ra)<br> |
| 253|[0x800035f4]<br>0x00000002|- rs1_val==858993458 and imm_val==7<br>                                                                        |[0x80000cfc]:c.andi a0, 7<br> [0x80000cfe]:sw a0, 1008(ra)<br>  |
| 254|[0x800035f8]<br>0x33333332|- rs1_val==858993458 and imm_val==-1<br>                                                                       |[0x80000d0a]:c.andi a0, 63<br> [0x80000d0c]:sw a0, 1012(ra)<br> |
| 255|[0x800035fc]<br>0x33333330|- rs1_val==858993458 and imm_val==-4<br>                                                                       |[0x80000d18]:c.andi a0, 60<br> [0x80000d1a]:sw a0, 1016(ra)<br> |
| 256|[0x80003600]<br>0x00000001|- rs1_val==1717986917 and imm_val==3<br>                                                                       |[0x80000d26]:c.andi a0, 3<br> [0x80000d28]:sw a0, 1020(ra)<br>  |
| 257|[0x80003604]<br>0x00000005|- rs1_val==1717986917 and imm_val==5<br>                                                                       |[0x80000d34]:c.andi a0, 5<br> [0x80000d36]:sw a0, 1024(ra)<br>  |
| 258|[0x80003608]<br>0x00000000|- rs1_val==1717986917 and imm_val==10<br>                                                                      |[0x80000d42]:c.andi a0, 10<br> [0x80000d44]:sw a0, 1028(ra)<br> |
| 259|[0x8000360c]<br>0x00000004|- rs1_val==1717986917 and imm_val==6<br>                                                                       |[0x80000d50]:c.andi a0, 6<br> [0x80000d52]:sw a0, 1032(ra)<br>  |
| 260|[0x80003610]<br>0x66666664|- rs1_val==1717986917 and imm_val==-2<br>                                                                      |[0x80000d5e]:c.andi a0, 62<br> [0x80000d60]:sw a0, 1036(ra)<br> |
| 261|[0x80003614]<br>0x00000000|- rs1_val==1717986917 and imm_val==2<br>                                                                       |[0x80000d6c]:c.andi a0, 2<br> [0x80000d6e]:sw a0, 1040(ra)<br>  |
| 262|[0x80003618]<br>0x00000004|- rs1_val==1717986917 and imm_val==4<br>                                                                       |[0x80000d7a]:c.andi a0, 4<br> [0x80000d7c]:sw a0, 1044(ra)<br>  |
| 263|[0x8000361c]<br>0x00000001|- rs1_val==1717986917 and imm_val==9<br>                                                                       |[0x80000d88]:c.andi a0, 9<br> [0x80000d8a]:sw a0, 1048(ra)<br>  |
| 264|[0x80003620]<br>0x00000000|- rs1_val==1717986917 and imm_val==0<br>                                                                       |[0x80000d96]:c.andi a0, 0<br> [0x80000d98]:sw a0, 1052(ra)<br>  |
| 265|[0x80003624]<br>0x00000001|- rs1_val==1717986917 and imm_val==11<br>                                                                      |[0x80000da4]:c.andi a0, 11<br> [0x80000da6]:sw a0, 1056(ra)<br> |
| 266|[0x80003628]<br>0x00000005|- rs1_val==1717986917 and imm_val==7<br>                                                                       |[0x80000db2]:c.andi a0, 7<br> [0x80000db4]:sw a0, 1060(ra)<br>  |
| 267|[0x8000362c]<br>0x66666665|- rs1_val==1717986917 and imm_val==-1<br>                                                                      |[0x80000dc0]:c.andi a0, 63<br> [0x80000dc2]:sw a0, 1064(ra)<br> |
| 268|[0x80003630]<br>0x66666664|- rs1_val==1717986917 and imm_val==-4<br>                                                                      |[0x80000dce]:c.andi a0, 60<br> [0x80000dd0]:sw a0, 1068(ra)<br> |
| 269|[0x80003634]<br>0x00000003|- rs1_val==46339 and imm_val==3<br>                                                                            |[0x80000ddc]:c.andi a0, 3<br> [0x80000dde]:sw a0, 1072(ra)<br>  |
| 270|[0x80003638]<br>0x00000001|- rs1_val==46339 and imm_val==5<br>                                                                            |[0x80000dea]:c.andi a0, 5<br> [0x80000dec]:sw a0, 1076(ra)<br>  |
| 271|[0x8000363c]<br>0x00000002|- rs1_val==46339 and imm_val==10<br>                                                                           |[0x80000df8]:c.andi a0, 10<br> [0x80000dfa]:sw a0, 1080(ra)<br> |
| 272|[0x80003640]<br>0x00000002|- rs1_val==46339 and imm_val==6<br>                                                                            |[0x80000e06]:c.andi a0, 6<br> [0x80000e08]:sw a0, 1084(ra)<br>  |
| 273|[0x80003644]<br>0x0000B502|- rs1_val==46339 and imm_val==-2<br>                                                                           |[0x80000e14]:c.andi a0, 62<br> [0x80000e16]:sw a0, 1088(ra)<br> |
| 274|[0x80003648]<br>0x0000B503|- rs1_val==46339 and imm_val==-5<br>                                                                           |[0x80000e22]:c.andi a0, 59<br> [0x80000e24]:sw a0, 1092(ra)<br> |
| 275|[0x8000364c]<br>0x00000002|- rs1_val==46339 and imm_val==2<br>                                                                            |[0x80000e30]:c.andi a0, 2<br> [0x80000e32]:sw a0, 1096(ra)<br>  |
| 276|[0x80003650]<br>0x00000000|- rs1_val==46339 and imm_val==4<br>                                                                            |[0x80000e3e]:c.andi a0, 4<br> [0x80000e40]:sw a0, 1100(ra)<br>  |
| 277|[0x80003654]<br>0x00000001|- rs1_val==46339 and imm_val==9<br>                                                                            |[0x80000e4c]:c.andi a0, 9<br> [0x80000e4e]:sw a0, 1104(ra)<br>  |
| 278|[0x80003658]<br>0x00000000|- rs1_val==46339 and imm_val==0<br>                                                                            |[0x80000e5a]:c.andi a0, 0<br> [0x80000e5c]:sw a0, 1108(ra)<br>  |
| 279|[0x8000365c]<br>0x00000003|- rs1_val==46339 and imm_val==11<br>                                                                           |[0x80000e68]:c.andi a0, 11<br> [0x80000e6a]:sw a0, 1112(ra)<br> |
| 280|[0x80003660]<br>0x00000003|- rs1_val==46339 and imm_val==7<br>                                                                            |[0x80000e76]:c.andi a0, 7<br> [0x80000e78]:sw a0, 1116(ra)<br>  |
| 281|[0x80003664]<br>0x0000B503|- rs1_val==46339 and imm_val==-1<br>                                                                           |[0x80000e84]:c.andi a0, 63<br> [0x80000e86]:sw a0, 1120(ra)<br> |
| 282|[0x80003668]<br>0x0000B500|- rs1_val==46339 and imm_val==-4<br>                                                                           |[0x80000e92]:c.andi a0, 60<br> [0x80000e94]:sw a0, 1124(ra)<br> |
| 283|[0x8000366c]<br>0x00000002|- rs1_val==1431655766 and imm_val==3<br>                                                                       |[0x80000ea0]:c.andi a0, 3<br> [0x80000ea2]:sw a0, 1128(ra)<br>  |
| 284|[0x80003670]<br>0x00000004|- rs1_val==1431655766 and imm_val==5<br>                                                                       |[0x80000eae]:c.andi a0, 5<br> [0x80000eb0]:sw a0, 1132(ra)<br>  |
| 285|[0x80003674]<br>0x00000002|- rs1_val==1431655766 and imm_val==10<br>                                                                      |[0x80000ebc]:c.andi a0, 10<br> [0x80000ebe]:sw a0, 1136(ra)<br> |
| 286|[0x80003678]<br>0x00000006|- rs1_val==1431655766 and imm_val==6<br>                                                                       |[0x80000eca]:c.andi a0, 6<br> [0x80000ecc]:sw a0, 1140(ra)<br>  |
| 287|[0x8000367c]<br>0x55555556|- rs1_val==1431655766 and imm_val==-2<br>                                                                      |[0x80000ed8]:c.andi a0, 62<br> [0x80000eda]:sw a0, 1144(ra)<br> |
| 288|[0x80003680]<br>0x55555552|- rs1_val==1431655766 and imm_val==-5<br>                                                                      |[0x80000ee6]:c.andi a0, 59<br> [0x80000ee8]:sw a0, 1148(ra)<br> |
| 289|[0x80003684]<br>0x00000002|- rs1_val==1431655766 and imm_val==2<br>                                                                       |[0x80000ef4]:c.andi a0, 2<br> [0x80000ef6]:sw a0, 1152(ra)<br>  |
| 290|[0x80003688]<br>0x00000004|- rs1_val==1431655766 and imm_val==4<br>                                                                       |[0x80000f02]:c.andi a0, 4<br> [0x80000f04]:sw a0, 1156(ra)<br>  |
| 291|[0x8000368c]<br>0x00000000|- rs1_val==1431655766 and imm_val==9<br>                                                                       |[0x80000f10]:c.andi a0, 9<br> [0x80000f12]:sw a0, 1160(ra)<br>  |
| 292|[0x80003690]<br>0x00000000|- rs1_val==1431655766 and imm_val==0<br>                                                                       |[0x80000f1e]:c.andi a0, 0<br> [0x80000f20]:sw a0, 1164(ra)<br>  |
| 293|[0x80003694]<br>0x00000002|- rs1_val==1431655766 and imm_val==11<br>                                                                      |[0x80000f2c]:c.andi a0, 11<br> [0x80000f2e]:sw a0, 1168(ra)<br> |
| 294|[0x80003698]<br>0x00000006|- rs1_val==1431655766 and imm_val==7<br>                                                                       |[0x80000f3a]:c.andi a0, 7<br> [0x80000f3c]:sw a0, 1172(ra)<br>  |
| 295|[0x8000369c]<br>0x55555556|- rs1_val==1431655766 and imm_val==-1<br>                                                                      |[0x80000f48]:c.andi a0, 63<br> [0x80000f4a]:sw a0, 1176(ra)<br> |
| 296|[0x800036a0]<br>0x55555554|- rs1_val==1431655766 and imm_val==-4<br>                                                                      |[0x80000f56]:c.andi a0, 60<br> [0x80000f58]:sw a0, 1180(ra)<br> |
| 297|[0x800036a4]<br>0x00000003|- rs1_val==-1431655765 and imm_val==3<br>                                                                      |[0x80000f64]:c.andi a0, 3<br> [0x80000f66]:sw a0, 1184(ra)<br>  |
| 298|[0x800036a8]<br>0x00000001|- rs1_val==-1431655765 and imm_val==5<br>                                                                      |[0x80000f72]:c.andi a0, 5<br> [0x80000f74]:sw a0, 1188(ra)<br>  |
| 299|[0x800036ac]<br>0x0000000A|- rs1_val==-1431655765 and imm_val==10<br>                                                                     |[0x80000f80]:c.andi a0, 10<br> [0x80000f82]:sw a0, 1192(ra)<br> |
| 300|[0x800036b0]<br>0x00000002|- rs1_val==-1431655765 and imm_val==6<br>                                                                      |[0x80000f8e]:c.andi a0, 6<br> [0x80000f90]:sw a0, 1196(ra)<br>  |
| 301|[0x800036b4]<br>0xAAAAAAAA|- rs1_val==-1431655765 and imm_val==-2<br>                                                                     |[0x80000f9c]:c.andi a0, 62<br> [0x80000f9e]:sw a0, 1200(ra)<br> |
| 302|[0x800036b8]<br>0xAAAAAAAB|- rs1_val==-1431655765 and imm_val==-5<br>                                                                     |[0x80000faa]:c.andi a0, 59<br> [0x80000fac]:sw a0, 1204(ra)<br> |
| 303|[0x800036bc]<br>0x00000002|- rs1_val==-1431655765 and imm_val==2<br>                                                                      |[0x80000fb8]:c.andi a0, 2<br> [0x80000fba]:sw a0, 1208(ra)<br>  |
| 304|[0x800036c0]<br>0x00000000|- rs1_val==-1431655765 and imm_val==4<br>                                                                      |[0x80000fc6]:c.andi a0, 4<br> [0x80000fc8]:sw a0, 1212(ra)<br>  |
| 305|[0x800036c4]<br>0x00000009|- rs1_val==-1431655765 and imm_val==9<br>                                                                      |[0x80000fd4]:c.andi a0, 9<br> [0x80000fd6]:sw a0, 1216(ra)<br>  |
| 306|[0x800036c8]<br>0x00000000|- rs1_val==-1431655765 and imm_val==0<br>                                                                      |[0x80000fe2]:c.andi a0, 0<br> [0x80000fe4]:sw a0, 1220(ra)<br>  |
| 307|[0x800036cc]<br>0x0000000B|- rs1_val==-1431655765 and imm_val==11<br>                                                                     |[0x80000ff0]:c.andi a0, 11<br> [0x80000ff2]:sw a0, 1224(ra)<br> |
| 308|[0x800036d0]<br>0x00000003|- rs1_val==-1431655765 and imm_val==7<br>                                                                      |[0x80000ffe]:c.andi a0, 7<br> [0x80001000]:sw a0, 1228(ra)<br>  |
| 309|[0x800036d4]<br>0xAAAAAAAB|- rs1_val==-1431655765 and imm_val==-1<br>                                                                     |[0x8000100c]:c.andi a0, 63<br> [0x8000100e]:sw a0, 1232(ra)<br> |
| 310|[0x800036d8]<br>0xAAAAAAA8|- rs1_val==-1431655765 and imm_val==-4<br>                                                                     |[0x8000101a]:c.andi a0, 60<br> [0x8000101c]:sw a0, 1236(ra)<br> |
| 311|[0x800036dc]<br>0x00000002|- rs1_val==6 and imm_val==3<br>                                                                                |[0x80001024]:c.andi a0, 3<br> [0x80001026]:sw a0, 1240(ra)<br>  |
| 312|[0x800036e0]<br>0x00000004|- rs1_val==6 and imm_val==5<br>                                                                                |[0x8000102e]:c.andi a0, 5<br> [0x80001030]:sw a0, 1244(ra)<br>  |
| 313|[0x800036e4]<br>0x00000002|- rs1_val==6 and imm_val==10<br>                                                                               |[0x80001038]:c.andi a0, 10<br> [0x8000103a]:sw a0, 1248(ra)<br> |
| 314|[0x800036e8]<br>0x00000006|- rs1_val==6 and imm_val==6<br>                                                                                |[0x80001042]:c.andi a0, 6<br> [0x80001044]:sw a0, 1252(ra)<br>  |
| 315|[0x800036ec]<br>0x00000006|- rs1_val==6 and imm_val==-2<br>                                                                               |[0x8000104c]:c.andi a0, 62<br> [0x8000104e]:sw a0, 1256(ra)<br> |
| 316|[0x800036f0]<br>0x00000002|- rs1_val==6 and imm_val==-5<br>                                                                               |[0x80001056]:c.andi a0, 59<br> [0x80001058]:sw a0, 1260(ra)<br> |
| 317|[0x800036f4]<br>0x00000002|- rs1_val==6 and imm_val==2<br>                                                                                |[0x80001060]:c.andi a0, 2<br> [0x80001062]:sw a0, 1264(ra)<br>  |
| 318|[0x800036f8]<br>0xFFFF4AFD|- rs1_val==-46339 and imm_val==-1<br>                                                                          |[0x8000106e]:c.andi a0, 63<br> [0x80001070]:sw a0, 1268(ra)<br> |
| 319|[0x800036fc]<br>0xFFFF4AFC|- rs1_val==-46339 and imm_val==-4<br>                                                                          |[0x8000107c]:c.andi a0, 60<br> [0x8000107e]:sw a0, 1272(ra)<br> |
| 320|[0x80003700]<br>0x00000001|- rs1_val==46341 and imm_val==3<br>                                                                            |[0x8000108a]:c.andi a0, 3<br> [0x8000108c]:sw a0, 1276(ra)<br>  |
| 321|[0x80003704]<br>0x00000005|- rs1_val==46341 and imm_val==5<br>                                                                            |[0x80001098]:c.andi a0, 5<br> [0x8000109a]:sw a0, 1280(ra)<br>  |
| 322|[0x80003708]<br>0x00000000|- rs1_val==46341 and imm_val==10<br>                                                                           |[0x800010a6]:c.andi a0, 10<br> [0x800010a8]:sw a0, 1284(ra)<br> |
| 323|[0x8000370c]<br>0x00000004|- rs1_val==46341 and imm_val==6<br>                                                                            |[0x800010b4]:c.andi a0, 6<br> [0x800010b6]:sw a0, 1288(ra)<br>  |
| 324|[0x80003710]<br>0x0000B504|- rs1_val==46341 and imm_val==-2<br>                                                                           |[0x800010c2]:c.andi a0, 62<br> [0x800010c4]:sw a0, 1292(ra)<br> |
| 325|[0x80003714]<br>0x0000B501|- rs1_val==46341 and imm_val==-5<br>                                                                           |[0x800010d0]:c.andi a0, 59<br> [0x800010d2]:sw a0, 1296(ra)<br> |
| 326|[0x80003718]<br>0x00000000|- rs1_val==46341 and imm_val==2<br>                                                                            |[0x800010de]:c.andi a0, 2<br> [0x800010e0]:sw a0, 1300(ra)<br>  |
| 327|[0x8000371c]<br>0x00000004|- rs1_val==46341 and imm_val==4<br>                                                                            |[0x800010ec]:c.andi a0, 4<br> [0x800010ee]:sw a0, 1304(ra)<br>  |
| 328|[0x80003720]<br>0x00000001|- rs1_val==46341 and imm_val==9<br>                                                                            |[0x800010fa]:c.andi a0, 9<br> [0x800010fc]:sw a0, 1308(ra)<br>  |
| 329|[0x80003724]<br>0x00000000|- rs1_val==46341 and imm_val==0<br>                                                                            |[0x80001108]:c.andi a0, 0<br> [0x8000110a]:sw a0, 1312(ra)<br>  |
| 330|[0x80003728]<br>0x00000001|- rs1_val==46341 and imm_val==11<br>                                                                           |[0x80001116]:c.andi a0, 11<br> [0x80001118]:sw a0, 1316(ra)<br> |
| 331|[0x8000372c]<br>0x00000005|- rs1_val==46341 and imm_val==7<br>                                                                            |[0x80001124]:c.andi a0, 7<br> [0x80001126]:sw a0, 1320(ra)<br>  |
| 332|[0x80003730]<br>0x0000B505|- rs1_val==46341 and imm_val==-1<br>                                                                           |[0x80001132]:c.andi a0, 63<br> [0x80001134]:sw a0, 1324(ra)<br> |
| 333|[0x80003734]<br>0x0000B504|- rs1_val==46341 and imm_val==-4<br>                                                                           |[0x80001140]:c.andi a0, 60<br> [0x80001142]:sw a0, 1328(ra)<br> |
| 334|[0x80003738]<br>0x00000004|- rs1_val==6 and imm_val==4<br>                                                                                |[0x8000114a]:c.andi a0, 4<br> [0x8000114c]:sw a0, 1332(ra)<br>  |
| 335|[0x8000373c]<br>0x00000000|- rs1_val==6 and imm_val==9<br>                                                                                |[0x80001154]:c.andi a0, 9<br> [0x80001156]:sw a0, 1336(ra)<br>  |
| 336|[0x80003740]<br>0x00000000|- rs1_val==6 and imm_val==0<br>                                                                                |[0x8000115e]:c.andi a0, 0<br> [0x80001160]:sw a0, 1340(ra)<br>  |
| 337|[0x80003744]<br>0x00000002|- rs1_val==6 and imm_val==11<br>                                                                               |[0x80001168]:c.andi a0, 11<br> [0x8000116a]:sw a0, 1344(ra)<br> |
| 338|[0x80003748]<br>0x00000006|- rs1_val==6 and imm_val==7<br>                                                                                |[0x80001172]:c.andi a0, 7<br> [0x80001174]:sw a0, 1348(ra)<br>  |
| 339|[0x8000374c]<br>0x00000006|- rs1_val==6 and imm_val==-1<br>                                                                               |[0x8000117c]:c.andi a0, 63<br> [0x8000117e]:sw a0, 1352(ra)<br> |
| 340|[0x80003750]<br>0x00000004|- rs1_val==6 and imm_val==-4<br>                                                                               |[0x80001186]:c.andi a0, 60<br> [0x80001188]:sw a0, 1356(ra)<br> |
| 341|[0x80003754]<br>0x00000000|- rs1_val==858993460 and imm_val==3<br>                                                                        |[0x80001194]:c.andi a0, 3<br> [0x80001196]:sw a0, 1360(ra)<br>  |
| 342|[0x80003758]<br>0x00000004|- rs1_val==858993460 and imm_val==5<br>                                                                        |[0x800011a2]:c.andi a0, 5<br> [0x800011a4]:sw a0, 1364(ra)<br>  |
| 343|[0x8000375c]<br>0x00000000|- rs1_val==858993460 and imm_val==10<br>                                                                       |[0x800011b0]:c.andi a0, 10<br> [0x800011b2]:sw a0, 1368(ra)<br> |
| 344|[0x80003760]<br>0x00000004|- rs1_val==858993460 and imm_val==6<br>                                                                        |[0x800011be]:c.andi a0, 6<br> [0x800011c0]:sw a0, 1372(ra)<br>  |
| 345|[0x80003764]<br>0x33333334|- rs1_val==858993460 and imm_val==-2<br>                                                                       |[0x800011cc]:c.andi a0, 62<br> [0x800011ce]:sw a0, 1376(ra)<br> |
| 346|[0x80003768]<br>0x33333330|- rs1_val==858993460 and imm_val==-5<br>                                                                       |[0x800011da]:c.andi a0, 59<br> [0x800011dc]:sw a0, 1380(ra)<br> |
| 347|[0x8000376c]<br>0x00000000|- rs1_val==858993460 and imm_val==2<br>                                                                        |[0x800011e8]:c.andi a0, 2<br> [0x800011ea]:sw a0, 1384(ra)<br>  |
| 348|[0x80003770]<br>0x00000004|- rs1_val==858993460 and imm_val==4<br>                                                                        |[0x800011f6]:c.andi a0, 4<br> [0x800011f8]:sw a0, 1388(ra)<br>  |
| 349|[0x80003774]<br>0x00000000|- rs1_val==858993460 and imm_val==9<br>                                                                        |[0x80001204]:c.andi a0, 9<br> [0x80001206]:sw a0, 1392(ra)<br>  |
| 350|[0x80003778]<br>0x00000000|- rs1_val==858993460 and imm_val==0<br>                                                                        |[0x80001212]:c.andi a0, 0<br> [0x80001214]:sw a0, 1396(ra)<br>  |
| 351|[0x8000377c]<br>0x00000000|- rs1_val==858993460 and imm_val==11<br>                                                                       |[0x80001220]:c.andi a0, 11<br> [0x80001222]:sw a0, 1400(ra)<br> |
| 352|[0x80003780]<br>0x00000004|- rs1_val==858993460 and imm_val==7<br>                                                                        |[0x8000122e]:c.andi a0, 7<br> [0x80001230]:sw a0, 1404(ra)<br>  |
| 353|[0x80003784]<br>0x33333334|- rs1_val==858993460 and imm_val==-1<br>                                                                       |[0x8000123c]:c.andi a0, 63<br> [0x8000123e]:sw a0, 1408(ra)<br> |
| 354|[0x80003788]<br>0x33333334|- rs1_val==858993460 and imm_val==-4<br>                                                                       |[0x8000124a]:c.andi a0, 60<br> [0x8000124c]:sw a0, 1412(ra)<br> |
| 355|[0x8000378c]<br>0x00000003|- rs1_val==1717986919 and imm_val==3<br>                                                                       |[0x80001258]:c.andi a0, 3<br> [0x8000125a]:sw a0, 1416(ra)<br>  |
| 356|[0x80003790]<br>0x00000005|- rs1_val==1717986919 and imm_val==5<br>                                                                       |[0x80001266]:c.andi a0, 5<br> [0x80001268]:sw a0, 1420(ra)<br>  |
| 357|[0x80003794]<br>0x00000002|- rs1_val==1717986919 and imm_val==10<br>                                                                      |[0x80001274]:c.andi a0, 10<br> [0x80001276]:sw a0, 1424(ra)<br> |
| 358|[0x80003798]<br>0x00000006|- rs1_val==1717986919 and imm_val==6<br>                                                                       |[0x80001282]:c.andi a0, 6<br> [0x80001284]:sw a0, 1428(ra)<br>  |
| 359|[0x8000379c]<br>0x66666666|- rs1_val==1717986919 and imm_val==-2<br>                                                                      |[0x80001290]:c.andi a0, 62<br> [0x80001292]:sw a0, 1432(ra)<br> |
| 360|[0x800037a0]<br>0x66666663|- rs1_val==1717986919 and imm_val==-5<br>                                                                      |[0x8000129e]:c.andi a0, 59<br> [0x800012a0]:sw a0, 1436(ra)<br> |
| 361|[0x800037a4]<br>0x00000002|- rs1_val==1717986919 and imm_val==2<br>                                                                       |[0x800012ac]:c.andi a0, 2<br> [0x800012ae]:sw a0, 1440(ra)<br>  |
| 362|[0x800037a8]<br>0x00000004|- rs1_val==1717986919 and imm_val==4<br>                                                                       |[0x800012ba]:c.andi a0, 4<br> [0x800012bc]:sw a0, 1444(ra)<br>  |
| 363|[0x800037ac]<br>0x00000001|- rs1_val==1717986919 and imm_val==9<br>                                                                       |[0x800012c8]:c.andi a0, 9<br> [0x800012ca]:sw a0, 1448(ra)<br>  |
| 364|[0x800037b0]<br>0x00000000|- rs1_val==1717986919 and imm_val==0<br>                                                                       |[0x800012d6]:c.andi a0, 0<br> [0x800012d8]:sw a0, 1452(ra)<br>  |
| 365|[0x800037b4]<br>0x00000003|- rs1_val==1717986919 and imm_val==11<br>                                                                      |[0x800012e4]:c.andi a0, 11<br> [0x800012e6]:sw a0, 1456(ra)<br> |
| 366|[0x800037b8]<br>0x00000007|- rs1_val==1717986919 and imm_val==7<br>                                                                       |[0x800012f2]:c.andi a0, 7<br> [0x800012f4]:sw a0, 1460(ra)<br>  |
| 367|[0x800037bc]<br>0x66666667|- rs1_val==1717986919 and imm_val==-1<br>                                                                      |[0x80001300]:c.andi a0, 63<br> [0x80001302]:sw a0, 1464(ra)<br> |
| 368|[0x800037c0]<br>0x66666664|- rs1_val==1717986919 and imm_val==-4<br>                                                                      |[0x8000130e]:c.andi a0, 60<br> [0x80001310]:sw a0, 1468(ra)<br> |
| 369|[0x800037c4]<br>0x00000001|- rs1_val==-46339 and imm_val==3<br>                                                                           |[0x8000131c]:c.andi a0, 3<br> [0x8000131e]:sw a0, 1472(ra)<br>  |
| 370|[0x800037c8]<br>0x00000005|- rs1_val==-46339 and imm_val==5<br>                                                                           |[0x8000132a]:c.andi a0, 5<br> [0x8000132c]:sw a0, 1476(ra)<br>  |
| 371|[0x800037cc]<br>0x00000008|- rs1_val==-46339 and imm_val==10<br>                                                                          |[0x80001338]:c.andi a0, 10<br> [0x8000133a]:sw a0, 1480(ra)<br> |
| 372|[0x800037d0]<br>0x00000004|- rs1_val==-46339 and imm_val==6<br>                                                                           |[0x80001346]:c.andi a0, 6<br> [0x80001348]:sw a0, 1484(ra)<br>  |
| 373|[0x800037d4]<br>0xFFFF4AFC|- rs1_val==-46339 and imm_val==-2<br>                                                                          |[0x80001354]:c.andi a0, 62<br> [0x80001356]:sw a0, 1488(ra)<br> |
| 374|[0x800037d8]<br>0xFFFF4AF9|- rs1_val==-46339 and imm_val==-5<br>                                                                          |[0x80001362]:c.andi a0, 59<br> [0x80001364]:sw a0, 1492(ra)<br> |
| 375|[0x800037dc]<br>0x00000000|- rs1_val==-46339 and imm_val==2<br>                                                                           |[0x80001370]:c.andi a0, 2<br> [0x80001372]:sw a0, 1496(ra)<br>  |
| 376|[0x800037e0]<br>0x00000004|- rs1_val==-46339 and imm_val==4<br>                                                                           |[0x8000137e]:c.andi a0, 4<br> [0x80001380]:sw a0, 1500(ra)<br>  |
| 377|[0x800037e4]<br>0x00000009|- rs1_val==-46339 and imm_val==9<br>                                                                           |[0x8000138c]:c.andi a0, 9<br> [0x8000138e]:sw a0, 1504(ra)<br>  |
| 378|[0x800037e8]<br>0x00000000|- rs1_val==-46339 and imm_val==0<br>                                                                           |[0x8000139a]:c.andi a0, 0<br> [0x8000139c]:sw a0, 1508(ra)<br>  |
| 379|[0x800037ec]<br>0x00000009|- rs1_val==-46339 and imm_val==11<br>                                                                          |[0x800013a8]:c.andi a0, 11<br> [0x800013aa]:sw a0, 1512(ra)<br> |
| 380|[0x800037f0]<br>0x00000005|- rs1_val==-46339 and imm_val==7<br>                                                                           |[0x800013b6]:c.andi a0, 7<br> [0x800013b8]:sw a0, 1516(ra)<br>  |
