
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000500')]      |
| SIG_REGION                | [('0x80002010', '0x80002170', '88 words')]      |
| COV_LABELS                | csrai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrai-01.S/csrai-01.S    |
| Total Number of coverpoints| 116     |
| Total Coverpoints Hit     | 116      |
| Total Signature Updates   | 87      |
| STAT1                     | 87      |
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
|   1|[0x80002010]<br>0xFFFFFFFF|- opcode : c.srai<br> - rs1 : x11<br> - rs1_val < 0 and imm_val < xlen<br> - imm_val == 29<br>                                      |[0x80000104]:c.srai a1, 29<br> [0x80000106]:sw a1, 0(ra)<br>   |
|   2|[0x80002014]<br>0x00000000|- rs1 : x8<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 8<br>                                                              |[0x8000010e]:c.srai s0, 12<br> [0x80000110]:sw fp, 4(ra)<br>   |
|   3|[0x80002018]<br>0x00000000|- rs1 : x10<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br>                                                       |[0x80000118]:c.srai a0, 7<br> [0x8000011a]:sw a0, 8(ra)<br>    |
|   4|[0x8000201c]<br>0xFFF80000|- rs1 : x12<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                    |[0x80000122]:c.srai a2, 12<br> [0x80000124]:sw a2, 12(ra)<br>  |
|   5|[0x80002020]<br>0x00000000|- rs1 : x13<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - rs1_val==0<br>                                             |[0x8000012c]:c.srai a3, 6<br> [0x8000012e]:sw a3, 16(ra)<br>   |
|   6|[0x80002024]<br>0x0000FFFF|- rs1 : x9<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 15<br> |[0x8000013a]:c.srai s1, 15<br> [0x8000013c]:sw s1, 20(ra)<br>  |
|   7|[0x80002028]<br>0x00000000|- rs1 : x14<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 16<br>                       |[0x80000144]:c.srai a4, 16<br> [0x80000146]:sw a4, 24(ra)<br>  |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x15<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 23<br>                                                             |[0x8000014e]:c.srai a5, 23<br> [0x80000150]:sw a5, 28(ra)<br>  |
|   9|[0x80002030]<br>0x00000000|- rs1_val == 4<br> - rs1_val==4<br>                                                                                                 |[0x80000158]:c.srai a0, 9<br> [0x8000015a]:sw a0, 32(ra)<br>   |
|  10|[0x80002034]<br>0x00000000|- rs1_val == 16<br>                                                                                                                 |[0x80000162]:c.srai a0, 6<br> [0x80000164]:sw a0, 36(ra)<br>   |
|  11|[0x80002038]<br>0x00000000|- rs1_val == 32<br>                                                                                                                 |[0x8000016c]:c.srai a0, 16<br> [0x8000016e]:sw a0, 40(ra)<br>  |
|  12|[0x8000203c]<br>0x00000020|- rs1_val == 64<br> - imm_val == 1<br>                                                                                              |[0x80000176]:c.srai a0, 1<br> [0x80000178]:sw a0, 44(ra)<br>   |
|  13|[0x80002040]<br>0x00000001|- rs1_val == 128<br>                                                                                                                |[0x80000180]:c.srai a0, 7<br> [0x80000182]:sw a0, 48(ra)<br>   |
|  14|[0x80002044]<br>0x00000000|- rs1_val == 256<br> - imm_val == 27<br>                                                                                            |[0x8000018a]:c.srai a0, 27<br> [0x8000018c]:sw a0, 52(ra)<br>  |
|  15|[0x80002048]<br>0x00000010|- rs1_val == 512<br>                                                                                                                |[0x80000194]:c.srai a0, 5<br> [0x80000196]:sw a0, 56(ra)<br>   |
|  16|[0x8000204c]<br>0x00000000|- rs1_val == 1024<br>                                                                                                               |[0x8000019e]:c.srai a0, 23<br> [0x800001a0]:sw a0, 60(ra)<br>  |
|  17|[0x80002050]<br>0x00000000|- rs1_val == 2048<br>                                                                                                               |[0x800001ac]:c.srai a0, 14<br> [0x800001ae]:sw a0, 64(ra)<br>  |
|  18|[0x80002054]<br>0x00000040|- rs1_val == 4096<br>                                                                                                               |[0x800001b6]:c.srai a0, 6<br> [0x800001b8]:sw a0, 68(ra)<br>   |
|  19|[0x80002058]<br>0x00000040|- rs1_val == 8192<br>                                                                                                               |[0x800001c0]:c.srai a0, 7<br> [0x800001c2]:sw a0, 72(ra)<br>   |
|  20|[0x8000205c]<br>0x00000040|- rs1_val == 16384<br> - imm_val == 8<br>                                                                                           |[0x800001ca]:c.srai a0, 8<br> [0x800001cc]:sw a0, 76(ra)<br>   |
|  21|[0x80002060]<br>0x00000000|- rs1_val == 32768<br>                                                                                                              |[0x800001d4]:c.srai a0, 27<br> [0x800001d6]:sw a0, 80(ra)<br>  |
|  22|[0x80002064]<br>0x00000002|- rs1_val == 65536<br>                                                                                                              |[0x800001de]:c.srai a0, 15<br> [0x800001e0]:sw a0, 84(ra)<br>  |
|  23|[0x80002068]<br>0x00000000|- rs1_val == 131072<br> - imm_val == 30<br>                                                                                         |[0x800001e8]:c.srai a0, 30<br> [0x800001ea]:sw a0, 88(ra)<br>  |
|  24|[0x8000206c]<br>0x00000000|- rs1_val == 262144<br>                                                                                                             |[0x800001f2]:c.srai a0, 19<br> [0x800001f4]:sw a0, 92(ra)<br>  |
|  25|[0x80002070]<br>0x00000000|- rs1_val == 524288<br>                                                                                                             |[0x800001fc]:c.srai a0, 29<br> [0x800001fe]:sw a0, 96(ra)<br>  |
|  26|[0x80002074]<br>0x00000004|- rs1_val == 1048576<br>                                                                                                            |[0x80000206]:c.srai a0, 18<br> [0x80000208]:sw a0, 100(ra)<br> |
|  27|[0x80002078]<br>0x00100000|- rs1_val == 2097152<br>                                                                                                            |[0x80000210]:c.srai a0, 1<br> [0x80000212]:sw a0, 104(ra)<br>  |
|  28|[0x8000207c]<br>0x00000040|- rs1_val == 4194304<br>                                                                                                            |[0x8000021a]:c.srai a0, 16<br> [0x8000021c]:sw a0, 108(ra)<br> |
|  29|[0x80002080]<br>0x00040000|- rs1_val == 8388608<br>                                                                                                            |[0x80000224]:c.srai a0, 5<br> [0x80000226]:sw a0, 112(ra)<br>  |
|  30|[0x80002084]<br>0x00000040|- rs1_val == 16777216<br>                                                                                                           |[0x8000022e]:c.srai a0, 18<br> [0x80000230]:sw a0, 116(ra)<br> |
|  31|[0x80002088]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                           |[0x80000238]:c.srai a0, 31<br> [0x8000023a]:sw a0, 120(ra)<br> |
|  32|[0x8000208c]<br>0x00000100|- rs1_val == 67108864<br>                                                                                                           |[0x80000242]:c.srai a0, 18<br> [0x80000244]:sw a0, 124(ra)<br> |
|  33|[0x80002090]<br>0x00008000|- rs1_val == 134217728<br>                                                                                                          |[0x8000024c]:c.srai a0, 12<br> [0x8000024e]:sw a0, 128(ra)<br> |
|  34|[0x80002094]<br>0x00000002|- rs1_val == 268435456<br>                                                                                                          |[0x80000256]:c.srai a0, 27<br> [0x80000258]:sw a0, 132(ra)<br> |
|  35|[0x80002098]<br>0x00008000|- rs1_val == 536870912<br>                                                                                                          |[0x80000260]:c.srai a0, 14<br> [0x80000262]:sw a0, 136(ra)<br> |
|  36|[0x8000209c]<br>0x20000000|- rs1_val == 1073741824<br>                                                                                                         |[0x8000026a]:c.srai a0, 1<br> [0x8000026c]:sw a0, 140(ra)<br>  |
|  37|[0x800020a0]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                 |[0x80000274]:c.srai a0, 7<br> [0x80000276]:sw a0, 144(ra)<br>  |
|  38|[0x800020a4]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                 |[0x8000027e]:c.srai a0, 23<br> [0x80000280]:sw a0, 148(ra)<br> |
|  39|[0x800020a8]<br>0xFFFFFFFF|- rs1_val == -5<br> - imm_val == 4<br>                                                                                              |[0x80000288]:c.srai a0, 4<br> [0x8000028a]:sw a0, 152(ra)<br>  |
|  40|[0x800020ac]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                 |[0x80000292]:c.srai a0, 7<br> [0x80000294]:sw a0, 156(ra)<br>  |
|  41|[0x800020b0]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                |[0x8000029c]:c.srai a0, 31<br> [0x8000029e]:sw a0, 160(ra)<br> |
|  42|[0x800020b4]<br>0xFFFFFFEF|- rs1_val == -33<br>                                                                                                                |[0x800002a6]:c.srai a0, 1<br> [0x800002a8]:sw a0, 164(ra)<br>  |
|  43|[0x800020b8]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                |[0x800002b0]:c.srai a0, 19<br> [0x800002b2]:sw a0, 168(ra)<br> |
|  44|[0x800020bc]<br>0xFFFFFFDF|- rs1_val == -129<br> - imm_val == 2<br>                                                                                            |[0x800002ba]:c.srai a0, 2<br> [0x800002bc]:sw a0, 172(ra)<br>  |
|  45|[0x800020c0]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                               |[0x800002c4]:c.srai a0, 16<br> [0x800002c6]:sw a0, 176(ra)<br> |
|  46|[0x800020c4]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                               |[0x800002ce]:c.srai a0, 18<br> [0x800002d0]:sw a0, 180(ra)<br> |
|  47|[0x800020c8]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                              |[0x800002d8]:c.srai a0, 11<br> [0x800002da]:sw a0, 184(ra)<br> |
|  48|[0x800020cc]<br>0xFFFFFFFF|- rs1_val == -2049<br> - imm_val == 21<br>                                                                                          |[0x800002e6]:c.srai a0, 21<br> [0x800002e8]:sw a0, 188(ra)<br> |
|  49|[0x800020d0]<br>0xFFFFFFFE|- rs1_val == -4097<br>                                                                                                              |[0x800002f4]:c.srai a0, 12<br> [0x800002f6]:sw a0, 192(ra)<br> |
|  50|[0x800020d4]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                              |[0x80000302]:c.srai a0, 19<br> [0x80000304]:sw a0, 196(ra)<br> |
|  51|[0x800020d8]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                             |[0x80000310]:c.srai a0, 18<br> [0x80000312]:sw a0, 200(ra)<br> |
|  52|[0x800020dc]<br>0xFFFFFFFE|- rs1_val == -32769<br>                                                                                                             |[0x8000031e]:c.srai a0, 15<br> [0x80000320]:sw a0, 204(ra)<br> |
|  53|[0x800020e0]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                             |[0x8000032c]:c.srai a0, 23<br> [0x8000032e]:sw a0, 208(ra)<br> |
|  54|[0x800020e4]<br>0xFFFFF7FF|- rs1_val == -131073<br>                                                                                                            |[0x8000033a]:c.srai a0, 6<br> [0x8000033c]:sw a0, 212(ra)<br>  |
|  55|[0x800020e8]<br>0xFFFFFFFE|- rs1_val == -262145<br>                                                                                                            |[0x80000348]:c.srai a0, 18<br> [0x8000034a]:sw a0, 216(ra)<br> |
|  56|[0x800020ec]<br>0xFFFFEFFF|- rs1_val == -524289<br>                                                                                                            |[0x80000356]:c.srai a0, 7<br> [0x80000358]:sw a0, 220(ra)<br>  |
|  57|[0x800020f0]<br>0xFFFFBFFF|- rs1_val == -1048577<br>                                                                                                           |[0x80000364]:c.srai a0, 6<br> [0x80000366]:sw a0, 224(ra)<br>  |
|  58|[0x800020f4]<br>0xFFFFBFFF|- rs1_val == -2097153<br>                                                                                                           |[0x80000372]:c.srai a0, 7<br> [0x80000374]:sw a0, 228(ra)<br>  |
|  59|[0x800020f8]<br>0xFEFFFFFF|- rs1_val == -33554433<br>                                                                                                          |[0x80000380]:c.srai a0, 1<br> [0x80000382]:sw a0, 232(ra)<br>  |
|  60|[0x800020fc]<br>0xFFFFFFFF|- rs1_val == -67108865<br>                                                                                                          |[0x8000038e]:c.srai a0, 27<br> [0x80000390]:sw a0, 236(ra)<br> |
|  61|[0x80002100]<br>0xFFFFFFFF|- rs1_val == -134217729<br>                                                                                                         |[0x8000039c]:c.srai a0, 29<br> [0x8000039e]:sw a0, 240(ra)<br> |
|  62|[0x80002104]<br>0xFFFFEFFF|- rs1_val == -268435457<br>                                                                                                         |[0x800003aa]:c.srai a0, 16<br> [0x800003ac]:sw a0, 244(ra)<br> |
|  63|[0x80002108]<br>0xFFFFFFBF|- rs1_val == -536870913<br>                                                                                                         |[0x800003b8]:c.srai a0, 23<br> [0x800003ba]:sw a0, 248(ra)<br> |
|  64|[0x8000210c]<br>0xFFFDFFFF|- rs1_val == -1073741825<br>                                                                                                        |[0x800003c6]:c.srai a0, 13<br> [0x800003c8]:sw a0, 252(ra)<br> |
|  65|[0x80002110]<br>0x00055555|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                               |[0x800003d4]:c.srai a0, 12<br> [0x800003d6]:sw a0, 256(ra)<br> |
|  66|[0x80002114]<br>0xEAAAAAAA|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                             |[0x800003e2]:c.srai a0, 2<br> [0x800003e4]:sw a0, 260(ra)<br>  |
|  67|[0x80002118]<br>0x00000000|- rs1_val==3<br>                                                                                                                    |[0x800003ec]:c.srai a0, 2<br> [0x800003ee]:sw a0, 264(ra)<br>  |
|  68|[0x8000211c]<br>0x00000000|- rs1_val==5<br>                                                                                                                    |[0x800003f6]:c.srai a0, 30<br> [0x800003f8]:sw a0, 268(ra)<br> |
|  69|[0x80002120]<br>0x06666666|- rs1_val==858993459<br>                                                                                                            |[0x80000404]:c.srai a0, 3<br> [0x80000406]:sw a0, 272(ra)<br>  |
|  70|[0x80002124]<br>0x33333333|- rs1_val==1717986918<br>                                                                                                           |[0x80000412]:c.srai a0, 1<br> [0x80000414]:sw a0, 276(ra)<br>  |
|  71|[0x80002128]<br>0xFFFFFFFA|- rs1_val==-46340<br>                                                                                                               |[0x80000420]:c.srai a0, 13<br> [0x80000422]:sw a0, 280(ra)<br> |
|  72|[0x8000212c]<br>0x00000000|- rs1_val==46340<br>                                                                                                                |[0x8000042e]:c.srai a0, 18<br> [0x80000430]:sw a0, 284(ra)<br> |
|  73|[0x80002130]<br>0x00080000|- imm_val == 10<br>                                                                                                                 |[0x80000438]:c.srai a0, 10<br> [0x8000043a]:sw a0, 288(ra)<br> |
|  74|[0x80002134]<br>0x00000016|- rs1_val==46341<br>                                                                                                                |[0x80000446]:c.srai a0, 11<br> [0x80000448]:sw a0, 292(ra)<br> |
|  75|[0x80002138]<br>0x05555555|- rs1_val==1431655764<br>                                                                                                           |[0x80000454]:c.srai a0, 4<br> [0x80000456]:sw a0, 296(ra)<br>  |
|  76|[0x8000213c]<br>0xFFFFFFFF|- rs1_val==-46339<br>                                                                                                               |[0x80000462]:c.srai a0, 30<br> [0x80000464]:sw a0, 300(ra)<br> |
|  77|[0x80002140]<br>0x00333333|- rs1_val==858993458<br>                                                                                                            |[0x80000470]:c.srai a0, 8<br> [0x80000472]:sw a0, 304(ra)<br>  |
|  78|[0x80002144]<br>0x0000000C|- rs1_val==1717986917<br>                                                                                                           |[0x8000047e]:c.srai a0, 27<br> [0x80000480]:sw a0, 308(ra)<br> |
|  79|[0x80002148]<br>0x000005A8|- rs1_val==46339<br>                                                                                                                |[0x8000048c]:c.srai a0, 5<br> [0x8000048e]:sw a0, 312(ra)<br>  |
|  80|[0x8000214c]<br>0x00001555|- rs1_val==1431655766<br>                                                                                                           |[0x8000049a]:c.srai a0, 18<br> [0x8000049c]:sw a0, 316(ra)<br> |
|  81|[0x80002150]<br>0xFFFF5555|- rs1_val==-1431655765<br>                                                                                                          |[0x800004a8]:c.srai a0, 15<br> [0x800004aa]:sw a0, 320(ra)<br> |
|  82|[0x80002154]<br>0x00000000|- rs1_val==6<br>                                                                                                                    |[0x800004b2]:c.srai a0, 14<br> [0x800004b4]:sw a0, 324(ra)<br> |
|  83|[0x80002158]<br>0x00000066|- rs1_val==858993460<br>                                                                                                            |[0x800004c0]:c.srai a0, 23<br> [0x800004c2]:sw a0, 328(ra)<br> |
|  84|[0x8000215c]<br>0x33333333|- rs1_val==1717986919<br>                                                                                                           |[0x800004ce]:c.srai a0, 1<br> [0x800004d0]:sw a0, 332(ra)<br>  |
|  85|[0x80002160]<br>0xFFFFEFFF|- rs1_val == -4194305<br>                                                                                                           |[0x800004dc]:c.srai a0, 10<br> [0x800004de]:sw a0, 336(ra)<br> |
|  86|[0x80002164]<br>0xFFFFFDFF|- rs1_val == -8388609<br>                                                                                                           |[0x800004ea]:c.srai a0, 14<br> [0x800004ec]:sw a0, 340(ra)<br> |
|  87|[0x80002168]<br>0xFFFFFFBF|- rs1_val == -16777217<br>                                                                                                          |[0x800004f8]:c.srai a0, 18<br> [0x800004fa]:sw a0, 344(ra)<br> |
