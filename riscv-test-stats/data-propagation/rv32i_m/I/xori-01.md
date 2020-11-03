
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION                | [('0x80003204', '0x8000333c', '78 words')]      |
| COV_LABELS                | xori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xori-01.S/xori-01.S    |
| Total Number of coverpoints| 171     |
| Total Signature Updates   | 75      |
| Total Coverpoints Covered | 171      |
| STAT1                     | 74      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e8]:xori a1, a0, 9
      [0x800004ec]:sw a1, 204(ra)
 -- Signature Address: 0x80003338 Data: 0x00100009
 -- Redundant Coverpoints hit by the op
      - opcode : xori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - rs1_val == 1048576






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

|s.no|        signature         |                                                                  coverpoints                                                                  |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : xori<br> - rs1 : x7<br> - rd : x13<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br>                   |[0x80000104]:xori a3, t2, 4088<br> [0x80000108]:sw a3, 0(gp)<br>    |
|   2|[0x80003214]<br>0x10000001|- rs1 : x17<br> - rd : x17<br> - rs1 == rd<br> - rs1_val != imm_val<br> - imm_val == -2<br> - rs1_val == -268435457<br>                        |[0x80000114]:xori a7, a7, 4094<br> [0x80000118]:sw a7, 4(gp)<br>    |
|   3|[0x80003218]<br>0x00000007|- rs1 : x6<br> - rd : x22<br> - imm_val == 1<br> - rs1_val > 0 and imm_val > 0<br>                                                             |[0x80000120]:xori s6, t1, 1<br> [0x80000124]:sw s6, 8(gp)<br>       |
|   4|[0x8000321c]<br>0xFFFFFFEB|- rs1 : x1<br> - rd : x11<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -17<br> - rs1_val == 4<br>                                        |[0x8000012c]:xori a1, ra, 4079<br> [0x80000130]:sw a1, 12(gp)<br>   |
|   5|[0x80003220]<br>0x00000009|- rs1 : x0<br> - rd : x5<br> - rs1_val == 0<br>                                                                                                |[0x8000013c]:xori t0, zero, 9<br> [0x80000140]:sw t0, 16(gp)<br>    |
|   6|[0x80003224]<br>0x00000008|- rs1 : x4<br> - rd : x10<br> - imm_val == 8<br>                                                                                               |[0x80000148]:xori a0, tp, 8<br> [0x8000014c]:sw a0, 20(gp)<br>      |
|   7|[0x80003228]<br>0x80000200|- rs1 : x12<br> - rd : x30<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -513<br> - rs1_val == 2147483647<br>                              |[0x80000158]:xori t5, a2, 3583<br> [0x8000015c]:sw t5, 24(gp)<br>   |
|   8|[0x8000322c]<br>0xFFFFFFBE|- rs1 : x20<br> - rd : x12<br> - rs1_val == 1<br> - imm_val == -65<br>                                                                         |[0x80000164]:xori a2, s4, 4031<br> [0x80000168]:sw a2, 28(gp)<br>   |
|   9|[0x80003230]<br>0xFFFFF820|- rs1 : x5<br> - rd : x31<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == 32<br>                                         |[0x80000170]:xori t6, t0, 2048<br> [0x80000174]:sw t6, 32(gp)<br>   |
|  10|[0x80003234]<br>0x00080000|- rs1 : x10<br> - rd : x26<br> - imm_val == 0<br> - rs1_val == 524288<br>                                                                      |[0x8000017c]:xori s10, a0, 0<br> [0x80000180]:sw s10, 36(gp)<br>    |
|  11|[0x80003238]<br>0xFFF7F800|- rs1 : x26<br> - rd : x15<br> - imm_val == (2**(12-1)-1)<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 2047<br> - rs1_val == -524289<br> |[0x8000018c]:xori a5, s10, 2047<br> [0x80000190]:sw a5, 40(gp)<br>  |
|  12|[0x8000323c]<br>0x00000042|- rs1 : x8<br> - rd : x19<br> - imm_val == 64<br> - rs1_val == 2<br>                                                                           |[0x80000198]:xori s3, fp, 64<br> [0x8000019c]:sw s3, 44(gp)<br>     |
|  13|[0x80003240]<br>0xFFFFFFD7|- rs1 : x13<br> - rd : x27<br> - imm_val == -33<br> - rs1_val == 8<br>                                                                         |[0x800001a4]:xori s11, a3, 4063<br> [0x800001a8]:sw s11, 48(gp)<br> |
|  14|[0x80003244]<br>0xFFFFFF6F|- rs1 : x16<br> - rd : x14<br> - imm_val == -129<br> - rs1_val == 16<br>                                                                       |[0x800001b0]:xori a4, a6, 3967<br> [0x800001b4]:sw a4, 52(gp)<br>   |
|  15|[0x80003248]<br>0x00000240|- rs1 : x15<br> - rd : x16<br> - imm_val == 512<br> - rs1_val == 64<br>                                                                        |[0x800001bc]:xori a6, a5, 512<br> [0x800001c0]:sw a6, 56(gp)<br>    |
|  16|[0x8000324c]<br>0xFFFFFF6F|- rs1 : x9<br> - rd : x4<br> - rs1_val == 128<br>                                                                                              |[0x800001c8]:xori tp, s1, 4079<br> [0x800001cc]:sw tp, 60(gp)<br>   |
|  17|[0x80003250]<br>0xFFFFFEFC|- rs1 : x31<br> - rd : x1<br> - rs1_val == 256<br>                                                                                             |[0x800001d4]:xori ra, t6, 4092<br> [0x800001d8]:sw ra, 64(gp)<br>   |
|  18|[0x80003254]<br>0x00000207|- rs1 : x22<br> - rd : x24<br> - rs1_val == 512<br>                                                                                            |[0x800001e0]:xori s8, s6, 7<br> [0x800001e4]:sw s8, 68(gp)<br>      |
|  19|[0x80003258]<br>0x00000600|- rs1 : x28<br> - rd : x21<br> - rs1_val == 1024<br>                                                                                           |[0x800001ec]:xori s5, t3, 512<br> [0x800001f0]:sw s5, 72(gp)<br>    |
|  20|[0x8000325c]<br>0xFFFFF7F6|- rs1 : x24<br> - rd : x7<br> - rs1_val == 2048<br>                                                                                            |[0x800001fc]:xori t2, s8, 4086<br> [0x80000200]:sw t2, 76(gp)<br>   |
|  21|[0x80003260]<br>0xFFFFEFF8|- rs1 : x25<br> - rd : x29<br> - rs1_val == 4096<br>                                                                                           |[0x80000208]:xori t4, s9, 4088<br> [0x8000020c]:sw t4, 80(gp)<br>   |
|  22|[0x80003264]<br>0x00002400|- rs1 : x11<br> - rd : x28<br> - imm_val == 1024<br> - rs1_val == 8192<br>                                                                     |[0x80000214]:xori t3, a1, 1024<br> [0x80000218]:sw t3, 84(gp)<br>   |
|  23|[0x80003268]<br>0xFFFFBFF9|- rs1 : x2<br> - rd : x9<br> - rs1_val == 16384<br>                                                                                            |[0x80000220]:xori s1, sp, 4089<br> [0x80000224]:sw s1, 88(gp)<br>   |
|  24|[0x8000326c]<br>0x000083FF|- rs1 : x21<br> - rd : x18<br> - rs1_val == 32768<br>                                                                                          |[0x80000234]:xori s2, s5, 1023<br> [0x80000238]:sw s2, 0(ra)<br>    |
|  25|[0x80003270]<br>0x00010001|- rs1 : x19<br> - rd : x23<br> - rs1_val == 65536<br>                                                                                          |[0x80000240]:xori s7, s3, 1<br> [0x80000244]:sw s7, 4(ra)<br>       |
|  26|[0x80003274]<br>0xFFFDFFF8|- rs1 : x14<br> - rd : x8<br> - rs1_val == 131072<br>                                                                                          |[0x8000024c]:xori fp, a4, 4088<br> [0x80000250]:sw fp, 8(ra)<br>    |
|  27|[0x80003278]<br>0xFFFBFEFF|- rs1 : x30<br> - rd : x6<br> - imm_val == -257<br> - rs1_val == 262144<br>                                                                    |[0x80000258]:xori t1, t5, 3839<br> [0x8000025c]:sw t1, 12(ra)<br>   |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x18<br> - rd : x0<br> - rs1_val == 1048576<br>                                                                                         |[0x80000264]:xori zero, s2, 9<br> [0x80000268]:sw zero, 16(ra)<br>  |
|  29|[0x80003280]<br>0x00200001|- rs1 : x23<br> - rd : x25<br> - rs1_val == 2097152<br>                                                                                        |[0x80000270]:xori s9, s7, 1<br> [0x80000274]:sw s9, 20(ra)<br>      |
|  30|[0x80003284]<br>0x004007FF|- rs1 : x29<br> - rd : x3<br> - rs1_val == 4194304<br>                                                                                         |[0x8000027c]:xori gp, t4, 2047<br> [0x80000280]:sw gp, 24(ra)<br>   |
|  31|[0x80003288]<br>0xFF7FFAAA|- rs1 : x27<br> - rd : x2<br> - imm_val == -1366<br> - rs1_val == 8388608<br>                                                                  |[0x80000288]:xori sp, s11, 2730<br> [0x8000028c]:sw sp, 28(ra)<br>  |
|  32|[0x8000328c]<br>0xFEFFFFFF|- rs1 : x3<br> - rd : x20<br> - rs1_val == 16777216<br>                                                                                        |[0x80000294]:xori s4, gp, 4095<br> [0x80000298]:sw s4, 32(ra)<br>   |
|  33|[0x80003290]<br>0x02000005|- rs1_val == 33554432<br>                                                                                                                      |[0x800002a0]:xori a1, a0, 5<br> [0x800002a4]:sw a1, 36(ra)<br>      |
|  34|[0x80003294]<br>0xFBFFFFFF|- rs1_val == 67108864<br>                                                                                                                      |[0x800002ac]:xori a1, a0, 4095<br> [0x800002b0]:sw a1, 40(ra)<br>   |
|  35|[0x80003298]<br>0x08000020|- imm_val == 32<br> - rs1_val == 134217728<br>                                                                                                 |[0x800002b8]:xori a1, a0, 32<br> [0x800002bc]:sw a1, 44(ra)<br>     |
|  36|[0x8000329c]<br>0xEFFFFAAA|- rs1_val == 268435456<br>                                                                                                                     |[0x800002c4]:xori a1, a0, 2730<br> [0x800002c8]:sw a1, 48(ra)<br>   |
|  37|[0x800032a0]<br>0x20000001|- rs1_val == 536870912<br>                                                                                                                     |[0x800002d0]:xori a1, a0, 1<br> [0x800002d4]:sw a1, 52(ra)<br>      |
|  38|[0x800032a4]<br>0xBFFFFC00|- rs1_val == 1073741824<br>                                                                                                                    |[0x800002dc]:xori a1, a0, 3072<br> [0x800002e0]:sw a1, 56(ra)<br>   |
|  39|[0x800032a8]<br>0x00000081|- rs1_val == -2<br>                                                                                                                            |[0x800002e8]:xori a1, a0, 3967<br> [0x800002ec]:sw a1, 60(ra)<br>   |
|  40|[0x800032ac]<br>0xFFFFFFBD|- rs1_val == -3<br>                                                                                                                            |[0x800002f4]:xori a1, a0, 64<br> [0x800002f8]:sw a1, 64(ra)<br>     |
|  41|[0x800032b0]<br>0xFFFFFFEB|- imm_val == 16<br> - rs1_val == -5<br>                                                                                                        |[0x80000300]:xori a1, a0, 16<br> [0x80000304]:sw a1, 68(ra)<br>     |
|  42|[0x800032b4]<br>0xFFFFFFF1|- rs1_val == -9<br>                                                                                                                            |[0x8000030c]:xori a1, a0, 6<br> [0x80000310]:sw a1, 72(ra)<br>      |
|  43|[0x800032b8]<br>0x00000017|- rs1_val == -17<br>                                                                                                                           |[0x80000318]:xori a1, a0, 4088<br> [0x8000031c]:sw a1, 76(ra)<br>   |
|  44|[0x800032bc]<br>0x00000028|- imm_val == -9<br> - rs1_val == -33<br>                                                                                                       |[0x80000324]:xori a1, a0, 4087<br> [0x80000328]:sw a1, 80(ra)<br>   |
|  45|[0x800032c0]<br>0x00000060|- rs1_val == -65<br>                                                                                                                           |[0x80000330]:xori a1, a0, 4063<br> [0x80000334]:sw a1, 84(ra)<br>   |
|  46|[0x800032c4]<br>0x00000280|- rs1_val == -129<br>                                                                                                                          |[0x8000033c]:xori a1, a0, 3583<br> [0x80000340]:sw a1, 88(ra)<br>   |
|  47|[0x800032c8]<br>0xFFEFFAAA|- imm_val == 1365<br> - rs1_val == -1048577<br>                                                                                                |[0x8000034c]:xori a1, a0, 1365<br> [0x80000350]:sw a1, 92(ra)<br>   |
|  48|[0x800032cc]<br>0xFFDFFFF7|- rs1_val == -2097153<br>                                                                                                                      |[0x8000035c]:xori a1, a0, 8<br> [0x80000360]:sw a1, 96(ra)<br>      |
|  49|[0x800032d0]<br>0x00400020|- rs1_val == -4194305<br>                                                                                                                      |[0x8000036c]:xori a1, a0, 4063<br> [0x80000370]:sw a1, 100(ra)<br>  |
|  50|[0x800032d4]<br>0x00800002|- imm_val == -3<br> - rs1_val == -8388609<br>                                                                                                  |[0x8000037c]:xori a1, a0, 4093<br> [0x80000380]:sw a1, 104(ra)<br>  |
|  51|[0x800032d8]<br>0xFEFFFFFC|- rs1_val == -16777217<br>                                                                                                                     |[0x8000038c]:xori a1, a0, 3<br> [0x80000390]:sw a1, 108(ra)<br>     |
|  52|[0x800032dc]<br>0x02000002|- rs1_val == -33554433<br>                                                                                                                     |[0x8000039c]:xori a1, a0, 4093<br> [0x800003a0]:sw a1, 112(ra)<br>  |
|  53|[0x800032e0]<br>0xFBFFFC00|- rs1_val == -67108865<br>                                                                                                                     |[0x800003ac]:xori a1, a0, 1023<br> [0x800003b0]:sw a1, 116(ra)<br>  |
|  54|[0x800032e4]<br>0xF7FFFFFE|- rs1_val == -134217729<br>                                                                                                                    |[0x800003bc]:xori a1, a0, 1<br> [0x800003c0]:sw a1, 120(ra)<br>     |
|  55|[0x800032e8]<br>0x20000555|- rs1_val == -536870913<br>                                                                                                                    |[0x800003cc]:xori a1, a0, 2730<br> [0x800003d0]:sw a1, 124(ra)<br>  |
|  56|[0x800032ec]<br>0x40000080|- rs1_val == -1073741825<br>                                                                                                                   |[0x800003dc]:xori a1, a0, 3967<br> [0x800003e0]:sw a1, 128(ra)<br>  |
|  57|[0x800032f0]<br>0xAAAAAEAA|- imm_val == -1025<br> - rs1_val == 1431655765<br>                                                                                             |[0x800003ec]:xori a1, a0, 3071<br> [0x800003f0]:sw a1, 132(ra)<br>  |
|  58|[0x800032f4]<br>0x55555575|- rs1_val == -1431655766<br>                                                                                                                   |[0x800003fc]:xori a1, a0, 4063<br> [0x80000400]:sw a1, 136(ra)<br>  |
|  59|[0x800032f8]<br>0x00000001|- imm_val == 2<br>                                                                                                                             |[0x80000408]:xori a1, a0, 2<br> [0x8000040c]:sw a1, 140(ra)<br>     |
|  60|[0x800032fc]<br>0xFFFFDFEF|- rs1_val == -8193<br>                                                                                                                         |[0x80000418]:xori a1, a0, 16<br> [0x8000041c]:sw a1, 144(ra)<br>    |
|  61|[0x80003300]<br>0xFFFFEDFF|- rs1_val == -4097<br>                                                                                                                         |[0x80000428]:xori a1, a0, 512<br> [0x8000042c]:sw a1, 148(ra)<br>   |
|  62|[0x80003304]<br>0x00008001|- rs1_val == -32769<br>                                                                                                                        |[0x80000438]:xori a1, a0, 4094<br> [0x8000043c]:sw a1, 152(ra)<br>  |
|  63|[0x80003308]<br>0xFFFFBFFB|- imm_val == 4<br> - rs1_val == -16385<br>                                                                                                     |[0x80000448]:xori a1, a0, 4<br> [0x8000044c]:sw a1, 156(ra)<br>     |
|  64|[0x8000330c]<br>0x02000080|- imm_val == 128<br>                                                                                                                           |[0x80000454]:xori a1, a0, 128<br> [0x80000458]:sw a1, 160(ra)<br>   |
|  65|[0x80003310]<br>0xFFFFFEFA|- rs1_val == -257<br>                                                                                                                          |[0x80000460]:xori a1, a0, 5<br> [0x80000464]:sw a1, 164(ra)<br>     |
|  66|[0x80003314]<br>0xFFFFFBF8|- rs1_val == -1025<br>                                                                                                                         |[0x8000046c]:xori a1, a0, 7<br> [0x80000470]:sw a1, 168(ra)<br>     |
|  67|[0x80003318]<br>0x00000103|- imm_val == 256<br>                                                                                                                           |[0x80000478]:xori a1, a0, 256<br> [0x8000047c]:sw a1, 172(ra)<br>   |
|  68|[0x8000331c]<br>0x00000208|- rs1_val == -513<br>                                                                                                                          |[0x80000484]:xori a1, a0, 4087<br> [0x80000488]:sw a1, 176(ra)<br>  |
|  69|[0x80003320]<br>0xFFFFF7DF|- rs1_val == -2049<br>                                                                                                                         |[0x80000494]:xori a1, a0, 32<br> [0x80000498]:sw a1, 180(ra)<br>    |
|  70|[0x80003324]<br>0x00000084|- imm_val == -5<br>                                                                                                                            |[0x800004a0]:xori a1, a0, 4091<br> [0x800004a4]:sw a1, 184(ra)<br>  |
|  71|[0x80003328]<br>0xFFFEFFFB|- rs1_val == -65537<br>                                                                                                                        |[0x800004b0]:xori a1, a0, 4<br> [0x800004b4]:sw a1, 188(ra)<br>     |
|  72|[0x8000332c]<br>0xFFFDF800|- rs1_val == -131073<br>                                                                                                                       |[0x800004c0]:xori a1, a0, 2047<br> [0x800004c4]:sw a1, 192(ra)<br>  |
|  73|[0x80003330]<br>0x00040010|- rs1_val == -262145<br>                                                                                                                       |[0x800004d0]:xori a1, a0, 4079<br> [0x800004d4]:sw a1, 196(ra)<br>  |
|  74|[0x80003334]<br>0x80000009|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                   |[0x800004dc]:xori a1, a0, 9<br> [0x800004e0]:sw a1, 200(ra)<br>     |
