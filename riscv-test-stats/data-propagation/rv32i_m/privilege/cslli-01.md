
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004e2')]      |
| SIG_REGION                | [('0x80002204', '0x80002354', '84 words')]      |
| COV_LABELS                | cslli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cslli-01.S/cslli-01.S    |
| Total Number of coverpoints| 116     |
| Total Coverpoints Hit     | 116      |
| Total Signature Updates   | 84      |
| STAT1                     | 84      |
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

|s.no|        signature         |                                                            coverpoints                                                             |                             code                              |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002204]<br>0xEFFFFFF0|- opcode : c.slli<br> - rd : x11<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -16777217<br> - imm_val == 4<br>             |[0x80000108]:c.slli a1, 4<br> [0x8000010a]:sw a1, 0(ra)<br>    |
|   2|[0x80002208]<br>0x00000000|- rd : x14<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 1073741824<br> - imm_val == 16<br>                                 |[0x80000112]:c.slli a4, 16<br> [0x80000114]:sw a4, 4(ra)<br>   |
|   3|[0x8000220c]<br>0x00000008|- rd : x15<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 2<br> |[0x8000011c]:c.slli a5, 2<br> [0x8000011e]:sw a5, 8(ra)<br>    |
|   4|[0x80002210]<br>0x00000000|- rd : x9<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                      |[0x80000126]:c.slli s1, 11<br> [0x80000128]:sw s1, 12(ra)<br>  |
|   5|[0x80002214]<br>0x00000000|- rd : x13<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - rs1_val==0<br> - imm_val == 29<br>                          |[0x80000130]:c.slli a3, 29<br> [0x80000132]:sw a3, 16(ra)<br>  |
|   6|[0x80002218]<br>0xFFFFFFF8|- rd : x10<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                     |[0x8000013e]:c.slli a0, 3<br> [0x80000140]:sw a0, 20(ra)<br>   |
|   7|[0x8000221c]<br>0x00002000|- rd : x8<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                             |[0x80000148]:c.slli fp, 13<br> [0x8000014a]:sw fp, 24(ra)<br>  |
|   8|[0x80002220]<br>0x80000000|- rd : x12<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                  |[0x80000152]:c.slli a2, 29<br> [0x80000154]:sw a2, 28(ra)<br>  |
|   9|[0x80002224]<br>0x00004000|- rs1_val == 8<br>                                                                                                                  |[0x8000015c]:c.slli a0, 11<br> [0x8000015e]:sw a0, 32(ra)<br>  |
|  10|[0x80002228]<br>0x00100000|- rs1_val == 16<br>                                                                                                                 |[0x80000166]:c.slli a0, 16<br> [0x80000168]:sw a0, 36(ra)<br>  |
|  11|[0x8000222c]<br>0x00000000|- rs1_val == 32<br>                                                                                                                 |[0x80000170]:c.slli a0, 31<br> [0x80000172]:sw a0, 40(ra)<br>  |
|  12|[0x80002230]<br>0x00010000|- rs1_val == 64<br> - imm_val == 10<br>                                                                                             |[0x8000017a]:c.slli a0, 10<br> [0x8000017c]:sw a0, 44(ra)<br>  |
|  13|[0x80002234]<br>0x00008000|- rs1_val == 128<br> - imm_val == 8<br>                                                                                             |[0x80000184]:c.slli a0, 8<br> [0x80000186]:sw a0, 48(ra)<br>   |
|  14|[0x80002238]<br>0x80000000|- rs1_val == 256<br> - imm_val == 23<br>                                                                                            |[0x8000018e]:c.slli a0, 23<br> [0x80000190]:sw a0, 52(ra)<br>  |
|  15|[0x8000223c]<br>0x00000000|- rs1_val == 512<br>                                                                                                                |[0x80000198]:c.slli a0, 31<br> [0x8000019a]:sw a0, 56(ra)<br>  |
|  16|[0x80002240]<br>0x00400000|- rs1_val == 1024<br>                                                                                                               |[0x800001a2]:c.slli a0, 12<br> [0x800001a4]:sw a0, 60(ra)<br>  |
|  17|[0x80002244]<br>0x00000000|- rs1_val == 2048<br>                                                                                                               |[0x800001b0]:c.slli a0, 23<br> [0x800001b2]:sw a0, 64(ra)<br>  |
|  18|[0x80002248]<br>0x04000000|- rs1_val == 4096<br>                                                                                                               |[0x800001ba]:c.slli a0, 14<br> [0x800001bc]:sw a0, 68(ra)<br>  |
|  19|[0x8000224c]<br>0x01000000|- rs1_val == 8192<br>                                                                                                               |[0x800001c4]:c.slli a0, 11<br> [0x800001c6]:sw a0, 72(ra)<br>  |
|  20|[0x80002250]<br>0x10000000|- rs1_val == 16384<br>                                                                                                              |[0x800001ce]:c.slli a0, 14<br> [0x800001d0]:sw a0, 76(ra)<br>  |
|  21|[0x80002254]<br>0x00000000|- rs1_val == 32768<br>                                                                                                              |[0x800001d8]:c.slli a0, 31<br> [0x800001da]:sw a0, 80(ra)<br>  |
|  22|[0x80002258]<br>0x00020000|- rs1_val == 65536<br> - imm_val == 1<br>                                                                                           |[0x800001e2]:c.slli a0, 1<br> [0x800001e4]:sw a0, 84(ra)<br>   |
|  23|[0x8000225c]<br>0x80000000|- rs1_val == 131072<br>                                                                                                             |[0x800001ec]:c.slli a0, 14<br> [0x800001ee]:sw a0, 88(ra)<br>  |
|  24|[0x80002260]<br>0x00100000|- rs1_val == 262144<br>                                                                                                             |[0x800001f6]:c.slli a0, 2<br> [0x800001f8]:sw a0, 92(ra)<br>   |
|  25|[0x80002264]<br>0x00000000|- rs1_val == 524288<br> - imm_val == 21<br>                                                                                         |[0x80000200]:c.slli a0, 21<br> [0x80000202]:sw a0, 96(ra)<br>  |
|  26|[0x80002268]<br>0x01000000|- rs1_val == 1048576<br>                                                                                                            |[0x8000020a]:c.slli a0, 4<br> [0x8000020c]:sw a0, 100(ra)<br>  |
|  27|[0x8000226c]<br>0x10000000|- rs1_val == 2097152<br>                                                                                                            |[0x80000214]:c.slli a0, 7<br> [0x80000216]:sw a0, 104(ra)<br>  |
|  28|[0x80002270]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                            |[0x8000021e]:c.slli a0, 12<br> [0x80000220]:sw a0, 108(ra)<br> |
|  29|[0x80002274]<br>0x01000000|- rs1_val == 8388608<br>                                                                                                            |[0x80000228]:c.slli a0, 1<br> [0x8000022a]:sw a0, 112(ra)<br>  |
|  30|[0x80002278]<br>0x00000000|- rs1_val == 16777216<br> - imm_val == 15<br>                                                                                       |[0x80000232]:c.slli a0, 15<br> [0x80000234]:sw a0, 116(ra)<br> |
|  31|[0x8000227c]<br>0x00000000|- rs1_val == 33554432<br> - imm_val == 30<br>                                                                                       |[0x8000023c]:c.slli a0, 30<br> [0x8000023e]:sw a0, 120(ra)<br> |
|  32|[0x80002280]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                           |[0x80000246]:c.slli a0, 30<br> [0x80000248]:sw a0, 124(ra)<br> |
|  33|[0x80002284]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                          |[0x80000250]:c.slli a0, 8<br> [0x80000252]:sw a0, 128(ra)<br>  |
|  34|[0x80002288]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                          |[0x8000025a]:c.slli a0, 21<br> [0x8000025c]:sw a0, 132(ra)<br> |
|  35|[0x8000228c]<br>0x40000000|- rs1_val == 536870912<br>                                                                                                          |[0x80000264]:c.slli a0, 1<br> [0x80000266]:sw a0, 136(ra)<br>  |
|  36|[0x80002290]<br>0xFFFF8000|- rs1_val == -2<br>                                                                                                                 |[0x8000026e]:c.slli a0, 14<br> [0x80000270]:sw a0, 140(ra)<br> |
|  37|[0x80002294]<br>0xFFFFA000|- rs1_val == -3<br>                                                                                                                 |[0x80000278]:c.slli a0, 13<br> [0x8000027a]:sw a0, 144(ra)<br> |
|  38|[0x80002298]<br>0xFFFB0000|- rs1_val == -5<br>                                                                                                                 |[0x80000282]:c.slli a0, 16<br> [0x80000284]:sw a0, 148(ra)<br> |
|  39|[0x8000229c]<br>0xFFFFB800|- rs1_val == -9<br>                                                                                                                 |[0x8000028c]:c.slli a0, 11<br> [0x8000028e]:sw a0, 152(ra)<br> |
|  40|[0x800022a0]<br>0xFFEF0000|- rs1_val == -17<br>                                                                                                                |[0x80000296]:c.slli a0, 16<br> [0x80000298]:sw a0, 156(ra)<br> |
|  41|[0x800022a4]<br>0xFFFFFBE0|- rs1_val == -33<br>                                                                                                                |[0x800002a0]:c.slli a0, 5<br> [0x800002a2]:sw a0, 160(ra)<br>  |
|  42|[0x800022a8]<br>0xFFFFBF00|- rs1_val == -65<br>                                                                                                                |[0x800002aa]:c.slli a0, 8<br> [0x800002ac]:sw a0, 164(ra)<br>  |
|  43|[0x800022ac]<br>0xF8000000|- rs1_val == -129<br> - imm_val == 27<br>                                                                                           |[0x800002b4]:c.slli a0, 27<br> [0x800002b6]:sw a0, 168(ra)<br> |
|  44|[0x800022b0]<br>0xFBFC0000|- rs1_val == -257<br>                                                                                                               |[0x800002be]:c.slli a0, 18<br> [0x800002c0]:sw a0, 172(ra)<br> |
|  45|[0x800022b4]<br>0xEFF80000|- rs1_val == -513<br>                                                                                                               |[0x800002c8]:c.slli a0, 19<br> [0x800002ca]:sw a0, 176(ra)<br> |
|  46|[0x800022b8]<br>0xFFDFF800|- rs1_val == -1025<br>                                                                                                              |[0x800002d2]:c.slli a0, 11<br> [0x800002d4]:sw a0, 180(ra)<br> |
|  47|[0x800022bc]<br>0xFF800000|- rs1_val == -2049<br>                                                                                                              |[0x800002e0]:c.slli a0, 23<br> [0x800002e2]:sw a0, 184(ra)<br> |
|  48|[0x800022c0]<br>0xFFFFDFFE|- rs1_val == -4097<br>                                                                                                              |[0x800002ee]:c.slli a0, 1<br> [0x800002f0]:sw a0, 188(ra)<br>  |
|  49|[0x800022c4]<br>0xEFFF8000|- rs1_val == -8193<br>                                                                                                              |[0x800002fc]:c.slli a0, 15<br> [0x800002fe]:sw a0, 192(ra)<br> |
|  50|[0x800022c8]<br>0xE0000000|- rs1_val == -16385<br>                                                                                                             |[0x8000030a]:c.slli a0, 29<br> [0x8000030c]:sw a0, 196(ra)<br> |
|  51|[0x800022cc]<br>0xFFF7FFF0|- rs1_val == -32769<br>                                                                                                             |[0x80000318]:c.slli a0, 4<br> [0x8000031a]:sw a0, 200(ra)<br>  |
|  52|[0x800022d0]<br>0xFFF80000|- rs1_val == -65537<br>                                                                                                             |[0x80000326]:c.slli a0, 19<br> [0x80000328]:sw a0, 204(ra)<br> |
|  53|[0x800022d4]<br>0xBFFFE000|- rs1_val == -131073<br>                                                                                                            |[0x80000334]:c.slli a0, 13<br> [0x80000336]:sw a0, 208(ra)<br> |
|  54|[0x800022d8]<br>0xFF800000|- rs1_val == -262145<br>                                                                                                            |[0x80000342]:c.slli a0, 23<br> [0x80000344]:sw a0, 212(ra)<br> |
|  55|[0x800022dc]<br>0x7FFFF000|- rs1_val == -524289<br>                                                                                                            |[0x80000350]:c.slli a0, 12<br> [0x80000352]:sw a0, 216(ra)<br> |
|  56|[0x800022e0]<br>0xFFFFFE00|- rs1_val == -33554433<br>                                                                                                          |[0x8000035e]:c.slli a0, 9<br> [0x80000360]:sw a0, 220(ra)<br>  |
|  57|[0x800022e4]<br>0xFFFFF800|- rs1_val == -67108865<br>                                                                                                          |[0x8000036c]:c.slli a0, 11<br> [0x8000036e]:sw a0, 224(ra)<br> |
|  58|[0x800022e8]<br>0xBFFFFFF8|- rs1_val == -134217729<br>                                                                                                         |[0x8000037a]:c.slli a0, 3<br> [0x8000037c]:sw a0, 228(ra)<br>  |
|  59|[0x800022ec]<br>0xFFFFFF00|- rs1_val == -268435457<br>                                                                                                         |[0x80000388]:c.slli a0, 8<br> [0x8000038a]:sw a0, 232(ra)<br>  |
|  60|[0x800022f0]<br>0xFF800000|- rs1_val == -536870913<br>                                                                                                         |[0x80000396]:c.slli a0, 23<br> [0x80000398]:sw a0, 236(ra)<br> |
|  61|[0x800022f4]<br>0xC0000000|- rs1_val == -1073741825<br>                                                                                                        |[0x800003a4]:c.slli a0, 30<br> [0x800003a6]:sw a0, 240(ra)<br> |
|  62|[0x800022f8]<br>0xAA800000|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                               |[0x800003b2]:c.slli a0, 23<br> [0x800003b4]:sw a0, 244(ra)<br> |
|  63|[0x800022fc]<br>0x40000000|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                             |[0x800003c0]:c.slli a0, 29<br> [0x800003c2]:sw a0, 248(ra)<br> |
|  64|[0x80002300]<br>0x60000000|- rs1_val==3<br>                                                                                                                    |[0x800003ca]:c.slli a0, 29<br> [0x800003cc]:sw a0, 252(ra)<br> |
|  65|[0x80002304]<br>0x0000A000|- rs1_val==5<br>                                                                                                                    |[0x800003d4]:c.slli a0, 13<br> [0x800003d6]:sw a0, 256(ra)<br> |
|  66|[0x80002308]<br>0x99980000|- rs1_val==858993459<br>                                                                                                            |[0x800003e2]:c.slli a0, 19<br> [0x800003e4]:sw a0, 260(ra)<br> |
|  67|[0x8000230c]<br>0x99999800|- rs1_val==1717986918<br>                                                                                                           |[0x800003f0]:c.slli a0, 10<br> [0x800003f2]:sw a0, 264(ra)<br> |
|  68|[0x80002310]<br>0xFFF4AFC0|- rs1_val==-46340<br>                                                                                                               |[0x800003fe]:c.slli a0, 4<br> [0x80000400]:sw a0, 268(ra)<br>  |
|  69|[0x80002314]<br>0x6A080000|- rs1_val==46340<br>                                                                                                                |[0x8000040c]:c.slli a0, 17<br> [0x8000040e]:sw a0, 272(ra)<br> |
|  70|[0x80002318]<br>0x80000000|- rs1_val == -1048577<br>                                                                                                           |[0x8000041a]:c.slli a0, 31<br> [0x8000041c]:sw a0, 276(ra)<br> |
|  71|[0x8000231c]<br>0x05A82800|- rs1_val==46341<br>                                                                                                                |[0x80000428]:c.slli a0, 11<br> [0x8000042a]:sw a0, 280(ra)<br> |
|  72|[0x80002320]<br>0xDFFFFF00|- rs1_val == -2097153<br>                                                                                                           |[0x80000436]:c.slli a0, 8<br> [0x80000438]:sw a0, 284(ra)<br>  |
|  73|[0x80002324]<br>0xAAAAAAA8|- rs1_val==1431655764<br>                                                                                                           |[0x80000444]:c.slli a0, 1<br> [0x80000446]:sw a0, 288(ra)<br>  |
|  74|[0x80002328]<br>0xFFFFF000|- rs1_val == -4194305<br>                                                                                                           |[0x80000452]:c.slli a0, 12<br> [0x80000454]:sw a0, 292(ra)<br> |
|  75|[0x8000232c]<br>0xCCCCC800|- rs1_val==858993458<br>                                                                                                            |[0x80000460]:c.slli a0, 10<br> [0x80000462]:sw a0, 296(ra)<br> |
|  76|[0x80002330]<br>0xCCCA0000|- rs1_val==1717986917<br>                                                                                                           |[0x8000046e]:c.slli a0, 17<br> [0x80000470]:sw a0, 300(ra)<br> |
|  77|[0x80002334]<br>0x81800000|- rs1_val==46339<br>                                                                                                                |[0x8000047c]:c.slli a0, 23<br> [0x8000047e]:sw a0, 304(ra)<br> |
|  78|[0x80002338]<br>0x55558000|- rs1_val==1431655766<br>                                                                                                           |[0x8000048a]:c.slli a0, 14<br> [0x8000048c]:sw a0, 308(ra)<br> |
|  79|[0x8000233c]<br>0x55555558|- rs1_val==-1431655765<br>                                                                                                          |[0x80000498]:c.slli a0, 3<br> [0x8000049a]:sw a0, 312(ra)<br>  |
|  80|[0x80002340]<br>0x00000180|- rs1_val==6<br>                                                                                                                    |[0x800004a2]:c.slli a0, 6<br> [0x800004a4]:sw a0, 316(ra)<br>  |
|  81|[0x80002344]<br>0x80000000|- rs1_val==858993460<br>                                                                                                            |[0x800004b0]:c.slli a0, 29<br> [0x800004b2]:sw a0, 320(ra)<br> |
|  82|[0x80002348]<br>0x66667000|- rs1_val==1717986919<br>                                                                                                           |[0x800004be]:c.slli a0, 12<br> [0x800004c0]:sw a0, 324(ra)<br> |
|  83|[0x8000234c]<br>0x4AFD0000|- rs1_val==-46339<br>                                                                                                               |[0x800004cc]:c.slli a0, 16<br> [0x800004ce]:sw a0, 328(ra)<br> |
|  84|[0x80002350]<br>0x7FFFFF00|- rs1_val == -8388609<br>                                                                                                           |[0x800004da]:c.slli a0, 8<br> [0x800004dc]:sw a0, 332(ra)<br>  |
