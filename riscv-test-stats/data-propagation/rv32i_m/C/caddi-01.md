
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001380')]      |
| SIG_REGION                | [('0x80003010', '0x800035f0', '376 words')]      |
| COV_LABELS                | caddi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi-01.S/caddi-01.S    |
| Total Number of coverpoints| 432     |
| Total Coverpoints Hit     | 432      |
| Total Signature Updates   | 375      |
| STAT1                     | 375      |
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

|s.no|        signature         |                                                        coverpoints                                                        |                              code                               |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
|   1|[0x80003010]<br>0x00000012|- opcode : c.addi<br> - rd : x27<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>                            |[0x80000104]:c.addi s11, 9<br> [0x80000106]:sw s11, 0(a1)<br>    |
|   2|[0x80003014]<br>0xC000001F|- rd : x9<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> |[0x8000010e]:c.addi s1, 31<br> [0x80000110]:c.sw a1, s1, 4<br>   |
|   3|[0x80003018]<br>0xFFFFFFF8|- rd : x22<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -17<br>                                                      |[0x80000116]:c.addi s6, 47<br> [0x80000118]:sw s6, 8(a1)<br>     |
|   4|[0x8000301c]<br>0xFFFFFBF8|- rd : x12<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -1025<br>                                                    |[0x80000120]:c.addi a2, 57<br> [0x80000122]:c.sw a1, a2, 12<br>  |
|   5|[0x80003020]<br>0xFFFFFFF0|- rd : x16<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == 16<br>                                       |[0x80000128]:c.addi a6, 32<br> [0x8000012a]:sw a6, 16(a1)<br>    |
|   6|[0x80003024]<br>0x00000004|- rd : x10<br> - imm_val == 0<br> - rs1_val == 4<br> - rs1_val==4 and imm_val==0<br>                                       |[0x80000132]:c.addi.hint.a0<br> [0x80000134]:c.sw a1, a0, 20<br> |
|   7|[0x80003028]<br>0x00000101|- rd : x14<br> - imm_val == 1<br> - rs1_val == 256<br>                                                                     |[0x8000013a]:c.addi a4, 1<br> [0x8000013c]:c.sw a1, a4, 24<br>   |
|   8|[0x8000302c]<br>0x8000001F|- rd : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                |[0x80000142]:c.addi a3, 31<br> [0x80000144]:c.sw a1, a3, 28<br>  |
|   9|[0x80003030]<br>0x00000000|- rd : x31<br> - rs1_val == 0<br> - rs1_val==0 and imm_val==0<br>                                                          |[0x8000014a]:c.addi.hint.t6<br> [0x8000014c]:sw t6, 32(a1)<br>   |
|  10|[0x80003034]<br>0x7FFFFFE9|- rd : x3<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -22<br> - rs1_val == 2147483647<br>                            |[0x80000158]:c.addi gp, 42<br> [0x8000015a]:sw gp, 36(a1)<br>    |
|  11|[0x80003038]<br>0x00000005|- rd : x7<br> - rs1_val == 1<br> - imm_val == 4<br>                                                                        |[0x80000162]:c.addi t2, 4<br> [0x80000164]:sw t2, 40(a1)<br>     |
|  12|[0x8000303c]<br>0x66666668|- rd : x1<br> - imm_val == 2<br> - rs1_val==1717986918 and imm_val==2<br>                                                  |[0x80000170]:c.addi ra, 2<br> [0x80000172]:sw ra, 44(a1)<br>     |
|  13|[0x80003040]<br>0xFFC00007|- rd : x30<br> - imm_val == 8<br> - rs1_val == -4194305<br>                                                                |[0x8000017e]:c.addi t5, 8<br> [0x80000180]:sw t5, 48(a1)<br>     |
|  14|[0x80003044]<br>0xFFFE000F|- rd : x6<br> - imm_val == 16<br> - rs1_val == -131073<br>                                                                 |[0x8000018c]:c.addi t1, 16<br> [0x8000018e]:sw t1, 52(a1)<br>    |
|  15|[0x80003048]<br>0xFFFFFFFC|- rd : x19<br> - imm_val == -2<br> - rs1_val == -2<br>                                                                     |[0x80000196]:c.addi s3, 62<br> [0x80000198]:sw s3, 56(a1)<br>    |
|  16|[0x8000304c]<br>0xDFFFFFFC|- rd : x25<br> - imm_val == -3<br> - rs1_val == -536870913<br>                                                             |[0x800001a4]:c.addi s9, 61<br> [0x800001a6]:sw s9, 60(a1)<br>    |
|  17|[0x80003050]<br>0xFFFFFFF4|- rd : x28<br> - imm_val == -5<br>                                                                                         |[0x800001ae]:c.addi t3, 59<br> [0x800001b0]:sw t3, 64(a1)<br>    |
|  18|[0x80003054]<br>0xFFFFFFF0|- rd : x24<br> - imm_val == -9<br>                                                                                         |[0x800001b8]:c.addi s8, 55<br> [0x800001ba]:sw s8, 68(a1)<br>    |
|  19|[0x80003058]<br>0x0000001D|- rd : x15<br> - imm_val == 21<br> - rs1_val == 8<br>                                                                      |[0x800001c2]:c.addi a5, 21<br> [0x800001c4]:c.sw a1, a5, 72<br>  |
|  20|[0x8000305c]<br>0x00000004|- rd : x2<br> - rs1_val == 2<br> - rs1_val==2 and imm_val==2<br>                                                           |[0x800001ca]:c.addi sp, 2<br> [0x800001cc]:sw sp, 76(a1)<br>     |
|  21|[0x80003060]<br>0x00000023|- rd : x8<br> - rs1_val == 32<br>                                                                                          |[0x800001d4]:c.addi fp, 3<br> [0x800001d6]:c.sw a1, s0, 80<br>   |
|  22|[0x80003064]<br>0x00000039|- rd : x23<br> - rs1_val == 64<br>                                                                                         |[0x800001dc]:c.addi s7, 57<br> [0x800001de]:sw s7, 84(a1)<br>    |
|  23|[0x80003068]<br>0x0000007C|- rd : x17<br> - rs1_val == 128<br>                                                                                        |[0x800001e6]:c.addi a7, 60<br> [0x800001e8]:sw a7, 88(a1)<br>    |
|  24|[0x8000306c]<br>0x00000202|- rd : x20<br> - rs1_val == 512<br>                                                                                        |[0x800001f0]:c.addi s4, 2<br> [0x800001f2]:sw s4, 92(a1)<br>     |
|  25|[0x80003070]<br>0x00000410|- rd : x5<br> - rs1_val == 1024<br>                                                                                        |[0x800001fa]:c.addi t0, 16<br> [0x800001fc]:sw t0, 96(a1)<br>    |
|  26|[0x80003074]<br>0x00000810|- rd : x26<br> - rs1_val == 2048<br>                                                                                       |[0x80000208]:c.addi s10, 16<br> [0x8000020a]:sw s10, 100(a1)<br> |
|  27|[0x80003078]<br>0x00001015|- rd : x4<br> - rs1_val == 4096<br>                                                                                        |[0x80000212]:c.addi tp, 21<br> [0x80000214]:sw tp, 104(a1)<br>   |
|  28|[0x8000307c]<br>0x00001FFC|- rd : x29<br> - rs1_val == 8192<br>                                                                                       |[0x8000021c]:c.addi t4, 60<br> [0x8000021e]:sw t4, 108(a1)<br>   |
|  29|[0x80003080]<br>0x00004000|- rd : x18<br> - rs1_val == 16384<br>                                                                                      |[0x8000022e]:c.addi.hint.s2<br> [0x80000230]:sw s2, 0(ra)<br>    |
|  30|[0x80003084]<br>0x00008006|- rd : x11<br> - rs1_val == 32768<br>                                                                                      |[0x80000238]:c.addi a1, 6<br> [0x8000023a]:sw a1, 4(ra)<br>      |
|  31|[0x80003088]<br>0x00010005|- rd : x21<br> - rs1_val == 65536<br>                                                                                      |[0x80000242]:c.addi s5, 5<br> [0x80000244]:sw s5, 8(ra)<br>      |
|  32|[0x8000308c]<br>0x0001FFFC|- rs1_val == 131072<br>                                                                                                    |[0x8000024c]:c.addi a0, 60<br> [0x8000024e]:sw a0, 12(ra)<br>    |
|  33|[0x80003090]<br>0x0003FFF9|- rs1_val == 262144<br>                                                                                                    |[0x80000256]:c.addi a0, 57<br> [0x80000258]:sw a0, 16(ra)<br>    |
|  34|[0x80003094]<br>0x0007FFF0|- rs1_val == 524288<br>                                                                                                    |[0x80000260]:c.addi a0, 48<br> [0x80000262]:sw a0, 20(ra)<br>    |
|  35|[0x80003098]<br>0x000FFFF7|- rs1_val == 1048576<br>                                                                                                   |[0x8000026a]:c.addi a0, 55<br> [0x8000026c]:sw a0, 24(ra)<br>    |
|  36|[0x8000309c]<br>0x001FFFEA|- rs1_val == 2097152<br>                                                                                                   |[0x80000274]:c.addi a0, 42<br> [0x80000276]:sw a0, 28(ra)<br>    |
|  37|[0x800030a0]<br>0x00400009|- rs1_val == 4194304<br>                                                                                                   |[0x8000027e]:c.addi a0, 9<br> [0x80000280]:sw a0, 32(ra)<br>     |
|  38|[0x800030a4]<br>0x007FFFFC|- rs1_val == 8388608<br>                                                                                                   |[0x80000288]:c.addi a0, 60<br> [0x8000028a]:sw a0, 36(ra)<br>    |
|  39|[0x800030a8]<br>0x01000004|- rs1_val == 16777216<br>                                                                                                  |[0x80000292]:c.addi a0, 4<br> [0x80000294]:sw a0, 40(ra)<br>     |
|  40|[0x800030ac]<br>0x02000004|- rs1_val == 33554432<br>                                                                                                  |[0x8000029c]:c.addi a0, 4<br> [0x8000029e]:sw a0, 44(ra)<br>     |
|  41|[0x800030b0]<br>0x03FFFFF0|- rs1_val == 67108864<br>                                                                                                  |[0x800002a6]:c.addi a0, 48<br> [0x800002a8]:sw a0, 48(ra)<br>    |
|  42|[0x800030b4]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                 |[0x800002b0]:c.addi.hint.a0<br> [0x800002b2]:sw a0, 52(ra)<br>   |
|  43|[0x800030b8]<br>0x10000004|- rs1_val == 268435456<br>                                                                                                 |[0x800002ba]:c.addi a0, 4<br> [0x800002bc]:sw a0, 56(ra)<br>     |
|  44|[0x800030bc]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                 |[0x800002c4]:c.addi.hint.a0<br> [0x800002c6]:sw a0, 60(ra)<br>   |
|  45|[0x800030c0]<br>0x3FFFFFFF|- rs1_val == 1073741824<br>                                                                                                |[0x800002ce]:c.addi a0, 63<br> [0x800002d0]:sw a0, 64(ra)<br>    |
|  46|[0x800030c4]<br>0x00000003|- rs1_val == -3<br>                                                                                                        |[0x800002d8]:c.addi a0, 6<br> [0x800002da]:sw a0, 68(ra)<br>     |
|  47|[0x800030c8]<br>0xFFFFFFDB|- rs1_val == -5<br>                                                                                                        |[0x800002e2]:c.addi a0, 32<br> [0x800002e4]:sw a0, 72(ra)<br>    |
|  48|[0x800030cc]<br>0xFFFFFFF2|- rs1_val == -9<br>                                                                                                        |[0x800002ec]:c.addi a0, 59<br> [0x800002ee]:sw a0, 76(ra)<br>    |
|  49|[0x800030d0]<br>0x0000000E|- rs1_val == -17<br>                                                                                                       |[0x800002f6]:c.addi a0, 31<br> [0x800002f8]:sw a0, 80(ra)<br>    |
|  50|[0x800030d4]<br>0xFFFFFFDE|- rs1_val == -33<br>                                                                                                       |[0x80000300]:c.addi a0, 63<br> [0x80000302]:sw a0, 84(ra)<br>    |
|  51|[0x800030d8]<br>0xFFFFFFA9|- rs1_val == -65<br>                                                                                                       |[0x8000030a]:c.addi a0, 42<br> [0x8000030c]:sw a0, 88(ra)<br>    |
|  52|[0x800030dc]<br>0xFFFFFF5F|- rs1_val == -129<br>                                                                                                      |[0x80000314]:c.addi a0, 32<br> [0x80000316]:sw a0, 92(ra)<br>    |
|  53|[0x800030e0]<br>0xFFFFFEFB|- rs1_val == -257<br>                                                                                                      |[0x8000031e]:c.addi a0, 60<br> [0x80000320]:sw a0, 96(ra)<br>    |
|  54|[0x800030e4]<br>0xFFFFFE03|- rs1_val == -513<br>                                                                                                      |[0x80000328]:c.addi a0, 4<br> [0x8000032a]:sw a0, 100(ra)<br>    |
|  55|[0x800030e8]<br>0xFFFFF804|- rs1_val == -2049<br>                                                                                                     |[0x80000336]:c.addi a0, 5<br> [0x80000338]:sw a0, 104(ra)<br>    |
|  56|[0x800030ec]<br>0xFFFFF00F|- rs1_val == -4097<br>                                                                                                     |[0x80000344]:c.addi a0, 16<br> [0x80000346]:sw a0, 108(ra)<br>   |
|  57|[0x800030f0]<br>0xFFFFE004|- rs1_val == -8193<br>                                                                                                     |[0x80000352]:c.addi a0, 5<br> [0x80000354]:sw a0, 112(ra)<br>    |
|  58|[0x800030f4]<br>0xFFFFBFFE|- rs1_val == -16385<br>                                                                                                    |[0x80000360]:c.addi a0, 63<br> [0x80000362]:sw a0, 116(ra)<br>   |
|  59|[0x800030f8]<br>0xFFFF800E|- rs1_val == -32769<br>                                                                                                    |[0x8000036e]:c.addi a0, 15<br> [0x80000370]:sw a0, 120(ra)<br>   |
|  60|[0x800030fc]<br>0xFFFEFFF6|- rs1_val == -65537<br>                                                                                                    |[0x8000037c]:c.addi a0, 55<br> [0x8000037e]:sw a0, 124(ra)<br>   |
|  61|[0x80003100]<br>0xFFFBFFFA|- rs1_val == -262145<br>                                                                                                   |[0x8000038a]:c.addi a0, 59<br> [0x8000038c]:sw a0, 128(ra)<br>   |
|  62|[0x80003104]<br>0xFFF7FFEF|- rs1_val == -524289<br>                                                                                                   |[0x80000398]:c.addi a0, 48<br> [0x8000039a]:sw a0, 132(ra)<br>   |
|  63|[0x80003108]<br>0xFFEFFFFD|- rs1_val == -1048577<br>                                                                                                  |[0x800003a6]:c.addi a0, 62<br> [0x800003a8]:sw a0, 136(ra)<br>   |
|  64|[0x8000310c]<br>0xFFE00004|- rs1_val == -2097153<br>                                                                                                  |[0x800003b4]:c.addi a0, 5<br> [0x800003b6]:sw a0, 140(ra)<br>    |
|  65|[0x80003110]<br>0xFF7FFFFB|- rs1_val == -8388609<br>                                                                                                  |[0x800003c2]:c.addi a0, 60<br> [0x800003c4]:sw a0, 144(ra)<br>   |
|  66|[0x80003114]<br>0xFF000004|- rs1_val == -16777217<br>                                                                                                 |[0x800003d0]:c.addi a0, 5<br> [0x800003d2]:sw a0, 148(ra)<br>    |
|  67|[0x80003118]<br>0xFDFFFFF7|- rs1_val == -33554433<br>                                                                                                 |[0x800003de]:c.addi a0, 56<br> [0x800003e0]:sw a0, 152(ra)<br>   |
|  68|[0x8000311c]<br>0xFC000003|- rs1_val == -67108865<br>                                                                                                 |[0x800003ec]:c.addi a0, 4<br> [0x800003ee]:sw a0, 156(ra)<br>    |
|  69|[0x80003120]<br>0xF8000006|- rs1_val == -134217729<br>                                                                                                |[0x800003fa]:c.addi a0, 7<br> [0x800003fc]:sw a0, 160(ra)<br>    |
|  70|[0x80003124]<br>0xF0000003|- rs1_val == -268435457<br>                                                                                                |[0x80000408]:c.addi a0, 4<br> [0x8000040a]:sw a0, 164(ra)<br>    |
|  71|[0x80003128]<br>0xC0000003|- rs1_val == -1073741825<br>                                                                                               |[0x80000416]:c.addi a0, 4<br> [0x80000418]:sw a0, 168(ra)<br>    |
|  72|[0x8000312c]<br>0x55555559|- rs1_val == 1431655765<br> - rs1_val==1431655765 and imm_val==4<br>                                                       |[0x80000424]:c.addi a0, 4<br> [0x80000426]:sw a0, 172(ra)<br>    |
|  73|[0x80003130]<br>0xAAAAAAA8|- rs1_val == -1431655766<br> - rs1_val==-1431655766 and imm_val==-2<br>                                                    |[0x80000432]:c.addi a0, 62<br> [0x80000434]:sw a0, 176(ra)<br>   |
|  74|[0x80003134]<br>0x00000006|- rs1_val==3 and imm_val==3<br>                                                                                            |[0x8000043c]:c.addi a0, 3<br> [0x8000043e]:sw a0, 180(ra)<br>    |
|  75|[0x80003138]<br>0x00000008|- rs1_val==3 and imm_val==5<br>                                                                                            |[0x80000446]:c.addi a0, 5<br> [0x80000448]:sw a0, 184(ra)<br>    |
|  76|[0x8000313c]<br>0x0000000D|- rs1_val==3 and imm_val==10<br>                                                                                           |[0x80000450]:c.addi a0, 10<br> [0x80000452]:sw a0, 188(ra)<br>   |
|  77|[0x80003140]<br>0x00000009|- rs1_val==3 and imm_val==6<br>                                                                                            |[0x8000045a]:c.addi a0, 6<br> [0x8000045c]:sw a0, 192(ra)<br>    |
|  78|[0x80003144]<br>0x00000001|- rs1_val==3 and imm_val==-2<br>                                                                                           |[0x80000464]:c.addi a0, 62<br> [0x80000466]:sw a0, 196(ra)<br>   |
|  79|[0x80003148]<br>0xFFFFFFFE|- rs1_val==3 and imm_val==-5<br>                                                                                           |[0x8000046e]:c.addi a0, 59<br> [0x80000470]:sw a0, 200(ra)<br>   |
|  80|[0x8000314c]<br>0x00000005|- rs1_val==3 and imm_val==2<br>                                                                                            |[0x80000478]:c.addi a0, 2<br> [0x8000047a]:sw a0, 204(ra)<br>    |
|  81|[0x80003150]<br>0x00000007|- rs1_val==3 and imm_val==4<br>                                                                                            |[0x80000482]:c.addi a0, 4<br> [0x80000484]:sw a0, 208(ra)<br>    |
|  82|[0x80003154]<br>0x0000000C|- rs1_val==3 and imm_val==9<br>                                                                                            |[0x8000048c]:c.addi a0, 9<br> [0x8000048e]:sw a0, 212(ra)<br>    |
|  83|[0x80003158]<br>0x00000003|- rs1_val==3 and imm_val==0<br>                                                                                            |[0x80000496]:c.addi.hint.a0<br> [0x80000498]:sw a0, 216(ra)<br>  |
|  84|[0x8000315c]<br>0x0000000E|- rs1_val==3 and imm_val==11<br>                                                                                           |[0x800004a0]:c.addi a0, 11<br> [0x800004a2]:sw a0, 220(ra)<br>   |
|  85|[0x80003160]<br>0x0000000A|- rs1_val==3 and imm_val==7<br>                                                                                            |[0x800004aa]:c.addi a0, 7<br> [0x800004ac]:sw a0, 224(ra)<br>    |
|  86|[0x80003164]<br>0x00000002|- rs1_val==3 and imm_val==-1<br>                                                                                           |[0x800004b4]:c.addi a0, 63<br> [0x800004b6]:sw a0, 228(ra)<br>   |
|  87|[0x80003168]<br>0xFFFFFFFF|- rs1_val==3 and imm_val==-4<br>                                                                                           |[0x800004be]:c.addi a0, 60<br> [0x800004c0]:sw a0, 232(ra)<br>   |
|  88|[0x8000316c]<br>0x55555558|- rs1_val==1431655765 and imm_val==3<br>                                                                                   |[0x800004cc]:c.addi a0, 3<br> [0x800004ce]:sw a0, 236(ra)<br>    |
|  89|[0x80003170]<br>0x5555555A|- rs1_val==1431655765 and imm_val==5<br>                                                                                   |[0x800004da]:c.addi a0, 5<br> [0x800004dc]:sw a0, 240(ra)<br>    |
|  90|[0x80003174]<br>0x5555555F|- rs1_val==1431655765 and imm_val==10<br>                                                                                  |[0x800004e8]:c.addi a0, 10<br> [0x800004ea]:sw a0, 244(ra)<br>   |
|  91|[0x80003178]<br>0x5555555B|- rs1_val==1431655765 and imm_val==6<br>                                                                                   |[0x800004f6]:c.addi a0, 6<br> [0x800004f8]:sw a0, 248(ra)<br>    |
|  92|[0x8000317c]<br>0x55555553|- rs1_val==1431655765 and imm_val==-2<br>                                                                                  |[0x80000504]:c.addi a0, 62<br> [0x80000506]:sw a0, 252(ra)<br>   |
|  93|[0x80003180]<br>0x55555550|- rs1_val==1431655765 and imm_val==-5<br>                                                                                  |[0x80000512]:c.addi a0, 59<br> [0x80000514]:sw a0, 256(ra)<br>   |
|  94|[0x80003184]<br>0x55555557|- rs1_val==1431655765 and imm_val==2<br>                                                                                   |[0x80000520]:c.addi a0, 2<br> [0x80000522]:sw a0, 260(ra)<br>    |
|  95|[0x80003188]<br>0x5555555E|- rs1_val==1431655765 and imm_val==9<br>                                                                                   |[0x8000052e]:c.addi a0, 9<br> [0x80000530]:sw a0, 264(ra)<br>    |
|  96|[0x8000318c]<br>0x55555555|- rs1_val==1431655765 and imm_val==0<br>                                                                                   |[0x8000053c]:c.addi.hint.a0<br> [0x8000053e]:sw a0, 268(ra)<br>  |
|  97|[0x80003190]<br>0x55555560|- rs1_val==1431655765 and imm_val==11<br>                                                                                  |[0x8000054a]:c.addi a0, 11<br> [0x8000054c]:sw a0, 272(ra)<br>   |
|  98|[0x80003194]<br>0x5555555C|- rs1_val==1431655765 and imm_val==7<br>                                                                                   |[0x80000558]:c.addi a0, 7<br> [0x8000055a]:sw a0, 276(ra)<br>    |
|  99|[0x80003198]<br>0x55555554|- rs1_val==1431655765 and imm_val==-1<br>                                                                                  |[0x80000566]:c.addi a0, 63<br> [0x80000568]:sw a0, 280(ra)<br>   |
| 100|[0x8000319c]<br>0x55555551|- rs1_val==1431655765 and imm_val==-4<br>                                                                                  |[0x80000574]:c.addi a0, 60<br> [0x80000576]:sw a0, 284(ra)<br>   |
| 101|[0x800031a0]<br>0xAAAAAAAD|- rs1_val==-1431655766 and imm_val==3<br>                                                                                  |[0x80000582]:c.addi a0, 3<br> [0x80000584]:sw a0, 288(ra)<br>    |
| 102|[0x800031a4]<br>0xAAAAAAAF|- rs1_val==-1431655766 and imm_val==5<br>                                                                                  |[0x80000590]:c.addi a0, 5<br> [0x80000592]:sw a0, 292(ra)<br>    |
| 103|[0x800031a8]<br>0xAAAAAAB4|- rs1_val==-1431655766 and imm_val==10<br>                                                                                 |[0x8000059e]:c.addi a0, 10<br> [0x800005a0]:sw a0, 296(ra)<br>   |
| 104|[0x800031ac]<br>0xAAAAAAB0|- rs1_val==-1431655766 and imm_val==6<br>                                                                                  |[0x800005ac]:c.addi a0, 6<br> [0x800005ae]:sw a0, 300(ra)<br>    |
| 105|[0x800031b0]<br>0xAAAAAAA5|- rs1_val==-1431655766 and imm_val==-5<br>                                                                                 |[0x800005ba]:c.addi a0, 59<br> [0x800005bc]:sw a0, 304(ra)<br>   |
| 106|[0x800031b4]<br>0xAAAAAAAC|- rs1_val==-1431655766 and imm_val==2<br>                                                                                  |[0x800005c8]:c.addi a0, 2<br> [0x800005ca]:sw a0, 308(ra)<br>    |
| 107|[0x800031b8]<br>0xAAAAAAAE|- rs1_val==-1431655766 and imm_val==4<br>                                                                                  |[0x800005d6]:c.addi a0, 4<br> [0x800005d8]:sw a0, 312(ra)<br>    |
| 108|[0x800031bc]<br>0xAAAAAAB3|- rs1_val==-1431655766 and imm_val==9<br>                                                                                  |[0x800005e4]:c.addi a0, 9<br> [0x800005e6]:sw a0, 316(ra)<br>    |
| 109|[0x800031c0]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==0<br>                                                                                  |[0x800005f2]:c.addi.hint.a0<br> [0x800005f4]:sw a0, 320(ra)<br>  |
| 110|[0x800031c4]<br>0xAAAAAAB5|- rs1_val==-1431655766 and imm_val==11<br>                                                                                 |[0x80000600]:c.addi a0, 11<br> [0x80000602]:sw a0, 324(ra)<br>   |
| 111|[0x800031c8]<br>0xAAAAAAB1|- rs1_val==-1431655766 and imm_val==7<br>                                                                                  |[0x8000060e]:c.addi a0, 7<br> [0x80000610]:sw a0, 328(ra)<br>    |
| 112|[0x800031cc]<br>0xAAAAAAA9|- rs1_val==-1431655766 and imm_val==-1<br>                                                                                 |[0x8000061c]:c.addi a0, 63<br> [0x8000061e]:sw a0, 332(ra)<br>   |
| 113|[0x800031d0]<br>0xAAAAAAA6|- rs1_val==-1431655766 and imm_val==-4<br>                                                                                 |[0x8000062a]:c.addi a0, 60<br> [0x8000062c]:sw a0, 336(ra)<br>   |
| 114|[0x800031d4]<br>0x00000008|- rs1_val==5 and imm_val==3<br>                                                                                            |[0x80000634]:c.addi a0, 3<br> [0x80000636]:sw a0, 340(ra)<br>    |
| 115|[0x800031d8]<br>0x0000000A|- rs1_val==5 and imm_val==5<br>                                                                                            |[0x8000063e]:c.addi a0, 5<br> [0x80000640]:sw a0, 344(ra)<br>    |
| 116|[0x800031dc]<br>0x0000000F|- rs1_val==5 and imm_val==10<br>                                                                                           |[0x80000648]:c.addi a0, 10<br> [0x8000064a]:sw a0, 348(ra)<br>   |
| 117|[0x800031e0]<br>0x0000000B|- rs1_val==5 and imm_val==6<br>                                                                                            |[0x80000652]:c.addi a0, 6<br> [0x80000654]:sw a0, 352(ra)<br>    |
| 118|[0x800031e4]<br>0x00000003|- rs1_val==5 and imm_val==-2<br>                                                                                           |[0x8000065c]:c.addi a0, 62<br> [0x8000065e]:sw a0, 356(ra)<br>   |
| 119|[0x800031e8]<br>0x00000000|- rs1_val==5 and imm_val==-5<br>                                                                                           |[0x80000666]:c.addi a0, 59<br> [0x80000668]:sw a0, 360(ra)<br>   |
| 120|[0x800031ec]<br>0x00000007|- rs1_val==5 and imm_val==2<br>                                                                                            |[0x80000670]:c.addi a0, 2<br> [0x80000672]:sw a0, 364(ra)<br>    |
| 121|[0x800031f0]<br>0x00000009|- rs1_val==5 and imm_val==4<br>                                                                                            |[0x8000067a]:c.addi a0, 4<br> [0x8000067c]:sw a0, 368(ra)<br>    |
| 122|[0x800031f4]<br>0x0000000E|- rs1_val==5 and imm_val==9<br>                                                                                            |[0x80000684]:c.addi a0, 9<br> [0x80000686]:sw a0, 372(ra)<br>    |
| 123|[0x800031f8]<br>0x00000005|- rs1_val==5 and imm_val==0<br>                                                                                            |[0x8000068e]:c.addi.hint.a0<br> [0x80000690]:sw a0, 376(ra)<br>  |
| 124|[0x800031fc]<br>0x00000010|- rs1_val==5 and imm_val==11<br>                                                                                           |[0x80000698]:c.addi a0, 11<br> [0x8000069a]:sw a0, 380(ra)<br>   |
| 125|[0x80003200]<br>0x0000000C|- rs1_val==5 and imm_val==7<br>                                                                                            |[0x800006a2]:c.addi a0, 7<br> [0x800006a4]:sw a0, 384(ra)<br>    |
| 126|[0x80003204]<br>0x00000004|- rs1_val==5 and imm_val==-1<br>                                                                                           |[0x800006ac]:c.addi a0, 63<br> [0x800006ae]:sw a0, 388(ra)<br>   |
| 127|[0x80003208]<br>0x00000001|- rs1_val==5 and imm_val==-4<br>                                                                                           |[0x800006b6]:c.addi a0, 60<br> [0x800006b8]:sw a0, 392(ra)<br>   |
| 128|[0x8000320c]<br>0x33333336|- rs1_val==858993459 and imm_val==3<br>                                                                                    |[0x800006c4]:c.addi a0, 3<br> [0x800006c6]:sw a0, 396(ra)<br>    |
| 129|[0x80003210]<br>0x33333338|- rs1_val==858993459 and imm_val==5<br>                                                                                    |[0x800006d2]:c.addi a0, 5<br> [0x800006d4]:sw a0, 400(ra)<br>    |
| 130|[0x80003214]<br>0x3333333D|- rs1_val==858993459 and imm_val==10<br>                                                                                   |[0x800006e0]:c.addi a0, 10<br> [0x800006e2]:sw a0, 404(ra)<br>   |
| 131|[0x80003218]<br>0x33333339|- rs1_val==858993459 and imm_val==6<br>                                                                                    |[0x800006ee]:c.addi a0, 6<br> [0x800006f0]:sw a0, 408(ra)<br>    |
| 132|[0x8000321c]<br>0x33333331|- rs1_val==858993459 and imm_val==-2<br>                                                                                   |[0x800006fc]:c.addi a0, 62<br> [0x800006fe]:sw a0, 412(ra)<br>   |
| 133|[0x80003220]<br>0x3333332E|- rs1_val==858993459 and imm_val==-5<br>                                                                                   |[0x8000070a]:c.addi a0, 59<br> [0x8000070c]:sw a0, 416(ra)<br>   |
| 134|[0x80003224]<br>0x33333335|- rs1_val==858993459 and imm_val==2<br>                                                                                    |[0x80000718]:c.addi a0, 2<br> [0x8000071a]:sw a0, 420(ra)<br>    |
| 135|[0x80003228]<br>0x33333337|- rs1_val==858993459 and imm_val==4<br>                                                                                    |[0x80000726]:c.addi a0, 4<br> [0x80000728]:sw a0, 424(ra)<br>    |
| 136|[0x8000322c]<br>0x3333333C|- rs1_val==858993459 and imm_val==9<br>                                                                                    |[0x80000734]:c.addi a0, 9<br> [0x80000736]:sw a0, 428(ra)<br>    |
| 137|[0x80003230]<br>0x33333333|- rs1_val==858993459 and imm_val==0<br>                                                                                    |[0x80000742]:c.addi.hint.a0<br> [0x80000744]:sw a0, 432(ra)<br>  |
| 138|[0x80003234]<br>0x3333333E|- rs1_val==858993459 and imm_val==11<br>                                                                                   |[0x80000750]:c.addi a0, 11<br> [0x80000752]:sw a0, 436(ra)<br>   |
| 139|[0x80003238]<br>0x3333333A|- rs1_val==858993459 and imm_val==7<br>                                                                                    |[0x8000075e]:c.addi a0, 7<br> [0x80000760]:sw a0, 440(ra)<br>    |
| 140|[0x8000323c]<br>0x33333332|- rs1_val==858993459 and imm_val==-1<br>                                                                                   |[0x8000076c]:c.addi a0, 63<br> [0x8000076e]:sw a0, 444(ra)<br>   |
| 141|[0x80003240]<br>0x3333332F|- rs1_val==858993459 and imm_val==-4<br>                                                                                   |[0x8000077a]:c.addi a0, 60<br> [0x8000077c]:sw a0, 448(ra)<br>   |
| 142|[0x80003244]<br>0x66666669|- rs1_val==1717986918 and imm_val==3<br>                                                                                   |[0x80000788]:c.addi a0, 3<br> [0x8000078a]:sw a0, 452(ra)<br>    |
| 143|[0x80003248]<br>0x6666666B|- rs1_val==1717986918 and imm_val==5<br>                                                                                   |[0x80000796]:c.addi a0, 5<br> [0x80000798]:sw a0, 456(ra)<br>    |
| 144|[0x8000324c]<br>0x66666670|- rs1_val==1717986918 and imm_val==10<br>                                                                                  |[0x800007a4]:c.addi a0, 10<br> [0x800007a6]:sw a0, 460(ra)<br>   |
| 145|[0x80003250]<br>0x6666666C|- rs1_val==1717986918 and imm_val==6<br>                                                                                   |[0x800007b2]:c.addi a0, 6<br> [0x800007b4]:sw a0, 464(ra)<br>    |
| 146|[0x80003254]<br>0x66666664|- rs1_val==1717986918 and imm_val==-2<br>                                                                                  |[0x800007c0]:c.addi a0, 62<br> [0x800007c2]:sw a0, 468(ra)<br>   |
| 147|[0x80003258]<br>0x66666661|- rs1_val==1717986918 and imm_val==-5<br>                                                                                  |[0x800007ce]:c.addi a0, 59<br> [0x800007d0]:sw a0, 472(ra)<br>   |
| 148|[0x8000325c]<br>0x6666666A|- rs1_val==1717986918 and imm_val==4<br>                                                                                   |[0x800007dc]:c.addi a0, 4<br> [0x800007de]:sw a0, 476(ra)<br>    |
| 149|[0x80003260]<br>0x6666666F|- rs1_val==1717986918 and imm_val==9<br>                                                                                   |[0x800007ea]:c.addi a0, 9<br> [0x800007ec]:sw a0, 480(ra)<br>    |
| 150|[0x80003264]<br>0x66666666|- rs1_val==1717986918 and imm_val==0<br>                                                                                   |[0x800007f8]:c.addi.hint.a0<br> [0x800007fa]:sw a0, 484(ra)<br>  |
| 151|[0x80003268]<br>0x66666671|- rs1_val==1717986918 and imm_val==11<br>                                                                                  |[0x80000806]:c.addi a0, 11<br> [0x80000808]:sw a0, 488(ra)<br>   |
| 152|[0x8000326c]<br>0x6666666D|- rs1_val==1717986918 and imm_val==7<br>                                                                                   |[0x80000814]:c.addi a0, 7<br> [0x80000816]:sw a0, 492(ra)<br>    |
| 153|[0x80003270]<br>0x66666665|- rs1_val==1717986918 and imm_val==-1<br>                                                                                  |[0x80000822]:c.addi a0, 63<br> [0x80000824]:sw a0, 496(ra)<br>   |
| 154|[0x80003274]<br>0x66666662|- rs1_val==1717986918 and imm_val==-4<br>                                                                                  |[0x80000830]:c.addi a0, 60<br> [0x80000832]:sw a0, 500(ra)<br>   |
| 155|[0x80003278]<br>0xFFFF4AFF|- rs1_val==-46340 and imm_val==3<br>                                                                                       |[0x8000083e]:c.addi a0, 3<br> [0x80000840]:sw a0, 504(ra)<br>    |
| 156|[0x8000327c]<br>0xFFFF4B01|- rs1_val==-46340 and imm_val==5<br>                                                                                       |[0x8000084c]:c.addi a0, 5<br> [0x8000084e]:sw a0, 508(ra)<br>    |
| 157|[0x80003280]<br>0xFFFF4B06|- rs1_val==-46340 and imm_val==10<br>                                                                                      |[0x8000085a]:c.addi a0, 10<br> [0x8000085c]:sw a0, 512(ra)<br>   |
| 158|[0x80003284]<br>0xFFFF4B02|- rs1_val==-46340 and imm_val==6<br>                                                                                       |[0x80000868]:c.addi a0, 6<br> [0x8000086a]:sw a0, 516(ra)<br>    |
| 159|[0x80003288]<br>0xFFFF4AFA|- rs1_val==-46340 and imm_val==-2<br>                                                                                      |[0x80000876]:c.addi a0, 62<br> [0x80000878]:sw a0, 520(ra)<br>   |
| 160|[0x8000328c]<br>0xFFFF4AF7|- rs1_val==-46340 and imm_val==-5<br>                                                                                      |[0x80000884]:c.addi a0, 59<br> [0x80000886]:sw a0, 524(ra)<br>   |
| 161|[0x80003290]<br>0xFFFF4AFE|- rs1_val==-46340 and imm_val==2<br>                                                                                       |[0x80000892]:c.addi a0, 2<br> [0x80000894]:sw a0, 528(ra)<br>    |
| 162|[0x80003294]<br>0xFFFF4B00|- rs1_val==-46340 and imm_val==4<br>                                                                                       |[0x800008a0]:c.addi a0, 4<br> [0x800008a2]:sw a0, 532(ra)<br>    |
| 163|[0x80003298]<br>0xFFFF4B05|- rs1_val==-46340 and imm_val==9<br>                                                                                       |[0x800008ae]:c.addi a0, 9<br> [0x800008b0]:sw a0, 536(ra)<br>    |
| 164|[0x8000329c]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==0<br>                                                                                       |[0x800008bc]:c.addi.hint.a0<br> [0x800008be]:sw a0, 540(ra)<br>  |
| 165|[0x800032a0]<br>0xFFFF4B07|- rs1_val==-46340 and imm_val==11<br>                                                                                      |[0x800008ca]:c.addi a0, 11<br> [0x800008cc]:sw a0, 544(ra)<br>   |
| 166|[0x800032a4]<br>0xFFFF4B03|- rs1_val==-46340 and imm_val==7<br>                                                                                       |[0x800008d8]:c.addi a0, 7<br> [0x800008da]:sw a0, 548(ra)<br>    |
| 167|[0x800032a8]<br>0xFFFF4AFB|- rs1_val==-46340 and imm_val==-1<br>                                                                                      |[0x800008e6]:c.addi a0, 63<br> [0x800008e8]:sw a0, 552(ra)<br>   |
| 168|[0x800032ac]<br>0xFFFF4AF8|- rs1_val==-46340 and imm_val==-4<br>                                                                                      |[0x800008f4]:c.addi a0, 60<br> [0x800008f6]:sw a0, 556(ra)<br>   |
| 169|[0x800032b0]<br>0x0000B507|- rs1_val==46340 and imm_val==3<br>                                                                                        |[0x80000902]:c.addi a0, 3<br> [0x80000904]:sw a0, 560(ra)<br>    |
| 170|[0x800032b4]<br>0x0000B509|- rs1_val==46340 and imm_val==5<br>                                                                                        |[0x80000910]:c.addi a0, 5<br> [0x80000912]:sw a0, 564(ra)<br>    |
| 171|[0x800032b8]<br>0x0000B50E|- rs1_val==46340 and imm_val==10<br>                                                                                       |[0x8000091e]:c.addi a0, 10<br> [0x80000920]:sw a0, 568(ra)<br>   |
| 172|[0x800032bc]<br>0x0000B50A|- rs1_val==46340 and imm_val==6<br>                                                                                        |[0x8000092c]:c.addi a0, 6<br> [0x8000092e]:sw a0, 572(ra)<br>    |
| 173|[0x800032c0]<br>0x0000B502|- rs1_val==46340 and imm_val==-2<br>                                                                                       |[0x8000093a]:c.addi a0, 62<br> [0x8000093c]:sw a0, 576(ra)<br>   |
| 174|[0x800032c4]<br>0x0000B4FF|- rs1_val==46340 and imm_val==-5<br>                                                                                       |[0x80000948]:c.addi a0, 59<br> [0x8000094a]:sw a0, 580(ra)<br>   |
| 175|[0x800032c8]<br>0x0000B506|- rs1_val==46340 and imm_val==2<br>                                                                                        |[0x80000956]:c.addi a0, 2<br> [0x80000958]:sw a0, 584(ra)<br>    |
| 176|[0x800032cc]<br>0x0000B508|- rs1_val==46340 and imm_val==4<br>                                                                                        |[0x80000964]:c.addi a0, 4<br> [0x80000966]:sw a0, 588(ra)<br>    |
| 177|[0x800032d0]<br>0x0000B50D|- rs1_val==46340 and imm_val==9<br>                                                                                        |[0x80000972]:c.addi a0, 9<br> [0x80000974]:sw a0, 592(ra)<br>    |
| 178|[0x800032d4]<br>0x0000B504|- rs1_val==46340 and imm_val==0<br>                                                                                        |[0x80000980]:c.addi.hint.a0<br> [0x80000982]:sw a0, 596(ra)<br>  |
| 179|[0x800032d8]<br>0x0000B50F|- rs1_val==46340 and imm_val==11<br>                                                                                       |[0x8000098e]:c.addi a0, 11<br> [0x80000990]:sw a0, 600(ra)<br>   |
| 180|[0x800032dc]<br>0x0000B50B|- rs1_val==46340 and imm_val==7<br>                                                                                        |[0x8000099c]:c.addi a0, 7<br> [0x8000099e]:sw a0, 604(ra)<br>    |
| 181|[0x800032e0]<br>0x0000B503|- rs1_val==46340 and imm_val==-1<br>                                                                                       |[0x800009aa]:c.addi a0, 63<br> [0x800009ac]:sw a0, 608(ra)<br>   |
| 182|[0x800032e4]<br>0x0000B500|- rs1_val==46340 and imm_val==-4<br>                                                                                       |[0x800009b8]:c.addi a0, 60<br> [0x800009ba]:sw a0, 612(ra)<br>   |
| 183|[0x800032e8]<br>0x00000005|- rs1_val==2 and imm_val==3<br>                                                                                            |[0x800009c2]:c.addi a0, 3<br> [0x800009c4]:sw a0, 616(ra)<br>    |
| 184|[0x800032ec]<br>0x00000007|- rs1_val==2 and imm_val==5<br>                                                                                            |[0x800009cc]:c.addi a0, 5<br> [0x800009ce]:sw a0, 620(ra)<br>    |
| 185|[0x800032f0]<br>0x0000000C|- rs1_val==2 and imm_val==10<br>                                                                                           |[0x800009d6]:c.addi a0, 10<br> [0x800009d8]:sw a0, 624(ra)<br>   |
| 186|[0x800032f4]<br>0x00000008|- rs1_val==2 and imm_val==6<br>                                                                                            |[0x800009e0]:c.addi a0, 6<br> [0x800009e2]:sw a0, 628(ra)<br>    |
| 187|[0x800032f8]<br>0x00000000|- rs1_val==2 and imm_val==-2<br>                                                                                           |[0x800009ea]:c.addi a0, 62<br> [0x800009ec]:sw a0, 632(ra)<br>   |
| 188|[0x800032fc]<br>0xFFFFFFFD|- rs1_val==2 and imm_val==-5<br>                                                                                           |[0x800009f4]:c.addi a0, 59<br> [0x800009f6]:sw a0, 636(ra)<br>   |
| 189|[0x80003300]<br>0x00000006|- rs1_val==2 and imm_val==4<br>                                                                                            |[0x800009fe]:c.addi a0, 4<br> [0x80000a00]:sw a0, 640(ra)<br>    |
| 190|[0x80003304]<br>0x0000000B|- rs1_val==2 and imm_val==9<br>                                                                                            |[0x80000a08]:c.addi a0, 9<br> [0x80000a0a]:sw a0, 644(ra)<br>    |
| 191|[0x80003308]<br>0x00000002|- rs1_val==2 and imm_val==0<br>                                                                                            |[0x80000a12]:c.addi.hint.a0<br> [0x80000a14]:sw a0, 648(ra)<br>  |
| 192|[0x8000330c]<br>0x0000000D|- rs1_val==2 and imm_val==11<br>                                                                                           |[0x80000a1c]:c.addi a0, 11<br> [0x80000a1e]:sw a0, 652(ra)<br>   |
| 193|[0x80003310]<br>0x00000009|- rs1_val==2 and imm_val==7<br>                                                                                            |[0x80000a26]:c.addi a0, 7<br> [0x80000a28]:sw a0, 656(ra)<br>    |
| 194|[0x80003314]<br>0x00000001|- rs1_val==2 and imm_val==-1<br>                                                                                           |[0x80000a30]:c.addi a0, 63<br> [0x80000a32]:sw a0, 660(ra)<br>   |
| 195|[0x80003318]<br>0xFFFFFFFE|- rs1_val==2 and imm_val==-4<br>                                                                                           |[0x80000a3a]:c.addi a0, 60<br> [0x80000a3c]:sw a0, 664(ra)<br>   |
| 196|[0x8000331c]<br>0x55555557|- rs1_val==1431655764 and imm_val==3<br>                                                                                   |[0x80000a48]:c.addi a0, 3<br> [0x80000a4a]:sw a0, 668(ra)<br>    |
| 197|[0x80003320]<br>0x55555559|- rs1_val==1431655764 and imm_val==5<br>                                                                                   |[0x80000a56]:c.addi a0, 5<br> [0x80000a58]:sw a0, 672(ra)<br>    |
| 198|[0x80003324]<br>0x5555555E|- rs1_val==1431655764 and imm_val==10<br>                                                                                  |[0x80000a64]:c.addi a0, 10<br> [0x80000a66]:sw a0, 676(ra)<br>   |
| 199|[0x80003328]<br>0x5555555A|- rs1_val==1431655764 and imm_val==6<br>                                                                                   |[0x80000a72]:c.addi a0, 6<br> [0x80000a74]:sw a0, 680(ra)<br>    |
| 200|[0x8000332c]<br>0x55555552|- rs1_val==1431655764 and imm_val==-2<br>                                                                                  |[0x80000a80]:c.addi a0, 62<br> [0x80000a82]:sw a0, 684(ra)<br>   |
| 201|[0x80003330]<br>0x5555554F|- rs1_val==1431655764 and imm_val==-5<br>                                                                                  |[0x80000a8e]:c.addi a0, 59<br> [0x80000a90]:sw a0, 688(ra)<br>   |
| 202|[0x80003334]<br>0x55555556|- rs1_val==1431655764 and imm_val==2<br>                                                                                   |[0x80000a9c]:c.addi a0, 2<br> [0x80000a9e]:sw a0, 692(ra)<br>    |
| 203|[0x80003338]<br>0x55555558|- rs1_val==1431655764 and imm_val==4<br>                                                                                   |[0x80000aaa]:c.addi a0, 4<br> [0x80000aac]:sw a0, 696(ra)<br>    |
| 204|[0x8000333c]<br>0x5555555D|- rs1_val==1431655764 and imm_val==9<br>                                                                                   |[0x80000ab8]:c.addi a0, 9<br> [0x80000aba]:sw a0, 700(ra)<br>    |
| 205|[0x80003340]<br>0x55555554|- rs1_val==1431655764 and imm_val==0<br>                                                                                   |[0x80000ac6]:c.addi.hint.a0<br> [0x80000ac8]:sw a0, 704(ra)<br>  |
| 206|[0x80003344]<br>0x5555555F|- rs1_val==1431655764 and imm_val==11<br>                                                                                  |[0x80000ad4]:c.addi a0, 11<br> [0x80000ad6]:sw a0, 708(ra)<br>   |
| 207|[0x80003348]<br>0x5555555B|- rs1_val==1431655764 and imm_val==7<br>                                                                                   |[0x80000ae2]:c.addi a0, 7<br> [0x80000ae4]:sw a0, 712(ra)<br>    |
| 208|[0x8000334c]<br>0x55555553|- rs1_val==1431655764 and imm_val==-1<br>                                                                                  |[0x80000af0]:c.addi a0, 63<br> [0x80000af2]:sw a0, 716(ra)<br>   |
| 209|[0x80003350]<br>0x55555550|- rs1_val==1431655764 and imm_val==-4<br>                                                                                  |[0x80000afe]:c.addi a0, 60<br> [0x80000b00]:sw a0, 720(ra)<br>   |
| 210|[0x80003354]<br>0x00000003|- rs1_val==0 and imm_val==3<br>                                                                                            |[0x80000b08]:c.addi a0, 3<br> [0x80000b0a]:sw a0, 724(ra)<br>    |
| 211|[0x80003358]<br>0x00000005|- rs1_val==0 and imm_val==5<br>                                                                                            |[0x80000b12]:c.addi a0, 5<br> [0x80000b14]:sw a0, 728(ra)<br>    |
| 212|[0x8000335c]<br>0x0000000A|- rs1_val==0 and imm_val==10<br>                                                                                           |[0x80000b1c]:c.addi a0, 10<br> [0x80000b1e]:sw a0, 732(ra)<br>   |
| 213|[0x80003360]<br>0x00000006|- rs1_val==0 and imm_val==6<br>                                                                                            |[0x80000b26]:c.addi a0, 6<br> [0x80000b28]:sw a0, 736(ra)<br>    |
| 214|[0x80003364]<br>0xFFFFFFFE|- rs1_val==0 and imm_val==-2<br>                                                                                           |[0x80000b30]:c.addi a0, 62<br> [0x80000b32]:sw a0, 740(ra)<br>   |
| 215|[0x80003368]<br>0xFFFFFFFB|- rs1_val==0 and imm_val==-5<br>                                                                                           |[0x80000b3a]:c.addi a0, 59<br> [0x80000b3c]:sw a0, 744(ra)<br>   |
| 216|[0x8000336c]<br>0x00000002|- rs1_val==0 and imm_val==2<br>                                                                                            |[0x80000b44]:c.addi a0, 2<br> [0x80000b46]:sw a0, 748(ra)<br>    |
| 217|[0x80003370]<br>0x00000004|- rs1_val==0 and imm_val==4<br>                                                                                            |[0x80000b4e]:c.addi a0, 4<br> [0x80000b50]:sw a0, 752(ra)<br>    |
| 218|[0x80003374]<br>0x00000009|- rs1_val==0 and imm_val==9<br>                                                                                            |[0x80000b58]:c.addi a0, 9<br> [0x80000b5a]:sw a0, 756(ra)<br>    |
| 219|[0x80003378]<br>0x0000000B|- rs1_val==0 and imm_val==11<br>                                                                                           |[0x80000b62]:c.addi a0, 11<br> [0x80000b64]:sw a0, 760(ra)<br>   |
| 220|[0x8000337c]<br>0x00000007|- rs1_val==0 and imm_val==7<br>                                                                                            |[0x80000b6c]:c.addi a0, 7<br> [0x80000b6e]:sw a0, 764(ra)<br>    |
| 221|[0x80003380]<br>0xFFFFFFFF|- rs1_val==0 and imm_val==-1<br>                                                                                           |[0x80000b76]:c.addi a0, 63<br> [0x80000b78]:sw a0, 768(ra)<br>   |
| 222|[0x80003384]<br>0xFFFFFFFC|- rs1_val==0 and imm_val==-4<br>                                                                                           |[0x80000b80]:c.addi a0, 60<br> [0x80000b82]:sw a0, 772(ra)<br>   |
| 223|[0x80003388]<br>0x00000007|- rs1_val==4 and imm_val==3<br>                                                                                            |[0x80000b8a]:c.addi a0, 3<br> [0x80000b8c]:sw a0, 776(ra)<br>    |
| 224|[0x8000338c]<br>0x00000009|- rs1_val==4 and imm_val==5<br>                                                                                            |[0x80000b94]:c.addi a0, 5<br> [0x80000b96]:sw a0, 780(ra)<br>    |
| 225|[0x80003390]<br>0x0000000E|- rs1_val==4 and imm_val==10<br>                                                                                           |[0x80000b9e]:c.addi a0, 10<br> [0x80000ba0]:sw a0, 784(ra)<br>   |
| 226|[0x80003394]<br>0x0000000A|- rs1_val==4 and imm_val==6<br>                                                                                            |[0x80000ba8]:c.addi a0, 6<br> [0x80000baa]:sw a0, 788(ra)<br>    |
| 227|[0x80003398]<br>0x00000002|- rs1_val==4 and imm_val==-2<br>                                                                                           |[0x80000bb2]:c.addi a0, 62<br> [0x80000bb4]:sw a0, 792(ra)<br>   |
| 228|[0x8000339c]<br>0xFFFFFFFF|- rs1_val==4 and imm_val==-5<br>                                                                                           |[0x80000bbc]:c.addi a0, 59<br> [0x80000bbe]:sw a0, 796(ra)<br>   |
| 229|[0x800033a0]<br>0x00000006|- rs1_val==4 and imm_val==2<br>                                                                                            |[0x80000bc6]:c.addi a0, 2<br> [0x80000bc8]:sw a0, 800(ra)<br>    |
| 230|[0x800033a4]<br>0x00000008|- rs1_val==4 and imm_val==4<br>                                                                                            |[0x80000bd0]:c.addi a0, 4<br> [0x80000bd2]:sw a0, 804(ra)<br>    |
| 231|[0x800033a8]<br>0x0000000D|- rs1_val==4 and imm_val==9<br>                                                                                            |[0x80000bda]:c.addi a0, 9<br> [0x80000bdc]:sw a0, 808(ra)<br>    |
| 232|[0x800033ac]<br>0x0000000F|- rs1_val==4 and imm_val==11<br>                                                                                           |[0x80000be4]:c.addi a0, 11<br> [0x80000be6]:sw a0, 812(ra)<br>   |
| 233|[0x800033b0]<br>0x0000000B|- rs1_val==4 and imm_val==7<br>                                                                                            |[0x80000bee]:c.addi a0, 7<br> [0x80000bf0]:sw a0, 816(ra)<br>    |
| 234|[0x800033b4]<br>0x00000003|- rs1_val==4 and imm_val==-1<br>                                                                                           |[0x80000bf8]:c.addi a0, 63<br> [0x80000bfa]:sw a0, 820(ra)<br>   |
| 235|[0x800033b8]<br>0x00000000|- rs1_val==4 and imm_val==-4<br>                                                                                           |[0x80000c02]:c.addi a0, 60<br> [0x80000c04]:sw a0, 824(ra)<br>   |
| 236|[0x800033bc]<br>0x33333335|- rs1_val==858993458 and imm_val==3<br>                                                                                    |[0x80000c10]:c.addi a0, 3<br> [0x80000c12]:sw a0, 828(ra)<br>    |
| 237|[0x800033c0]<br>0x33333337|- rs1_val==858993458 and imm_val==5<br>                                                                                    |[0x80000c1e]:c.addi a0, 5<br> [0x80000c20]:sw a0, 832(ra)<br>    |
| 238|[0x800033c4]<br>0x3333333C|- rs1_val==858993458 and imm_val==10<br>                                                                                   |[0x80000c2c]:c.addi a0, 10<br> [0x80000c2e]:sw a0, 836(ra)<br>   |
| 239|[0x800033c8]<br>0x33333338|- rs1_val==858993458 and imm_val==6<br>                                                                                    |[0x80000c3a]:c.addi a0, 6<br> [0x80000c3c]:sw a0, 840(ra)<br>    |
| 240|[0x800033cc]<br>0x33333330|- rs1_val==858993458 and imm_val==-2<br>                                                                                   |[0x80000c48]:c.addi a0, 62<br> [0x80000c4a]:sw a0, 844(ra)<br>   |
| 241|[0x800033d0]<br>0x3333332D|- rs1_val==858993458 and imm_val==-5<br>                                                                                   |[0x80000c56]:c.addi a0, 59<br> [0x80000c58]:sw a0, 848(ra)<br>   |
| 242|[0x800033d4]<br>0x33333334|- rs1_val==858993458 and imm_val==2<br>                                                                                    |[0x80000c64]:c.addi a0, 2<br> [0x80000c66]:sw a0, 852(ra)<br>    |
| 243|[0x800033d8]<br>0x33333336|- rs1_val==858993458 and imm_val==4<br>                                                                                    |[0x80000c72]:c.addi a0, 4<br> [0x80000c74]:sw a0, 856(ra)<br>    |
| 244|[0x800033dc]<br>0x3333333B|- rs1_val==858993458 and imm_val==9<br>                                                                                    |[0x80000c80]:c.addi a0, 9<br> [0x80000c82]:sw a0, 860(ra)<br>    |
| 245|[0x800033e0]<br>0x33333332|- rs1_val==858993458 and imm_val==0<br>                                                                                    |[0x80000c8e]:c.addi.hint.a0<br> [0x80000c90]:sw a0, 864(ra)<br>  |
| 246|[0x800033e4]<br>0x3333333D|- rs1_val==858993458 and imm_val==11<br>                                                                                   |[0x80000c9c]:c.addi a0, 11<br> [0x80000c9e]:sw a0, 868(ra)<br>   |
| 247|[0x800033e8]<br>0x33333339|- rs1_val==858993458 and imm_val==7<br>                                                                                    |[0x80000caa]:c.addi a0, 7<br> [0x80000cac]:sw a0, 872(ra)<br>    |
| 248|[0x800033ec]<br>0x33333331|- rs1_val==858993458 and imm_val==-1<br>                                                                                   |[0x80000cb8]:c.addi a0, 63<br> [0x80000cba]:sw a0, 876(ra)<br>   |
| 249|[0x800033f0]<br>0x3333332E|- rs1_val==858993458 and imm_val==-4<br>                                                                                   |[0x80000cc6]:c.addi a0, 60<br> [0x80000cc8]:sw a0, 880(ra)<br>   |
| 250|[0x800033f4]<br>0x66666668|- rs1_val==1717986917 and imm_val==3<br>                                                                                   |[0x80000cd4]:c.addi a0, 3<br> [0x80000cd6]:sw a0, 884(ra)<br>    |
| 251|[0x800033f8]<br>0x6666666A|- rs1_val==1717986917 and imm_val==5<br>                                                                                   |[0x80000ce2]:c.addi a0, 5<br> [0x80000ce4]:sw a0, 888(ra)<br>    |
| 252|[0x800033fc]<br>0x6666666F|- rs1_val==1717986917 and imm_val==10<br>                                                                                  |[0x80000cf0]:c.addi a0, 10<br> [0x80000cf2]:sw a0, 892(ra)<br>   |
| 253|[0x80003400]<br>0x6666666B|- rs1_val==1717986917 and imm_val==6<br>                                                                                   |[0x80000cfe]:c.addi a0, 6<br> [0x80000d00]:sw a0, 896(ra)<br>    |
| 254|[0x80003404]<br>0x66666663|- rs1_val==1717986917 and imm_val==-2<br>                                                                                  |[0x80000d0c]:c.addi a0, 62<br> [0x80000d0e]:sw a0, 900(ra)<br>   |
| 255|[0x80003408]<br>0x66666660|- rs1_val==1717986917 and imm_val==-5<br>                                                                                  |[0x80000d1a]:c.addi a0, 59<br> [0x80000d1c]:sw a0, 904(ra)<br>   |
| 256|[0x8000340c]<br>0x66666667|- rs1_val==1717986917 and imm_val==2<br>                                                                                   |[0x80000d28]:c.addi a0, 2<br> [0x80000d2a]:sw a0, 908(ra)<br>    |
| 257|[0x80003410]<br>0x66666669|- rs1_val==1717986917 and imm_val==4<br>                                                                                   |[0x80000d36]:c.addi a0, 4<br> [0x80000d38]:sw a0, 912(ra)<br>    |
| 258|[0x80003414]<br>0x6666666E|- rs1_val==1717986917 and imm_val==9<br>                                                                                   |[0x80000d44]:c.addi a0, 9<br> [0x80000d46]:sw a0, 916(ra)<br>    |
| 259|[0x80003418]<br>0x66666665|- rs1_val==1717986917 and imm_val==0<br>                                                                                   |[0x80000d52]:c.addi.hint.a0<br> [0x80000d54]:sw a0, 920(ra)<br>  |
| 260|[0x8000341c]<br>0x66666670|- rs1_val==1717986917 and imm_val==11<br>                                                                                  |[0x80000d60]:c.addi a0, 11<br> [0x80000d62]:sw a0, 924(ra)<br>   |
| 261|[0x80003420]<br>0x6666666C|- rs1_val==1717986917 and imm_val==7<br>                                                                                   |[0x80000d6e]:c.addi a0, 7<br> [0x80000d70]:sw a0, 928(ra)<br>    |
| 262|[0x80003424]<br>0x66666664|- rs1_val==1717986917 and imm_val==-1<br>                                                                                  |[0x80000d7c]:c.addi a0, 63<br> [0x80000d7e]:sw a0, 932(ra)<br>   |
| 263|[0x80003428]<br>0x66666661|- rs1_val==1717986917 and imm_val==-4<br>                                                                                  |[0x80000d8a]:c.addi a0, 60<br> [0x80000d8c]:sw a0, 936(ra)<br>   |
| 264|[0x8000342c]<br>0x0000B506|- rs1_val==46339 and imm_val==3<br>                                                                                        |[0x80000d98]:c.addi a0, 3<br> [0x80000d9a]:sw a0, 940(ra)<br>    |
| 265|[0x80003430]<br>0x0000B508|- rs1_val==46339 and imm_val==5<br>                                                                                        |[0x80000da6]:c.addi a0, 5<br> [0x80000da8]:sw a0, 944(ra)<br>    |
| 266|[0x80003434]<br>0x0000B50D|- rs1_val==46339 and imm_val==10<br>                                                                                       |[0x80000db4]:c.addi a0, 10<br> [0x80000db6]:sw a0, 948(ra)<br>   |
| 267|[0x80003438]<br>0x0000B509|- rs1_val==46339 and imm_val==6<br>                                                                                        |[0x80000dc2]:c.addi a0, 6<br> [0x80000dc4]:sw a0, 952(ra)<br>    |
| 268|[0x8000343c]<br>0x0000B501|- rs1_val==46339 and imm_val==-2<br>                                                                                       |[0x80000dd0]:c.addi a0, 62<br> [0x80000dd2]:sw a0, 956(ra)<br>   |
| 269|[0x80003440]<br>0x0000B4FE|- rs1_val==46339 and imm_val==-5<br>                                                                                       |[0x80000dde]:c.addi a0, 59<br> [0x80000de0]:sw a0, 960(ra)<br>   |
| 270|[0x80003444]<br>0x0000B505|- rs1_val==46339 and imm_val==2<br>                                                                                        |[0x80000dec]:c.addi a0, 2<br> [0x80000dee]:sw a0, 964(ra)<br>    |
| 271|[0x80003448]<br>0x0000B507|- rs1_val==46339 and imm_val==4<br>                                                                                        |[0x80000dfa]:c.addi a0, 4<br> [0x80000dfc]:sw a0, 968(ra)<br>    |
| 272|[0x8000344c]<br>0x0000B50C|- rs1_val==46339 and imm_val==9<br>                                                                                        |[0x80000e08]:c.addi a0, 9<br> [0x80000e0a]:sw a0, 972(ra)<br>    |
| 273|[0x80003450]<br>0x0000B503|- rs1_val==46339 and imm_val==0<br>                                                                                        |[0x80000e16]:c.addi.hint.a0<br> [0x80000e18]:sw a0, 976(ra)<br>  |
| 274|[0x80003454]<br>0x0000B50E|- rs1_val==46339 and imm_val==11<br>                                                                                       |[0x80000e24]:c.addi a0, 11<br> [0x80000e26]:sw a0, 980(ra)<br>   |
| 275|[0x80003458]<br>0x0000B50A|- rs1_val==46339 and imm_val==7<br>                                                                                        |[0x80000e32]:c.addi a0, 7<br> [0x80000e34]:sw a0, 984(ra)<br>    |
| 276|[0x8000345c]<br>0x0000B502|- rs1_val==46339 and imm_val==-1<br>                                                                                       |[0x80000e40]:c.addi a0, 63<br> [0x80000e42]:sw a0, 988(ra)<br>   |
| 277|[0x80003460]<br>0x0000B4FF|- rs1_val==46339 and imm_val==-4<br>                                                                                       |[0x80000e4e]:c.addi a0, 60<br> [0x80000e50]:sw a0, 992(ra)<br>   |
| 278|[0x80003464]<br>0x55555559|- rs1_val==1431655766 and imm_val==3<br>                                                                                   |[0x80000e5c]:c.addi a0, 3<br> [0x80000e5e]:sw a0, 996(ra)<br>    |
| 279|[0x80003468]<br>0x5555555B|- rs1_val==1431655766 and imm_val==5<br>                                                                                   |[0x80000e6a]:c.addi a0, 5<br> [0x80000e6c]:sw a0, 1000(ra)<br>   |
| 280|[0x8000346c]<br>0x55555560|- rs1_val==1431655766 and imm_val==10<br>                                                                                  |[0x80000e78]:c.addi a0, 10<br> [0x80000e7a]:sw a0, 1004(ra)<br>  |
| 281|[0x80003470]<br>0x5555555C|- rs1_val==1431655766 and imm_val==6<br>                                                                                   |[0x80000e86]:c.addi a0, 6<br> [0x80000e88]:sw a0, 1008(ra)<br>   |
| 282|[0x80003474]<br>0x55555554|- rs1_val==1431655766 and imm_val==-2<br>                                                                                  |[0x80000e94]:c.addi a0, 62<br> [0x80000e96]:sw a0, 1012(ra)<br>  |
| 283|[0x80003478]<br>0x55555551|- rs1_val==1431655766 and imm_val==-5<br>                                                                                  |[0x80000ea2]:c.addi a0, 59<br> [0x80000ea4]:sw a0, 1016(ra)<br>  |
| 284|[0x8000347c]<br>0x55555558|- rs1_val==1431655766 and imm_val==2<br>                                                                                   |[0x80000eb0]:c.addi a0, 2<br> [0x80000eb2]:sw a0, 1020(ra)<br>   |
| 285|[0x80003480]<br>0x5555555A|- rs1_val==1431655766 and imm_val==4<br>                                                                                   |[0x80000ebe]:c.addi a0, 4<br> [0x80000ec0]:sw a0, 1024(ra)<br>   |
| 286|[0x80003484]<br>0x5555555F|- rs1_val==1431655766 and imm_val==9<br>                                                                                   |[0x80000ecc]:c.addi a0, 9<br> [0x80000ece]:sw a0, 1028(ra)<br>   |
| 287|[0x80003488]<br>0x55555556|- rs1_val==1431655766 and imm_val==0<br>                                                                                   |[0x80000eda]:c.addi.hint.a0<br> [0x80000edc]:sw a0, 1032(ra)<br> |
| 288|[0x8000348c]<br>0x55555561|- rs1_val==1431655766 and imm_val==11<br>                                                                                  |[0x80000ee8]:c.addi a0, 11<br> [0x80000eea]:sw a0, 1036(ra)<br>  |
| 289|[0x80003490]<br>0x5555555D|- rs1_val==1431655766 and imm_val==7<br>                                                                                   |[0x80000ef6]:c.addi a0, 7<br> [0x80000ef8]:sw a0, 1040(ra)<br>   |
| 290|[0x80003494]<br>0x55555555|- rs1_val==1431655766 and imm_val==-1<br>                                                                                  |[0x80000f04]:c.addi a0, 63<br> [0x80000f06]:sw a0, 1044(ra)<br>  |
| 291|[0x80003498]<br>0x55555552|- rs1_val==1431655766 and imm_val==-4<br>                                                                                  |[0x80000f12]:c.addi a0, 60<br> [0x80000f14]:sw a0, 1048(ra)<br>  |
| 292|[0x8000349c]<br>0xAAAAAAAE|- rs1_val==-1431655765 and imm_val==3<br>                                                                                  |[0x80000f20]:c.addi a0, 3<br> [0x80000f22]:sw a0, 1052(ra)<br>   |
| 293|[0x800034a0]<br>0xAAAAAAB0|- rs1_val==-1431655765 and imm_val==5<br>                                                                                  |[0x80000f2e]:c.addi a0, 5<br> [0x80000f30]:sw a0, 1056(ra)<br>   |
| 294|[0x800034a4]<br>0xAAAAAAB5|- rs1_val==-1431655765 and imm_val==10<br>                                                                                 |[0x80000f3c]:c.addi a0, 10<br> [0x80000f3e]:sw a0, 1060(ra)<br>  |
| 295|[0x800034a8]<br>0xAAAAAAB1|- rs1_val==-1431655765 and imm_val==6<br>                                                                                  |[0x80000f4a]:c.addi a0, 6<br> [0x80000f4c]:sw a0, 1064(ra)<br>   |
| 296|[0x800034ac]<br>0xAAAAAAA9|- rs1_val==-1431655765 and imm_val==-2<br>                                                                                 |[0x80000f58]:c.addi a0, 62<br> [0x80000f5a]:sw a0, 1068(ra)<br>  |
| 297|[0x800034b0]<br>0xAAAAAAA6|- rs1_val==-1431655765 and imm_val==-5<br>                                                                                 |[0x80000f66]:c.addi a0, 59<br> [0x80000f68]:sw a0, 1072(ra)<br>  |
| 298|[0x800034b4]<br>0xAAAAAAAD|- rs1_val==-1431655765 and imm_val==2<br>                                                                                  |[0x80000f74]:c.addi a0, 2<br> [0x80000f76]:sw a0, 1076(ra)<br>   |
| 299|[0x800034b8]<br>0xAAAAAAAF|- rs1_val==-1431655765 and imm_val==4<br>                                                                                  |[0x80000f82]:c.addi a0, 4<br> [0x80000f84]:sw a0, 1080(ra)<br>   |
| 300|[0x800034bc]<br>0xAAAAAAB4|- rs1_val==-1431655765 and imm_val==9<br>                                                                                  |[0x80000f90]:c.addi a0, 9<br> [0x80000f92]:sw a0, 1084(ra)<br>   |
| 301|[0x800034c0]<br>0xAAAAAAAB|- rs1_val==-1431655765 and imm_val==0<br>                                                                                  |[0x80000f9e]:c.addi.hint.a0<br> [0x80000fa0]:sw a0, 1088(ra)<br> |
| 302|[0x800034c4]<br>0xAAAAAAB6|- rs1_val==-1431655765 and imm_val==11<br>                                                                                 |[0x80000fac]:c.addi a0, 11<br> [0x80000fae]:sw a0, 1092(ra)<br>  |
| 303|[0x800034c8]<br>0xAAAAAAB2|- rs1_val==-1431655765 and imm_val==7<br>                                                                                  |[0x80000fba]:c.addi a0, 7<br> [0x80000fbc]:sw a0, 1096(ra)<br>   |
| 304|[0x800034cc]<br>0xAAAAAAAA|- rs1_val==-1431655765 and imm_val==-1<br>                                                                                 |[0x80000fc8]:c.addi a0, 63<br> [0x80000fca]:sw a0, 1100(ra)<br>  |
| 305|[0x800034d0]<br>0xAAAAAAA7|- rs1_val==-1431655765 and imm_val==-4<br>                                                                                 |[0x80000fd6]:c.addi a0, 60<br> [0x80000fd8]:sw a0, 1104(ra)<br>  |
| 306|[0x800034d4]<br>0x00000009|- rs1_val==6 and imm_val==3<br>                                                                                            |[0x80000fe0]:c.addi a0, 3<br> [0x80000fe2]:sw a0, 1108(ra)<br>   |
| 307|[0x800034d8]<br>0x0000000B|- rs1_val==6 and imm_val==5<br>                                                                                            |[0x80000fea]:c.addi a0, 5<br> [0x80000fec]:sw a0, 1112(ra)<br>   |
| 308|[0x800034dc]<br>0x00000010|- rs1_val==6 and imm_val==10<br>                                                                                           |[0x80000ff4]:c.addi a0, 10<br> [0x80000ff6]:sw a0, 1116(ra)<br>  |
| 309|[0x800034e0]<br>0x0000000C|- rs1_val==6 and imm_val==6<br>                                                                                            |[0x80000ffe]:c.addi a0, 6<br> [0x80001000]:sw a0, 1120(ra)<br>   |
| 310|[0x800034e4]<br>0x00000004|- rs1_val==6 and imm_val==-2<br>                                                                                           |[0x80001008]:c.addi a0, 62<br> [0x8000100a]:sw a0, 1124(ra)<br>  |
| 311|[0x800034e8]<br>0x00000001|- rs1_val==6 and imm_val==-5<br>                                                                                           |[0x80001012]:c.addi a0, 59<br> [0x80001014]:sw a0, 1128(ra)<br>  |
| 312|[0x800034ec]<br>0x00000008|- rs1_val==6 and imm_val==2<br>                                                                                            |[0x8000101c]:c.addi a0, 2<br> [0x8000101e]:sw a0, 1132(ra)<br>   |
| 313|[0x800034f0]<br>0xFFFF4AFC|- rs1_val==-46339 and imm_val==-1<br>                                                                                      |[0x8000102a]:c.addi a0, 63<br> [0x8000102c]:sw a0, 1136(ra)<br>  |
| 314|[0x800034f4]<br>0xFFFF4AF9|- rs1_val==-46339 and imm_val==-4<br>                                                                                      |[0x80001038]:c.addi a0, 60<br> [0x8000103a]:sw a0, 1140(ra)<br>  |
| 315|[0x800034f8]<br>0x0000B508|- rs1_val==46341 and imm_val==3<br>                                                                                        |[0x80001046]:c.addi a0, 3<br> [0x80001048]:sw a0, 1144(ra)<br>   |
| 316|[0x800034fc]<br>0x0000B50A|- rs1_val==46341 and imm_val==5<br>                                                                                        |[0x80001054]:c.addi a0, 5<br> [0x80001056]:sw a0, 1148(ra)<br>   |
| 317|[0x80003500]<br>0x0000B50F|- rs1_val==46341 and imm_val==10<br>                                                                                       |[0x80001062]:c.addi a0, 10<br> [0x80001064]:sw a0, 1152(ra)<br>  |
| 318|[0x80003504]<br>0x0000B50B|- rs1_val==46341 and imm_val==6<br>                                                                                        |[0x80001070]:c.addi a0, 6<br> [0x80001072]:sw a0, 1156(ra)<br>   |
| 319|[0x80003508]<br>0x0000B503|- rs1_val==46341 and imm_val==-2<br>                                                                                       |[0x8000107e]:c.addi a0, 62<br> [0x80001080]:sw a0, 1160(ra)<br>  |
| 320|[0x8000350c]<br>0x0000B500|- rs1_val==46341 and imm_val==-5<br>                                                                                       |[0x8000108c]:c.addi a0, 59<br> [0x8000108e]:sw a0, 1164(ra)<br>  |
| 321|[0x80003510]<br>0x0000B507|- rs1_val==46341 and imm_val==2<br>                                                                                        |[0x8000109a]:c.addi a0, 2<br> [0x8000109c]:sw a0, 1168(ra)<br>   |
| 322|[0x80003514]<br>0x0000B509|- rs1_val==46341 and imm_val==4<br>                                                                                        |[0x800010a8]:c.addi a0, 4<br> [0x800010aa]:sw a0, 1172(ra)<br>   |
| 323|[0x80003518]<br>0x0000B50E|- rs1_val==46341 and imm_val==9<br>                                                                                        |[0x800010b6]:c.addi a0, 9<br> [0x800010b8]:sw a0, 1176(ra)<br>   |
| 324|[0x8000351c]<br>0x0000B505|- rs1_val==46341 and imm_val==0<br>                                                                                        |[0x800010c4]:c.addi.hint.a0<br> [0x800010c6]:sw a0, 1180(ra)<br> |
| 325|[0x80003520]<br>0x0000B510|- rs1_val==46341 and imm_val==11<br>                                                                                       |[0x800010d2]:c.addi a0, 11<br> [0x800010d4]:sw a0, 1184(ra)<br>  |
| 326|[0x80003524]<br>0x0000B50C|- rs1_val==46341 and imm_val==7<br>                                                                                        |[0x800010e0]:c.addi a0, 7<br> [0x800010e2]:sw a0, 1188(ra)<br>   |
| 327|[0x80003528]<br>0x0000B504|- rs1_val==46341 and imm_val==-1<br>                                                                                       |[0x800010ee]:c.addi a0, 63<br> [0x800010f0]:sw a0, 1192(ra)<br>  |
| 328|[0x8000352c]<br>0x0000B501|- rs1_val==46341 and imm_val==-4<br>                                                                                       |[0x800010fc]:c.addi a0, 60<br> [0x800010fe]:sw a0, 1196(ra)<br>  |
| 329|[0x80003530]<br>0x0000000A|- rs1_val==6 and imm_val==4<br>                                                                                            |[0x80001106]:c.addi a0, 4<br> [0x80001108]:sw a0, 1200(ra)<br>   |
| 330|[0x80003534]<br>0x0000000F|- rs1_val==6 and imm_val==9<br>                                                                                            |[0x80001110]:c.addi a0, 9<br> [0x80001112]:sw a0, 1204(ra)<br>   |
| 331|[0x80003538]<br>0x00000006|- rs1_val==6 and imm_val==0<br>                                                                                            |[0x8000111a]:c.addi.hint.a0<br> [0x8000111c]:sw a0, 1208(ra)<br> |
| 332|[0x8000353c]<br>0x00000011|- rs1_val==6 and imm_val==11<br>                                                                                           |[0x80001124]:c.addi a0, 11<br> [0x80001126]:sw a0, 1212(ra)<br>  |
| 333|[0x80003540]<br>0x0000000D|- rs1_val==6 and imm_val==7<br>                                                                                            |[0x8000112e]:c.addi a0, 7<br> [0x80001130]:sw a0, 1216(ra)<br>   |
| 334|[0x80003544]<br>0x00000005|- rs1_val==6 and imm_val==-1<br>                                                                                           |[0x80001138]:c.addi a0, 63<br> [0x8000113a]:sw a0, 1220(ra)<br>  |
| 335|[0x80003548]<br>0x00000002|- rs1_val==6 and imm_val==-4<br>                                                                                           |[0x80001142]:c.addi a0, 60<br> [0x80001144]:sw a0, 1224(ra)<br>  |
| 336|[0x8000354c]<br>0x33333337|- rs1_val==858993460 and imm_val==3<br>                                                                                    |[0x80001150]:c.addi a0, 3<br> [0x80001152]:sw a0, 1228(ra)<br>   |
| 337|[0x80003550]<br>0x33333339|- rs1_val==858993460 and imm_val==5<br>                                                                                    |[0x8000115e]:c.addi a0, 5<br> [0x80001160]:sw a0, 1232(ra)<br>   |
| 338|[0x80003554]<br>0x3333333E|- rs1_val==858993460 and imm_val==10<br>                                                                                   |[0x8000116c]:c.addi a0, 10<br> [0x8000116e]:sw a0, 1236(ra)<br>  |
| 339|[0x80003558]<br>0x3333333A|- rs1_val==858993460 and imm_val==6<br>                                                                                    |[0x8000117a]:c.addi a0, 6<br> [0x8000117c]:sw a0, 1240(ra)<br>   |
| 340|[0x8000355c]<br>0x33333332|- rs1_val==858993460 and imm_val==-2<br>                                                                                   |[0x80001188]:c.addi a0, 62<br> [0x8000118a]:sw a0, 1244(ra)<br>  |
| 341|[0x80003560]<br>0x3333332F|- rs1_val==858993460 and imm_val==-5<br>                                                                                   |[0x80001196]:c.addi a0, 59<br> [0x80001198]:sw a0, 1248(ra)<br>  |
| 342|[0x80003564]<br>0x33333336|- rs1_val==858993460 and imm_val==2<br>                                                                                    |[0x800011a4]:c.addi a0, 2<br> [0x800011a6]:sw a0, 1252(ra)<br>   |
| 343|[0x80003568]<br>0x33333338|- rs1_val==858993460 and imm_val==4<br>                                                                                    |[0x800011b2]:c.addi a0, 4<br> [0x800011b4]:sw a0, 1256(ra)<br>   |
| 344|[0x8000356c]<br>0x3333333D|- rs1_val==858993460 and imm_val==9<br>                                                                                    |[0x800011c0]:c.addi a0, 9<br> [0x800011c2]:sw a0, 1260(ra)<br>   |
| 345|[0x80003570]<br>0x33333334|- rs1_val==858993460 and imm_val==0<br>                                                                                    |[0x800011ce]:c.addi.hint.a0<br> [0x800011d0]:sw a0, 1264(ra)<br> |
| 346|[0x80003574]<br>0x3333333F|- rs1_val==858993460 and imm_val==11<br>                                                                                   |[0x800011dc]:c.addi a0, 11<br> [0x800011de]:sw a0, 1268(ra)<br>  |
| 347|[0x80003578]<br>0x3333333B|- rs1_val==858993460 and imm_val==7<br>                                                                                    |[0x800011ea]:c.addi a0, 7<br> [0x800011ec]:sw a0, 1272(ra)<br>   |
| 348|[0x8000357c]<br>0x33333333|- rs1_val==858993460 and imm_val==-1<br>                                                                                   |[0x800011f8]:c.addi a0, 63<br> [0x800011fa]:sw a0, 1276(ra)<br>  |
| 349|[0x80003580]<br>0x33333330|- rs1_val==858993460 and imm_val==-4<br>                                                                                   |[0x80001206]:c.addi a0, 60<br> [0x80001208]:sw a0, 1280(ra)<br>  |
| 350|[0x80003584]<br>0x6666666A|- rs1_val==1717986919 and imm_val==3<br>                                                                                   |[0x80001214]:c.addi a0, 3<br> [0x80001216]:sw a0, 1284(ra)<br>   |
| 351|[0x80003588]<br>0x6666666C|- rs1_val==1717986919 and imm_val==5<br>                                                                                   |[0x80001222]:c.addi a0, 5<br> [0x80001224]:sw a0, 1288(ra)<br>   |
| 352|[0x8000358c]<br>0x66666671|- rs1_val==1717986919 and imm_val==10<br>                                                                                  |[0x80001230]:c.addi a0, 10<br> [0x80001232]:sw a0, 1292(ra)<br>  |
| 353|[0x80003590]<br>0x6666666D|- rs1_val==1717986919 and imm_val==6<br>                                                                                   |[0x8000123e]:c.addi a0, 6<br> [0x80001240]:sw a0, 1296(ra)<br>   |
| 354|[0x80003594]<br>0x66666665|- rs1_val==1717986919 and imm_val==-2<br>                                                                                  |[0x8000124c]:c.addi a0, 62<br> [0x8000124e]:sw a0, 1300(ra)<br>  |
| 355|[0x80003598]<br>0x66666662|- rs1_val==1717986919 and imm_val==-5<br>                                                                                  |[0x8000125a]:c.addi a0, 59<br> [0x8000125c]:sw a0, 1304(ra)<br>  |
| 356|[0x8000359c]<br>0x66666669|- rs1_val==1717986919 and imm_val==2<br>                                                                                   |[0x80001268]:c.addi a0, 2<br> [0x8000126a]:sw a0, 1308(ra)<br>   |
| 357|[0x800035a0]<br>0x6666666B|- rs1_val==1717986919 and imm_val==4<br>                                                                                   |[0x80001276]:c.addi a0, 4<br> [0x80001278]:sw a0, 1312(ra)<br>   |
| 358|[0x800035a4]<br>0x66666670|- rs1_val==1717986919 and imm_val==9<br>                                                                                   |[0x80001284]:c.addi a0, 9<br> [0x80001286]:sw a0, 1316(ra)<br>   |
| 359|[0x800035a8]<br>0x66666667|- rs1_val==1717986919 and imm_val==0<br>                                                                                   |[0x80001292]:c.addi.hint.a0<br> [0x80001294]:sw a0, 1320(ra)<br> |
| 360|[0x800035ac]<br>0x66666672|- rs1_val==1717986919 and imm_val==11<br>                                                                                  |[0x800012a0]:c.addi a0, 11<br> [0x800012a2]:sw a0, 1324(ra)<br>  |
| 361|[0x800035b0]<br>0x6666666E|- rs1_val==1717986919 and imm_val==7<br>                                                                                   |[0x800012ae]:c.addi a0, 7<br> [0x800012b0]:sw a0, 1328(ra)<br>   |
| 362|[0x800035b4]<br>0x66666666|- rs1_val==1717986919 and imm_val==-1<br>                                                                                  |[0x800012bc]:c.addi a0, 63<br> [0x800012be]:sw a0, 1332(ra)<br>  |
| 363|[0x800035b8]<br>0x66666663|- rs1_val==1717986919 and imm_val==-4<br>                                                                                  |[0x800012ca]:c.addi a0, 60<br> [0x800012cc]:sw a0, 1336(ra)<br>  |
| 364|[0x800035bc]<br>0xFFFF4B00|- rs1_val==-46339 and imm_val==3<br>                                                                                       |[0x800012d8]:c.addi a0, 3<br> [0x800012da]:sw a0, 1340(ra)<br>   |
| 365|[0x800035c0]<br>0xFFFF4B02|- rs1_val==-46339 and imm_val==5<br>                                                                                       |[0x800012e6]:c.addi a0, 5<br> [0x800012e8]:sw a0, 1344(ra)<br>   |
| 366|[0x800035c4]<br>0xFFFF4B07|- rs1_val==-46339 and imm_val==10<br>                                                                                      |[0x800012f4]:c.addi a0, 10<br> [0x800012f6]:sw a0, 1348(ra)<br>  |
| 367|[0x800035c8]<br>0xFFFF4B03|- rs1_val==-46339 and imm_val==6<br>                                                                                       |[0x80001302]:c.addi a0, 6<br> [0x80001304]:sw a0, 1352(ra)<br>   |
| 368|[0x800035cc]<br>0xFFFF4AFB|- rs1_val==-46339 and imm_val==-2<br>                                                                                      |[0x80001310]:c.addi a0, 62<br> [0x80001312]:sw a0, 1356(ra)<br>  |
| 369|[0x800035d0]<br>0xFFFF4AF8|- rs1_val==-46339 and imm_val==-5<br>                                                                                      |[0x8000131e]:c.addi a0, 59<br> [0x80001320]:sw a0, 1360(ra)<br>  |
| 370|[0x800035d4]<br>0xFFFF4AFF|- rs1_val==-46339 and imm_val==2<br>                                                                                       |[0x8000132c]:c.addi a0, 2<br> [0x8000132e]:sw a0, 1364(ra)<br>   |
| 371|[0x800035d8]<br>0xFFFF4B01|- rs1_val==-46339 and imm_val==4<br>                                                                                       |[0x8000133a]:c.addi a0, 4<br> [0x8000133c]:sw a0, 1368(ra)<br>   |
| 372|[0x800035dc]<br>0xFFFF4B06|- rs1_val==-46339 and imm_val==9<br>                                                                                       |[0x80001348]:c.addi a0, 9<br> [0x8000134a]:sw a0, 1372(ra)<br>   |
| 373|[0x800035e0]<br>0xFFFF4AFD|- rs1_val==-46339 and imm_val==0<br>                                                                                       |[0x80001356]:c.addi.hint.a0<br> [0x80001358]:sw a0, 1376(ra)<br> |
| 374|[0x800035e4]<br>0xFFFF4B08|- rs1_val==-46339 and imm_val==11<br>                                                                                      |[0x80001364]:c.addi a0, 11<br> [0x80001366]:sw a0, 1380(ra)<br>  |
| 375|[0x800035e8]<br>0xFFFF4B04|- rs1_val==-46339 and imm_val==7<br>                                                                                       |[0x80001372]:c.addi a0, 7<br> [0x80001374]:sw a0, 1384(ra)<br>   |
