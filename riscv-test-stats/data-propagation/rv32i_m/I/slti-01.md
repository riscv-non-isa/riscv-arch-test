
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
| COV_LABELS                | slti      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slti-01.S/slti-01.S    |
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
      [0x80000510]:slti a1, a0, 4087
      [0x80000514]:sw a1, 236(gp)
 -- Signature Address: 0x80003338 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slti
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -9
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

|s.no|        signature         |                                                         coverpoints                                                          |                                 code                                 |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : slti<br> - rs1 : x25<br> - rd : x25<br> - rs1 == rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> |[0x80000104]:slti s9, s9, 9<br> [0x80000108]:sw s9, 0(fp)<br>         |
|   2|[0x80003208]<br>0x00000001|- rs1 : x2<br> - rd : x16<br> - rs1 != rd<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -9<br>  |[0x80000110]:slti a6, sp, 4089<br> [0x80000114]:sw a6, 4(fp)<br>      |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x1<br> - rd : x28<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -2<br> - rs1_val == 2097152<br>                  |[0x8000011c]:slti t3, ra, 4094<br> [0x80000120]:sw t3, 8(fp)<br>      |
|   4|[0x80003210]<br>0x00000001|- rs1 : x3<br> - rd : x13<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 16<br> - rs1_val == -4097<br>                    |[0x8000012c]:slti a3, gp, 16<br> [0x80000130]:sw a3, 12(fp)<br>       |
|   5|[0x80003214]<br>0x00000001|- rs1 : x17<br> - rd : x5<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                    |[0x80000138]:slti t0, a7, 4092<br> [0x8000013c]:sw t0, 16(fp)<br>     |
|   6|[0x80003218]<br>0x00000001|- rs1 : x10<br> - rd : x24<br> - rs1_val == 0<br> - imm_val == 32<br>                                                         |[0x80000144]:slti s8, a0, 32<br> [0x80000148]:sw s8, 20(fp)<br>       |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x14<br> - rd : x31<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                   |[0x80000154]:slti t6, a4, 5<br> [0x80000158]:sw t6, 24(fp)<br>        |
|   8|[0x80003220]<br>0x00000000|- rs1 : x20<br> - rd : x7<br> - rs1_val == 1<br> - imm_val == -513<br>                                                        |[0x80000160]:slti t2, s4, 3583<br> [0x80000164]:sw t2, 28(fp)<br>     |
|   9|[0x80003224]<br>0x00000000|- rs1 : x22<br> - rd : x26<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                                           |[0x8000016c]:slti s10, s6, 2048<br> [0x80000170]:sw s10, 32(fp)<br>   |
|  10|[0x80003228]<br>0x00000001|- rs1 : x15<br> - rd : x14<br> - imm_val == 0<br> - rs1_val == -2<br>                                                         |[0x80000178]:slti a4, a5, 0<br> [0x8000017c]:sw a4, 36(fp)<br>        |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x19<br> - rd : x15<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == 134217728<br>                |[0x80000184]:slti a5, s3, 2047<br> [0x80000188]:sw a5, 40(fp)<br>     |
|  12|[0x80003230]<br>0x00000001|- rs1 : x18<br> - rd : x10<br> - imm_val == 1<br> - rs1_val == -33554433<br>                                                  |[0x80000194]:slti a0, s2, 1<br> [0x80000198]:sw a0, 44(fp)<br>        |
|  13|[0x80003234]<br>0x00000001|- rs1 : x27<br> - rd : x23<br> - imm_val == 64<br> - rs1_val == 2<br>                                                         |[0x800001a0]:slti s7, s11, 64<br> [0x800001a4]:sw s7, 48(fp)<br>      |
|  14|[0x80003238]<br>0x00000000|- rs1 : x28<br> - rd : x6<br> - rs1_val == 4<br>                                                                              |[0x800001ac]:slti t1, t3, 0<br> [0x800001b0]:sw t1, 52(fp)<br>        |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x26<br> - rd : x9<br> - rs1_val == 8<br>                                                                              |[0x800001b8]:slti s1, s10, 2048<br> [0x800001bc]:sw s1, 56(fp)<br>    |
|  16|[0x80003240]<br>0x00000000|- rs1 : x29<br> - rd : x4<br> - imm_val == -257<br> - rs1_val == 16<br>                                                       |[0x800001c4]:slti tp, t4, 3839<br> [0x800001c8]:sw tp, 60(fp)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x30<br> - rd : x3<br> - rs1_val == 32<br>                                                                             |[0x800001d0]:slti gp, t5, 3583<br> [0x800001d4]:sw gp, 64(fp)<br>     |
|  18|[0x80003248]<br>0x00000001|- rs1 : x23<br> - rd : x12<br> - rs1_val == 64<br>                                                                            |[0x800001dc]:slti a2, s7, 2047<br> [0x800001e0]:sw a2, 68(fp)<br>     |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x24<br> - rd : x11<br> - rs1_val == 128<br>                                                                           |[0x800001f0]:slti a1, s8, 3583<br> [0x800001f4]:sw a1, 0(gp)<br>      |
|  20|[0x80003250]<br>0x00000000|- rs1 : x5<br> - rd : x2<br> - rs1_val == 256<br>                                                                             |[0x800001fc]:slti sp, t0, 3583<br> [0x80000200]:sw sp, 4(gp)<br>      |
|  21|[0x80003254]<br>0x00000000|- rs1 : x11<br> - rd : x22<br> - rs1_val == 512<br>                                                                           |[0x80000208]:slti s6, a1, 16<br> [0x8000020c]:sw s6, 8(gp)<br>        |
|  22|[0x80003258]<br>0x00000000|- rs1 : x9<br> - rd : x20<br> - imm_val == -3<br> - rs1_val == 1024<br>                                                       |[0x80000214]:slti s4, s1, 4093<br> [0x80000218]:sw s4, 12(gp)<br>     |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x21<br> - rd : x18<br> - rs1_val == 2048<br>                                                                          |[0x80000224]:slti s2, s5, 2048<br> [0x80000228]:sw s2, 16(gp)<br>     |
|  24|[0x80003260]<br>0x00000000|- rs1 : x7<br> - rd : x30<br> - imm_val == -129<br> - rs1_val == 4096<br>                                                     |[0x80000230]:slti t5, t2, 3967<br> [0x80000234]:sw t5, 20(gp)<br>     |
|  25|[0x80003264]<br>0x00000000|- rs1 : x31<br> - rd : x21<br> - imm_val == 2<br> - rs1_val == 8192<br>                                                       |[0x8000023c]:slti s5, t6, 2<br> [0x80000240]:sw s5, 24(gp)<br>        |
|  26|[0x80003268]<br>0x00000000|- rs1 : x0<br> - rd : x29<br>                                                                                                 |[0x8000024c]:slti t4, zero, 4090<br> [0x80000250]:sw t4, 28(gp)<br>   |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x13<br> - rd : x8<br> - rs1_val == 32768<br>                                                                          |[0x80000258]:slti fp, a3, 4094<br> [0x8000025c]:sw fp, 32(gp)<br>     |
|  28|[0x80003270]<br>0x00000000|- rs1 : x6<br> - rd : x27<br> - imm_val == 512<br> - rs1_val == 65536<br>                                                     |[0x80000264]:slti s11, t1, 512<br> [0x80000268]:sw s11, 36(gp)<br>    |
|  29|[0x80003274]<br>0x00000000|- rs1 : x12<br> - rd : x0<br> - imm_val == -9<br> - rs1_val == 131072<br>                                                     |[0x80000270]:slti zero, a2, 4087<br> [0x80000274]:sw zero, 40(gp)<br> |
|  30|[0x80003278]<br>0x00000000|- rs1 : x4<br> - rd : x19<br> - rs1_val == 262144<br>                                                                         |[0x8000027c]:slti s3, tp, 3072<br> [0x80000280]:sw s3, 44(gp)<br>     |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x8<br> - rd : x1<br> - imm_val == 256<br> - rs1_val == 524288<br>                                                     |[0x80000288]:slti ra, fp, 256<br> [0x8000028c]:sw ra, 48(gp)<br>      |
|  32|[0x80003280]<br>0x00000000|- rs1 : x16<br> - rd : x17<br> - imm_val == 8<br> - rs1_val == 1048576<br>                                                    |[0x80000294]:slti a7, a6, 8<br> [0x80000298]:sw a7, 52(gp)<br>        |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                      |[0x800002a0]:slti a1, a0, 4095<br> [0x800002a4]:sw a1, 56(gp)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                      |[0x800002ac]:slti a1, a0, 2<br> [0x800002b0]:sw a1, 60(gp)<br>        |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                     |[0x800002b8]:slti a1, a0, 2<br> [0x800002bc]:sw a1, 64(gp)<br>        |
|  36|[0x80003290]<br>0x00000000|- imm_val == 1024<br> - rs1_val == 33554432<br>                                                                               |[0x800002c4]:slti a1, a0, 1024<br> [0x800002c8]:sw a1, 68(gp)<br>     |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                     |[0x800002d0]:slti a1, a0, 7<br> [0x800002d4]:sw a1, 72(gp)<br>        |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                    |[0x800002dc]:slti a1, a0, 4095<br> [0x800002e0]:sw a1, 76(gp)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                    |[0x800002e8]:slti a1, a0, 4087<br> [0x800002ec]:sw a1, 80(gp)<br>     |
|  40|[0x800032a0]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                   |[0x800002f4]:slti a1, a0, 4093<br> [0x800002f8]:sw a1, 84(gp)<br>     |
|  41|[0x800032a4]<br>0x00000001|- imm_val == 1365<br> - rs1_val == -3<br>                                                                                     |[0x80000300]:slti a1, a0, 1365<br> [0x80000304]:sw a1, 88(gp)<br>     |
|  42|[0x800032a8]<br>0x00000000|- rs1_val == -5<br>                                                                                                           |[0x8000030c]:slti a1, a0, 3839<br> [0x80000310]:sw a1, 92(gp)<br>     |
|  43|[0x800032ac]<br>0x00000000|- rs1_val == -17<br>                                                                                                          |[0x80000318]:slti a1, a0, 2048<br> [0x8000031c]:sw a1, 96(gp)<br>     |
|  44|[0x800032b0]<br>0x00000000|- rs1_val == -33<br>                                                                                                          |[0x80000324]:slti a1, a0, 3967<br> [0x80000328]:sw a1, 100(gp)<br>    |
|  45|[0x800032b4]<br>0x00000001|- rs1_val == -65<br>                                                                                                          |[0x80000330]:slti a1, a0, 2<br> [0x80000334]:sw a1, 104(gp)<br>       |
|  46|[0x800032b8]<br>0x00000000|- rs1_val == -129<br>                                                                                                         |[0x8000033c]:slti a1, a0, 3072<br> [0x80000340]:sw a1, 108(gp)<br>    |
|  47|[0x800032bc]<br>0x00000001|- rs1_val == -524289<br>                                                                                                      |[0x8000034c]:slti a1, a0, 256<br> [0x80000350]:sw a1, 112(gp)<br>     |
|  48|[0x800032c0]<br>0x00000001|- rs1_val == -1048577<br>                                                                                                     |[0x8000035c]:slti a1, a0, 4086<br> [0x80000360]:sw a1, 116(gp)<br>    |
|  49|[0x800032c4]<br>0x00000001|- rs1_val == -2097153<br>                                                                                                     |[0x8000036c]:slti a1, a0, 0<br> [0x80000370]:sw a1, 120(gp)<br>       |
|  50|[0x800032c8]<br>0x00000001|- rs1_val == -4194305<br>                                                                                                     |[0x8000037c]:slti a1, a0, 4089<br> [0x80000380]:sw a1, 124(gp)<br>    |
|  51|[0x800032cc]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                     |[0x8000038c]:slti a1, a0, 32<br> [0x80000390]:sw a1, 128(gp)<br>      |
|  52|[0x800032d0]<br>0x00000001|- rs1_val == -16777217<br>                                                                                                    |[0x8000039c]:slti a1, a0, 4087<br> [0x800003a0]:sw a1, 132(gp)<br>    |
|  53|[0x800032d4]<br>0x00000001|- imm_val == -5<br> - rs1_val == -67108865<br>                                                                                |[0x800003ac]:slti a1, a0, 4091<br> [0x800003b0]:sw a1, 136(gp)<br>    |
|  54|[0x800032d8]<br>0x00000001|- rs1_val == -134217729<br>                                                                                                   |[0x800003bc]:slti a1, a0, 4091<br> [0x800003c0]:sw a1, 140(gp)<br>    |
|  55|[0x800032dc]<br>0x00000001|- rs1_val == -268435457<br>                                                                                                   |[0x800003cc]:slti a1, a0, 4094<br> [0x800003d0]:sw a1, 144(gp)<br>    |
|  56|[0x800032e0]<br>0x00000001|- rs1_val == -536870913<br>                                                                                                   |[0x800003dc]:slti a1, a0, 3583<br> [0x800003e0]:sw a1, 148(gp)<br>    |
|  57|[0x800032e4]<br>0x00000001|- rs1_val == -1073741825<br>                                                                                                  |[0x800003ec]:slti a1, a0, 1023<br> [0x800003f0]:sw a1, 152(gp)<br>    |
|  58|[0x800032e8]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                   |[0x800003fc]:slti a1, a0, 7<br> [0x80000400]:sw a1, 156(gp)<br>       |
|  59|[0x800032ec]<br>0x00000001|- rs1_val == -1431655766<br>                                                                                                  |[0x8000040c]:slti a1, a0, 4090<br> [0x80000410]:sw a1, 160(gp)<br>    |
|  60|[0x800032f0]<br>0x00000001|- imm_val == 4<br>                                                                                                            |[0x80000418]:slti a1, a0, 4<br> [0x8000041c]:sw a1, 164(gp)<br>       |
|  61|[0x800032f4]<br>0x00000001|- imm_val == 128<br>                                                                                                          |[0x80000428]:slti a1, a0, 128<br> [0x8000042c]:sw a1, 168(gp)<br>     |
|  62|[0x800032f8]<br>0x00000000|- imm_val == -65<br>                                                                                                          |[0x80000434]:slti a1, a0, 4031<br> [0x80000438]:sw a1, 172(gp)<br>    |
|  63|[0x800032fc]<br>0x00000000|- imm_val == -1025<br>                                                                                                        |[0x80000440]:slti a1, a0, 3071<br> [0x80000444]:sw a1, 176(gp)<br>    |
|  64|[0x80003300]<br>0x00000000|- imm_val == -1366<br>                                                                                                        |[0x8000044c]:slti a1, a0, 2730<br> [0x80000450]:sw a1, 180(gp)<br>    |
|  65|[0x80003304]<br>0x00000000|- imm_val == -33<br>                                                                                                          |[0x80000458]:slti a1, a0, 4063<br> [0x8000045c]:sw a1, 184(gp)<br>    |
|  66|[0x80003308]<br>0x00000001|- rs1_val == -257<br>                                                                                                         |[0x80000464]:slti a1, a0, 2<br> [0x80000468]:sw a1, 188(gp)<br>       |
|  67|[0x8000330c]<br>0x00000000|- rs1_val == -513<br>                                                                                                         |[0x80000470]:slti a1, a0, 3072<br> [0x80000474]:sw a1, 192(gp)<br>    |
|  68|[0x80003310]<br>0x00000001|- rs1_val == -1025<br>                                                                                                        |[0x8000047c]:slti a1, a0, 16<br> [0x80000480]:sw a1, 196(gp)<br>      |
|  69|[0x80003314]<br>0x00000001|- rs1_val == -2049<br>                                                                                                        |[0x8000048c]:slti a1, a0, 9<br> [0x80000490]:sw a1, 200(gp)<br>       |
|  70|[0x80003318]<br>0x00000001|- rs1_val == -131073<br>                                                                                                      |[0x8000049c]:slti a1, a0, 2047<br> [0x800004a0]:sw a1, 204(gp)<br>    |
|  71|[0x8000331c]<br>0x00000001|- rs1_val == -8193<br>                                                                                                        |[0x800004ac]:slti a1, a0, 3071<br> [0x800004b0]:sw a1, 208(gp)<br>    |
|  72|[0x80003320]<br>0x00000001|- rs1_val == -16385<br>                                                                                                       |[0x800004bc]:slti a1, a0, 1023<br> [0x800004c0]:sw a1, 212(gp)<br>    |
|  73|[0x80003324]<br>0x00000001|- rs1_val == -32769<br>                                                                                                       |[0x800004cc]:slti a1, a0, 4088<br> [0x800004d0]:sw a1, 216(gp)<br>    |
|  74|[0x80003328]<br>0x00000001|- rs1_val == -65537<br>                                                                                                       |[0x800004dc]:slti a1, a0, 8<br> [0x800004e0]:sw a1, 220(gp)<br>       |
|  75|[0x8000332c]<br>0x00000000|- imm_val == -17<br>                                                                                                          |[0x800004e8]:slti a1, a0, 4079<br> [0x800004ec]:sw a1, 224(gp)<br>    |
|  76|[0x80003330]<br>0x00000001|- rs1_val == -262145<br>                                                                                                      |[0x800004f8]:slti a1, a0, 3072<br> [0x800004fc]:sw a1, 228(gp)<br>    |
|  77|[0x80003334]<br>0x00000000|- rs1_val == 16384<br>                                                                                                        |[0x80000504]:slti a1, a0, 4090<br> [0x80000508]:sw a1, 232(gp)<br>    |
