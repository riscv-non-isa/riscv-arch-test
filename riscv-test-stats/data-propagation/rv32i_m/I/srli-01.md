
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005e0')]      |
| SIG_REGION                | [('0x80002010', '0x80002180', '92 words')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 178     |
| Total Coverpoints Hit     | 178      |
| Total Signature Updates   | 90      |
| STAT1                     | 89      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005cc]:srli a1, a0, 3
      [0x800005d0]:sw a1, 264(fp)
 -- Signature Address: 0x80002170 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == imm_val and imm_val > 0 and imm_val < xlen
      - rs1_val==3






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

|s.no|        signature         |                                                                          coverpoints                                                                           |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0x3FFFD2BF|- opcode : srli<br> - rs1 : x30<br> - rd : x8<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val==-46340<br> - imm_val == 2<br> |[0x80000108]:srli fp, t5, 2<br> [0x8000010c]:sw fp, 0(t0)<br>      |
|   2|[0x80002014]<br>0x00000000|- rs1 : x17<br> - rd : x17<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br>                                                             |[0x80000114]:srli a7, a7, 19<br> [0x80000118]:sw a7, 4(t0)<br>     |
|   3|[0x80002018]<br>0xFFFF4AFC|- rs1 : x27<br> - rd : x19<br> - rs1_val < 0 and imm_val == 0<br>                                                                                               |[0x80000124]:srli s3, s11, 0<br> [0x80000128]:sw s3, 8(t0)<br>     |
|   4|[0x8000201c]<br>0x3FFFFFFF|- rs1 : x29<br> - rd : x9<br> - rs1_val > 0 and imm_val == 0<br>                                                                                                |[0x80000134]:srli s1, t4, 0<br> [0x80000138]:sw s1, 12(t0)<br>     |
|   5|[0x80002020]<br>0x00000001|- rs1 : x25<br> - rd : x22<br> - rs1_val < 0 and imm_val == (xlen-1)<br>                                                                                        |[0x80000140]:srli s6, s9, 31<br> [0x80000144]:sw s6, 16(t0)<br>    |
|   6|[0x80002024]<br>0x00000000|- rs1 : x1<br> - rd : x13<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 512<br>                                                                    |[0x8000014c]:srli a3, ra, 31<br> [0x80000150]:sw a3, 20(t0)<br>    |
|   7|[0x80002028]<br>0x00000000|- rs1 : x21<br> - rd : x0<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val==3<br>                                                      |[0x80000158]:srli zero, s5, 3<br> [0x8000015c]:sw zero, 24(t0)<br> |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x0<br> - rd : x29<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                                           |[0x80000164]:srli t4, zero, 9<br> [0x80000168]:sw t4, 28(t0)<br>   |
|   9|[0x80002030]<br>0x00000000|- rs1 : x16<br> - rd : x18<br> - imm_val == 1<br>                                                                                                               |[0x80000170]:srli s2, a6, 1<br> [0x80000174]:sw s2, 32(t0)<br>     |
|  10|[0x80002034]<br>0x00003FFF|- rs1 : x20<br> - rd : x27<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                 |[0x80000180]:srli s11, s4, 17<br> [0x80000184]:sw s11, 36(t0)<br>  |
|  11|[0x80002038]<br>0x00000000|- rs1 : x31<br> - rd : x2<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                         |[0x8000018c]:srli sp, t6, 18<br> [0x80000190]:sw sp, 40(t0)<br>    |
|  12|[0x8000203c]<br>0x00000000|- rs1 : x7<br> - rd : x31<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 29<br>                                                                           |[0x80000198]:srli t6, t2, 29<br> [0x8000019c]:sw t6, 44(t0)<br>    |
|  13|[0x80002040]<br>0x00000000|- rs1 : x14<br> - rd : x16<br> - rs1_val == 4<br> - rs1_val==4<br> - imm_val == 15<br>                                                                          |[0x800001a4]:srli a6, a4, 15<br> [0x800001a8]:sw a6, 48(t0)<br>    |
|  14|[0x80002044]<br>0x00000000|- rs1 : x12<br> - rd : x25<br> - rs1_val == 8<br> - imm_val == 27<br>                                                                                           |[0x800001b0]:srli s9, a2, 27<br> [0x800001b4]:sw s9, 52(t0)<br>    |
|  15|[0x80002048]<br>0x00000000|- rs1 : x4<br> - rd : x11<br> - rs1_val == 16<br>                                                                                                               |[0x800001bc]:srli a1, tp, 15<br> [0x800001c0]:sw a1, 56(t0)<br>    |
|  16|[0x8000204c]<br>0x00000000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 32<br> - imm_val == 23<br>                                                                                          |[0x800001c8]:srli s7, s8, 23<br> [0x800001cc]:sw s7, 60(t0)<br>    |
|  17|[0x80002050]<br>0x00000000|- rs1 : x8<br> - rd : x28<br> - rs1_val == 64<br>                                                                                                               |[0x800001d4]:srli t3, fp, 13<br> [0x800001d8]:sw t3, 64(t0)<br>    |
|  18|[0x80002054]<br>0x00000000|- rs1 : x15<br> - rd : x30<br> - rs1_val == 128<br> - imm_val == 30<br>                                                                                         |[0x800001e0]:srli t5, a5, 30<br> [0x800001e4]:sw t5, 68(t0)<br>    |
|  19|[0x80002058]<br>0x00000000|- rs1 : x18<br> - rd : x20<br> - rs1_val == 256<br>                                                                                                             |[0x800001ec]:srli s4, s2, 31<br> [0x800001f0]:sw s4, 72(t0)<br>    |
|  20|[0x8000205c]<br>0x00000000|- rs1 : x13<br> - rd : x14<br> - rs1_val == 1024<br>                                                                                                            |[0x800001f8]:srli a4, a3, 18<br> [0x800001fc]:sw a4, 76(t0)<br>    |
|  21|[0x80002060]<br>0x00000000|- rs1 : x11<br> - rd : x3<br> - rs1_val == 2048<br>                                                                                                             |[0x80000208]:srli gp, a1, 15<br> [0x8000020c]:sw gp, 80(t0)<br>    |
|  22|[0x80002064]<br>0x00000000|- rs1 : x23<br> - rd : x26<br> - rs1_val == 4096<br>                                                                                                            |[0x80000214]:srli s10, s7, 15<br> [0x80000218]:sw s10, 84(t0)<br>  |
|  23|[0x80002068]<br>0x00000800|- rs1 : x19<br> - rd : x10<br> - rs1_val == 8192<br>                                                                                                            |[0x80000228]:srli a0, s3, 2<br> [0x8000022c]:sw a0, 0(fp)<br>      |
|  24|[0x8000206c]<br>0x00000001|- rs1 : x10<br> - rd : x21<br> - rs1_val == 16384<br>                                                                                                           |[0x80000234]:srli s5, a0, 14<br> [0x80000238]:sw s5, 4(fp)<br>     |
|  25|[0x80002070]<br>0x00001000|- rs1 : x5<br> - rd : x7<br> - rs1_val == 32768<br>                                                                                                             |[0x80000240]:srli t2, t0, 3<br> [0x80000244]:sw t2, 8(fp)<br>      |
|  26|[0x80002074]<br>0x00000000|- rs1 : x2<br> - rd : x5<br> - rs1_val == 65536<br>                                                                                                             |[0x8000024c]:srli t0, sp, 23<br> [0x80000250]:sw t0, 12(fp)<br>    |
|  27|[0x80002078]<br>0x00000001|- rs1 : x28<br> - rd : x6<br> - rs1_val == 131072<br>                                                                                                           |[0x80000258]:srli t1, t3, 17<br> [0x8000025c]:sw t1, 16(fp)<br>    |
|  28|[0x8000207c]<br>0x00000800|- rs1 : x3<br> - rd : x12<br> - rs1_val == 262144<br>                                                                                                           |[0x80000264]:srli a2, gp, 7<br> [0x80000268]:sw a2, 20(fp)<br>     |
|  29|[0x80002080]<br>0x00000000|- rs1 : x26<br> - rd : x4<br> - rs1_val == 524288<br>                                                                                                           |[0x80000270]:srli tp, s10, 29<br> [0x80000274]:sw tp, 24(fp)<br>   |
|  30|[0x80002084]<br>0x00040000|- rs1 : x9<br> - rd : x24<br> - rs1_val == 1048576<br>                                                                                                          |[0x8000027c]:srli s8, s1, 2<br> [0x80000280]:sw s8, 28(fp)<br>     |
|  31|[0x80002088]<br>0x00010000|- rs1 : x6<br> - rd : x15<br> - rs1_val == 2097152<br>                                                                                                          |[0x80000288]:srli a5, t1, 5<br> [0x8000028c]:sw a5, 32(fp)<br>     |
|  32|[0x8000208c]<br>0x00000400|- rs1 : x22<br> - rd : x1<br> - rs1_val == 4194304<br>                                                                                                          |[0x80000294]:srli ra, s6, 12<br> [0x80000298]:sw ra, 36(fp)<br>    |
|  33|[0x80002090]<br>0x00004000|- rs1_val == 8388608<br>                                                                                                                                        |[0x800002a0]:srli a1, a0, 9<br> [0x800002a4]:sw a1, 40(fp)<br>     |
|  34|[0x80002094]<br>0x00000400|- rs1_val == 16777216<br>                                                                                                                                       |[0x800002ac]:srli a1, a0, 14<br> [0x800002b0]:sw a1, 44(fp)<br>    |
|  35|[0x80002098]<br>0x00400000|- rs1_val == 33554432<br>                                                                                                                                       |[0x800002b8]:srli a1, a0, 3<br> [0x800002bc]:sw a1, 48(fp)<br>     |
|  36|[0x8000209c]<br>0x00400000|- rs1_val == 67108864<br> - imm_val == 4<br>                                                                                                                    |[0x800002c4]:srli a1, a0, 4<br> [0x800002c8]:sw a1, 52(fp)<br>     |
|  37|[0x800020a0]<br>0x00100000|- rs1_val == 134217728<br>                                                                                                                                      |[0x800002d0]:srli a1, a0, 7<br> [0x800002d4]:sw a1, 56(fp)<br>     |
|  38|[0x800020a4]<br>0x00200000|- rs1_val == 268435456<br>                                                                                                                                      |[0x800002dc]:srli a1, a0, 7<br> [0x800002e0]:sw a1, 60(fp)<br>     |
|  39|[0x800020a8]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                                                      |[0x800002e8]:srli a1, a0, 0<br> [0x800002ec]:sw a1, 64(fp)<br>     |
|  40|[0x800020ac]<br>0x00000001|- rs1_val == 1073741824<br>                                                                                                                                     |[0x800002f4]:srli a1, a0, 30<br> [0x800002f8]:sw a1, 68(fp)<br>    |
|  41|[0x800020b0]<br>0x00000007|- rs1_val == -2<br>                                                                                                                                             |[0x80000300]:srli a1, a0, 29<br> [0x80000304]:sw a1, 72(fp)<br>    |
|  42|[0x800020b4]<br>0x001FFFFF|- rs1_val == -3<br>                                                                                                                                             |[0x8000030c]:srli a1, a0, 11<br> [0x80000310]:sw a1, 76(fp)<br>    |
|  43|[0x800020b8]<br>0x07FFFFFF|- rs1_val == -5<br>                                                                                                                                             |[0x80000318]:srli a1, a0, 5<br> [0x8000031c]:sw a1, 80(fp)<br>     |
|  44|[0x800020bc]<br>0x7FFFFFFB|- rs1_val == -9<br>                                                                                                                                             |[0x80000324]:srli a1, a0, 1<br> [0x80000328]:sw a1, 84(fp)<br>     |
|  45|[0x800020c0]<br>0x00000007|- rs1_val == -17<br>                                                                                                                                            |[0x80000330]:srli a1, a0, 29<br> [0x80000334]:sw a1, 88(fp)<br>    |
|  46|[0x800020c4]<br>0x0000FFFF|- rs1_val == -33<br> - imm_val == 16<br>                                                                                                                        |[0x8000033c]:srli a1, a0, 16<br> [0x80000340]:sw a1, 92(fp)<br>    |
|  47|[0x800020c8]<br>0x00FFFFFF|- rs1_val == -65<br> - imm_val == 8<br>                                                                                                                         |[0x80000348]:srli a1, a0, 8<br> [0x8000034c]:sw a1, 96(fp)<br>     |
|  48|[0x800020cc]<br>0x00003FFF|- rs1_val == -129<br>                                                                                                                                           |[0x80000354]:srli a1, a0, 18<br> [0x80000358]:sw a1, 100(fp)<br>   |
|  49|[0x800020d0]<br>0x1FFFFFDF|- rs1_val == -257<br>                                                                                                                                           |[0x80000360]:srli a1, a0, 3<br> [0x80000364]:sw a1, 104(fp)<br>    |
|  50|[0x800020d4]<br>0x00001FFF|- rs1_val == -513<br>                                                                                                                                           |[0x8000036c]:srli a1, a0, 19<br> [0x80000370]:sw a1, 108(fp)<br>   |
|  51|[0x800020d8]<br>0x007FFFFD|- rs1_val == -1025<br>                                                                                                                                          |[0x80000378]:srli a1, a0, 9<br> [0x8000037c]:sw a1, 112(fp)<br>    |
|  52|[0x800020dc]<br>0x01FFFFEF|- rs1_val == -2049<br>                                                                                                                                          |[0x80000388]:srli a1, a0, 7<br> [0x8000038c]:sw a1, 116(fp)<br>    |
|  53|[0x800020e0]<br>0xFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                          |[0x80000398]:srli a1, a0, 0<br> [0x8000039c]:sw a1, 120(fp)<br>    |
|  54|[0x800020e4]<br>0x0003FFFF|- rs1_val == -8193<br>                                                                                                                                          |[0x800003a8]:srli a1, a0, 14<br> [0x800003ac]:sw a1, 124(fp)<br>   |
|  55|[0x800020e8]<br>0x7FFFDFFF|- rs1_val == -16385<br>                                                                                                                                         |[0x800003b8]:srli a1, a0, 1<br> [0x800003bc]:sw a1, 128(fp)<br>    |
|  56|[0x800020ec]<br>0x00000007|- rs1_val == -32769<br>                                                                                                                                         |[0x800003c8]:srli a1, a0, 29<br> [0x800003cc]:sw a1, 132(fp)<br>   |
|  57|[0x800020f0]<br>0x007FFF7F|- rs1_val == -65537<br>                                                                                                                                         |[0x800003d8]:srli a1, a0, 9<br> [0x800003dc]:sw a1, 136(fp)<br>    |
|  58|[0x800020f4]<br>0x01FFFBFF|- rs1_val == -131073<br>                                                                                                                                        |[0x800003e8]:srli a1, a0, 7<br> [0x800003ec]:sw a1, 140(fp)<br>    |
|  59|[0x800020f8]<br>0x00001FFF|- rs1_val == -262145<br>                                                                                                                                        |[0x800003f8]:srli a1, a0, 19<br> [0x800003fc]:sw a1, 144(fp)<br>   |
|  60|[0x800020fc]<br>0x0001FFEF|- rs1_val == -524289<br>                                                                                                                                        |[0x80000408]:srli a1, a0, 15<br> [0x8000040c]:sw a1, 148(fp)<br>   |
|  61|[0x80002100]<br>0x0000FFEF|- rs1_val == -1048577<br>                                                                                                                                       |[0x80000418]:srli a1, a0, 16<br> [0x8000041c]:sw a1, 152(fp)<br>   |
|  62|[0x80002104]<br>0x03FF7FFF|- rs1_val == -2097153<br>                                                                                                                                       |[0x80000428]:srli a1, a0, 6<br> [0x8000042c]:sw a1, 156(fp)<br>    |
|  63|[0x80002108]<br>0x00FFBFFF|- rs1_val == -4194305<br>                                                                                                                                       |[0x80000438]:srli a1, a0, 8<br> [0x8000043c]:sw a1, 160(fp)<br>    |
|  64|[0x8000210c]<br>0x003FDFFF|- rs1_val == -8388609<br> - imm_val == 10<br>                                                                                                                   |[0x80000448]:srli a1, a0, 10<br> [0x8000044c]:sw a1, 164(fp)<br>   |
|  65|[0x80002110]<br>0x001FDFFF|- rs1_val == -16777217<br>                                                                                                                                      |[0x80000458]:srli a1, a0, 11<br> [0x8000045c]:sw a1, 168(fp)<br>   |
|  66|[0x80002114]<br>0x7EFFFFFF|- rs1_val == -33554433<br>                                                                                                                                      |[0x80000468]:srli a1, a0, 1<br> [0x8000046c]:sw a1, 172(fp)<br>    |
|  67|[0x80002118]<br>0x000007DF|- rs1_val == -67108865<br> - imm_val == 21<br>                                                                                                                  |[0x80000478]:srli a1, a0, 21<br> [0x8000047c]:sw a1, 176(fp)<br>   |
|  68|[0x8000211c]<br>0x000007BF|- rs1_val == -134217729<br>                                                                                                                                     |[0x80000488]:srli a1, a0, 21<br> [0x8000048c]:sw a1, 180(fp)<br>   |
|  69|[0x80002120]<br>0x0003BFFF|- rs1_val == -268435457<br>                                                                                                                                     |[0x80000498]:srli a1, a0, 14<br> [0x8000049c]:sw a1, 184(fp)<br>   |
|  70|[0x80002124]<br>0x37FFFFFF|- rs1_val == -536870913<br>                                                                                                                                     |[0x800004a8]:srli a1, a0, 2<br> [0x800004ac]:sw a1, 188(fp)<br>    |
|  71|[0x80002128]<br>0x00002FFF|- rs1_val == -1073741825<br>                                                                                                                                    |[0x800004b8]:srli a1, a0, 18<br> [0x800004bc]:sw a1, 192(fp)<br>   |
|  72|[0x8000212c]<br>0x00000AAA|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                           |[0x800004c8]:srli a1, a0, 19<br> [0x800004cc]:sw a1, 196(fp)<br>   |
|  73|[0x80002130]<br>0x000AAAAA|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                         |[0x800004d8]:srli a1, a0, 12<br> [0x800004dc]:sw a1, 200(fp)<br>   |
|  74|[0x80002134]<br>0x00000000|- rs1_val==5<br>                                                                                                                                                |[0x800004e4]:srli a1, a0, 3<br> [0x800004e8]:sw a1, 204(fp)<br>    |
|  75|[0x80002138]<br>0x000000CC|- rs1_val==1717986919<br>                                                                                                                                       |[0x800004f4]:srli a1, a0, 23<br> [0x800004f8]:sw a1, 208(fp)<br>   |
|  76|[0x8000213c]<br>0x003FFFD2|- rs1_val==-46339<br>                                                                                                                                           |[0x80000504]:srli a1, a0, 10<br> [0x80000508]:sw a1, 212(fp)<br>   |
|  77|[0x80002140]<br>0x00000005|- rs1_val==46341<br>                                                                                                                                            |[0x80000514]:srli a1, a0, 13<br> [0x80000518]:sw a1, 216(fp)<br>   |
|  78|[0x80002144]<br>0x00033333|- rs1_val==858993459<br>                                                                                                                                        |[0x80000524]:srli a1, a0, 12<br> [0x80000528]:sw a1, 220(fp)<br>   |
|  79|[0x80002148]<br>0x00000333|- rs1_val==1717986918<br>                                                                                                                                       |[0x80000534]:srli a1, a0, 21<br> [0x80000538]:sw a1, 224(fp)<br>   |
|  80|[0x8000214c]<br>0x00000001|- rs1_val==46340<br>                                                                                                                                            |[0x80000544]:srli a1, a0, 15<br> [0x80000548]:sw a1, 228(fp)<br>   |
|  81|[0x80002150]<br>0x00000002|- rs1_val==1431655764<br>                                                                                                                                       |[0x80000554]:srli a1, a0, 29<br> [0x80000558]:sw a1, 232(fp)<br>   |
|  82|[0x80002154]<br>0x00000006|- rs1_val==858993458<br>                                                                                                                                        |[0x80000564]:srli a1, a0, 27<br> [0x80000568]:sw a1, 236(fp)<br>   |
|  83|[0x80002158]<br>0x00333333|- rs1_val==1717986917<br>                                                                                                                                       |[0x80000574]:srli a1, a0, 9<br> [0x80000578]:sw a1, 240(fp)<br>    |
|  84|[0x8000215c]<br>0x00000000|- rs1_val==46339<br>                                                                                                                                            |[0x80000584]:srli a1, a0, 18<br> [0x80000588]:sw a1, 244(fp)<br>   |
|  85|[0x80002160]<br>0x0000AAAA|- rs1_val==1431655766<br>                                                                                                                                       |[0x80000594]:srli a1, a0, 15<br> [0x80000598]:sw a1, 248(fp)<br>   |
|  86|[0x80002164]<br>0x00000005|- rs1_val==-1431655765<br>                                                                                                                                      |[0x800005a4]:srli a1, a0, 29<br> [0x800005a8]:sw a1, 252(fp)<br>   |
|  87|[0x80002168]<br>0x00000000|- rs1_val==6<br>                                                                                                                                                |[0x800005b0]:srli a1, a0, 31<br> [0x800005b4]:sw a1, 256(fp)<br>   |
|  88|[0x8000216c]<br>0x00CCCCCC|- rs1_val==858993460<br>                                                                                                                                        |[0x800005c0]:srli a1, a0, 6<br> [0x800005c4]:sw a1, 260(fp)<br>    |
|  89|[0x80002174]<br>0x00400000|- rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                                                |[0x800005d8]:srli a1, a0, 9<br> [0x800005dc]:sw a1, 268(fp)<br>    |
