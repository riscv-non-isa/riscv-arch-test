
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
| COV_LABELS                | cslli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cslli-01.S/cslli-01.S    |
| Total Number of coverpoints| 116     |
| Total Coverpoints Hit     | 116      |
| Total Signature Updates   | 86      |
| STAT1                     | 86      |
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

|s.no|        signature         |                                                                   coverpoints                                                                   |                             code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFD80000|- opcode : c.slli<br> - rd : x11<br> - rs1_val < 0 and imm_val < xlen<br>                                                                        |[0x80000104]:c.slli a1, 18<br> [0x80000106]:sw a1, 0(ra)<br>   |
|   2|[0x80002014]<br>0x00800000|- rd : x9<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 23<br> |[0x8000010e]:c.slli s1, 23<br> [0x80000110]:sw s1, 4(ra)<br>   |
|   3|[0x80002018]<br>0x00000040|- rd : x10<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 4<br> - rs1_val==4<br> - imm_val == 4<br>              |[0x80000118]:c.slli a0, 4<br> [0x8000011a]:sw a0, 8(ra)<br>    |
|   4|[0x8000201c]<br>0x00000000|- rd : x12<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                  |[0x80000122]:c.slli a2, 17<br> [0x80000124]:sw a2, 12(ra)<br>  |
|   5|[0x80002020]<br>0x00000000|- rd : x13<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - rs1_val==0<br> - imm_val == 21<br>                                       |[0x8000012c]:c.slli a3, 21<br> [0x8000012e]:sw a3, 16(ra)<br>  |
|   6|[0x80002024]<br>0xE0000000|- rd : x14<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 29<br>              |[0x8000013a]:c.slli a4, 29<br> [0x8000013c]:sw a4, 20(ra)<br>  |
|   7|[0x80002028]<br>0x00002000|- rd : x8<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                |[0x80000144]:c.slli fp, 12<br> [0x80000146]:sw fp, 24(ra)<br>  |
|   8|[0x8000202c]<br>0x00000100|- rd : x15<br> - rs1_val == 8<br>                                                                                                                |[0x8000014e]:c.slli a5, 5<br> [0x80000150]:sw a5, 28(ra)<br>   |
|   9|[0x80002030]<br>0x00000000|- rs1_val == 16<br>                                                                                                                              |[0x80000158]:c.slli a0, 31<br> [0x8000015a]:sw a0, 32(ra)<br>  |
|  10|[0x80002034]<br>0x00008000|- rs1_val == 32<br> - imm_val == 10<br>                                                                                                          |[0x80000162]:c.slli a0, 10<br> [0x80000164]:sw a0, 36(ra)<br>  |
|  11|[0x80002038]<br>0x00000000|- rs1_val == 64<br> - imm_val == 27<br>                                                                                                          |[0x8000016c]:c.slli a0, 27<br> [0x8000016e]:sw a0, 40(ra)<br>  |
|  12|[0x8000203c]<br>0x02000000|- rs1_val == 128<br>                                                                                                                             |[0x80000176]:c.slli a0, 18<br> [0x80000178]:sw a0, 44(ra)<br>  |
|  13|[0x80002040]<br>0x00001000|- rs1_val == 256<br>                                                                                                                             |[0x80000180]:c.slli a0, 4<br> [0x80000182]:sw a0, 48(ra)<br>   |
|  14|[0x80002044]<br>0x00200000|- rs1_val == 512<br>                                                                                                                             |[0x8000018a]:c.slli a0, 12<br> [0x8000018c]:sw a0, 52(ra)<br>  |
|  15|[0x80002048]<br>0x00200000|- rs1_val == 1024<br>                                                                                                                            |[0x80000194]:c.slli a0, 11<br> [0x80000196]:sw a0, 56(ra)<br>  |
|  16|[0x8000204c]<br>0x00080000|- rs1_val == 2048<br> - imm_val == 8<br>                                                                                                         |[0x800001a2]:c.slli a0, 8<br> [0x800001a4]:sw a0, 60(ra)<br>   |
|  17|[0x80002050]<br>0x00040000|- rs1_val == 4096<br>                                                                                                                            |[0x800001ac]:c.slli a0, 6<br> [0x800001ae]:sw a0, 64(ra)<br>   |
|  18|[0x80002054]<br>0x04000000|- rs1_val == 8192<br>                                                                                                                            |[0x800001b6]:c.slli a0, 13<br> [0x800001b8]:sw a0, 68(ra)<br>  |
|  19|[0x80002058]<br>0x00200000|- rs1_val == 16384<br>                                                                                                                           |[0x800001c0]:c.slli a0, 7<br> [0x800001c2]:sw a0, 72(ra)<br>   |
|  20|[0x8000205c]<br>0x08000000|- rs1_val == 32768<br>                                                                                                                           |[0x800001ca]:c.slli a0, 12<br> [0x800001cc]:sw a0, 76(ra)<br>  |
|  21|[0x80002060]<br>0x00040000|- rs1_val == 65536<br> - imm_val == 2<br>                                                                                                        |[0x800001d4]:c.slli a0, 2<br> [0x800001d6]:sw a0, 80(ra)<br>   |
|  22|[0x80002064]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                          |[0x800001de]:c.slli a0, 18<br> [0x800001e0]:sw a0, 84(ra)<br>  |
|  23|[0x80002068]<br>0x00200000|- rs1_val == 262144<br>                                                                                                                          |[0x800001e8]:c.slli a0, 3<br> [0x800001ea]:sw a0, 88(ra)<br>   |
|  24|[0x8000206c]<br>0x20000000|- rs1_val == 524288<br>                                                                                                                          |[0x800001f2]:c.slli a0, 10<br> [0x800001f4]:sw a0, 92(ra)<br>  |
|  25|[0x80002070]<br>0x02000000|- rs1_val == 1048576<br>                                                                                                                         |[0x800001fc]:c.slli a0, 5<br> [0x800001fe]:sw a0, 96(ra)<br>   |
|  26|[0x80002074]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                         |[0x80000206]:c.slli a0, 18<br> [0x80000208]:sw a0, 100(ra)<br> |
|  27|[0x80002078]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                         |[0x80000210]:c.slli a0, 29<br> [0x80000212]:sw a0, 104(ra)<br> |
|  28|[0x8000207c]<br>0x80000000|- rs1_val == 8388608<br>                                                                                                                         |[0x8000021a]:c.slli a0, 8<br> [0x8000021c]:sw a0, 108(ra)<br>  |
|  29|[0x80002080]<br>0x20000000|- rs1_val == 16777216<br>                                                                                                                        |[0x80000224]:c.slli a0, 5<br> [0x80000226]:sw a0, 112(ra)<br>  |
|  30|[0x80002084]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                        |[0x8000022e]:c.slli a0, 11<br> [0x80000230]:sw a0, 116(ra)<br> |
|  31|[0x80002088]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                        |[0x80000238]:c.slli a0, 12<br> [0x8000023a]:sw a0, 120(ra)<br> |
|  32|[0x8000208c]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                       |[0x80000242]:c.slli a0, 7<br> [0x80000244]:sw a0, 124(ra)<br>  |
|  33|[0x80002090]<br>0x00000000|- rs1_val == 268435456<br> - imm_val == 16<br>                                                                                                   |[0x8000024c]:c.slli a0, 16<br> [0x8000024e]:sw a0, 128(ra)<br> |
|  34|[0x80002094]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                       |[0x80000256]:c.slli a0, 17<br> [0x80000258]:sw a0, 132(ra)<br> |
|  35|[0x80002098]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                      |[0x80000260]:c.slli a0, 13<br> [0x80000262]:sw a0, 136(ra)<br> |
|  36|[0x8000209c]<br>0xFFFF0000|- rs1_val == -2<br> - imm_val == 15<br>                                                                                                          |[0x8000026a]:c.slli a0, 15<br> [0x8000026c]:sw a0, 140(ra)<br> |
|  37|[0x800020a0]<br>0xFFFFFE80|- rs1_val == -3<br>                                                                                                                              |[0x80000274]:c.slli a0, 7<br> [0x80000276]:sw a0, 144(ra)<br>  |
|  38|[0x800020a4]<br>0xFFF60000|- rs1_val == -5<br>                                                                                                                              |[0x8000027e]:c.slli a0, 17<br> [0x80000280]:sw a0, 148(ra)<br> |
|  39|[0x800020a8]<br>0xFFFFB800|- rs1_val == -9<br>                                                                                                                              |[0x80000288]:c.slli a0, 11<br> [0x8000028a]:sw a0, 152(ra)<br> |
|  40|[0x800020ac]<br>0xFFF78000|- rs1_val == -17<br>                                                                                                                             |[0x80000292]:c.slli a0, 15<br> [0x80000294]:sw a0, 156(ra)<br> |
|  41|[0x800020b0]<br>0x80000000|- rs1_val == -33<br>                                                                                                                             |[0x8000029c]:c.slli a0, 31<br> [0x8000029e]:sw a0, 160(ra)<br> |
|  42|[0x800020b4]<br>0xFFBF0000|- rs1_val == -65<br>                                                                                                                             |[0x800002a6]:c.slli a0, 16<br> [0x800002a8]:sw a0, 164(ra)<br> |
|  43|[0x800020b8]<br>0xFFF7F000|- rs1_val == -129<br>                                                                                                                            |[0x800002b0]:c.slli a0, 12<br> [0x800002b2]:sw a0, 168(ra)<br> |
|  44|[0x800020bc]<br>0xFBFC0000|- rs1_val == -257<br>                                                                                                                            |[0x800002ba]:c.slli a0, 18<br> [0x800002bc]:sw a0, 172(ra)<br> |
|  45|[0x800020c0]<br>0xFFFFDFF0|- rs1_val == -513<br>                                                                                                                            |[0x800002c4]:c.slli a0, 4<br> [0x800002c6]:sw a0, 176(ra)<br>  |
|  46|[0x800020c4]<br>0xFF800000|- rs1_val == -1025<br>                                                                                                                           |[0x800002ce]:c.slli a0, 23<br> [0x800002d0]:sw a0, 180(ra)<br> |
|  47|[0x800020c8]<br>0xFEFFE000|- rs1_val == -2049<br>                                                                                                                           |[0x800002dc]:c.slli a0, 13<br> [0x800002de]:sw a0, 184(ra)<br> |
|  48|[0x800020cc]<br>0xFEFFF000|- rs1_val == -4097<br>                                                                                                                           |[0x800002ea]:c.slli a0, 12<br> [0x800002ec]:sw a0, 188(ra)<br> |
|  49|[0x800020d0]<br>0xFFFFBFFE|- rs1_val == -8193<br> - imm_val == 1<br>                                                                                                        |[0x800002f8]:c.slli a0, 1<br> [0x800002fa]:sw a0, 192(ra)<br>  |
|  50|[0x800020d4]<br>0xF7FFE000|- rs1_val == -16385<br>                                                                                                                          |[0x80000306]:c.slli a0, 13<br> [0x80000308]:sw a0, 196(ra)<br> |
|  51|[0x800020d8]<br>0xBFFF8000|- rs1_val == -32769<br>                                                                                                                          |[0x80000314]:c.slli a0, 15<br> [0x80000316]:sw a0, 200(ra)<br> |
|  52|[0x800020dc]<br>0xFF7FFF80|- rs1_val == -65537<br>                                                                                                                          |[0x80000322]:c.slli a0, 7<br> [0x80000324]:sw a0, 204(ra)<br>  |
|  53|[0x800020e0]<br>0xFFF7FFFC|- rs1_val == -131073<br>                                                                                                                         |[0x80000330]:c.slli a0, 2<br> [0x80000332]:sw a0, 208(ra)<br>  |
|  54|[0x800020e4]<br>0x80000000|- rs1_val == -262145<br>                                                                                                                         |[0x8000033e]:c.slli a0, 31<br> [0x80000340]:sw a0, 212(ra)<br> |
|  55|[0x800020e8]<br>0xFFE00000|- rs1_val == -524289<br>                                                                                                                         |[0x8000034c]:c.slli a0, 21<br> [0x8000034e]:sw a0, 216(ra)<br> |
|  56|[0x800020ec]<br>0xDFFFFE00|- rs1_val == -1048577<br>                                                                                                                        |[0x8000035a]:c.slli a0, 9<br> [0x8000035c]:sw a0, 220(ra)<br>  |
|  57|[0x800020f0]<br>0xFFFFE000|- rs1_val == -2097153<br>                                                                                                                        |[0x80000368]:c.slli a0, 13<br> [0x8000036a]:sw a0, 224(ra)<br> |
|  58|[0x800020f4]<br>0xFFFFFF00|- rs1_val == -33554433<br>                                                                                                                       |[0x80000376]:c.slli a0, 8<br> [0x80000378]:sw a0, 228(ra)<br>  |
|  59|[0x800020f8]<br>0xFFE00000|- rs1_val == -67108865<br>                                                                                                                       |[0x80000384]:c.slli a0, 21<br> [0x80000386]:sw a0, 232(ra)<br> |
|  60|[0x800020fc]<br>0xFFFF8000|- rs1_val == -134217729<br>                                                                                                                      |[0x80000392]:c.slli a0, 15<br> [0x80000394]:sw a0, 236(ra)<br> |
|  61|[0x80002100]<br>0xFFFFFF00|- rs1_val == -268435457<br>                                                                                                                      |[0x800003a0]:c.slli a0, 8<br> [0x800003a2]:sw a0, 240(ra)<br>  |
|  62|[0x80002104]<br>0xFFF80000|- rs1_val == -536870913<br>                                                                                                                      |[0x800003ae]:c.slli a0, 19<br> [0x800003b0]:sw a0, 244(ra)<br> |
|  63|[0x80002108]<br>0xFFFFFC00|- rs1_val == -1073741825<br>                                                                                                                     |[0x800003bc]:c.slli a0, 10<br> [0x800003be]:sw a0, 248(ra)<br> |
|  64|[0x8000210c]<br>0x55555554|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                            |[0x800003ca]:c.slli a0, 2<br> [0x800003cc]:sw a0, 252(ra)<br>  |
|  65|[0x80002110]<br>0x55555554|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                          |[0x800003d8]:c.slli a0, 1<br> [0x800003da]:sw a0, 256(ra)<br>  |
|  66|[0x80002114]<br>0x00000180|- rs1_val==3<br>                                                                                                                                 |[0x800003e2]:c.slli a0, 7<br> [0x800003e4]:sw a0, 260(ra)<br>  |
|  67|[0x80002118]<br>0x0000A000|- rs1_val==5<br>                                                                                                                                 |[0x800003ec]:c.slli a0, 13<br> [0x800003ee]:sw a0, 264(ra)<br> |
|  68|[0x8000211c]<br>0x33333300|- rs1_val==858993459<br>                                                                                                                         |[0x800003fa]:c.slli a0, 8<br> [0x800003fc]:sw a0, 268(ra)<br>  |
|  69|[0x80002120]<br>0x33333330|- rs1_val==1717986918<br>                                                                                                                        |[0x80000408]:c.slli a0, 3<br> [0x8000040a]:sw a0, 272(ra)<br>  |
|  70|[0x80002124]<br>0xFFFE95F8|- rs1_val==-46340<br>                                                                                                                            |[0x80000416]:c.slli a0, 1<br> [0x80000418]:sw a0, 276(ra)<br>  |
|  71|[0x80002128]<br>0x00016A08|- rs1_val==46340<br>                                                                                                                             |[0x80000424]:c.slli a0, 1<br> [0x80000426]:sw a0, 280(ra)<br>  |
|  72|[0x8000212c]<br>0x40000000|- imm_val == 30<br>                                                                                                                              |[0x80000432]:c.slli a0, 30<br> [0x80000434]:sw a0, 284(ra)<br> |
|  73|[0x80002130]<br>0x16A0A000|- rs1_val==46341<br>                                                                                                                             |[0x80000440]:c.slli a0, 13<br> [0x80000442]:sw a0, 288(ra)<br> |
|  74|[0x80002134]<br>0xAAAAAA80|- rs1_val==1431655764<br>                                                                                                                        |[0x8000044e]:c.slli a0, 5<br> [0x80000450]:sw a0, 292(ra)<br>  |
|  75|[0x80002138]<br>0xFF4AFD00|- rs1_val==-46339<br>                                                                                                                            |[0x8000045c]:c.slli a0, 8<br> [0x8000045e]:sw a0, 296(ra)<br>  |
|  76|[0x8000213c]<br>0xCCC80000|- rs1_val==858993458<br>                                                                                                                         |[0x8000046a]:c.slli a0, 18<br> [0x8000046c]:sw a0, 300(ra)<br> |
|  77|[0x80002140]<br>0x33328000|- rs1_val==1717986917<br>                                                                                                                        |[0x80000478]:c.slli a0, 15<br> [0x8000047a]:sw a0, 304(ra)<br> |
|  78|[0x80002144]<br>0xC0000000|- rs1_val==46339<br>                                                                                                                             |[0x80000486]:c.slli a0, 30<br> [0x80000488]:sw a0, 308(ra)<br> |
|  79|[0x80002148]<br>0x80000000|- rs1_val==1431655766<br>                                                                                                                        |[0x80000494]:c.slli a0, 30<br> [0x80000496]:sw a0, 312(ra)<br> |
|  80|[0x8000214c]<br>0x55600000|- rs1_val==-1431655765<br>                                                                                                                       |[0x800004a2]:c.slli a0, 21<br> [0x800004a4]:sw a0, 316(ra)<br> |
|  81|[0x80002150]<br>0x000C0000|- rs1_val==6<br>                                                                                                                                 |[0x800004ac]:c.slli a0, 17<br> [0x800004ae]:sw a0, 320(ra)<br> |
|  82|[0x80002154]<br>0x999999A0|- rs1_val==858993460<br>                                                                                                                         |[0x800004ba]:c.slli a0, 3<br> [0x800004bc]:sw a0, 324(ra)<br>  |
|  83|[0x80002158]<br>0x66670000|- rs1_val==1717986919<br>                                                                                                                        |[0x800004c8]:c.slli a0, 16<br> [0x800004ca]:sw a0, 328(ra)<br> |
|  84|[0x8000215c]<br>0xFFFF0000|- rs1_val == -4194305<br>                                                                                                                        |[0x800004d6]:c.slli a0, 16<br> [0x800004d8]:sw a0, 332(ra)<br> |
|  85|[0x80002160]<br>0xFFFF0000|- rs1_val == -8388609<br>                                                                                                                        |[0x800004e4]:c.slli a0, 16<br> [0x800004e6]:sw a0, 336(ra)<br> |
|  86|[0x80002164]<br>0xFFE00000|- rs1_val == -16777217<br>                                                                                                                       |[0x800004f2]:c.slli a0, 21<br> [0x800004f4]:sw a0, 340(ra)<br> |
