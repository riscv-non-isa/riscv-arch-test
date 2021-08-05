
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000470')]      |
| SIG_REGION                | [('0x80002204', '0x80002358', '85 words')]      |
| COV_LABELS                | csrai      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/csrai-01.S/csrai-01.S    |
| Total Number of coverpoints| 119     |
| Total Coverpoints Hit     | 116      |
| Total Signature Updates   | 85      |
| STAT1                     | 85      |
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

|s.no|        signature         |                                                                     coverpoints                                                                     |                             code                              |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFEAAAA|- opcode : c.srai<br> - rs1 : x10<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val==-1431655766<br> - rs1_val == -1431655766<br>                   |[0x80000088]:c.srai a0, 14<br> [0x8000008a]:sw a0, 0(ra)<br>   |
|   2|[0x80002208]<br>0x003FFFFF|- rs1 : x9<br> - rs1_val == 2147483647<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val > 0 and imm_val < xlen<br> |[0x80000096]:c.srai s1, 9<br> [0x80000098]:sw s1, 4(ra)<br>    |
|   3|[0x8000220c]<br>0xFDFFFFFF|- rs1 : x11<br> - rs1_val == -1073741825<br>                                                                                                         |[0x800000a4]:c.srai a1, 5<br> [0x800000a6]:sw a1, 8(ra)<br>    |
|   4|[0x80002210]<br>0xFDFFFFFF|- rs1 : x12<br> - rs1_val == -536870913<br> - imm_val == 4<br>                                                                                       |[0x800000b2]:c.srai a2, 4<br> [0x800000b4]:sw a2, 12(ra)<br>   |
|   5|[0x80002214]<br>0xFFFFFF7F|- rs1 : x14<br> - rs1_val == -268435457<br> - imm_val == 21<br>                                                                                      |[0x800000c0]:c.srai a4, 21<br> [0x800000c2]:sw a4, 16(ra)<br>  |
|   6|[0x80002218]<br>0xFFFFFEFF|- rs1 : x8<br> - rs1_val == -134217729<br>                                                                                                           |[0x800000ce]:c.srai s0, 19<br> [0x800000d0]:sw fp, 20(ra)<br>  |
|   7|[0x8000221c]<br>0xFFFFBFFF|- rs1 : x13<br> - rs1_val == -67108865<br>                                                                                                           |[0x800000dc]:c.srai a3, 12<br> [0x800000de]:sw a3, 24(ra)<br>  |
|   8|[0x80002220]<br>0xFFFFFFFF|- rs1 : x15<br> - rs1_val == -33554433<br> - imm_val == 29<br>                                                                                       |[0x800000ea]:c.srai a5, 29<br> [0x800000ec]:sw a5, 28(ra)<br>  |
|   9|[0x80002224]<br>0xFFFFF7FF|- rs1_val == -16777217<br>                                                                                                                           |[0x800000f8]:c.srai a0, 13<br> [0x800000fa]:sw a0, 32(ra)<br>  |
|  10|[0x80002228]<br>0xFFEFFFFF|- rs1_val == -8388609<br>                                                                                                                            |[0x80000106]:c.srai a0, 3<br> [0x80000108]:sw a0, 36(ra)<br>   |
|  11|[0x8000222c]<br>0xFFFFEFFF|- rs1_val == -4194305<br> - imm_val == 10<br>                                                                                                        |[0x80000114]:c.srai a0, 10<br> [0x80000116]:sw a0, 40(ra)<br>  |
|  12|[0x80002230]<br>0xFFFFFEFF|- rs1_val == -2097153<br>                                                                                                                            |[0x80000122]:c.srai a0, 13<br> [0x80000124]:sw a0, 44(ra)<br>  |
|  13|[0x80002234]<br>0xFFFFFF7F|- rs1_val == -1048577<br>                                                                                                                            |[0x80000130]:c.srai a0, 13<br> [0x80000132]:sw a0, 48(ra)<br>  |
|  14|[0x80002238]<br>0xFFFFBFFF|- rs1_val == -524289<br>                                                                                                                             |[0x8000013e]:c.srai a0, 5<br> [0x80000140]:sw a0, 52(ra)<br>   |
|  15|[0x8000223c]<br>0xFFFFBFFF|- rs1_val == -262145<br>                                                                                                                             |[0x8000014c]:c.srai a0, 4<br> [0x8000014e]:sw a0, 56(ra)<br>   |
|  16|[0x80002240]<br>0xFFFFFFFF|- rs1_val == -131073<br>                                                                                                                             |[0x8000015a]:c.srai a0, 29<br> [0x8000015c]:sw a0, 60(ra)<br>  |
|  17|[0x80002244]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                              |[0x80000168]:c.srai a0, 21<br> [0x8000016a]:sw a0, 64(ra)<br>  |
|  18|[0x80002248]<br>0xFFFFDFFF|- rs1_val == -32769<br> - imm_val == 2<br>                                                                                                           |[0x80000176]:c.srai a0, 2<br> [0x80000178]:sw a0, 68(ra)<br>   |
|  19|[0x8000224c]<br>0xFFFFFF7F|- rs1_val == -16385<br>                                                                                                                              |[0x80000184]:c.srai a0, 7<br> [0x80000186]:sw a0, 72(ra)<br>   |
|  20|[0x80002250]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                               |[0x80000192]:c.srai a0, 18<br> [0x80000194]:sw a0, 76(ra)<br>  |
|  21|[0x80002254]<br>0xFFFFFFBF|- rs1_val == -4097<br>                                                                                                                               |[0x800001a0]:c.srai a0, 6<br> [0x800001a2]:sw a0, 80(ra)<br>   |
|  22|[0x80002258]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                               |[0x800001ae]:c.srai a0, 19<br> [0x800001b0]:sw a0, 84(ra)<br>  |
|  23|[0x8000225c]<br>0xFFFFFF7F|- rs1_val == -1025<br>                                                                                                                               |[0x800001b8]:c.srai a0, 3<br> [0x800001ba]:sw a0, 88(ra)<br>   |
|  24|[0x80002260]<br>0xFFFFFFFF|- rs1_val == -513<br> - imm_val == 15<br>                                                                                                            |[0x800001c2]:c.srai a0, 15<br> [0x800001c4]:sw a0, 92(ra)<br>  |
|  25|[0x80002264]<br>0xFFFFFFFD|- rs1_val == -257<br>                                                                                                                                |[0x800001cc]:c.srai a0, 7<br> [0x800001ce]:sw a0, 96(ra)<br>   |
|  26|[0x80002268]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                |[0x800001d6]:c.srai a0, 10<br> [0x800001d8]:sw a0, 100(ra)<br> |
|  27|[0x8000226c]<br>0xFFFFFFFF|- rs1_val == -65<br> - imm_val == 23<br>                                                                                                             |[0x800001e0]:c.srai a0, 23<br> [0x800001e2]:sw a0, 104(ra)<br> |
|  28|[0x80002270]<br>0xFFFFFFFF|- rs1_val == -33<br> - imm_val == 30<br>                                                                                                             |[0x800001ea]:c.srai a0, 30<br> [0x800001ec]:sw a0, 108(ra)<br> |
|  29|[0x80002274]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                 |[0x800001f4]:c.srai a0, 30<br> [0x800001f6]:sw a0, 112(ra)<br> |
|  30|[0x80002278]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                  |[0x800001fe]:c.srai a0, 7<br> [0x80000200]:sw a0, 116(ra)<br>  |
|  31|[0x8000227c]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                  |[0x80000208]:c.srai a0, 9<br> [0x8000020a]:sw a0, 120(ra)<br>  |
|  32|[0x80002280]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                  |[0x80000212]:c.srai a0, 19<br> [0x80000214]:sw a0, 124(ra)<br> |
|  33|[0x80002284]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                  |[0x8000021c]:c.srai a0, 23<br> [0x8000021e]:sw a0, 128(ra)<br> |
|  34|[0x80002288]<br>0x00000000|- imm_val == 27<br> - rs1_val == 32<br>                                                                                                              |[0x80000226]:c.srai a0, 27<br> [0x80000228]:sw a0, 132(ra)<br> |
|  35|[0x8000228c]<br>0xFFFFE000|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br>                                                     |[0x80000230]:c.srai a0, 18<br> [0x80000232]:sw a0, 136(ra)<br> |
|  36|[0x80002290]<br>0x00002000|- rs1_val == 1073741824<br>                                                                                                                          |[0x8000023a]:c.srai a0, 17<br> [0x8000023c]:sw a0, 140(ra)<br> |
|  37|[0x80002294]<br>0x00000004|- rs1_val == 536870912<br>                                                                                                                           |[0x80000244]:c.srai a0, 27<br> [0x80000246]:sw a0, 144(ra)<br> |
|  38|[0x80002298]<br>0x00000080|- rs1_val == 268435456<br>                                                                                                                           |[0x8000024e]:c.srai a0, 21<br> [0x80000250]:sw a0, 148(ra)<br> |
|  39|[0x8000229c]<br>0x00000200|- rs1_val == 134217728<br>                                                                                                                           |[0x80000258]:c.srai a0, 18<br> [0x8000025a]:sw a0, 152(ra)<br> |
|  40|[0x800022a0]<br>0x00000020|- rs1_val == 67108864<br>                                                                                                                            |[0x80000262]:c.srai a0, 21<br> [0x80000264]:sw a0, 156(ra)<br> |
|  41|[0x800022a4]<br>0x00200000|- rs1_val == 33554432<br>                                                                                                                            |[0x8000026c]:c.srai a0, 4<br> [0x8000026e]:sw a0, 160(ra)<br>  |
|  42|[0x800022a8]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                            |[0x80000276]:c.srai a0, 30<br> [0x80000278]:sw a0, 164(ra)<br> |
|  43|[0x800022ac]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                                             |[0x80000280]:c.srai a0, 30<br> [0x80000282]:sw a0, 168(ra)<br> |
|  44|[0x800022b0]<br>0x00000200|- rs1_val == 4194304<br>                                                                                                                             |[0x8000028a]:c.srai a0, 13<br> [0x8000028c]:sw a0, 172(ra)<br> |
|  45|[0x800022b4]<br>0x00000100|- rs1_val == 2097152<br>                                                                                                                             |[0x80000294]:c.srai a0, 13<br> [0x80000296]:sw a0, 176(ra)<br> |
|  46|[0x800022b8]<br>0x00000002|- rs1_val == 1048576<br>                                                                                                                             |[0x8000029e]:c.srai a0, 19<br> [0x800002a0]:sw a0, 180(ra)<br> |
|  47|[0x800022bc]<br>0x00000400|- rs1_val == 524288<br>                                                                                                                              |[0x800002a8]:c.srai a0, 9<br> [0x800002aa]:sw a0, 184(ra)<br>  |
|  48|[0x800022c0]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                              |[0x800002b2]:c.srai a0, 19<br> [0x800002b4]:sw a0, 188(ra)<br> |
|  49|[0x800022c4]<br>0x00002000|- rs1_val == 131072<br>                                                                                                                              |[0x800002bc]:c.srai a0, 4<br> [0x800002be]:sw a0, 192(ra)<br>  |
|  50|[0x800022c8]<br>0x00000100|- rs1_val == 65536<br> - imm_val == 8<br>                                                                                                            |[0x800002c6]:c.srai a0, 8<br> [0x800002c8]:sw a0, 196(ra)<br>  |
|  51|[0x800022cc]<br>0x00000400|- rs1_val == 32768<br>                                                                                                                               |[0x800002d0]:c.srai a0, 5<br> [0x800002d2]:sw a0, 200(ra)<br>  |
|  52|[0x800022d0]<br>0x00000000|- rs1_val == 16384<br>                                                                                                                               |[0x800002da]:c.srai a0, 23<br> [0x800002dc]:sw a0, 204(ra)<br> |
|  53|[0x800022d4]<br>0x00000100|- rs1_val == 8192<br>                                                                                                                                |[0x800002e4]:c.srai a0, 5<br> [0x800002e6]:sw a0, 208(ra)<br>  |
|  54|[0x800022d8]<br>0x00000000|- rs1_val == 4096<br>                                                                                                                                |[0x800002ee]:c.srai a0, 23<br> [0x800002f0]:sw a0, 212(ra)<br> |
|  55|[0x800022dc]<br>0x00000002|- rs1_val == 2048<br>                                                                                                                                |[0x800002fc]:c.srai a0, 10<br> [0x800002fe]:sw a0, 216(ra)<br> |
|  56|[0x800022e0]<br>0x00000000|- rs1_val == 1024<br>                                                                                                                                |[0x80000306]:c.srai a0, 30<br> [0x80000308]:sw a0, 220(ra)<br> |
|  57|[0x800022e4]<br>0x00000000|- rs1_val == 512<br>                                                                                                                                 |[0x80000310]:c.srai a0, 11<br> [0x80000312]:sw a0, 224(ra)<br> |
|  58|[0x800022e8]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                 |[0x8000031a]:c.srai a0, 31<br> [0x8000031c]:sw a0, 228(ra)<br> |
|  59|[0x800022ec]<br>0x00000010|- rs1_val == 128<br>                                                                                                                                 |[0x80000324]:c.srai a0, 3<br> [0x80000326]:sw a0, 232(ra)<br>  |
|  60|[0x800022f0]<br>0x00000000|- rs1_val == 64<br>                                                                                                                                  |[0x8000032e]:c.srai a0, 27<br> [0x80000330]:sw a0, 236(ra)<br> |
|  61|[0x800022f4]<br>0x00000000|- rs1_val == 16<br>                                                                                                                                  |[0x80000338]:c.srai a0, 6<br> [0x8000033a]:sw a0, 240(ra)<br>  |
|  62|[0x800022f8]<br>0x00000000|- rs1_val == 8<br>                                                                                                                                   |[0x80000342]:c.srai a0, 17<br> [0x80000344]:sw a0, 244(ra)<br> |
|  63|[0x800022fc]<br>0x00000000|- rs1_val == 4<br> - rs1_val==4<br>                                                                                                                  |[0x8000034c]:c.srai a0, 19<br> [0x8000034e]:sw a0, 248(ra)<br> |
|  64|[0x80002300]<br>0x00000000|- rs1_val == 2<br> - rs1_val==2<br>                                                                                                                  |[0x80000356]:c.srai a0, 4<br> [0x80000358]:sw a0, 252(ra)<br>  |
|  65|[0x80002304]<br>0x00000000|- rs1_val == 1<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br>                                                                            |[0x80000360]:c.srai a0, 31<br> [0x80000362]:sw a0, 256(ra)<br> |
|  66|[0x80002308]<br>0xFFFFFFFF|- imm_val == 16<br>                                                                                                                                  |[0x8000036e]:c.srai a0, 16<br> [0x80000370]:sw a0, 260(ra)<br> |
|  67|[0x8000230c]<br>0x2AAAAAAA|- imm_val == 1<br> - rs1_val==1431655765<br> - rs1_val == 1431655765<br>                                                                             |[0x8000037c]:c.srai a0, 1<br> [0x8000037e]:sw a0, 264(ra)<br>  |
|  68|[0x80002310]<br>0x00000005|- rs1_val==46341<br>                                                                                                                                 |[0x8000038a]:c.srai a0, 13<br> [0x8000038c]:sw a0, 268(ra)<br> |
|  69|[0x80002314]<br>0xFFFFFA57|- rs1_val==-46339<br>                                                                                                                                |[0x80000398]:c.srai a0, 5<br> [0x8000039a]:sw a0, 272(ra)<br>  |
|  70|[0x80002318]<br>0x00000333|- rs1_val==1717986919<br>                                                                                                                            |[0x800003a6]:c.srai a0, 21<br> [0x800003a8]:sw a0, 276(ra)<br> |
|  71|[0x8000231c]<br>0x00000066|- rs1_val==858993460<br>                                                                                                                             |[0x800003b4]:c.srai a0, 23<br> [0x800003b6]:sw a0, 280(ra)<br> |
|  72|[0x80002320]<br>0x00000000|- rs1_val==6<br>                                                                                                                                     |[0x800003be]:c.srai a0, 3<br> [0x800003c0]:sw a0, 284(ra)<br>  |
|  73|[0x80002324]<br>0x00000000|- rs1_val==3<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br>                                                                       |[0x800003c8]:c.srai a0, 3<br> [0x800003ca]:sw a0, 288(ra)<br>  |
|  74|[0x80002328]<br>0x00000000|- rs1_val==0<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br>                                                                              |[0x800003d2]:c.srai a0, 18<br> [0x800003d4]:sw a0, 292(ra)<br> |
|  75|[0x8000232c]<br>0xFEAAAAAA|- rs1_val==-1431655765<br>                                                                                                                           |[0x800003e0]:c.srai a0, 6<br> [0x800003e2]:sw a0, 296(ra)<br>  |
|  76|[0x80002330]<br>0x00002AAA|- rs1_val==1431655766<br>                                                                                                                            |[0x800003ee]:c.srai a0, 17<br> [0x800003f0]:sw a0, 300(ra)<br> |
|  77|[0x80002334]<br>0x00000002|- rs1_val==46339<br>                                                                                                                                 |[0x800003fc]:c.srai a0, 14<br> [0x800003fe]:sw a0, 304(ra)<br> |
|  78|[0x80002338]<br>0x03333333|- rs1_val==1717986917<br>                                                                                                                            |[0x8000040a]:c.srai a0, 5<br> [0x8000040c]:sw a0, 308(ra)<br>  |
|  79|[0x8000233c]<br>0x00333333|- rs1_val==858993458<br>                                                                                                                             |[0x80000418]:c.srai a0, 8<br> [0x8000041a]:sw a0, 312(ra)<br>  |
|  80|[0x80002340]<br>0x00555555|- rs1_val==1431655764<br>                                                                                                                            |[0x80000426]:c.srai a0, 8<br> [0x80000428]:sw a0, 316(ra)<br>  |
|  81|[0x80002344]<br>0x00000000|- rs1_val==46340<br>                                                                                                                                 |[0x80000434]:c.srai a0, 31<br> [0x80000436]:sw a0, 320(ra)<br> |
|  82|[0x80002348]<br>0xFFFFFF4A|- rs1_val==-46340<br>                                                                                                                                |[0x80000442]:c.srai a0, 8<br> [0x80000444]:sw a0, 324(ra)<br>  |
|  83|[0x8000234c]<br>0x00033333|- rs1_val==1717986918<br>                                                                                                                            |[0x80000450]:c.srai a0, 13<br> [0x80000452]:sw a0, 328(ra)<br> |
|  84|[0x80002350]<br>0x00000066|- rs1_val==858993459<br>                                                                                                                             |[0x8000045e]:c.srai a0, 23<br> [0x80000460]:sw a0, 332(ra)<br> |
|  85|[0x80002354]<br>0x00000002|- rs1_val==5<br>                                                                                                                                     |[0x80000468]:c.srai a0, 1<br> [0x8000046a]:sw a0, 336(ra)<br>  |
