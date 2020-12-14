
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005c0')]      |
| SIG_REGION                | [('0x80002010', '0x80002170', '88 words')]      |
| COV_LABELS                | srai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srai-01.S/srai-01.S    |
| Total Number of coverpoints| 178     |
| Total Coverpoints Hit     | 178      |
| Total Signature Updates   | 87      |
| STAT1                     | 86      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ac]:srai a1, a0, 5
      [0x800005b0]:sw a1, 268(t0)
 -- Signature Address: 0x80002168 Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 131072






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

|s.no|        signature         |                                                                                            coverpoints                                                                                            |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFF|- opcode : srai<br> - rs1 : x1<br> - rd : x28<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -33<br>                                                        |[0x80000104]:srai t3, ra, 18<br> [0x80000108]:sw t3, 0(a2)<br>     |
|   2|[0x80002014]<br>0x00000FFF|- rs1 : x5<br> - rd : x5<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> |[0x80000114]:srai t0, t0, 19<br> [0x80000118]:sw t0, 4(a2)<br>     |
|   3|[0x80002018]<br>0xFFFFFFDF|- rs1 : x13<br> - rd : x25<br> - rs1_val < 0 and imm_val == 0<br>                                                                                                                                  |[0x80000120]:srai s9, a3, 0<br> [0x80000124]:sw s9, 8(a2)<br>      |
|   4|[0x8000201c]<br>0x00010000|- rs1 : x6<br> - rd : x9<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 65536<br>                                                                                                             |[0x8000012c]:srai s1, t1, 0<br> [0x80000130]:sw s1, 12(a2)<br>     |
|   5|[0x80002020]<br>0xFFFFFFFF|- rs1 : x10<br> - rd : x4<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                           |[0x80000138]:srai tp, a0, 31<br> [0x8000013c]:sw tp, 16(a2)<br>    |
|   6|[0x80002024]<br>0x00000000|- rs1 : x26<br> - rd : x11<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val==3<br>                                                                                                          |[0x80000144]:srai a1, s10, 31<br> [0x80000148]:sw a1, 20(a2)<br>   |
|   7|[0x80002028]<br>0x00000000|- rs1 : x18<br> - rd : x31<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br>            |[0x80000150]:srai t6, s2, 1<br> [0x80000154]:sw t6, 24(a2)<br>     |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x15<br> - rd : x27<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br> - imm_val == 16<br>                                                                         |[0x8000015c]:srai s11, a5, 16<br> [0x80000160]:sw s11, 28(a2)<br>  |
|   9|[0x80002030]<br>0x00000000|- rs1 : x23<br> - rd : x19<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                 |[0x80000168]:srai s3, s7, 18<br> [0x8000016c]:sw s3, 32(a2)<br>    |
|  10|[0x80002034]<br>0x00000004|- rs1 : x2<br> - rd : x24<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                  |[0x80000174]:srai s8, sp, 0<br> [0x80000178]:sw s8, 36(a2)<br>     |
|  11|[0x80002038]<br>0x00000000|- rs1 : x30<br> - rd : x21<br> - rs1_val == 8<br>                                                                                                                                                  |[0x80000180]:srai s5, t5, 18<br> [0x80000184]:sw s5, 40(a2)<br>    |
|  12|[0x8000203c]<br>0x00000000|- rs1 : x27<br> - rd : x10<br> - rs1_val == 16<br>                                                                                                                                                 |[0x8000018c]:srai a0, s11, 12<br> [0x80000190]:sw a0, 44(a2)<br>   |
|  13|[0x80002040]<br>0x00000000|- rs1 : x29<br> - rd : x18<br> - rs1_val == 32<br> - imm_val == 21<br>                                                                                                                             |[0x80000198]:srai s2, t4, 21<br> [0x8000019c]:sw s2, 48(a2)<br>    |
|  14|[0x80002044]<br>0x00000000|- rs1 : x31<br> - rd : x30<br> - rs1_val == 64<br> - imm_val == 29<br>                                                                                                                             |[0x800001a4]:srai t5, t6, 29<br> [0x800001a8]:sw t5, 52(a2)<br>    |
|  15|[0x80002048]<br>0x00000000|- rs1 : x0<br> - rd : x7<br>                                                                                                                                                                       |[0x800001b0]:srai t2, zero, 13<br> [0x800001b4]:sw t2, 56(a2)<br>  |
|  16|[0x8000204c]<br>0x00000000|- rs1 : x20<br> - rd : x13<br> - rs1_val == 256<br>                                                                                                                                                |[0x800001bc]:srai a3, s4, 11<br> [0x800001c0]:sw a3, 60(a2)<br>    |
|  17|[0x80002050]<br>0x00000004|- rs1 : x22<br> - rd : x29<br> - rs1_val == 512<br>                                                                                                                                                |[0x800001c8]:srai t4, s6, 7<br> [0x800001cc]:sw t4, 64(a2)<br>     |
|  18|[0x80002054]<br>0x00000000|- rs1 : x17<br> - rd : x6<br> - rs1_val == 1024<br>                                                                                                                                                |[0x800001d4]:srai t1, a7, 13<br> [0x800001d8]:sw t1, 68(a2)<br>    |
|  19|[0x80002058]<br>0x00000004|- rs1 : x8<br> - rd : x3<br> - rs1_val == 2048<br>                                                                                                                                                 |[0x800001e4]:srai gp, fp, 9<br> [0x800001e8]:sw gp, 72(a2)<br>     |
|  20|[0x8000205c]<br>0x00000000|- rs1 : x12<br> - rd : x22<br> - rs1_val == 4096<br> - imm_val == 27<br>                                                                                                                           |[0x800001f8]:srai s6, a2, 27<br> [0x800001fc]:sw s6, 0(t0)<br>     |
|  21|[0x80002060]<br>0x00000080|- rs1 : x4<br> - rd : x17<br> - rs1_val == 8192<br>                                                                                                                                                |[0x80000204]:srai a7, tp, 6<br> [0x80000208]:sw a7, 4(t0)<br>      |
|  22|[0x80002064]<br>0x00000000|- rs1 : x21<br> - rd : x26<br> - rs1_val == 16384<br>                                                                                                                                              |[0x80000210]:srai s10, s5, 29<br> [0x80000214]:sw s10, 8(t0)<br>   |
|  23|[0x80002068]<br>0x00000020|- rs1 : x3<br> - rd : x14<br> - rs1_val == 32768<br> - imm_val == 10<br>                                                                                                                           |[0x8000021c]:srai a4, gp, 10<br> [0x80000220]:sw a4, 12(t0)<br>    |
|  24|[0x8000206c]<br>0x00000000|- rs1 : x14<br> - rd : x0<br> - rs1_val == 131072<br>                                                                                                                                              |[0x80000228]:srai zero, a4, 5<br> [0x8000022c]:sw zero, 16(t0)<br> |
|  25|[0x80002070]<br>0x00001000|- rs1 : x28<br> - rd : x1<br> - rs1_val == 262144<br>                                                                                                                                              |[0x80000234]:srai ra, t3, 6<br> [0x80000238]:sw ra, 20(t0)<br>     |
|  26|[0x80002074]<br>0x00000000|- rs1 : x11<br> - rd : x15<br> - rs1_val == 524288<br>                                                                                                                                             |[0x80000240]:srai a5, a1, 21<br> [0x80000244]:sw a5, 24(t0)<br>    |
|  27|[0x80002078]<br>0x00020000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 1048576<br>                                                                                                                                            |[0x8000024c]:srai s7, s8, 3<br> [0x80000250]:sw s7, 28(t0)<br>     |
|  28|[0x8000207c]<br>0x00000400|- rs1 : x19<br> - rd : x12<br> - rs1_val == 2097152<br>                                                                                                                                            |[0x80000258]:srai a2, s3, 11<br> [0x8000025c]:sw a2, 32(t0)<br>    |
|  29|[0x80002080]<br>0x00000040|- rs1 : x16<br> - rd : x20<br> - rs1_val == 4194304<br>                                                                                                                                            |[0x80000264]:srai s4, a6, 16<br> [0x80000268]:sw s4, 36(t0)<br>    |
|  30|[0x80002084]<br>0x00000200|- rs1 : x7<br> - rd : x16<br> - rs1_val == 8388608<br>                                                                                                                                             |[0x80000270]:srai a6, t2, 14<br> [0x80000274]:sw a6, 40(t0)<br>    |
|  31|[0x80002088]<br>0x00020000|- rs1 : x25<br> - rd : x2<br> - rs1_val == 16777216<br>                                                                                                                                            |[0x8000027c]:srai sp, s9, 7<br> [0x80000280]:sw sp, 44(t0)<br>     |
|  32|[0x8000208c]<br>0x01000000|- rs1 : x9<br> - rd : x8<br> - rs1_val == 33554432<br>                                                                                                                                             |[0x80000288]:srai fp, s1, 1<br> [0x8000028c]:sw fp, 48(t0)<br>     |
|  33|[0x80002090]<br>0x00010000|- rs1_val == 67108864<br>                                                                                                                                                                          |[0x80000294]:srai a1, a0, 10<br> [0x80000298]:sw a1, 52(t0)<br>    |
|  34|[0x80002094]<br>0x00400000|- rs1_val == 134217728<br>                                                                                                                                                                         |[0x800002a0]:srai a1, a0, 5<br> [0x800002a4]:sw a1, 56(t0)<br>     |
|  35|[0x80002098]<br>0x00080000|- rs1_val == 268435456<br>                                                                                                                                                                         |[0x800002ac]:srai a1, a0, 9<br> [0x800002b0]:sw a1, 60(t0)<br>     |
|  36|[0x8000209c]<br>0x00004000|- rs1_val == 536870912<br> - imm_val == 15<br>                                                                                                                                                     |[0x800002b8]:srai a1, a0, 15<br> [0x800002bc]:sw a1, 64(t0)<br>    |
|  37|[0x800020a0]<br>0x02000000|- rs1_val == 1073741824<br>                                                                                                                                                                        |[0x800002c4]:srai a1, a0, 5<br> [0x800002c8]:sw a1, 68(t0)<br>     |
|  38|[0x800020a4]<br>0xFFFFFFFF|- rs1_val == -2<br> - imm_val == 4<br>                                                                                                                                                             |[0x800002d0]:srai a1, a0, 4<br> [0x800002d4]:sw a1, 72(t0)<br>     |
|  39|[0x800020a8]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                |[0x800002dc]:srai a1, a0, 3<br> [0x800002e0]:sw a1, 76(t0)<br>     |
|  40|[0x800020ac]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                |[0x800002e8]:srai a1, a0, 7<br> [0x800002ec]:sw a1, 80(t0)<br>     |
|  41|[0x800020b0]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                                |[0x800002f4]:srai a1, a0, 14<br> [0x800002f8]:sw a1, 84(t0)<br>    |
|  42|[0x800020b4]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                               |[0x80000300]:srai a1, a0, 16<br> [0x80000304]:sw a1, 88(t0)<br>    |
|  43|[0x800020b8]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                               |[0x8000030c]:srai a1, a0, 31<br> [0x80000310]:sw a1, 92(t0)<br>    |
|  44|[0x800020bc]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                              |[0x80000318]:srai a1, a0, 29<br> [0x8000031c]:sw a1, 96(t0)<br>    |
|  45|[0x800020c0]<br>0xFFFFFEFF|- rs1_val == -257<br>                                                                                                                                                                              |[0x80000324]:srai a1, a0, 0<br> [0x80000328]:sw a1, 100(t0)<br>    |
|  46|[0x800020c4]<br>0xFFFFFFFF|- rs1_val == -513<br> - imm_val == 23<br>                                                                                                                                                          |[0x80000330]:srai a1, a0, 23<br> [0x80000334]:sw a1, 104(t0)<br>   |
|  47|[0x800020c8]<br>0xFFFFFFFE|- rs1_val == -1025<br>                                                                                                                                                                             |[0x8000033c]:srai a1, a0, 10<br> [0x80000340]:sw a1, 108(t0)<br>   |
|  48|[0x800020cc]<br>0xFFFFFFFF|- rs1_val == -2049<br> - imm_val == 30<br>                                                                                                                                                         |[0x8000034c]:srai a1, a0, 30<br> [0x80000350]:sw a1, 112(t0)<br>   |
|  49|[0x800020d0]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                             |[0x8000035c]:srai a1, a0, 21<br> [0x80000360]:sw a1, 116(t0)<br>   |
|  50|[0x800020d4]<br>0xFFFFDFFF|- rs1_val == -8193<br>                                                                                                                                                                             |[0x8000036c]:srai a1, a0, 0<br> [0x80000370]:sw a1, 120(t0)<br>    |
|  51|[0x800020d8]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                                                            |[0x8000037c]:srai a1, a0, 27<br> [0x80000380]:sw a1, 124(t0)<br>   |
|  52|[0x800020dc]<br>0xFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                                                            |[0x8000038c]:srai a1, a0, 16<br> [0x80000390]:sw a1, 128(t0)<br>   |
|  53|[0x800020e0]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                            |[0x8000039c]:srai a1, a0, 19<br> [0x800003a0]:sw a1, 132(t0)<br>   |
|  54|[0x800020e4]<br>0xFFFF7FFF|- rs1_val == -131073<br> - imm_val == 2<br>                                                                                                                                                        |[0x800003ac]:srai a1, a0, 2<br> [0x800003b0]:sw a1, 136(t0)<br>    |
|  55|[0x800020e8]<br>0xFFFF7FFF|- rs1_val == -262145<br>                                                                                                                                                                           |[0x800003bc]:srai a1, a0, 3<br> [0x800003c0]:sw a1, 140(t0)<br>    |
|  56|[0x800020ec]<br>0xFFFFFFFB|- rs1_val == -524289<br>                                                                                                                                                                           |[0x800003cc]:srai a1, a0, 17<br> [0x800003d0]:sw a1, 144(t0)<br>   |
|  57|[0x800020f0]<br>0xFFFFF7FF|- rs1_val == -1048577<br>                                                                                                                                                                          |[0x800003dc]:srai a1, a0, 9<br> [0x800003e0]:sw a1, 148(t0)<br>    |
|  58|[0x800020f4]<br>0xFFF7FFFF|- rs1_val == -2097153<br>                                                                                                                                                                          |[0x800003ec]:srai a1, a0, 2<br> [0x800003f0]:sw a1, 152(t0)<br>    |
|  59|[0x800020f8]<br>0xFFFBFFFF|- rs1_val == -4194305<br>                                                                                                                                                                          |[0x800003fc]:srai a1, a0, 4<br> [0x80000400]:sw a1, 156(t0)<br>    |
|  60|[0x800020fc]<br>0xFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                                                                          |[0x8000040c]:srai a1, a0, 29<br> [0x80000410]:sw a1, 160(t0)<br>   |
|  61|[0x80002100]<br>0xFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                         |[0x8000041c]:srai a1, a0, 27<br> [0x80000420]:sw a1, 164(t0)<br>   |
|  62|[0x80002104]<br>0xFFFFFDFF|- rs1_val == -33554433<br>                                                                                                                                                                         |[0x8000042c]:srai a1, a0, 16<br> [0x80000430]:sw a1, 168(t0)<br>   |
|  63|[0x80002108]<br>0xFFFFDFFF|- rs1_val == -67108865<br>                                                                                                                                                                         |[0x8000043c]:srai a1, a0, 13<br> [0x80000440]:sw a1, 172(t0)<br>   |
|  64|[0x8000210c]<br>0xFEFFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                        |[0x8000044c]:srai a1, a0, 3<br> [0x80000450]:sw a1, 176(t0)<br>    |
|  65|[0x80002110]<br>0xFFFFEFFF|- rs1_val == -268435457<br>                                                                                                                                                                        |[0x8000045c]:srai a1, a0, 16<br> [0x80000460]:sw a1, 180(t0)<br>   |
|  66|[0x80002114]<br>0xFFDFFFFF|- rs1_val == -536870913<br> - imm_val == 8<br>                                                                                                                                                     |[0x8000046c]:srai a1, a0, 8<br> [0x80000470]:sw a1, 184(t0)<br>    |
|  67|[0x80002118]<br>0xFFFFDFFF|- rs1_val == -1073741825<br>                                                                                                                                                                       |[0x8000047c]:srai a1, a0, 17<br> [0x80000480]:sw a1, 188(t0)<br>   |
|  68|[0x8000211c]<br>0x15555555|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                                              |[0x8000048c]:srai a1, a0, 2<br> [0x80000490]:sw a1, 192(t0)<br>    |
|  69|[0x80002120]<br>0xFFFEAAAA|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                                                            |[0x8000049c]:srai a1, a0, 14<br> [0x800004a0]:sw a1, 196(t0)<br>   |
|  70|[0x80002124]<br>0x00000000|- rs1_val==5<br>                                                                                                                                                                                   |[0x800004a8]:srai a1, a0, 18<br> [0x800004ac]:sw a1, 200(t0)<br>   |
|  71|[0x80002128]<br>0x00000001|- rs1_val==1717986919<br>                                                                                                                                                                          |[0x800004b8]:srai a1, a0, 30<br> [0x800004bc]:sw a1, 204(t0)<br>   |
|  72|[0x8000212c]<br>0xFFFFFFFF|- rs1_val==-46339<br>                                                                                                                                                                              |[0x800004c8]:srai a1, a0, 23<br> [0x800004cc]:sw a1, 208(t0)<br>   |
|  73|[0x80002130]<br>0x00000000|- rs1_val==46341<br>                                                                                                                                                                               |[0x800004d8]:srai a1, a0, 19<br> [0x800004dc]:sw a1, 212(t0)<br>   |
|  74|[0x80002134]<br>0x00006666|- rs1_val==858993459<br>                                                                                                                                                                           |[0x800004e8]:srai a1, a0, 15<br> [0x800004ec]:sw a1, 216(t0)<br>   |
|  75|[0x80002138]<br>0x0CCCCCCC|- rs1_val==1717986918<br>                                                                                                                                                                          |[0x800004f8]:srai a1, a0, 3<br> [0x800004fc]:sw a1, 220(t0)<br>    |
|  76|[0x8000213c]<br>0xFFFFFFFF|- rs1_val==-46340<br>                                                                                                                                                                              |[0x80000508]:srai a1, a0, 16<br> [0x8000050c]:sw a1, 224(t0)<br>   |
|  77|[0x80002140]<br>0x00000000|- rs1_val==46340<br>                                                                                                                                                                               |[0x80000518]:srai a1, a0, 16<br> [0x8000051c]:sw a1, 228(t0)<br>   |
|  78|[0x80002144]<br>0x00000001|- rs1_val==1431655764<br>                                                                                                                                                                          |[0x80000528]:srai a1, a0, 30<br> [0x8000052c]:sw a1, 232(t0)<br>   |
|  79|[0x80002148]<br>0x00001999|- rs1_val==858993458<br>                                                                                                                                                                           |[0x80000538]:srai a1, a0, 17<br> [0x8000053c]:sw a1, 236(t0)<br>   |
|  80|[0x8000214c]<br>0x00033333|- rs1_val==1717986917<br>                                                                                                                                                                          |[0x80000548]:srai a1, a0, 13<br> [0x8000054c]:sw a1, 240(t0)<br>   |
|  81|[0x80002150]<br>0x000002D4|- rs1_val==46339<br>                                                                                                                                                                               |[0x80000558]:srai a1, a0, 6<br> [0x8000055c]:sw a1, 244(t0)<br>    |
|  82|[0x80002154]<br>0x0000000A|- rs1_val==1431655766<br>                                                                                                                                                                          |[0x80000568]:srai a1, a0, 27<br> [0x8000056c]:sw a1, 248(t0)<br>   |
|  83|[0x80002158]<br>0xFFFFFFF5|- rs1_val==-1431655765<br>                                                                                                                                                                         |[0x80000578]:srai a1, a0, 27<br> [0x8000057c]:sw a1, 252(t0)<br>   |
|  84|[0x8000215c]<br>0x00000000|- rs1_val==6<br>                                                                                                                                                                                   |[0x80000584]:srai a1, a0, 19<br> [0x80000588]:sw a1, 256(t0)<br>   |
|  85|[0x80002160]<br>0x00000006|- rs1_val==858993460<br>                                                                                                                                                                           |[0x80000594]:srai a1, a0, 27<br> [0x80000598]:sw a1, 260(t0)<br>   |
|  86|[0x80002164]<br>0x00000000|- rs1_val == 128<br>                                                                                                                                                                               |[0x800005a0]:srai a1, a0, 13<br> [0x800005a4]:sw a1, 264(t0)<br>   |
