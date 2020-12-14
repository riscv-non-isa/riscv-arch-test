
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800013c0')]      |
| SIG_REGION                | [('0x80003010', '0x80003600', '380 words')]      |
| COV_LABELS                | candi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/candi-01.S/candi-01.S    |
| Total Number of coverpoints| 409     |
| Total Coverpoints Hit     | 409      |
| Total Signature Updates   | 379      |
| STAT1                     | 379      |
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

|s.no|        signature         |                                                      coverpoints                                                      |                              code                              |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003010]<br>0x00000007|- opcode : c.andi<br> - rs1 : x10<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>                       |[0x80000104]:c.andi a0, 7<br> [0x80000106]:sw a0, 0(ra)<br>     |
|   2|[0x80003014]<br>0x00400000|- rs1 : x8<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -2<br> - rs1_val == 4194304<br> |[0x8000010e]:c.andi s0, 62<br> [0x80000110]:sw fp, 4(ra)<br>    |
|   3|[0x80003018]<br>0x00000004|- rs1 : x13<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 4<br> - rs1_val == -4097<br>                            |[0x8000011c]:c.andi a3, 4<br> [0x8000011e]:sw a3, 8(ra)<br>     |
|   4|[0x8000301c]<br>0xFFFF4AF0|- rs1 : x15<br> - rs1_val < 0 and imm_val < 0<br>                                                                      |[0x8000012a]:c.andi a5, 48<br> [0x8000012c]:sw a5, 12(ra)<br>   |
|   5|[0x80003020]<br>0x00000000|- rs1 : x9<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br>                                                       |[0x80000134]:c.andi s1, 32<br> [0x80000136]:sw s1, 16(ra)<br>   |
|   6|[0x80003024]<br>0x00000000|- rs1 : x11<br> - imm_val == 0<br> - rs1_val == 128<br>                                                                |[0x8000013e]:c.andi a1, 0<br> [0x80000140]:sw a1, 20(ra)<br>    |
|   7|[0x80003028]<br>0x00000000|- rs1 : x14<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == 4096<br>                                |[0x80000148]:c.andi a4, 31<br> [0x8000014a]:sw a4, 24(ra)<br>   |
|   8|[0x8000302c]<br>0x00000001|- rs1 : x12<br> - imm_val == 1<br>                                                                                     |[0x80000156]:c.andi a2, 1<br> [0x80000158]:sw a2, 28(ra)<br>    |
|   9|[0x80003030]<br>0x80000000|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                           |[0x80000160]:c.andi a0, 57<br> [0x80000162]:sw a0, 32(ra)<br>   |
|  10|[0x80003034]<br>0x00000000|- rs1_val == 0<br> - rs1_val==0 and imm_val==5<br>                                                                     |[0x8000016a]:c.andi a0, 5<br> [0x8000016c]:sw a0, 36(ra)<br>    |
|  11|[0x80003038]<br>0x0000001F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                           |[0x80000178]:c.andi a0, 31<br> [0x8000017a]:sw a0, 40(ra)<br>   |
|  12|[0x8000303c]<br>0x00000000|- rs1_val == 1<br>                                                                                                     |[0x80000182]:c.andi a0, 0<br> [0x80000184]:sw a0, 44(ra)<br>    |
|  13|[0x80003040]<br>0x00000000|- imm_val == 2<br> - rs1_val == 2097152<br>                                                                            |[0x8000018c]:c.andi a0, 2<br> [0x8000018e]:sw a0, 48(ra)<br>    |
|  14|[0x80003044]<br>0x00000008|- imm_val == 8<br> - rs1_val == -1431655766<br>                                                                        |[0x8000019a]:c.andi a0, 8<br> [0x8000019c]:sw a0, 52(ra)<br>    |
|  15|[0x80003048]<br>0x00000010|- imm_val == 16<br> - rs1_val == 1431655765<br>                                                                        |[0x800001a8]:c.andi a0, 16<br> [0x800001aa]:sw a0, 56(ra)<br>   |
|  16|[0x8000304c]<br>0xBFFFFFFD|- imm_val == -3<br> - rs1_val == -1073741825<br>                                                                       |[0x800001b6]:c.andi a0, 61<br> [0x800001b8]:sw a0, 60(ra)<br>   |
|  17|[0x80003050]<br>0xFFFFFFEB|- imm_val == -5<br> - rs1_val == -17<br>                                                                               |[0x800001c0]:c.andi a0, 59<br> [0x800001c2]:sw a0, 64(ra)<br>   |
|  18|[0x80003054]<br>0xFFFF4AF5|- imm_val == -9<br>                                                                                                    |[0x800001ce]:c.andi a0, 55<br> [0x800001d0]:sw a0, 68(ra)<br>   |
|  19|[0x80003058]<br>0xFFF7FFEF|- imm_val == -17<br> - rs1_val == -524289<br>                                                                          |[0x800001dc]:c.andi a0, 47<br> [0x800001de]:sw a0, 72(ra)<br>   |
|  20|[0x8000305c]<br>0x00000014|- imm_val == 21<br>                                                                                                    |[0x800001e6]:c.andi a0, 21<br> [0x800001e8]:sw a0, 76(ra)<br>   |
|  21|[0x80003060]<br>0x00000800|- imm_val == -22<br> - rs1_val == 2048<br>                                                                             |[0x800001f4]:c.andi a0, 42<br> [0x800001f6]:sw a0, 80(ra)<br>   |
|  22|[0x80003064]<br>0x00000000|- rs1_val == 2<br> - rs1_val==2 and imm_val==9<br>                                                                     |[0x800001fe]:c.andi a0, 9<br> [0x80000200]:sw a0, 84(ra)<br>    |
|  23|[0x80003068]<br>0x00000004|- rs1_val == 4<br>                                                                                                     |[0x80000208]:c.andi a0, 54<br> [0x8000020a]:sw a0, 88(ra)<br>   |
|  24|[0x8000306c]<br>0x00000008|- rs1_val == 8<br>                                                                                                     |[0x80000212]:c.andi a0, 63<br> [0x80000214]:sw a0, 92(ra)<br>   |
|  25|[0x80003070]<br>0x00000010|- rs1_val == 16<br>                                                                                                    |[0x8000021c]:c.andi a0, 59<br> [0x8000021e]:sw a0, 96(ra)<br>   |
|  26|[0x80003074]<br>0x00000000|- rs1_val == 32<br>                                                                                                    |[0x80000226]:c.andi a0, 9<br> [0x80000228]:sw a0, 100(ra)<br>   |
|  27|[0x80003078]<br>0x00000000|- rs1_val == 64<br>                                                                                                    |[0x80000230]:c.andi a0, 4<br> [0x80000232]:sw a0, 104(ra)<br>   |
|  28|[0x8000307c]<br>0x00000000|- rs1_val == 256<br>                                                                                                   |[0x8000023a]:c.andi a0, 3<br> [0x8000023c]:sw a0, 108(ra)<br>   |
|  29|[0x80003080]<br>0x00000200|- rs1_val == 512<br>                                                                                                   |[0x80000244]:c.andi a0, 47<br> [0x80000246]:sw a0, 112(ra)<br>  |
|  30|[0x80003084]<br>0x00000400|- rs1_val == 1024<br>                                                                                                  |[0x8000024e]:c.andi a0, 59<br> [0x80000250]:sw a0, 116(ra)<br>  |
|  31|[0x80003088]<br>0x00002000|- rs1_val == 8192<br>                                                                                                  |[0x80000258]:c.andi a0, 54<br> [0x8000025a]:sw a0, 120(ra)<br>  |
|  32|[0x8000308c]<br>0x00004000|- rs1_val == 16384<br>                                                                                                 |[0x80000262]:c.andi a0, 54<br> [0x80000264]:sw a0, 124(ra)<br>  |
|  33|[0x80003090]<br>0x00000000|- rs1_val == 32768<br>                                                                                                 |[0x8000026c]:c.andi a0, 11<br> [0x8000026e]:sw a0, 128(ra)<br>  |
|  34|[0x80003094]<br>0x00000000|- rs1_val == 65536<br>                                                                                                 |[0x80000276]:c.andi a0, 5<br> [0x80000278]:sw a0, 132(ra)<br>   |
|  35|[0x80003098]<br>0x00000000|- rs1_val == 131072<br>                                                                                                |[0x80000280]:c.andi a0, 5<br> [0x80000282]:sw a0, 136(ra)<br>   |
|  36|[0x8000309c]<br>0x00000000|- rs1_val == 262144<br>                                                                                                |[0x8000028a]:c.andi a0, 31<br> [0x8000028c]:sw a0, 140(ra)<br>  |
|  37|[0x800030a0]<br>0x00000000|- rs1_val == 524288<br>                                                                                                |[0x80000294]:c.andi a0, 0<br> [0x80000296]:sw a0, 144(ra)<br>   |
|  38|[0x800030a4]<br>0x00000000|- rs1_val == 1048576<br>                                                                                               |[0x8000029e]:c.andi a0, 5<br> [0x800002a0]:sw a0, 148(ra)<br>   |
|  39|[0x800030a8]<br>0x00000000|- rs1_val == 8388608<br>                                                                                               |[0x800002a8]:c.andi a0, 31<br> [0x800002aa]:sw a0, 152(ra)<br>  |
|  40|[0x800030ac]<br>0x00000000|- rs1_val == 16777216<br>                                                                                              |[0x800002b2]:c.andi a0, 11<br> [0x800002b4]:sw a0, 156(ra)<br>  |
|  41|[0x800030b0]<br>0x00000000|- rs1_val == 33554432<br>                                                                                              |[0x800002bc]:c.andi a0, 0<br> [0x800002be]:sw a0, 160(ra)<br>   |
|  42|[0x800030b4]<br>0x00000000|- rs1_val == 67108864<br>                                                                                              |[0x800002c6]:c.andi a0, 15<br> [0x800002c8]:sw a0, 164(ra)<br>  |
|  43|[0x800030b8]<br>0x08000000|- rs1_val == 134217728<br>                                                                                             |[0x800002d0]:c.andi a0, 54<br> [0x800002d2]:sw a0, 168(ra)<br>  |
|  44|[0x800030bc]<br>0x00000000|- rs1_val == 268435456<br>                                                                                             |[0x800002da]:c.andi a0, 31<br> [0x800002dc]:sw a0, 172(ra)<br>  |
|  45|[0x800030c0]<br>0x00000000|- rs1_val == 536870912<br>                                                                                             |[0x800002e4]:c.andi a0, 5<br> [0x800002e6]:sw a0, 176(ra)<br>   |
|  46|[0x800030c4]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                            |[0x800002ee]:c.andi a0, 0<br> [0x800002f0]:sw a0, 180(ra)<br>   |
|  47|[0x800030c8]<br>0xFFFFFFFE|- rs1_val == -2<br>                                                                                                    |[0x800002f8]:c.andi a0, 62<br> [0x800002fa]:sw a0, 184(ra)<br>  |
|  48|[0x800030cc]<br>0x00000000|- rs1_val == -3<br>                                                                                                    |[0x80000302]:c.andi a0, 2<br> [0x80000304]:sw a0, 188(ra)<br>   |
|  49|[0x800030d0]<br>0x0000000A|- rs1_val == -5<br>                                                                                                    |[0x8000030c]:c.andi a0, 10<br> [0x8000030e]:sw a0, 192(ra)<br>  |
|  50|[0x800030d4]<br>0x00000004|- rs1_val == -9<br>                                                                                                    |[0x80000316]:c.andi a0, 4<br> [0x80000318]:sw a0, 196(ra)<br>   |
|  51|[0x800030d8]<br>0x00000004|- rs1_val == -33<br>                                                                                                   |[0x80000320]:c.andi a0, 4<br> [0x80000322]:sw a0, 200(ra)<br>   |
|  52|[0x800030dc]<br>0x00000004|- rs1_val == -65<br>                                                                                                   |[0x8000032a]:c.andi a0, 4<br> [0x8000032c]:sw a0, 204(ra)<br>   |
|  53|[0x800030e0]<br>0x0000000B|- rs1_val == -129<br>                                                                                                  |[0x80000334]:c.andi a0, 11<br> [0x80000336]:sw a0, 208(ra)<br>  |
|  54|[0x800030e4]<br>0x00000009|- rs1_val == -257<br>                                                                                                  |[0x8000033e]:c.andi a0, 9<br> [0x80000340]:sw a0, 212(ra)<br>   |
|  55|[0x800030e8]<br>0x00000002|- rs1_val == -513<br>                                                                                                  |[0x80000348]:c.andi a0, 2<br> [0x8000034a]:sw a0, 216(ra)<br>   |
|  56|[0x800030ec]<br>0x00000009|- rs1_val == -1025<br>                                                                                                 |[0x80000352]:c.andi a0, 9<br> [0x80000354]:sw a0, 220(ra)<br>   |
|  57|[0x800030f0]<br>0x00000006|- rs1_val == -2049<br>                                                                                                 |[0x80000360]:c.andi a0, 6<br> [0x80000362]:sw a0, 224(ra)<br>   |
|  58|[0x800030f4]<br>0xFFFFDFF6|- rs1_val == -8193<br>                                                                                                 |[0x8000036e]:c.andi a0, 54<br> [0x80000370]:sw a0, 228(ra)<br>  |
|  59|[0x800030f8]<br>0x00000005|- rs1_val == -16385<br>                                                                                                |[0x8000037c]:c.andi a0, 5<br> [0x8000037e]:sw a0, 232(ra)<br>   |
|  60|[0x800030fc]<br>0xFFFF7FFB|- rs1_val == -32769<br>                                                                                                |[0x8000038a]:c.andi a0, 59<br> [0x8000038c]:sw a0, 236(ra)<br>  |
|  61|[0x80003100]<br>0x00000004|- rs1_val == -65537<br>                                                                                                |[0x80000398]:c.andi a0, 4<br> [0x8000039a]:sw a0, 240(ra)<br>   |
|  62|[0x80003104]<br>0xFFFDFFFE|- rs1_val == -131073<br>                                                                                               |[0x800003a6]:c.andi a0, 62<br> [0x800003a8]:sw a0, 244(ra)<br>  |
|  63|[0x80003108]<br>0x00000007|- rs1_val == -262145<br>                                                                                               |[0x800003b4]:c.andi a0, 7<br> [0x800003b6]:sw a0, 248(ra)<br>   |
|  64|[0x8000310c]<br>0x00000005|- rs1_val == -1048577<br>                                                                                              |[0x800003c2]:c.andi a0, 5<br> [0x800003c4]:sw a0, 252(ra)<br>   |
|  65|[0x80003110]<br>0x00000004|- rs1_val == -2097153<br>                                                                                              |[0x800003d0]:c.andi a0, 4<br> [0x800003d2]:sw a0, 256(ra)<br>   |
|  66|[0x80003114]<br>0x00000004|- rs1_val == -4194305<br>                                                                                              |[0x800003de]:c.andi a0, 4<br> [0x800003e0]:sw a0, 260(ra)<br>   |
|  67|[0x80003118]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                              |[0x800003ec]:c.andi a0, 63<br> [0x800003ee]:sw a0, 264(ra)<br>  |
|  68|[0x8000311c]<br>0x00000003|- rs1_val == -16777217<br>                                                                                             |[0x800003fa]:c.andi a0, 3<br> [0x800003fc]:sw a0, 268(ra)<br>   |
|  69|[0x80003120]<br>0x0000001F|- rs1_val == -33554433<br>                                                                                             |[0x80000408]:c.andi a0, 31<br> [0x8000040a]:sw a0, 272(ra)<br>  |
|  70|[0x80003124]<br>0x00000004|- rs1_val == -67108865<br>                                                                                             |[0x80000416]:c.andi a0, 4<br> [0x80000418]:sw a0, 276(ra)<br>   |
|  71|[0x80003128]<br>0x00000009|- rs1_val == -134217729<br>                                                                                            |[0x80000424]:c.andi a0, 9<br> [0x80000426]:sw a0, 280(ra)<br>   |
|  72|[0x8000312c]<br>0x00000005|- rs1_val == -268435457<br>                                                                                            |[0x80000432]:c.andi a0, 5<br> [0x80000434]:sw a0, 284(ra)<br>   |
|  73|[0x80003130]<br>0xDFFFFFFF|- rs1_val == -536870913<br>                                                                                            |[0x80000440]:c.andi a0, 63<br> [0x80000442]:sw a0, 288(ra)<br>  |
|  74|[0x80003134]<br>0x00000003|- rs1_val==3 and imm_val==3<br>                                                                                        |[0x8000044a]:c.andi a0, 3<br> [0x8000044c]:sw a0, 292(ra)<br>   |
|  75|[0x80003138]<br>0x00000001|- rs1_val==3 and imm_val==5<br>                                                                                        |[0x80000454]:c.andi a0, 5<br> [0x80000456]:sw a0, 296(ra)<br>   |
|  76|[0x8000313c]<br>0x00000002|- rs1_val==3 and imm_val==10<br>                                                                                       |[0x8000045e]:c.andi a0, 10<br> [0x80000460]:sw a0, 300(ra)<br>  |
|  77|[0x80003140]<br>0x00000002|- rs1_val==3 and imm_val==6<br>                                                                                        |[0x80000468]:c.andi a0, 6<br> [0x8000046a]:sw a0, 304(ra)<br>   |
|  78|[0x80003144]<br>0x00000002|- rs1_val==3 and imm_val==-2<br>                                                                                       |[0x80000472]:c.andi a0, 62<br> [0x80000474]:sw a0, 308(ra)<br>  |
|  79|[0x80003148]<br>0x00000003|- rs1_val==3 and imm_val==-5<br>                                                                                       |[0x8000047c]:c.andi a0, 59<br> [0x8000047e]:sw a0, 312(ra)<br>  |
|  80|[0x8000314c]<br>0x00000002|- rs1_val==3 and imm_val==2<br>                                                                                        |[0x80000486]:c.andi a0, 2<br> [0x80000488]:sw a0, 316(ra)<br>   |
|  81|[0x80003150]<br>0x00000000|- rs1_val==3 and imm_val==4<br>                                                                                        |[0x80000490]:c.andi a0, 4<br> [0x80000492]:sw a0, 320(ra)<br>   |
|  82|[0x80003154]<br>0x00000001|- rs1_val==3 and imm_val==9<br>                                                                                        |[0x8000049a]:c.andi a0, 9<br> [0x8000049c]:sw a0, 324(ra)<br>   |
|  83|[0x80003158]<br>0x00000000|- rs1_val==3 and imm_val==0<br>                                                                                        |[0x800004a4]:c.andi a0, 0<br> [0x800004a6]:sw a0, 328(ra)<br>   |
|  84|[0x8000315c]<br>0x00000003|- rs1_val==3 and imm_val==11<br>                                                                                       |[0x800004ae]:c.andi a0, 11<br> [0x800004b0]:sw a0, 332(ra)<br>  |
|  85|[0x80003160]<br>0x00000003|- rs1_val==3 and imm_val==7<br>                                                                                        |[0x800004b8]:c.andi a0, 7<br> [0x800004ba]:sw a0, 336(ra)<br>   |
|  86|[0x80003164]<br>0x00000003|- rs1_val==3 and imm_val==-1<br>                                                                                       |[0x800004c2]:c.andi a0, 63<br> [0x800004c4]:sw a0, 340(ra)<br>  |
|  87|[0x80003168]<br>0x00000000|- rs1_val==3 and imm_val==-4<br>                                                                                       |[0x800004cc]:c.andi a0, 60<br> [0x800004ce]:sw a0, 344(ra)<br>  |
|  88|[0x8000316c]<br>0x00000001|- rs1_val==1431655765 and imm_val==3<br>                                                                               |[0x800004da]:c.andi a0, 3<br> [0x800004dc]:sw a0, 348(ra)<br>   |
|  89|[0x80003170]<br>0x00000005|- rs1_val==1431655765 and imm_val==5<br>                                                                               |[0x800004e8]:c.andi a0, 5<br> [0x800004ea]:sw a0, 352(ra)<br>   |
|  90|[0x80003174]<br>0x00000000|- rs1_val==1431655765 and imm_val==10<br>                                                                              |[0x800004f6]:c.andi a0, 10<br> [0x800004f8]:sw a0, 356(ra)<br>  |
|  91|[0x80003178]<br>0x00000004|- rs1_val==1431655765 and imm_val==6<br>                                                                               |[0x80000504]:c.andi a0, 6<br> [0x80000506]:sw a0, 360(ra)<br>   |
|  92|[0x8000317c]<br>0x55555554|- rs1_val==1431655765 and imm_val==-2<br>                                                                              |[0x80000512]:c.andi a0, 62<br> [0x80000514]:sw a0, 364(ra)<br>  |
|  93|[0x80003180]<br>0x55555551|- rs1_val==1431655765 and imm_val==-5<br>                                                                              |[0x80000520]:c.andi a0, 59<br> [0x80000522]:sw a0, 368(ra)<br>  |
|  94|[0x80003184]<br>0x00000000|- rs1_val==1431655765 and imm_val==2<br>                                                                               |[0x8000052e]:c.andi a0, 2<br> [0x80000530]:sw a0, 372(ra)<br>   |
|  95|[0x80003188]<br>0x00000004|- rs1_val==1431655765 and imm_val==4<br>                                                                               |[0x8000053c]:c.andi a0, 4<br> [0x8000053e]:sw a0, 376(ra)<br>   |
|  96|[0x8000318c]<br>0x00000001|- rs1_val==1431655765 and imm_val==9<br>                                                                               |[0x8000054a]:c.andi a0, 9<br> [0x8000054c]:sw a0, 380(ra)<br>   |
|  97|[0x80003190]<br>0x00000000|- rs1_val==1431655765 and imm_val==0<br>                                                                               |[0x80000558]:c.andi a0, 0<br> [0x8000055a]:sw a0, 384(ra)<br>   |
|  98|[0x80003194]<br>0x00000001|- rs1_val==1431655765 and imm_val==11<br>                                                                              |[0x80000566]:c.andi a0, 11<br> [0x80000568]:sw a0, 388(ra)<br>  |
|  99|[0x80003198]<br>0x00000005|- rs1_val==1431655765 and imm_val==7<br>                                                                               |[0x80000574]:c.andi a0, 7<br> [0x80000576]:sw a0, 392(ra)<br>   |
| 100|[0x8000319c]<br>0x55555555|- rs1_val==1431655765 and imm_val==-1<br>                                                                              |[0x80000582]:c.andi a0, 63<br> [0x80000584]:sw a0, 396(ra)<br>  |
| 101|[0x800031a0]<br>0x55555554|- rs1_val==1431655765 and imm_val==-4<br>                                                                              |[0x80000590]:c.andi a0, 60<br> [0x80000592]:sw a0, 400(ra)<br>  |
| 102|[0x800031a4]<br>0x00000002|- rs1_val==-1431655766 and imm_val==3<br>                                                                              |[0x8000059e]:c.andi a0, 3<br> [0x800005a0]:sw a0, 404(ra)<br>   |
| 103|[0x800031a8]<br>0x00000000|- rs1_val==-1431655766 and imm_val==5<br>                                                                              |[0x800005ac]:c.andi a0, 5<br> [0x800005ae]:sw a0, 408(ra)<br>   |
| 104|[0x800031ac]<br>0x0000000A|- rs1_val==-1431655766 and imm_val==10<br>                                                                             |[0x800005ba]:c.andi a0, 10<br> [0x800005bc]:sw a0, 412(ra)<br>  |
| 105|[0x800031b0]<br>0x00000002|- rs1_val==-1431655766 and imm_val==6<br>                                                                              |[0x800005c8]:c.andi a0, 6<br> [0x800005ca]:sw a0, 416(ra)<br>   |
| 106|[0x800031b4]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==-2<br>                                                                             |[0x800005d6]:c.andi a0, 62<br> [0x800005d8]:sw a0, 420(ra)<br>  |
| 107|[0x800031b8]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==-5<br>                                                                             |[0x800005e4]:c.andi a0, 59<br> [0x800005e6]:sw a0, 424(ra)<br>  |
| 108|[0x800031bc]<br>0x00000002|- rs1_val==-1431655766 and imm_val==2<br>                                                                              |[0x800005f2]:c.andi a0, 2<br> [0x800005f4]:sw a0, 428(ra)<br>   |
| 109|[0x800031c0]<br>0x00000000|- rs1_val==-1431655766 and imm_val==4<br>                                                                              |[0x80000600]:c.andi a0, 4<br> [0x80000602]:sw a0, 432(ra)<br>   |
| 110|[0x800031c4]<br>0x00000008|- rs1_val==-1431655766 and imm_val==9<br>                                                                              |[0x8000060e]:c.andi a0, 9<br> [0x80000610]:sw a0, 436(ra)<br>   |
| 111|[0x800031c8]<br>0x00000000|- rs1_val==-1431655766 and imm_val==0<br>                                                                              |[0x8000061c]:c.andi a0, 0<br> [0x8000061e]:sw a0, 440(ra)<br>   |
| 112|[0x800031cc]<br>0x0000000A|- rs1_val==-1431655766 and imm_val==11<br>                                                                             |[0x8000062a]:c.andi a0, 11<br> [0x8000062c]:sw a0, 444(ra)<br>  |
| 113|[0x800031d0]<br>0x00000002|- rs1_val==-1431655766 and imm_val==7<br>                                                                              |[0x80000638]:c.andi a0, 7<br> [0x8000063a]:sw a0, 448(ra)<br>   |
| 114|[0x800031d4]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==-1<br>                                                                             |[0x80000646]:c.andi a0, 63<br> [0x80000648]:sw a0, 452(ra)<br>  |
| 115|[0x800031d8]<br>0xAAAAAAA8|- rs1_val==-1431655766 and imm_val==-4<br>                                                                             |[0x80000654]:c.andi a0, 60<br> [0x80000656]:sw a0, 456(ra)<br>  |
| 116|[0x800031dc]<br>0x00000001|- rs1_val==5 and imm_val==3<br>                                                                                        |[0x8000065e]:c.andi a0, 3<br> [0x80000660]:sw a0, 460(ra)<br>   |
| 117|[0x800031e0]<br>0x00000005|- rs1_val==5 and imm_val==5<br>                                                                                        |[0x80000668]:c.andi a0, 5<br> [0x8000066a]:sw a0, 464(ra)<br>   |
| 118|[0x800031e4]<br>0x00000000|- rs1_val==5 and imm_val==10<br>                                                                                       |[0x80000672]:c.andi a0, 10<br> [0x80000674]:sw a0, 468(ra)<br>  |
| 119|[0x800031e8]<br>0x00000004|- rs1_val==5 and imm_val==6<br>                                                                                        |[0x8000067c]:c.andi a0, 6<br> [0x8000067e]:sw a0, 472(ra)<br>   |
| 120|[0x800031ec]<br>0x00000004|- rs1_val==5 and imm_val==-2<br>                                                                                       |[0x80000686]:c.andi a0, 62<br> [0x80000688]:sw a0, 476(ra)<br>  |
| 121|[0x800031f0]<br>0x00000001|- rs1_val==5 and imm_val==-5<br>                                                                                       |[0x80000690]:c.andi a0, 59<br> [0x80000692]:sw a0, 480(ra)<br>  |
| 122|[0x800031f4]<br>0x00000000|- rs1_val==5 and imm_val==2<br>                                                                                        |[0x8000069a]:c.andi a0, 2<br> [0x8000069c]:sw a0, 484(ra)<br>   |
| 123|[0x800031f8]<br>0x00000004|- rs1_val==5 and imm_val==4<br>                                                                                        |[0x800006a4]:c.andi a0, 4<br> [0x800006a6]:sw a0, 488(ra)<br>   |
| 124|[0x800031fc]<br>0x00000001|- rs1_val==5 and imm_val==9<br>                                                                                        |[0x800006ae]:c.andi a0, 9<br> [0x800006b0]:sw a0, 492(ra)<br>   |
| 125|[0x80003200]<br>0x00000000|- rs1_val==5 and imm_val==0<br>                                                                                        |[0x800006b8]:c.andi a0, 0<br> [0x800006ba]:sw a0, 496(ra)<br>   |
| 126|[0x80003204]<br>0x00000001|- rs1_val==5 and imm_val==11<br>                                                                                       |[0x800006c2]:c.andi a0, 11<br> [0x800006c4]:sw a0, 500(ra)<br>  |
| 127|[0x80003208]<br>0x00000005|- rs1_val==5 and imm_val==7<br>                                                                                        |[0x800006cc]:c.andi a0, 7<br> [0x800006ce]:sw a0, 504(ra)<br>   |
| 128|[0x8000320c]<br>0x00000005|- rs1_val==5 and imm_val==-1<br>                                                                                       |[0x800006d6]:c.andi a0, 63<br> [0x800006d8]:sw a0, 508(ra)<br>  |
| 129|[0x80003210]<br>0x00000004|- rs1_val==5 and imm_val==-4<br>                                                                                       |[0x800006e0]:c.andi a0, 60<br> [0x800006e2]:sw a0, 512(ra)<br>  |
| 130|[0x80003214]<br>0x00000003|- rs1_val==858993459 and imm_val==3<br>                                                                                |[0x800006ee]:c.andi a0, 3<br> [0x800006f0]:sw a0, 516(ra)<br>   |
| 131|[0x80003218]<br>0x00000001|- rs1_val==858993459 and imm_val==5<br>                                                                                |[0x800006fc]:c.andi a0, 5<br> [0x800006fe]:sw a0, 520(ra)<br>   |
| 132|[0x8000321c]<br>0x00000002|- rs1_val==858993459 and imm_val==10<br>                                                                               |[0x8000070a]:c.andi a0, 10<br> [0x8000070c]:sw a0, 524(ra)<br>  |
| 133|[0x80003220]<br>0x00000002|- rs1_val==858993459 and imm_val==6<br>                                                                                |[0x80000718]:c.andi a0, 6<br> [0x8000071a]:sw a0, 528(ra)<br>   |
| 134|[0x80003224]<br>0x33333332|- rs1_val==858993459 and imm_val==-2<br>                                                                               |[0x80000726]:c.andi a0, 62<br> [0x80000728]:sw a0, 532(ra)<br>  |
| 135|[0x80003228]<br>0x33333333|- rs1_val==858993459 and imm_val==-5<br>                                                                               |[0x80000734]:c.andi a0, 59<br> [0x80000736]:sw a0, 536(ra)<br>  |
| 136|[0x8000322c]<br>0x00000002|- rs1_val==858993459 and imm_val==2<br>                                                                                |[0x80000742]:c.andi a0, 2<br> [0x80000744]:sw a0, 540(ra)<br>   |
| 137|[0x80003230]<br>0x00000000|- rs1_val==858993459 and imm_val==4<br>                                                                                |[0x80000750]:c.andi a0, 4<br> [0x80000752]:sw a0, 544(ra)<br>   |
| 138|[0x80003234]<br>0x00000001|- rs1_val==858993459 and imm_val==9<br>                                                                                |[0x8000075e]:c.andi a0, 9<br> [0x80000760]:sw a0, 548(ra)<br>   |
| 139|[0x80003238]<br>0x00000000|- rs1_val==858993459 and imm_val==0<br>                                                                                |[0x8000076c]:c.andi a0, 0<br> [0x8000076e]:sw a0, 552(ra)<br>   |
| 140|[0x8000323c]<br>0x00000003|- rs1_val==858993459 and imm_val==11<br>                                                                               |[0x8000077a]:c.andi a0, 11<br> [0x8000077c]:sw a0, 556(ra)<br>  |
| 141|[0x80003240]<br>0x00000003|- rs1_val==858993459 and imm_val==7<br>                                                                                |[0x80000788]:c.andi a0, 7<br> [0x8000078a]:sw a0, 560(ra)<br>   |
| 142|[0x80003244]<br>0x33333333|- rs1_val==858993459 and imm_val==-1<br>                                                                               |[0x80000796]:c.andi a0, 63<br> [0x80000798]:sw a0, 564(ra)<br>  |
| 143|[0x80003248]<br>0x33333330|- rs1_val==858993459 and imm_val==-4<br>                                                                               |[0x800007a4]:c.andi a0, 60<br> [0x800007a6]:sw a0, 568(ra)<br>  |
| 144|[0x8000324c]<br>0x00000002|- rs1_val==1717986918 and imm_val==3<br>                                                                               |[0x800007b2]:c.andi a0, 3<br> [0x800007b4]:sw a0, 572(ra)<br>   |
| 145|[0x80003250]<br>0x00000004|- rs1_val==1717986918 and imm_val==5<br>                                                                               |[0x800007c0]:c.andi a0, 5<br> [0x800007c2]:sw a0, 576(ra)<br>   |
| 146|[0x80003254]<br>0x00000002|- rs1_val==1717986918 and imm_val==10<br>                                                                              |[0x800007ce]:c.andi a0, 10<br> [0x800007d0]:sw a0, 580(ra)<br>  |
| 147|[0x80003258]<br>0x00000006|- rs1_val==1717986918 and imm_val==6<br>                                                                               |[0x800007dc]:c.andi a0, 6<br> [0x800007de]:sw a0, 584(ra)<br>   |
| 148|[0x8000325c]<br>0x66666666|- rs1_val==1717986918 and imm_val==-2<br>                                                                              |[0x800007ea]:c.andi a0, 62<br> [0x800007ec]:sw a0, 588(ra)<br>  |
| 149|[0x80003260]<br>0x66666662|- rs1_val==1717986918 and imm_val==-5<br>                                                                              |[0x800007f8]:c.andi a0, 59<br> [0x800007fa]:sw a0, 592(ra)<br>  |
| 150|[0x80003264]<br>0x00000002|- rs1_val==1717986918 and imm_val==2<br>                                                                               |[0x80000806]:c.andi a0, 2<br> [0x80000808]:sw a0, 596(ra)<br>   |
| 151|[0x80003268]<br>0x00000004|- rs1_val==1717986918 and imm_val==4<br>                                                                               |[0x80000814]:c.andi a0, 4<br> [0x80000816]:sw a0, 600(ra)<br>   |
| 152|[0x8000326c]<br>0x00000000|- rs1_val==1717986918 and imm_val==9<br>                                                                               |[0x80000822]:c.andi a0, 9<br> [0x80000824]:sw a0, 604(ra)<br>   |
| 153|[0x80003270]<br>0x00000000|- rs1_val==1717986918 and imm_val==0<br>                                                                               |[0x80000830]:c.andi a0, 0<br> [0x80000832]:sw a0, 608(ra)<br>   |
| 154|[0x80003274]<br>0x00000002|- rs1_val==1717986918 and imm_val==11<br>                                                                              |[0x8000083e]:c.andi a0, 11<br> [0x80000840]:sw a0, 612(ra)<br>  |
| 155|[0x80003278]<br>0x00000006|- rs1_val==1717986918 and imm_val==7<br>                                                                               |[0x8000084c]:c.andi a0, 7<br> [0x8000084e]:sw a0, 616(ra)<br>   |
| 156|[0x8000327c]<br>0x66666666|- rs1_val==1717986918 and imm_val==-1<br>                                                                              |[0x8000085a]:c.andi a0, 63<br> [0x8000085c]:sw a0, 620(ra)<br>  |
| 157|[0x80003280]<br>0x66666664|- rs1_val==1717986918 and imm_val==-4<br>                                                                              |[0x80000868]:c.andi a0, 60<br> [0x8000086a]:sw a0, 624(ra)<br>  |
| 158|[0x80003284]<br>0x00000000|- rs1_val==-46340 and imm_val==3<br>                                                                                   |[0x80000876]:c.andi a0, 3<br> [0x80000878]:sw a0, 628(ra)<br>   |
| 159|[0x80003288]<br>0x00000004|- rs1_val==-46340 and imm_val==5<br>                                                                                   |[0x80000884]:c.andi a0, 5<br> [0x80000886]:sw a0, 632(ra)<br>   |
| 160|[0x8000328c]<br>0x00000008|- rs1_val==-46340 and imm_val==10<br>                                                                                  |[0x80000892]:c.andi a0, 10<br> [0x80000894]:sw a0, 636(ra)<br>  |
| 161|[0x80003290]<br>0x00000004|- rs1_val==-46340 and imm_val==6<br>                                                                                   |[0x800008a0]:c.andi a0, 6<br> [0x800008a2]:sw a0, 640(ra)<br>   |
| 162|[0x80003294]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==-2<br>                                                                                  |[0x800008ae]:c.andi a0, 62<br> [0x800008b0]:sw a0, 644(ra)<br>  |
| 163|[0x80003298]<br>0xFFFF4AF8|- rs1_val==-46340 and imm_val==-5<br>                                                                                  |[0x800008bc]:c.andi a0, 59<br> [0x800008be]:sw a0, 648(ra)<br>  |
| 164|[0x8000329c]<br>0x00000000|- rs1_val==-46340 and imm_val==2<br>                                                                                   |[0x800008ca]:c.andi a0, 2<br> [0x800008cc]:sw a0, 652(ra)<br>   |
| 165|[0x800032a0]<br>0x00000004|- rs1_val==-46340 and imm_val==4<br>                                                                                   |[0x800008d8]:c.andi a0, 4<br> [0x800008da]:sw a0, 656(ra)<br>   |
| 166|[0x800032a4]<br>0x00000008|- rs1_val==-46340 and imm_val==9<br>                                                                                   |[0x800008e6]:c.andi a0, 9<br> [0x800008e8]:sw a0, 660(ra)<br>   |
| 167|[0x800032a8]<br>0x00000000|- rs1_val==-46340 and imm_val==0<br>                                                                                   |[0x800008f4]:c.andi a0, 0<br> [0x800008f6]:sw a0, 664(ra)<br>   |
| 168|[0x800032ac]<br>0x00000008|- rs1_val==-46340 and imm_val==11<br>                                                                                  |[0x80000902]:c.andi a0, 11<br> [0x80000904]:sw a0, 668(ra)<br>  |
| 169|[0x800032b0]<br>0x00000004|- rs1_val==-46340 and imm_val==7<br>                                                                                   |[0x80000910]:c.andi a0, 7<br> [0x80000912]:sw a0, 672(ra)<br>   |
| 170|[0x800032b4]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==-1<br>                                                                                  |[0x8000091e]:c.andi a0, 63<br> [0x80000920]:sw a0, 676(ra)<br>  |
| 171|[0x800032b8]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==-4<br>                                                                                  |[0x8000092c]:c.andi a0, 60<br> [0x8000092e]:sw a0, 680(ra)<br>  |
| 172|[0x800032bc]<br>0x00000000|- rs1_val==46340 and imm_val==3<br>                                                                                    |[0x8000093a]:c.andi a0, 3<br> [0x8000093c]:sw a0, 684(ra)<br>   |
| 173|[0x800032c0]<br>0x00000004|- rs1_val==46340 and imm_val==5<br>                                                                                    |[0x80000948]:c.andi a0, 5<br> [0x8000094a]:sw a0, 688(ra)<br>   |
| 174|[0x800032c4]<br>0x00000000|- rs1_val==46340 and imm_val==10<br>                                                                                   |[0x80000956]:c.andi a0, 10<br> [0x80000958]:sw a0, 692(ra)<br>  |
| 175|[0x800032c8]<br>0x00000004|- rs1_val==46340 and imm_val==6<br>                                                                                    |[0x80000964]:c.andi a0, 6<br> [0x80000966]:sw a0, 696(ra)<br>   |
| 176|[0x800032cc]<br>0x0000B504|- rs1_val==46340 and imm_val==-2<br>                                                                                   |[0x80000972]:c.andi a0, 62<br> [0x80000974]:sw a0, 700(ra)<br>  |
| 177|[0x800032d0]<br>0x0000B500|- rs1_val==46340 and imm_val==-5<br>                                                                                   |[0x80000980]:c.andi a0, 59<br> [0x80000982]:sw a0, 704(ra)<br>  |
| 178|[0x800032d4]<br>0x00000000|- rs1_val==46340 and imm_val==2<br>                                                                                    |[0x8000098e]:c.andi a0, 2<br> [0x80000990]:sw a0, 708(ra)<br>   |
| 179|[0x800032d8]<br>0x00000004|- rs1_val==46340 and imm_val==4<br>                                                                                    |[0x8000099c]:c.andi a0, 4<br> [0x8000099e]:sw a0, 712(ra)<br>   |
| 180|[0x800032dc]<br>0x00000000|- rs1_val==46340 and imm_val==9<br>                                                                                    |[0x800009aa]:c.andi a0, 9<br> [0x800009ac]:sw a0, 716(ra)<br>   |
| 181|[0x800032e0]<br>0x00000000|- rs1_val==46340 and imm_val==0<br>                                                                                    |[0x800009b8]:c.andi a0, 0<br> [0x800009ba]:sw a0, 720(ra)<br>   |
| 182|[0x800032e4]<br>0x00000000|- rs1_val==46340 and imm_val==11<br>                                                                                   |[0x800009c6]:c.andi a0, 11<br> [0x800009c8]:sw a0, 724(ra)<br>  |
| 183|[0x800032e8]<br>0x00000004|- rs1_val==46340 and imm_val==7<br>                                                                                    |[0x800009d4]:c.andi a0, 7<br> [0x800009d6]:sw a0, 728(ra)<br>   |
| 184|[0x800032ec]<br>0x0000B504|- rs1_val==46340 and imm_val==-1<br>                                                                                   |[0x800009e2]:c.andi a0, 63<br> [0x800009e4]:sw a0, 732(ra)<br>  |
| 185|[0x800032f0]<br>0x0000B504|- rs1_val==46340 and imm_val==-4<br>                                                                                   |[0x800009f0]:c.andi a0, 60<br> [0x800009f2]:sw a0, 736(ra)<br>  |
| 186|[0x800032f4]<br>0x00000002|- rs1_val==2 and imm_val==3<br>                                                                                        |[0x800009fa]:c.andi a0, 3<br> [0x800009fc]:sw a0, 740(ra)<br>   |
| 187|[0x800032f8]<br>0x00000000|- rs1_val==2 and imm_val==5<br>                                                                                        |[0x80000a04]:c.andi a0, 5<br> [0x80000a06]:sw a0, 744(ra)<br>   |
| 188|[0x800032fc]<br>0x00000002|- rs1_val==2 and imm_val==10<br>                                                                                       |[0x80000a0e]:c.andi a0, 10<br> [0x80000a10]:sw a0, 748(ra)<br>  |
| 189|[0x80003300]<br>0x00000002|- rs1_val==2 and imm_val==6<br>                                                                                        |[0x80000a18]:c.andi a0, 6<br> [0x80000a1a]:sw a0, 752(ra)<br>   |
| 190|[0x80003304]<br>0x00000002|- rs1_val==2 and imm_val==-2<br>                                                                                       |[0x80000a22]:c.andi a0, 62<br> [0x80000a24]:sw a0, 756(ra)<br>  |
| 191|[0x80003308]<br>0x00000002|- rs1_val==2 and imm_val==-5<br>                                                                                       |[0x80000a2c]:c.andi a0, 59<br> [0x80000a2e]:sw a0, 760(ra)<br>  |
| 192|[0x8000330c]<br>0x00000002|- rs1_val==2 and imm_val==2<br>                                                                                        |[0x80000a36]:c.andi a0, 2<br> [0x80000a38]:sw a0, 764(ra)<br>   |
| 193|[0x80003310]<br>0x00000000|- rs1_val==2 and imm_val==4<br>                                                                                        |[0x80000a40]:c.andi a0, 4<br> [0x80000a42]:sw a0, 768(ra)<br>   |
| 194|[0x80003314]<br>0x00000000|- rs1_val==2 and imm_val==0<br>                                                                                        |[0x80000a4a]:c.andi a0, 0<br> [0x80000a4c]:sw a0, 772(ra)<br>   |
| 195|[0x80003318]<br>0x00000002|- rs1_val==2 and imm_val==11<br>                                                                                       |[0x80000a54]:c.andi a0, 11<br> [0x80000a56]:sw a0, 776(ra)<br>  |
| 196|[0x8000331c]<br>0x00000002|- rs1_val==2 and imm_val==7<br>                                                                                        |[0x80000a5e]:c.andi a0, 7<br> [0x80000a60]:sw a0, 780(ra)<br>   |
| 197|[0x80003320]<br>0x00000002|- rs1_val==2 and imm_val==-1<br>                                                                                       |[0x80000a68]:c.andi a0, 63<br> [0x80000a6a]:sw a0, 784(ra)<br>  |
| 198|[0x80003324]<br>0x00000000|- rs1_val==2 and imm_val==-4<br>                                                                                       |[0x80000a72]:c.andi a0, 60<br> [0x80000a74]:sw a0, 788(ra)<br>  |
| 199|[0x80003328]<br>0x00000000|- rs1_val==1431655764 and imm_val==3<br>                                                                               |[0x80000a80]:c.andi a0, 3<br> [0x80000a82]:sw a0, 792(ra)<br>   |
| 200|[0x8000332c]<br>0x00000004|- rs1_val==1431655764 and imm_val==5<br>                                                                               |[0x80000a8e]:c.andi a0, 5<br> [0x80000a90]:sw a0, 796(ra)<br>   |
| 201|[0x80003330]<br>0x00000000|- rs1_val==1431655764 and imm_val==10<br>                                                                              |[0x80000a9c]:c.andi a0, 10<br> [0x80000a9e]:sw a0, 800(ra)<br>  |
| 202|[0x80003334]<br>0x00000004|- rs1_val==1431655764 and imm_val==6<br>                                                                               |[0x80000aaa]:c.andi a0, 6<br> [0x80000aac]:sw a0, 804(ra)<br>   |
| 203|[0x80003338]<br>0x55555554|- rs1_val==1431655764 and imm_val==-2<br>                                                                              |[0x80000ab8]:c.andi a0, 62<br> [0x80000aba]:sw a0, 808(ra)<br>  |
| 204|[0x8000333c]<br>0x55555550|- rs1_val==1431655764 and imm_val==-5<br>                                                                              |[0x80000ac6]:c.andi a0, 59<br> [0x80000ac8]:sw a0, 812(ra)<br>  |
| 205|[0x80003340]<br>0x00000000|- rs1_val==1431655764 and imm_val==2<br>                                                                               |[0x80000ad4]:c.andi a0, 2<br> [0x80000ad6]:sw a0, 816(ra)<br>   |
| 206|[0x80003344]<br>0x00000004|- rs1_val==1431655764 and imm_val==4<br>                                                                               |[0x80000ae2]:c.andi a0, 4<br> [0x80000ae4]:sw a0, 820(ra)<br>   |
| 207|[0x80003348]<br>0x00000000|- rs1_val==1431655764 and imm_val==9<br>                                                                               |[0x80000af0]:c.andi a0, 9<br> [0x80000af2]:sw a0, 824(ra)<br>   |
| 208|[0x8000334c]<br>0x00000000|- rs1_val==1431655764 and imm_val==0<br>                                                                               |[0x80000afe]:c.andi a0, 0<br> [0x80000b00]:sw a0, 828(ra)<br>   |
| 209|[0x80003350]<br>0x00000000|- rs1_val==1431655764 and imm_val==11<br>                                                                              |[0x80000b0c]:c.andi a0, 11<br> [0x80000b0e]:sw a0, 832(ra)<br>  |
| 210|[0x80003354]<br>0x00000004|- rs1_val==1431655764 and imm_val==7<br>                                                                               |[0x80000b1a]:c.andi a0, 7<br> [0x80000b1c]:sw a0, 836(ra)<br>   |
| 211|[0x80003358]<br>0x55555554|- rs1_val==1431655764 and imm_val==-1<br>                                                                              |[0x80000b28]:c.andi a0, 63<br> [0x80000b2a]:sw a0, 840(ra)<br>  |
| 212|[0x8000335c]<br>0x55555554|- rs1_val==1431655764 and imm_val==-4<br>                                                                              |[0x80000b36]:c.andi a0, 60<br> [0x80000b38]:sw a0, 844(ra)<br>  |
| 213|[0x80003360]<br>0x00000000|- rs1_val==0 and imm_val==3<br>                                                                                        |[0x80000b40]:c.andi a0, 3<br> [0x80000b42]:sw a0, 848(ra)<br>   |
| 214|[0x80003364]<br>0x00000000|- rs1_val==0 and imm_val==10<br>                                                                                       |[0x80000b4a]:c.andi a0, 10<br> [0x80000b4c]:sw a0, 852(ra)<br>  |
| 215|[0x80003368]<br>0x00000000|- rs1_val==0 and imm_val==6<br>                                                                                        |[0x80000b54]:c.andi a0, 6<br> [0x80000b56]:sw a0, 856(ra)<br>   |
| 216|[0x8000336c]<br>0x00000000|- rs1_val==0 and imm_val==-2<br>                                                                                       |[0x80000b5e]:c.andi a0, 62<br> [0x80000b60]:sw a0, 860(ra)<br>  |
| 217|[0x80003370]<br>0x00000000|- rs1_val==0 and imm_val==-5<br>                                                                                       |[0x80000b68]:c.andi a0, 59<br> [0x80000b6a]:sw a0, 864(ra)<br>  |
| 218|[0x80003374]<br>0x00000000|- rs1_val==0 and imm_val==2<br>                                                                                        |[0x80000b72]:c.andi a0, 2<br> [0x80000b74]:sw a0, 868(ra)<br>   |
| 219|[0x80003378]<br>0x00000000|- rs1_val==0 and imm_val==4<br>                                                                                        |[0x80000b7c]:c.andi a0, 4<br> [0x80000b7e]:sw a0, 872(ra)<br>   |
| 220|[0x8000337c]<br>0x00000000|- rs1_val==0 and imm_val==9<br>                                                                                        |[0x80000b86]:c.andi a0, 9<br> [0x80000b88]:sw a0, 876(ra)<br>   |
| 221|[0x80003380]<br>0x00000000|- rs1_val==0 and imm_val==0<br>                                                                                        |[0x80000b90]:c.andi a0, 0<br> [0x80000b92]:sw a0, 880(ra)<br>   |
| 222|[0x80003384]<br>0x00000000|- rs1_val==0 and imm_val==11<br>                                                                                       |[0x80000b9a]:c.andi a0, 11<br> [0x80000b9c]:sw a0, 884(ra)<br>  |
| 223|[0x80003388]<br>0x00000000|- rs1_val==0 and imm_val==7<br>                                                                                        |[0x80000ba4]:c.andi a0, 7<br> [0x80000ba6]:sw a0, 888(ra)<br>   |
| 224|[0x8000338c]<br>0x00000000|- rs1_val==0 and imm_val==-1<br>                                                                                       |[0x80000bae]:c.andi a0, 63<br> [0x80000bb0]:sw a0, 892(ra)<br>  |
| 225|[0x80003390]<br>0x00000000|- rs1_val==0 and imm_val==-4<br>                                                                                       |[0x80000bb8]:c.andi a0, 60<br> [0x80000bba]:sw a0, 896(ra)<br>  |
| 226|[0x80003394]<br>0x00000000|- rs1_val==4 and imm_val==3<br>                                                                                        |[0x80000bc2]:c.andi a0, 3<br> [0x80000bc4]:sw a0, 900(ra)<br>   |
| 227|[0x80003398]<br>0x00000004|- rs1_val==4 and imm_val==5<br>                                                                                        |[0x80000bcc]:c.andi a0, 5<br> [0x80000bce]:sw a0, 904(ra)<br>   |
| 228|[0x8000339c]<br>0x00000000|- rs1_val==4 and imm_val==10<br>                                                                                       |[0x80000bd6]:c.andi a0, 10<br> [0x80000bd8]:sw a0, 908(ra)<br>  |
| 229|[0x800033a0]<br>0x00000004|- rs1_val==4 and imm_val==6<br>                                                                                        |[0x80000be0]:c.andi a0, 6<br> [0x80000be2]:sw a0, 912(ra)<br>   |
| 230|[0x800033a4]<br>0x00000004|- rs1_val==4 and imm_val==-2<br>                                                                                       |[0x80000bea]:c.andi a0, 62<br> [0x80000bec]:sw a0, 916(ra)<br>  |
| 231|[0x800033a8]<br>0x00000000|- rs1_val==4 and imm_val==-5<br>                                                                                       |[0x80000bf4]:c.andi a0, 59<br> [0x80000bf6]:sw a0, 920(ra)<br>  |
| 232|[0x800033ac]<br>0x00000000|- rs1_val==4 and imm_val==2<br>                                                                                        |[0x80000bfe]:c.andi a0, 2<br> [0x80000c00]:sw a0, 924(ra)<br>   |
| 233|[0x800033b0]<br>0x00000004|- rs1_val==4 and imm_val==4<br>                                                                                        |[0x80000c08]:c.andi a0, 4<br> [0x80000c0a]:sw a0, 928(ra)<br>   |
| 234|[0x800033b4]<br>0x00000000|- rs1_val==4 and imm_val==9<br>                                                                                        |[0x80000c12]:c.andi a0, 9<br> [0x80000c14]:sw a0, 932(ra)<br>   |
| 235|[0x800033b8]<br>0x00000000|- rs1_val==4 and imm_val==0<br>                                                                                        |[0x80000c1c]:c.andi a0, 0<br> [0x80000c1e]:sw a0, 936(ra)<br>   |
| 236|[0x800033bc]<br>0x00000000|- rs1_val==4 and imm_val==11<br>                                                                                       |[0x80000c26]:c.andi a0, 11<br> [0x80000c28]:sw a0, 940(ra)<br>  |
| 237|[0x800033c0]<br>0x00000004|- rs1_val==4 and imm_val==7<br>                                                                                        |[0x80000c30]:c.andi a0, 7<br> [0x80000c32]:sw a0, 944(ra)<br>   |
| 238|[0x800033c4]<br>0x00000004|- rs1_val==4 and imm_val==-1<br>                                                                                       |[0x80000c3a]:c.andi a0, 63<br> [0x80000c3c]:sw a0, 948(ra)<br>  |
| 239|[0x800033c8]<br>0x00000004|- rs1_val==4 and imm_val==-4<br>                                                                                       |[0x80000c44]:c.andi a0, 60<br> [0x80000c46]:sw a0, 952(ra)<br>  |
| 240|[0x800033cc]<br>0x00000002|- rs1_val==858993458 and imm_val==3<br>                                                                                |[0x80000c52]:c.andi a0, 3<br> [0x80000c54]:sw a0, 956(ra)<br>   |
| 241|[0x800033d0]<br>0x00000000|- rs1_val==858993458 and imm_val==5<br>                                                                                |[0x80000c60]:c.andi a0, 5<br> [0x80000c62]:sw a0, 960(ra)<br>   |
| 242|[0x800033d4]<br>0x00000002|- rs1_val==858993458 and imm_val==10<br>                                                                               |[0x80000c6e]:c.andi a0, 10<br> [0x80000c70]:sw a0, 964(ra)<br>  |
| 243|[0x800033d8]<br>0x00000002|- rs1_val==858993458 and imm_val==6<br>                                                                                |[0x80000c7c]:c.andi a0, 6<br> [0x80000c7e]:sw a0, 968(ra)<br>   |
| 244|[0x800033dc]<br>0x33333332|- rs1_val==858993458 and imm_val==-2<br>                                                                               |[0x80000c8a]:c.andi a0, 62<br> [0x80000c8c]:sw a0, 972(ra)<br>  |
| 245|[0x800033e0]<br>0x33333332|- rs1_val==858993458 and imm_val==-5<br>                                                                               |[0x80000c98]:c.andi a0, 59<br> [0x80000c9a]:sw a0, 976(ra)<br>  |
| 246|[0x800033e4]<br>0x00000002|- rs1_val==858993458 and imm_val==2<br>                                                                                |[0x80000ca6]:c.andi a0, 2<br> [0x80000ca8]:sw a0, 980(ra)<br>   |
| 247|[0x800033e8]<br>0x00000000|- rs1_val==858993458 and imm_val==4<br>                                                                                |[0x80000cb4]:c.andi a0, 4<br> [0x80000cb6]:sw a0, 984(ra)<br>   |
| 248|[0x800033ec]<br>0x00000000|- rs1_val==858993458 and imm_val==9<br>                                                                                |[0x80000cc2]:c.andi a0, 9<br> [0x80000cc4]:sw a0, 988(ra)<br>   |
| 249|[0x800033f0]<br>0x00000000|- rs1_val==858993458 and imm_val==0<br>                                                                                |[0x80000cd0]:c.andi a0, 0<br> [0x80000cd2]:sw a0, 992(ra)<br>   |
| 250|[0x800033f4]<br>0x00000002|- rs1_val==858993458 and imm_val==11<br>                                                                               |[0x80000cde]:c.andi a0, 11<br> [0x80000ce0]:sw a0, 996(ra)<br>  |
| 251|[0x800033f8]<br>0x00000002|- rs1_val==858993458 and imm_val==7<br>                                                                                |[0x80000cec]:c.andi a0, 7<br> [0x80000cee]:sw a0, 1000(ra)<br>  |
| 252|[0x800033fc]<br>0x33333332|- rs1_val==858993458 and imm_val==-1<br>                                                                               |[0x80000cfa]:c.andi a0, 63<br> [0x80000cfc]:sw a0, 1004(ra)<br> |
| 253|[0x80003400]<br>0x33333330|- rs1_val==858993458 and imm_val==-4<br>                                                                               |[0x80000d08]:c.andi a0, 60<br> [0x80000d0a]:sw a0, 1008(ra)<br> |
| 254|[0x80003404]<br>0x00000001|- rs1_val==1717986917 and imm_val==3<br>                                                                               |[0x80000d16]:c.andi a0, 3<br> [0x80000d18]:sw a0, 1012(ra)<br>  |
| 255|[0x80003408]<br>0x00000005|- rs1_val==1717986917 and imm_val==5<br>                                                                               |[0x80000d24]:c.andi a0, 5<br> [0x80000d26]:sw a0, 1016(ra)<br>  |
| 256|[0x8000340c]<br>0x00000000|- rs1_val==1717986917 and imm_val==10<br>                                                                              |[0x80000d32]:c.andi a0, 10<br> [0x80000d34]:sw a0, 1020(ra)<br> |
| 257|[0x80003410]<br>0x00000004|- rs1_val==1717986917 and imm_val==6<br>                                                                               |[0x80000d40]:c.andi a0, 6<br> [0x80000d42]:sw a0, 1024(ra)<br>  |
| 258|[0x80003414]<br>0x66666664|- rs1_val==1717986917 and imm_val==-2<br>                                                                              |[0x80000d4e]:c.andi a0, 62<br> [0x80000d50]:sw a0, 1028(ra)<br> |
| 259|[0x80003418]<br>0x66666661|- rs1_val==1717986917 and imm_val==-5<br>                                                                              |[0x80000d5c]:c.andi a0, 59<br> [0x80000d5e]:sw a0, 1032(ra)<br> |
| 260|[0x8000341c]<br>0x00000000|- rs1_val==1717986917 and imm_val==2<br>                                                                               |[0x80000d6a]:c.andi a0, 2<br> [0x80000d6c]:sw a0, 1036(ra)<br>  |
| 261|[0x80003420]<br>0x00000004|- rs1_val==1717986917 and imm_val==4<br>                                                                               |[0x80000d78]:c.andi a0, 4<br> [0x80000d7a]:sw a0, 1040(ra)<br>  |
| 262|[0x80003424]<br>0x00000001|- rs1_val==1717986917 and imm_val==9<br>                                                                               |[0x80000d86]:c.andi a0, 9<br> [0x80000d88]:sw a0, 1044(ra)<br>  |
| 263|[0x80003428]<br>0x00000000|- rs1_val==1717986917 and imm_val==0<br>                                                                               |[0x80000d94]:c.andi a0, 0<br> [0x80000d96]:sw a0, 1048(ra)<br>  |
| 264|[0x8000342c]<br>0x00000001|- rs1_val==1717986917 and imm_val==11<br>                                                                              |[0x80000da2]:c.andi a0, 11<br> [0x80000da4]:sw a0, 1052(ra)<br> |
| 265|[0x80003430]<br>0x00000005|- rs1_val==1717986917 and imm_val==7<br>                                                                               |[0x80000db0]:c.andi a0, 7<br> [0x80000db2]:sw a0, 1056(ra)<br>  |
| 266|[0x80003434]<br>0x66666665|- rs1_val==1717986917 and imm_val==-1<br>                                                                              |[0x80000dbe]:c.andi a0, 63<br> [0x80000dc0]:sw a0, 1060(ra)<br> |
| 267|[0x80003438]<br>0x66666664|- rs1_val==1717986917 and imm_val==-4<br>                                                                              |[0x80000dcc]:c.andi a0, 60<br> [0x80000dce]:sw a0, 1064(ra)<br> |
| 268|[0x8000343c]<br>0x00000003|- rs1_val==46339 and imm_val==3<br>                                                                                    |[0x80000dda]:c.andi a0, 3<br> [0x80000ddc]:sw a0, 1068(ra)<br>  |
| 269|[0x80003440]<br>0x00000001|- rs1_val==46339 and imm_val==5<br>                                                                                    |[0x80000de8]:c.andi a0, 5<br> [0x80000dea]:sw a0, 1072(ra)<br>  |
| 270|[0x80003444]<br>0x00000002|- rs1_val==46339 and imm_val==10<br>                                                                                   |[0x80000df6]:c.andi a0, 10<br> [0x80000df8]:sw a0, 1076(ra)<br> |
| 271|[0x80003448]<br>0x00000002|- rs1_val==46339 and imm_val==6<br>                                                                                    |[0x80000e04]:c.andi a0, 6<br> [0x80000e06]:sw a0, 1080(ra)<br>  |
| 272|[0x8000344c]<br>0x0000B502|- rs1_val==46339 and imm_val==-2<br>                                                                                   |[0x80000e12]:c.andi a0, 62<br> [0x80000e14]:sw a0, 1084(ra)<br> |
| 273|[0x80003450]<br>0x0000B503|- rs1_val==46339 and imm_val==-5<br>                                                                                   |[0x80000e20]:c.andi a0, 59<br> [0x80000e22]:sw a0, 1088(ra)<br> |
| 274|[0x80003454]<br>0x00000002|- rs1_val==46339 and imm_val==2<br>                                                                                    |[0x80000e2e]:c.andi a0, 2<br> [0x80000e30]:sw a0, 1092(ra)<br>  |
| 275|[0x80003458]<br>0x00000000|- rs1_val==46339 and imm_val==4<br>                                                                                    |[0x80000e3c]:c.andi a0, 4<br> [0x80000e3e]:sw a0, 1096(ra)<br>  |
| 276|[0x8000345c]<br>0x00000001|- rs1_val==46339 and imm_val==9<br>                                                                                    |[0x80000e4a]:c.andi a0, 9<br> [0x80000e4c]:sw a0, 1100(ra)<br>  |
| 277|[0x80003460]<br>0x00000000|- rs1_val==46339 and imm_val==0<br>                                                                                    |[0x80000e58]:c.andi a0, 0<br> [0x80000e5a]:sw a0, 1104(ra)<br>  |
| 278|[0x80003464]<br>0x00000003|- rs1_val==46339 and imm_val==11<br>                                                                                   |[0x80000e66]:c.andi a0, 11<br> [0x80000e68]:sw a0, 1108(ra)<br> |
| 279|[0x80003468]<br>0x00000003|- rs1_val==46339 and imm_val==7<br>                                                                                    |[0x80000e74]:c.andi a0, 7<br> [0x80000e76]:sw a0, 1112(ra)<br>  |
| 280|[0x8000346c]<br>0x0000B503|- rs1_val==46339 and imm_val==-1<br>                                                                                   |[0x80000e82]:c.andi a0, 63<br> [0x80000e84]:sw a0, 1116(ra)<br> |
| 281|[0x80003470]<br>0x0000B500|- rs1_val==46339 and imm_val==-4<br>                                                                                   |[0x80000e90]:c.andi a0, 60<br> [0x80000e92]:sw a0, 1120(ra)<br> |
| 282|[0x80003474]<br>0x00000002|- rs1_val==1431655766 and imm_val==3<br>                                                                               |[0x80000e9e]:c.andi a0, 3<br> [0x80000ea0]:sw a0, 1124(ra)<br>  |
| 283|[0x80003478]<br>0x00000004|- rs1_val==1431655766 and imm_val==5<br>                                                                               |[0x80000eac]:c.andi a0, 5<br> [0x80000eae]:sw a0, 1128(ra)<br>  |
| 284|[0x8000347c]<br>0x00000002|- rs1_val==1431655766 and imm_val==10<br>                                                                              |[0x80000eba]:c.andi a0, 10<br> [0x80000ebc]:sw a0, 1132(ra)<br> |
| 285|[0x80003480]<br>0x00000006|- rs1_val==1431655766 and imm_val==6<br>                                                                               |[0x80000ec8]:c.andi a0, 6<br> [0x80000eca]:sw a0, 1136(ra)<br>  |
| 286|[0x80003484]<br>0x55555556|- rs1_val==1431655766 and imm_val==-2<br>                                                                              |[0x80000ed6]:c.andi a0, 62<br> [0x80000ed8]:sw a0, 1140(ra)<br> |
| 287|[0x80003488]<br>0x55555552|- rs1_val==1431655766 and imm_val==-5<br>                                                                              |[0x80000ee4]:c.andi a0, 59<br> [0x80000ee6]:sw a0, 1144(ra)<br> |
| 288|[0x8000348c]<br>0x00000002|- rs1_val==1431655766 and imm_val==2<br>                                                                               |[0x80000ef2]:c.andi a0, 2<br> [0x80000ef4]:sw a0, 1148(ra)<br>  |
| 289|[0x80003490]<br>0x00000004|- rs1_val==1431655766 and imm_val==4<br>                                                                               |[0x80000f00]:c.andi a0, 4<br> [0x80000f02]:sw a0, 1152(ra)<br>  |
| 290|[0x80003494]<br>0x00000000|- rs1_val==1431655766 and imm_val==9<br>                                                                               |[0x80000f0e]:c.andi a0, 9<br> [0x80000f10]:sw a0, 1156(ra)<br>  |
| 291|[0x80003498]<br>0x00000000|- rs1_val==1431655766 and imm_val==0<br>                                                                               |[0x80000f1c]:c.andi a0, 0<br> [0x80000f1e]:sw a0, 1160(ra)<br>  |
| 292|[0x8000349c]<br>0x00000002|- rs1_val==1431655766 and imm_val==11<br>                                                                              |[0x80000f2a]:c.andi a0, 11<br> [0x80000f2c]:sw a0, 1164(ra)<br> |
| 293|[0x800034a0]<br>0x00000006|- rs1_val==1431655766 and imm_val==7<br>                                                                               |[0x80000f38]:c.andi a0, 7<br> [0x80000f3a]:sw a0, 1168(ra)<br>  |
| 294|[0x800034a4]<br>0x55555556|- rs1_val==1431655766 and imm_val==-1<br>                                                                              |[0x80000f46]:c.andi a0, 63<br> [0x80000f48]:sw a0, 1172(ra)<br> |
| 295|[0x800034a8]<br>0x55555554|- rs1_val==1431655766 and imm_val==-4<br>                                                                              |[0x80000f54]:c.andi a0, 60<br> [0x80000f56]:sw a0, 1176(ra)<br> |
| 296|[0x800034ac]<br>0x00000003|- rs1_val==-1431655765 and imm_val==3<br>                                                                              |[0x80000f62]:c.andi a0, 3<br> [0x80000f64]:sw a0, 1180(ra)<br>  |
| 297|[0x800034b0]<br>0x00000001|- rs1_val==-1431655765 and imm_val==5<br>                                                                              |[0x80000f70]:c.andi a0, 5<br> [0x80000f72]:sw a0, 1184(ra)<br>  |
| 298|[0x800034b4]<br>0x0000000A|- rs1_val==-1431655765 and imm_val==10<br>                                                                             |[0x80000f7e]:c.andi a0, 10<br> [0x80000f80]:sw a0, 1188(ra)<br> |
| 299|[0x800034b8]<br>0x00000002|- rs1_val==-1431655765 and imm_val==6<br>                                                                              |[0x80000f8c]:c.andi a0, 6<br> [0x80000f8e]:sw a0, 1192(ra)<br>  |
| 300|[0x800034bc]<br>0xAAAAAAAA|- rs1_val==-1431655765 and imm_val==-2<br>                                                                             |[0x80000f9a]:c.andi a0, 62<br> [0x80000f9c]:sw a0, 1196(ra)<br> |
| 301|[0x800034c0]<br>0xAAAAAAAB|- rs1_val==-1431655765 and imm_val==-5<br>                                                                             |[0x80000fa8]:c.andi a0, 59<br> [0x80000faa]:sw a0, 1200(ra)<br> |
| 302|[0x800034c4]<br>0x00000002|- rs1_val==-1431655765 and imm_val==2<br>                                                                              |[0x80000fb6]:c.andi a0, 2<br> [0x80000fb8]:sw a0, 1204(ra)<br>  |
| 303|[0x800034c8]<br>0x00000000|- rs1_val==-1431655765 and imm_val==4<br>                                                                              |[0x80000fc4]:c.andi a0, 4<br> [0x80000fc6]:sw a0, 1208(ra)<br>  |
| 304|[0x800034cc]<br>0x00000009|- rs1_val==-1431655765 and imm_val==9<br>                                                                              |[0x80000fd2]:c.andi a0, 9<br> [0x80000fd4]:sw a0, 1212(ra)<br>  |
| 305|[0x800034d0]<br>0x00000000|- rs1_val==-1431655765 and imm_val==0<br>                                                                              |[0x80000fe0]:c.andi a0, 0<br> [0x80000fe2]:sw a0, 1216(ra)<br>  |
| 306|[0x800034d4]<br>0x0000000B|- rs1_val==-1431655765 and imm_val==11<br>                                                                             |[0x80000fee]:c.andi a0, 11<br> [0x80000ff0]:sw a0, 1220(ra)<br> |
| 307|[0x800034d8]<br>0x00000003|- rs1_val==-1431655765 and imm_val==7<br>                                                                              |[0x80000ffc]:c.andi a0, 7<br> [0x80000ffe]:sw a0, 1224(ra)<br>  |
| 308|[0x800034dc]<br>0xAAAAAAAB|- rs1_val==-1431655765 and imm_val==-1<br>                                                                             |[0x8000100a]:c.andi a0, 63<br> [0x8000100c]:sw a0, 1228(ra)<br> |
| 309|[0x800034e0]<br>0xAAAAAAA8|- rs1_val==-1431655765 and imm_val==-4<br>                                                                             |[0x80001018]:c.andi a0, 60<br> [0x8000101a]:sw a0, 1232(ra)<br> |
| 310|[0x800034e4]<br>0x00000002|- rs1_val==6 and imm_val==3<br>                                                                                        |[0x80001022]:c.andi a0, 3<br> [0x80001024]:sw a0, 1236(ra)<br>  |
| 311|[0x800034e8]<br>0x00000004|- rs1_val==6 and imm_val==5<br>                                                                                        |[0x8000102c]:c.andi a0, 5<br> [0x8000102e]:sw a0, 1240(ra)<br>  |
| 312|[0x800034ec]<br>0x00000002|- rs1_val==6 and imm_val==10<br>                                                                                       |[0x80001036]:c.andi a0, 10<br> [0x80001038]:sw a0, 1244(ra)<br> |
| 313|[0x800034f0]<br>0x00000006|- rs1_val==6 and imm_val==6<br>                                                                                        |[0x80001040]:c.andi a0, 6<br> [0x80001042]:sw a0, 1248(ra)<br>  |
| 314|[0x800034f4]<br>0x00000006|- rs1_val==6 and imm_val==-2<br>                                                                                       |[0x8000104a]:c.andi a0, 62<br> [0x8000104c]:sw a0, 1252(ra)<br> |
| 315|[0x800034f8]<br>0x00000002|- rs1_val==6 and imm_val==-5<br>                                                                                       |[0x80001054]:c.andi a0, 59<br> [0x80001056]:sw a0, 1256(ra)<br> |
| 316|[0x800034fc]<br>0x00000002|- rs1_val==6 and imm_val==2<br>                                                                                        |[0x8000105e]:c.andi a0, 2<br> [0x80001060]:sw a0, 1260(ra)<br>  |
| 317|[0x80003500]<br>0xFFFF4AFD|- rs1_val==-46339 and imm_val==-1<br>                                                                                  |[0x8000106c]:c.andi a0, 63<br> [0x8000106e]:sw a0, 1264(ra)<br> |
| 318|[0x80003504]<br>0xFFFF4AFC|- rs1_val==-46339 and imm_val==-4<br>                                                                                  |[0x8000107a]:c.andi a0, 60<br> [0x8000107c]:sw a0, 1268(ra)<br> |
| 319|[0x80003508]<br>0x00000001|- rs1_val==46341 and imm_val==3<br>                                                                                    |[0x80001088]:c.andi a0, 3<br> [0x8000108a]:sw a0, 1272(ra)<br>  |
| 320|[0x8000350c]<br>0x00000005|- rs1_val==46341 and imm_val==5<br>                                                                                    |[0x80001096]:c.andi a0, 5<br> [0x80001098]:sw a0, 1276(ra)<br>  |
| 321|[0x80003510]<br>0x00000000|- rs1_val==46341 and imm_val==10<br>                                                                                   |[0x800010a4]:c.andi a0, 10<br> [0x800010a6]:sw a0, 1280(ra)<br> |
| 322|[0x80003514]<br>0x00000004|- rs1_val==46341 and imm_val==6<br>                                                                                    |[0x800010b2]:c.andi a0, 6<br> [0x800010b4]:sw a0, 1284(ra)<br>  |
| 323|[0x80003518]<br>0x0000B504|- rs1_val==46341 and imm_val==-2<br>                                                                                   |[0x800010c0]:c.andi a0, 62<br> [0x800010c2]:sw a0, 1288(ra)<br> |
| 324|[0x8000351c]<br>0x0000B501|- rs1_val==46341 and imm_val==-5<br>                                                                                   |[0x800010ce]:c.andi a0, 59<br> [0x800010d0]:sw a0, 1292(ra)<br> |
| 325|[0x80003520]<br>0x00000000|- rs1_val==46341 and imm_val==2<br>                                                                                    |[0x800010dc]:c.andi a0, 2<br> [0x800010de]:sw a0, 1296(ra)<br>  |
| 326|[0x80003524]<br>0x00000004|- rs1_val==46341 and imm_val==4<br>                                                                                    |[0x800010ea]:c.andi a0, 4<br> [0x800010ec]:sw a0, 1300(ra)<br>  |
| 327|[0x80003528]<br>0x00000001|- rs1_val==46341 and imm_val==9<br>                                                                                    |[0x800010f8]:c.andi a0, 9<br> [0x800010fa]:sw a0, 1304(ra)<br>  |
| 328|[0x8000352c]<br>0x00000000|- rs1_val==46341 and imm_val==0<br>                                                                                    |[0x80001106]:c.andi a0, 0<br> [0x80001108]:sw a0, 1308(ra)<br>  |
| 329|[0x80003530]<br>0x00000001|- rs1_val==46341 and imm_val==11<br>                                                                                   |[0x80001114]:c.andi a0, 11<br> [0x80001116]:sw a0, 1312(ra)<br> |
| 330|[0x80003534]<br>0x00000005|- rs1_val==46341 and imm_val==7<br>                                                                                    |[0x80001122]:c.andi a0, 7<br> [0x80001124]:sw a0, 1316(ra)<br>  |
| 331|[0x80003538]<br>0x0000B505|- rs1_val==46341 and imm_val==-1<br>                                                                                   |[0x80001130]:c.andi a0, 63<br> [0x80001132]:sw a0, 1320(ra)<br> |
| 332|[0x8000353c]<br>0x0000B504|- rs1_val==46341 and imm_val==-4<br>                                                                                   |[0x8000113e]:c.andi a0, 60<br> [0x80001140]:sw a0, 1324(ra)<br> |
| 333|[0x80003540]<br>0x00000004|- rs1_val==6 and imm_val==4<br>                                                                                        |[0x80001148]:c.andi a0, 4<br> [0x8000114a]:sw a0, 1328(ra)<br>  |
| 334|[0x80003544]<br>0x00000000|- rs1_val==6 and imm_val==9<br>                                                                                        |[0x80001152]:c.andi a0, 9<br> [0x80001154]:sw a0, 1332(ra)<br>  |
| 335|[0x80003548]<br>0x00000000|- rs1_val==6 and imm_val==0<br>                                                                                        |[0x8000115c]:c.andi a0, 0<br> [0x8000115e]:sw a0, 1336(ra)<br>  |
| 336|[0x8000354c]<br>0x00000002|- rs1_val==6 and imm_val==11<br>                                                                                       |[0x80001166]:c.andi a0, 11<br> [0x80001168]:sw a0, 1340(ra)<br> |
| 337|[0x80003550]<br>0x00000006|- rs1_val==6 and imm_val==7<br>                                                                                        |[0x80001170]:c.andi a0, 7<br> [0x80001172]:sw a0, 1344(ra)<br>  |
| 338|[0x80003554]<br>0x00000006|- rs1_val==6 and imm_val==-1<br>                                                                                       |[0x8000117a]:c.andi a0, 63<br> [0x8000117c]:sw a0, 1348(ra)<br> |
| 339|[0x80003558]<br>0x00000004|- rs1_val==6 and imm_val==-4<br>                                                                                       |[0x80001184]:c.andi a0, 60<br> [0x80001186]:sw a0, 1352(ra)<br> |
| 340|[0x8000355c]<br>0x00000000|- rs1_val==858993460 and imm_val==3<br>                                                                                |[0x80001192]:c.andi a0, 3<br> [0x80001194]:sw a0, 1356(ra)<br>  |
| 341|[0x80003560]<br>0x00000004|- rs1_val==858993460 and imm_val==5<br>                                                                                |[0x800011a0]:c.andi a0, 5<br> [0x800011a2]:sw a0, 1360(ra)<br>  |
| 342|[0x80003564]<br>0x00000000|- rs1_val==858993460 and imm_val==10<br>                                                                               |[0x800011ae]:c.andi a0, 10<br> [0x800011b0]:sw a0, 1364(ra)<br> |
| 343|[0x80003568]<br>0x00000004|- rs1_val==858993460 and imm_val==6<br>                                                                                |[0x800011bc]:c.andi a0, 6<br> [0x800011be]:sw a0, 1368(ra)<br>  |
| 344|[0x8000356c]<br>0x33333334|- rs1_val==858993460 and imm_val==-2<br>                                                                               |[0x800011ca]:c.andi a0, 62<br> [0x800011cc]:sw a0, 1372(ra)<br> |
| 345|[0x80003570]<br>0x33333330|- rs1_val==858993460 and imm_val==-5<br>                                                                               |[0x800011d8]:c.andi a0, 59<br> [0x800011da]:sw a0, 1376(ra)<br> |
| 346|[0x80003574]<br>0x00000000|- rs1_val==858993460 and imm_val==2<br>                                                                                |[0x800011e6]:c.andi a0, 2<br> [0x800011e8]:sw a0, 1380(ra)<br>  |
| 347|[0x80003578]<br>0x00000004|- rs1_val==858993460 and imm_val==4<br>                                                                                |[0x800011f4]:c.andi a0, 4<br> [0x800011f6]:sw a0, 1384(ra)<br>  |
| 348|[0x8000357c]<br>0x00000000|- rs1_val==858993460 and imm_val==9<br>                                                                                |[0x80001202]:c.andi a0, 9<br> [0x80001204]:sw a0, 1388(ra)<br>  |
| 349|[0x80003580]<br>0x00000000|- rs1_val==858993460 and imm_val==0<br>                                                                                |[0x80001210]:c.andi a0, 0<br> [0x80001212]:sw a0, 1392(ra)<br>  |
| 350|[0x80003584]<br>0x00000000|- rs1_val==858993460 and imm_val==11<br>                                                                               |[0x8000121e]:c.andi a0, 11<br> [0x80001220]:sw a0, 1396(ra)<br> |
| 351|[0x80003588]<br>0x00000004|- rs1_val==858993460 and imm_val==7<br>                                                                                |[0x8000122c]:c.andi a0, 7<br> [0x8000122e]:sw a0, 1400(ra)<br>  |
| 352|[0x8000358c]<br>0x33333334|- rs1_val==858993460 and imm_val==-1<br>                                                                               |[0x8000123a]:c.andi a0, 63<br> [0x8000123c]:sw a0, 1404(ra)<br> |
| 353|[0x80003590]<br>0x33333334|- rs1_val==858993460 and imm_val==-4<br>                                                                               |[0x80001248]:c.andi a0, 60<br> [0x8000124a]:sw a0, 1408(ra)<br> |
| 354|[0x80003594]<br>0x00000003|- rs1_val==1717986919 and imm_val==3<br>                                                                               |[0x80001256]:c.andi a0, 3<br> [0x80001258]:sw a0, 1412(ra)<br>  |
| 355|[0x80003598]<br>0x00000005|- rs1_val==1717986919 and imm_val==5<br>                                                                               |[0x80001264]:c.andi a0, 5<br> [0x80001266]:sw a0, 1416(ra)<br>  |
| 356|[0x8000359c]<br>0x00000002|- rs1_val==1717986919 and imm_val==10<br>                                                                              |[0x80001272]:c.andi a0, 10<br> [0x80001274]:sw a0, 1420(ra)<br> |
| 357|[0x800035a0]<br>0x00000006|- rs1_val==1717986919 and imm_val==6<br>                                                                               |[0x80001280]:c.andi a0, 6<br> [0x80001282]:sw a0, 1424(ra)<br>  |
| 358|[0x800035a4]<br>0x66666666|- rs1_val==1717986919 and imm_val==-2<br>                                                                              |[0x8000128e]:c.andi a0, 62<br> [0x80001290]:sw a0, 1428(ra)<br> |
| 359|[0x800035a8]<br>0x66666663|- rs1_val==1717986919 and imm_val==-5<br>                                                                              |[0x8000129c]:c.andi a0, 59<br> [0x8000129e]:sw a0, 1432(ra)<br> |
| 360|[0x800035ac]<br>0x00000002|- rs1_val==1717986919 and imm_val==2<br>                                                                               |[0x800012aa]:c.andi a0, 2<br> [0x800012ac]:sw a0, 1436(ra)<br>  |
| 361|[0x800035b0]<br>0x00000004|- rs1_val==1717986919 and imm_val==4<br>                                                                               |[0x800012b8]:c.andi a0, 4<br> [0x800012ba]:sw a0, 1440(ra)<br>  |
| 362|[0x800035b4]<br>0x00000001|- rs1_val==1717986919 and imm_val==9<br>                                                                               |[0x800012c6]:c.andi a0, 9<br> [0x800012c8]:sw a0, 1444(ra)<br>  |
| 363|[0x800035b8]<br>0x00000000|- rs1_val==1717986919 and imm_val==0<br>                                                                               |[0x800012d4]:c.andi a0, 0<br> [0x800012d6]:sw a0, 1448(ra)<br>  |
| 364|[0x800035bc]<br>0x00000003|- rs1_val==1717986919 and imm_val==11<br>                                                                              |[0x800012e2]:c.andi a0, 11<br> [0x800012e4]:sw a0, 1452(ra)<br> |
| 365|[0x800035c0]<br>0x00000007|- rs1_val==1717986919 and imm_val==7<br>                                                                               |[0x800012f0]:c.andi a0, 7<br> [0x800012f2]:sw a0, 1456(ra)<br>  |
| 366|[0x800035c4]<br>0x66666667|- rs1_val==1717986919 and imm_val==-1<br>                                                                              |[0x800012fe]:c.andi a0, 63<br> [0x80001300]:sw a0, 1460(ra)<br> |
| 367|[0x800035c8]<br>0x66666664|- rs1_val==1717986919 and imm_val==-4<br>                                                                              |[0x8000130c]:c.andi a0, 60<br> [0x8000130e]:sw a0, 1464(ra)<br> |
| 368|[0x800035cc]<br>0x00000001|- rs1_val==-46339 and imm_val==3<br>                                                                                   |[0x8000131a]:c.andi a0, 3<br> [0x8000131c]:sw a0, 1468(ra)<br>  |
| 369|[0x800035d0]<br>0x00000005|- rs1_val==-46339 and imm_val==5<br>                                                                                   |[0x80001328]:c.andi a0, 5<br> [0x8000132a]:sw a0, 1472(ra)<br>  |
| 370|[0x800035d4]<br>0x00000008|- rs1_val==-46339 and imm_val==10<br>                                                                                  |[0x80001336]:c.andi a0, 10<br> [0x80001338]:sw a0, 1476(ra)<br> |
| 371|[0x800035d8]<br>0x00000004|- rs1_val==-46339 and imm_val==6<br>                                                                                   |[0x80001344]:c.andi a0, 6<br> [0x80001346]:sw a0, 1480(ra)<br>  |
| 372|[0x800035dc]<br>0xFFFF4AFC|- rs1_val==-46339 and imm_val==-2<br>                                                                                  |[0x80001352]:c.andi a0, 62<br> [0x80001354]:sw a0, 1484(ra)<br> |
| 373|[0x800035e0]<br>0xFFFF4AF9|- rs1_val==-46339 and imm_val==-5<br>                                                                                  |[0x80001360]:c.andi a0, 59<br> [0x80001362]:sw a0, 1488(ra)<br> |
| 374|[0x800035e4]<br>0x00000000|- rs1_val==-46339 and imm_val==2<br>                                                                                   |[0x8000136e]:c.andi a0, 2<br> [0x80001370]:sw a0, 1492(ra)<br>  |
| 375|[0x800035e8]<br>0x00000004|- rs1_val==-46339 and imm_val==4<br>                                                                                   |[0x8000137c]:c.andi a0, 4<br> [0x8000137e]:sw a0, 1496(ra)<br>  |
| 376|[0x800035ec]<br>0x00000009|- rs1_val==-46339 and imm_val==9<br>                                                                                   |[0x8000138a]:c.andi a0, 9<br> [0x8000138c]:sw a0, 1500(ra)<br>  |
| 377|[0x800035f0]<br>0x00000000|- rs1_val==-46339 and imm_val==0<br>                                                                                   |[0x80001398]:c.andi a0, 0<br> [0x8000139a]:sw a0, 1504(ra)<br>  |
| 378|[0x800035f4]<br>0x00000009|- rs1_val==-46339 and imm_val==11<br>                                                                                  |[0x800013a6]:c.andi a0, 11<br> [0x800013a8]:sw a0, 1508(ra)<br> |
| 379|[0x800035f8]<br>0x00000005|- rs1_val==-46339 and imm_val==7<br>                                                                                   |[0x800013b4]:c.andi a0, 7<br> [0x800013b6]:sw a0, 1512(ra)<br>  |
