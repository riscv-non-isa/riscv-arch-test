
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000520')]      |
| SIG_REGION                | [('0x80003204', '0x8000333c', '78 words')]      |
| COV_LABELS                | ori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ori-01.S/ori-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 78      |
| STAT1                     | 77      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000050c]:ori a1, a0, 128
      [0x80000510]:sw a1, 212(ra)
 -- Signature Address: 0x80003338 Data: 0x00000180
 -- Redundant Coverpoints hit by the op
      - opcode : ori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 128
      - rs1_val == 256






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

|s.no|        signature         |                                                                       coverpoints                                                                       |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFF8|- opcode : ori<br> - rs1 : x12<br> - rd : x16<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br>                             |[0x80000104]:ori a6, a2, 4088<br> [0x80000108]:sw a6, 0(s2)<br>     |
|   2|[0x80003208]<br>0xFFFFFDFF|- rs1 : x3<br> - rd : x3<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -513<br> - rs1_val == 134217728<br> |[0x80000110]:ori gp, gp, 3583<br> [0x80000114]:sw gp, 4(s2)<br>     |
|   3|[0x8000320c]<br>0x00000049|- rs1 : x20<br> - rd : x22<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 64<br>                                                                     |[0x8000011c]:ori s6, s4, 9<br> [0x80000120]:sw s6, 8(s2)<br>        |
|   4|[0x80003210]<br>0xFFFFFFFF|- rs1 : x2<br> - rd : x14<br> - rs1_val < 0 and imm_val > 0<br>                                                                                          |[0x80000128]:ori a4, sp, 1023<br> [0x8000012c]:sw a4, 12(s2)<br>    |
|   5|[0x80003214]<br>0xFFFFFFFB|- rs1 : x13<br> - rd : x10<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -5<br> - rs1_val == -2147483648<br>                                          |[0x80000134]:ori a0, a3, 4091<br> [0x80000138]:sw a0, 16(s2)<br>    |
|   6|[0x80003218]<br>0x000007FF|- rs1 : x23<br> - rd : x27<br> - imm_val == (2**(12-1)-1)<br> - rs1_val == 0<br> - imm_val == 2047<br>                                                   |[0x80000140]:ori s11, s7, 2047<br> [0x80000144]:sw s11, 20(s2)<br>  |
|   7|[0x8000321c]<br>0xFFFFFFFF|- rs1 : x26<br> - rd : x1<br> - imm_val == (-2**(12-1))<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -2048<br> - rs1_val == 2147483647<br>          |[0x80000150]:ori ra, s10, 2048<br> [0x80000154]:sw ra, 24(s2)<br>   |
|   8|[0x80003220]<br>0xFFFFFFEF|- rs1 : x7<br> - rd : x29<br> - rs1_val == 1<br> - imm_val == -17<br>                                                                                    |[0x8000015c]:ori t4, t2, 4079<br> [0x80000160]:sw t4, 28(s2)<br>    |
|   9|[0x80003224]<br>0xFFFFFFEF|- rs1 : x11<br> - rd : x28<br> - imm_val == 0<br> - rs1_val == -17<br>                                                                                   |[0x80000168]:ori t3, a1, 0<br> [0x8000016c]:sw t3, 32(s2)<br>       |
|  10|[0x80003228]<br>0xFFFFFFFB|- rs1 : x14<br> - rd : x11<br> - imm_val == 1<br>                                                                                                        |[0x80000174]:ori a1, a4, 1<br> [0x80000178]:sw a1, 36(s2)<br>       |
|  11|[0x8000322c]<br>0x00000002|- rs1 : x10<br> - rd : x31<br> - imm_val == 2<br> - rs1_val == 2<br>                                                                                     |[0x80000180]:ori t6, a0, 2<br> [0x80000184]:sw t6, 40(s2)<br>       |
|  12|[0x80003230]<br>0x00000000|- rs1 : x0<br> - rd : x23<br>                                                                                                                            |[0x8000018c]:ori s7, zero, 0<br> [0x80000190]:sw s7, 44(s2)<br>     |
|  13|[0x80003234]<br>0x0000000C|- rs1 : x28<br> - rd : x25<br> - imm_val == 4<br> - rs1_val == 8<br>                                                                                     |[0x80000198]:ori s9, t3, 4<br> [0x8000019c]:sw s9, 48(s2)<br>       |
|  14|[0x80003238]<br>0x00000014|- rs1 : x22<br> - rd : x15<br> - rs1_val == 16<br>                                                                                                       |[0x800001a4]:ori a5, s6, 4<br> [0x800001a8]:sw a5, 52(s2)<br>       |
|  15|[0x8000323c]<br>0xFFFFFFFB|- rs1 : x27<br> - rd : x20<br> - rs1_val == 32<br>                                                                                                       |[0x800001b0]:ori s4, s11, 4091<br> [0x800001b4]:sw s4, 56(s2)<br>   |
|  16|[0x80003240]<br>0xFFFFFEFF|- rs1 : x25<br> - rd : x17<br> - imm_val == -257<br> - rs1_val == 128<br>                                                                                |[0x800001bc]:ori a7, s9, 3839<br> [0x800001c0]:sw a7, 60(s2)<br>    |
|  17|[0x80003244]<br>0x00000000|- rs1 : x1<br> - rd : x0<br> - imm_val == 128<br> - rs1_val == 256<br>                                                                                   |[0x800001c8]:ori zero, ra, 128<br> [0x800001cc]:sw zero, 64(s2)<br> |
|  18|[0x80003248]<br>0x000003FF|- rs1 : x24<br> - rd : x26<br> - rs1_val == 512<br>                                                                                                      |[0x800001d4]:ori s10, s8, 1023<br> [0x800001d8]:sw s10, 68(s2)<br>  |
|  19|[0x8000324c]<br>0xFFFFFEAA|- rs1 : x9<br> - rd : x5<br> - imm_val == -1366<br> - rs1_val == 1024<br>                                                                                |[0x800001e0]:ori t0, s1, 2730<br> [0x800001e4]:sw t0, 72(s2)<br>    |
|  20|[0x80003250]<br>0x00000804|- rs1 : x31<br> - rd : x13<br> - rs1_val == 2048<br>                                                                                                     |[0x800001f0]:ori a3, t6, 4<br> [0x800001f4]:sw a3, 76(s2)<br>       |
|  21|[0x80003254]<br>0xFFFFFFF6|- rs1 : x15<br> - rd : x8<br> - rs1_val == 4096<br>                                                                                                      |[0x800001fc]:ori fp, a5, 4086<br> [0x80000200]:sw fp, 80(s2)<br>    |
|  22|[0x80003258]<br>0xFFFFFAAA|- rs1 : x17<br> - rd : x19<br> - rs1_val == 8192<br>                                                                                                     |[0x80000208]:ori s3, a7, 2730<br> [0x8000020c]:sw s3, 84(s2)<br>    |
|  23|[0x8000325c]<br>0x00004001|- rs1 : x16<br> - rd : x4<br> - rs1_val == 16384<br>                                                                                                     |[0x80000214]:ori tp, a6, 1<br> [0x80000218]:sw tp, 88(s2)<br>       |
|  24|[0x80003260]<br>0xFFFFFFF9|- rs1 : x19<br> - rd : x6<br> - rs1_val == 32768<br>                                                                                                     |[0x80000220]:ori t1, s3, 4089<br> [0x80000224]:sw t1, 92(s2)<br>    |
|  25|[0x80003264]<br>0x00010200|- rs1 : x4<br> - rd : x12<br> - imm_val == 512<br> - rs1_val == 65536<br>                                                                                |[0x80000234]:ori a2, tp, 512<br> [0x80000238]:sw a2, 0(ra)<br>      |
|  26|[0x80003268]<br>0x00020008|- rs1 : x18<br> - rd : x21<br> - imm_val == 8<br> - rs1_val == 131072<br>                                                                                |[0x80000240]:ori s5, s2, 8<br> [0x80000244]:sw s5, 4(ra)<br>        |
|  27|[0x8000326c]<br>0xFFFFFFFC|- rs1 : x6<br> - rd : x24<br> - rs1_val == 262144<br>                                                                                                    |[0x8000024c]:ori s8, t1, 4092<br> [0x80000250]:sw s8, 8(ra)<br>     |
|  28|[0x80003270]<br>0xFFFFF800|- rs1 : x5<br> - rd : x30<br> - rs1_val == 524288<br>                                                                                                    |[0x80000258]:ori t5, t0, 2048<br> [0x8000025c]:sw t5, 12(ra)<br>    |
|  29|[0x80003274]<br>0x00100009|- rs1 : x8<br> - rd : x2<br> - rs1_val == 1048576<br>                                                                                                    |[0x80000264]:ori sp, fp, 9<br> [0x80000268]:sw sp, 16(ra)<br>       |
|  30|[0x80003278]<br>0x00200007|- rs1 : x30<br> - rd : x18<br> - rs1_val == 2097152<br>                                                                                                  |[0x80000270]:ori s2, t5, 7<br> [0x80000274]:sw s2, 20(ra)<br>       |
|  31|[0x8000327c]<br>0xFFFFFFDF|- rs1 : x29<br> - rd : x9<br> - imm_val == -33<br> - rs1_val == 4194304<br>                                                                              |[0x8000027c]:ori s1, t4, 4063<br> [0x80000280]:sw s1, 24(ra)<br>    |
|  32|[0x80003280]<br>0xFFFFF800|- rs1 : x21<br> - rd : x7<br> - rs1_val == 8388608<br>                                                                                                   |[0x80000288]:ori t2, s5, 2048<br> [0x8000028c]:sw t2, 28(ra)<br>    |
|  33|[0x80003284]<br>0xFFFFFEFF|- rs1_val == 16777216<br>                                                                                                                                |[0x80000294]:ori a1, a0, 3839<br> [0x80000298]:sw a1, 32(ra)<br>    |
|  34|[0x80003288]<br>0xFFFFFFFB|- rs1_val == 33554432<br>                                                                                                                                |[0x800002a0]:ori a1, a0, 4091<br> [0x800002a4]:sw a1, 36(ra)<br>    |
|  35|[0x8000328c]<br>0x04000002|- rs1_val == 67108864<br>                                                                                                                                |[0x800002ac]:ori a1, a0, 2<br> [0x800002b0]:sw a1, 40(ra)<br>       |
|  36|[0x80003290]<br>0xFFFFFBFF|- imm_val == -1025<br> - rs1_val == 268435456<br>                                                                                                        |[0x800002b8]:ori a1, a0, 3071<br> [0x800002bc]:sw a1, 44(ra)<br>    |
|  37|[0x80003294]<br>0x20000003|- rs1_val == 536870912<br>                                                                                                                               |[0x800002c4]:ori a1, a0, 3<br> [0x800002c8]:sw a1, 48(ra)<br>       |
|  38|[0x80003298]<br>0xFFFFFF7F|- imm_val == -129<br> - rs1_val == 1073741824<br>                                                                                                        |[0x800002d0]:ori a1, a0, 3967<br> [0x800002d4]:sw a1, 52(ra)<br>    |
|  39|[0x8000329c]<br>0xFFFFFFFF|- imm_val == 1365<br> - rs1_val == -2<br>                                                                                                                |[0x800002dc]:ori a1, a0, 1365<br> [0x800002e0]:sw a1, 56(ra)<br>    |
|  40|[0x800032a0]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                      |[0x800002e8]:ori a1, a0, 4063<br> [0x800002ec]:sw a1, 60(ra)<br>    |
|  41|[0x800032a4]<br>0xFFFFFFFB|- rs1_val == -5<br>                                                                                                                                      |[0x800002f4]:ori a1, a0, 3<br> [0x800002f8]:sw a1, 64(ra)<br>       |
|  42|[0x800032a8]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                      |[0x80000300]:ori a1, a0, 3071<br> [0x80000304]:sw a1, 68(ra)<br>    |
|  43|[0x800032ac]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                     |[0x8000030c]:ori a1, a0, 3583<br> [0x80000310]:sw a1, 72(ra)<br>    |
|  44|[0x800032b0]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                                     |[0x80000318]:ori a1, a0, 0<br> [0x8000031c]:sw a1, 76(ra)<br>       |
|  45|[0x800032b4]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                    |[0x80000324]:ori a1, a0, 4088<br> [0x80000328]:sw a1, 80(ra)<br>    |
|  46|[0x800032b8]<br>0xFFFFFEFF|- rs1_val == -257<br>                                                                                                                                    |[0x80000330]:ori a1, a0, 4<br> [0x80000334]:sw a1, 84(ra)<br>       |
|  47|[0x800032bc]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                                                                    |[0x8000033c]:ori a1, a0, 3072<br> [0x80000340]:sw a1, 88(ra)<br>    |
|  48|[0x800032c0]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                   |[0x80000348]:ori a1, a0, 3967<br> [0x8000034c]:sw a1, 92(ra)<br>    |
|  49|[0x800032c4]<br>0xFFF7FFFF|- imm_val == 64<br> - rs1_val == -524289<br>                                                                                                             |[0x80000358]:ori a1, a0, 64<br> [0x8000035c]:sw a1, 96(ra)<br>      |
|  50|[0x800032c8]<br>0xFFEFFFFF|- imm_val == 32<br> - rs1_val == -1048577<br>                                                                                                            |[0x80000368]:ori a1, a0, 32<br> [0x8000036c]:sw a1, 100(ra)<br>     |
|  51|[0x800032cc]<br>0xFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                |[0x80000378]:ori a1, a0, 512<br> [0x8000037c]:sw a1, 104(ra)<br>    |
|  52|[0x800032d0]<br>0xFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                |[0x80000388]:ori a1, a0, 7<br> [0x8000038c]:sw a1, 108(ra)<br>      |
|  53|[0x800032d4]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                |[0x80000398]:ori a1, a0, 1<br> [0x8000039c]:sw a1, 112(ra)<br>      |
|  54|[0x800032d8]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                               |[0x800003a8]:ori a1, a0, 64<br> [0x800003ac]:sw a1, 116(ra)<br>     |
|  55|[0x800032dc]<br>0xFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                               |[0x800003b8]:ori a1, a0, 3072<br> [0x800003bc]:sw a1, 120(ra)<br>   |
|  56|[0x800032e0]<br>0xFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                               |[0x800003c8]:ori a1, a0, 1<br> [0x800003cc]:sw a1, 124(ra)<br>      |
|  57|[0x800032e4]<br>0xF7FFFFFF|- rs1_val == -134217729<br>                                                                                                                              |[0x800003d8]:ori a1, a0, 8<br> [0x800003dc]:sw a1, 128(ra)<br>      |
|  58|[0x800032e8]<br>0xEFFFFFFF|- imm_val == 16<br> - rs1_val == -268435457<br>                                                                                                          |[0x800003e8]:ori a1, a0, 16<br> [0x800003ec]:sw a1, 132(ra)<br>     |
|  59|[0x800032ec]<br>0xFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                              |[0x800003f8]:ori a1, a0, 3071<br> [0x800003fc]:sw a1, 136(ra)<br>   |
|  60|[0x800032f0]<br>0xBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                             |[0x80000408]:ori a1, a0, 1023<br> [0x8000040c]:sw a1, 140(ra)<br>   |
|  61|[0x800032f4]<br>0x55555555|- rs1_val == 1431655765<br>                                                                                                                              |[0x80000418]:ori a1, a0, 16<br> [0x8000041c]:sw a1, 144(ra)<br>     |
|  62|[0x800032f8]<br>0xFFFFFFFF|- imm_val == -65<br>                                                                                                                                     |[0x80000428]:ori a1, a0, 4031<br> [0x8000042c]:sw a1, 148(ra)<br>   |
|  63|[0x800032fc]<br>0xFFFFFFFF|- imm_val == -2<br>                                                                                                                                      |[0x80000434]:ori a1, a0, 4094<br> [0x80000438]:sw a1, 152(ra)<br>   |
|  64|[0x80003300]<br>0xFFFFDFFF|- rs1_val == -8193<br>                                                                                                                                   |[0x80000444]:ori a1, a0, 2<br> [0x80000448]:sw a1, 156(ra)<br>      |
|  65|[0x80003304]<br>0xFFFFFFFD|- imm_val == -3<br>                                                                                                                                      |[0x80000450]:ori a1, a0, 4093<br> [0x80000454]:sw a1, 160(ra)<br>   |
|  66|[0x80003308]<br>0xAAAAAAAB|- rs1_val == -1431655766<br>                                                                                                                             |[0x80000460]:ori a1, a0, 1<br> [0x80000464]:sw a1, 164(ra)<br>      |
|  67|[0x8000330c]<br>0xFFFFFFFF|- imm_val == -9<br>                                                                                                                                      |[0x8000046c]:ori a1, a0, 4087<br> [0x80000470]:sw a1, 168(ra)<br>   |
|  68|[0x80003310]<br>0x00040100|- imm_val == 256<br>                                                                                                                                     |[0x80000478]:ori a1, a0, 256<br> [0x8000047c]:sw a1, 172(ra)<br>    |
|  69|[0x80003314]<br>0x00008400|- imm_val == 1024<br>                                                                                                                                    |[0x80000484]:ori a1, a0, 1024<br> [0x80000488]:sw a1, 176(ra)<br>   |
|  70|[0x80003318]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                   |[0x80000494]:ori a1, a0, 4086<br> [0x80000498]:sw a1, 180(ra)<br>   |
|  71|[0x8000331c]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                   |[0x800004a4]:ori a1, a0, 4090<br> [0x800004a8]:sw a1, 184(ra)<br>   |
|  72|[0x80003320]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                  |[0x800004b4]:ori a1, a0, 4079<br> [0x800004b8]:sw a1, 188(ra)<br>   |
|  73|[0x80003324]<br>0xFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                  |[0x800004c4]:ori a1, a0, 3839<br> [0x800004c8]:sw a1, 192(ra)<br>   |
|  74|[0x80003328]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                  |[0x800004d4]:ori a1, a0, 4086<br> [0x800004d8]:sw a1, 196(ra)<br>   |
|  75|[0x8000332c]<br>0xFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                 |[0x800004e4]:ori a1, a0, 2048<br> [0x800004e8]:sw a1, 200(ra)<br>   |
|  76|[0x80003330]<br>0xFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                 |[0x800004f4]:ori a1, a0, 4086<br> [0x800004f8]:sw a1, 204(ra)<br>   |
|  77|[0x80003334]<br>0x00000004|- rs1_val == 4<br>                                                                                                                                       |[0x80000500]:ori a1, a0, 0<br> [0x80000504]:sw a1, 208(ra)<br>      |
