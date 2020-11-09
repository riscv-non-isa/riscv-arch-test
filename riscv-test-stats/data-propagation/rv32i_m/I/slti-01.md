
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION                | [('0x80003204', '0x80003328', '73 words')]      |
| COV_LABELS                | slti      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slti-01.S/slti-01.S    |
| Total Number of coverpoints| 171     |
| Total Coverpoints Hit     | 171      |
| Total Signature Updates   | 73      |
| STAT1                     | 72      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d0]:slti a1, a0, 4092
      [0x800004d4]:sw a1, 212(ra)
 -- Signature Address: 0x80003320 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slti
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - rs1_val == 32768






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

|s.no|        signature         |                                                                               coverpoints                                                                                |                                 code                                 |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : slti<br> - rs1 : x18<br> - rd : x26<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -129<br> - rs1_val == -129<br> |[0x80000104]:slti s10, s2, 3967<br> [0x80000108]:sw s10, 0(gp)<br>    |
|   2|[0x80003208]<br>0x00000001|- rs1 : x21<br> - rd : x21<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 8<br> - rs1_val == -16385<br>                      |[0x80000114]:slti s5, s5, 8<br> [0x80000118]:sw s5, 4(gp)<br>         |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x22<br> - rd : x23<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 16<br> - rs1_val == 536870912<br>                                                           |[0x80000120]:slti s7, s6, 16<br> [0x80000124]:sw s7, 8(gp)<br>        |
|   4|[0x80003210]<br>0x00000000|- rs1 : x23<br> - rd : x4<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -513<br> - rs1_val == 4<br>                                                                  |[0x8000012c]:slti tp, s7, 3583<br> [0x80000130]:sw tp, 12(gp)<br>     |
|   5|[0x80003214]<br>0x00000001|- rs1 : x26<br> - rd : x8<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 32<br> - rs1_val == -2147483648<br>                                                            |[0x80000138]:slti fp, s10, 32<br> [0x8000013c]:sw fp, 16(gp)<br>      |
|   6|[0x80003218]<br>0x00000000|- rs1 : x12<br> - rd : x14<br> - imm_val == (-2**(12-1))<br> - rs1_val == 0<br> - imm_val == -2048<br>                                                                    |[0x80000144]:slti a4, a2, 2048<br> [0x80000148]:sw a4, 20(gp)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x29<br> - rd : x30<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -257<br> - rs1_val == 2147483647<br>                                                         |[0x80000154]:slti t5, t4, 3839<br> [0x80000158]:sw t5, 24(gp)<br>     |
|   8|[0x80003220]<br>0x00000001|- rs1 : x8<br> - rd : x18<br> - rs1_val == 1<br>                                                                                                                          |[0x80000160]:slti s2, fp, 9<br> [0x80000164]:sw s2, 28(gp)<br>        |
|   9|[0x80003224]<br>0x00000001|- rs1 : x20<br> - rd : x7<br> - imm_val == 0<br> - rs1_val == -32769<br>                                                                                                  |[0x80000170]:slti t2, s4, 0<br> [0x80000174]:sw t2, 32(gp)<br>        |
|  10|[0x80003228]<br>0x00000001|- rs1 : x16<br> - rd : x1<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -5<br>                                                                    |[0x8000017c]:slti ra, a6, 2047<br> [0x80000180]:sw ra, 36(gp)<br>     |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x15<br> - rd : x5<br> - imm_val == 1<br> - rs1_val == 32<br>                                                                                                      |[0x80000188]:slti t0, a5, 1<br> [0x8000018c]:sw t0, 40(gp)<br>        |
|  12|[0x80003230]<br>0x00000001|- rs1 : x11<br> - rd : x13<br> - imm_val == 4<br> - rs1_val == 2<br>                                                                                                      |[0x80000194]:slti a3, a1, 4<br> [0x80000198]:sw a3, 44(gp)<br>        |
|  13|[0x80003234]<br>0x00000001|- rs1 : x6<br> - rd : x22<br> - imm_val == 1365<br> - rs1_val == 8<br>                                                                                                    |[0x800001a0]:slti s6, t1, 1365<br> [0x800001a4]:sw s6, 48(gp)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x31<br> - rd : x27<br> - rs1_val == 16<br>                                                                                                                        |[0x800001ac]:slti s11, t6, 4092<br> [0x800001b0]:sw s11, 52(gp)<br>   |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x1<br> - rd : x19<br> - rs1_val == 64<br>                                                                                                                         |[0x800001b8]:slti s3, ra, 16<br> [0x800001bc]:sw s3, 56(gp)<br>       |
|  16|[0x80003240]<br>0x00000000|- rs1 : x9<br> - rd : x2<br> - rs1_val == 128<br>                                                                                                                         |[0x800001c4]:slti sp, s1, 32<br> [0x800001c8]:sw sp, 60(gp)<br>       |
|  17|[0x80003244]<br>0x00000000|- rs1 : x25<br> - rd : x24<br> - rs1_val == 256<br>                                                                                                                       |[0x800001d0]:slti s8, s9, 7<br> [0x800001d4]:sw s8, 64(gp)<br>        |
|  18|[0x80003248]<br>0x00000000|- rs1 : x19<br> - rd : x17<br> - rs1_val == 512<br>                                                                                                                       |[0x800001dc]:slti a7, s3, 4092<br> [0x800001e0]:sw a7, 68(gp)<br>     |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x10<br> - rd : x12<br> - imm_val == 256<br> - rs1_val == 1024<br>                                                                                                 |[0x800001f0]:slti a2, a0, 256<br> [0x800001f4]:sw a2, 0(ra)<br>       |
|  20|[0x80003250]<br>0x00000000|- rs1 : x30<br> - rd : x20<br> - rs1_val == 2048<br>                                                                                                                      |[0x80000200]:slti s4, t5, 1365<br> [0x80000204]:sw s4, 4(ra)<br>      |
|  21|[0x80003254]<br>0x00000000|- rs1 : x2<br> - rd : x28<br> - rs1_val == 4096<br>                                                                                                                       |[0x8000020c]:slti t3, sp, 4090<br> [0x80000210]:sw t3, 8(ra)<br>      |
|  22|[0x80003258]<br>0x00000000|- rs1 : x13<br> - rd : x3<br> - rs1_val == 8192<br>                                                                                                                       |[0x80000218]:slti gp, a3, 4092<br> [0x8000021c]:sw gp, 12(ra)<br>     |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x4<br> - rd : x15<br> - rs1_val == 16384<br>                                                                                                                      |[0x80000224]:slti a5, tp, 8<br> [0x80000228]:sw a5, 16(ra)<br>        |
|  24|[0x80003260]<br>0x00000000|- rs1 : x14<br> - rd : x0<br> - rs1_val == 32768<br>                                                                                                                      |[0x80000230]:slti zero, a4, 4092<br> [0x80000234]:sw zero, 20(ra)<br> |
|  25|[0x80003264]<br>0x00000000|- rs1 : x3<br> - rd : x11<br> - rs1_val == 65536<br>                                                                                                                      |[0x8000023c]:slti a1, gp, 1<br> [0x80000240]:sw a1, 24(ra)<br>        |
|  26|[0x80003268]<br>0x00000000|- rs1 : x24<br> - rd : x31<br> - rs1_val == 131072<br>                                                                                                                    |[0x80000248]:slti t6, s8, 3583<br> [0x8000024c]:sw t6, 28(ra)<br>     |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x5<br> - rd : x10<br> - rs1_val == 262144<br>                                                                                                                     |[0x80000254]:slti a0, t0, 256<br> [0x80000258]:sw a0, 32(ra)<br>      |
|  28|[0x80003270]<br>0x00000000|- rs1 : x27<br> - rd : x25<br> - imm_val == -1025<br> - rs1_val == 524288<br>                                                                                             |[0x80000260]:slti s9, s11, 3071<br> [0x80000264]:sw s9, 36(ra)<br>    |
|  29|[0x80003274]<br>0x00000000|- rs1 : x17<br> - rd : x16<br> - rs1_val == 1048576<br>                                                                                                                   |[0x8000026c]:slti a6, a7, 16<br> [0x80000270]:sw a6, 40(ra)<br>       |
|  30|[0x80003278]<br>0x00000000|- rs1 : x7<br> - rd : x9<br> - imm_val == 2<br> - rs1_val == 2097152<br>                                                                                                  |[0x80000278]:slti s1, t2, 2<br> [0x8000027c]:sw s1, 44(ra)<br>        |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x28<br> - rd : x29<br> - rs1_val == 4194304<br>                                                                                                                   |[0x80000284]:slti t4, t3, 3583<br> [0x80000288]:sw t4, 48(ra)<br>     |
|  32|[0x80003280]<br>0x00000000|- rs1 : x0<br> - rd : x6<br>                                                                                                                                              |[0x80000294]:slti t1, zero, 3072<br> [0x80000298]:sw t1, 52(ra)<br>   |
|  33|[0x80003284]<br>0x00000000|- imm_val == -9<br> - rs1_val == 16777216<br>                                                                                                                             |[0x800002a0]:slti a1, a0, 4087<br> [0x800002a4]:sw a1, 56(ra)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                 |[0x800002ac]:slti a1, a0, 16<br> [0x800002b0]:sw a1, 60(ra)<br>       |
|  35|[0x8000328c]<br>0x00000000|- imm_val == -33<br> - rs1_val == 67108864<br>                                                                                                                            |[0x800002b8]:slti a1, a0, 4063<br> [0x800002bc]:sw a1, 64(ra)<br>     |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                                |[0x800002c4]:slti a1, a0, 256<br> [0x800002c8]:sw a1, 68(ra)<br>      |
|  37|[0x80003294]<br>0x00000000|- imm_val == -1366<br> - rs1_val == 268435456<br>                                                                                                                         |[0x800002d0]:slti a1, a0, 2730<br> [0x800002d4]:sw a1, 72(ra)<br>     |
|  38|[0x80003298]<br>0x00000000|- imm_val == 1024<br> - rs1_val == 1073741824<br>                                                                                                                         |[0x800002dc]:slti a1, a0, 1024<br> [0x800002e0]:sw a1, 76(ra)<br>     |
|  39|[0x8000329c]<br>0x00000001|- imm_val == 512<br> - rs1_val == -2<br>                                                                                                                                  |[0x800002e8]:slti a1, a0, 512<br> [0x800002ec]:sw a1, 80(ra)<br>      |
|  40|[0x800032a0]<br>0x00000000|- rs1_val == -3<br>                                                                                                                                                       |[0x800002f4]:slti a1, a0, 4086<br> [0x800002f8]:sw a1, 84(ra)<br>     |
|  41|[0x800032a4]<br>0x00000001|- rs1_val == -9<br>                                                                                                                                                       |[0x80000300]:slti a1, a0, 0<br> [0x80000304]:sw a1, 88(ra)<br>        |
|  42|[0x800032a8]<br>0x00000001|- imm_val == -5<br> - rs1_val == -17<br>                                                                                                                                  |[0x8000030c]:slti a1, a0, 4091<br> [0x80000310]:sw a1, 92(ra)<br>     |
|  43|[0x800032ac]<br>0x00000001|- rs1_val == -33<br>                                                                                                                                                      |[0x80000318]:slti a1, a0, 4089<br> [0x8000031c]:sw a1, 96(ra)<br>     |
|  44|[0x800032b0]<br>0x00000001|- rs1_val == -524289<br>                                                                                                                                                  |[0x80000328]:slti a1, a0, 4092<br> [0x8000032c]:sw a1, 100(ra)<br>    |
|  45|[0x800032b4]<br>0x00000001|- rs1_val == -1048577<br>                                                                                                                                                 |[0x80000338]:slti a1, a0, 4088<br> [0x8000033c]:sw a1, 104(ra)<br>    |
|  46|[0x800032b8]<br>0x00000001|- imm_val == 64<br> - rs1_val == -2097153<br>                                                                                                                             |[0x80000348]:slti a1, a0, 64<br> [0x8000034c]:sw a1, 108(ra)<br>      |
|  47|[0x800032bc]<br>0x00000001|- rs1_val == -4194305<br>                                                                                                                                                 |[0x80000358]:slti a1, a0, 1<br> [0x8000035c]:sw a1, 112(ra)<br>       |
|  48|[0x800032c0]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                                                                 |[0x80000368]:slti a1, a0, 4088<br> [0x8000036c]:sw a1, 116(ra)<br>    |
|  49|[0x800032c4]<br>0x00000001|- imm_val == -17<br> - rs1_val == -16777217<br>                                                                                                                           |[0x80000378]:slti a1, a0, 4079<br> [0x8000037c]:sw a1, 120(ra)<br>    |
|  50|[0x800032c8]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                                                                |[0x80000388]:slti a1, a0, 3072<br> [0x8000038c]:sw a1, 124(ra)<br>    |
|  51|[0x800032cc]<br>0x00000001|- rs1_val == -67108865<br>                                                                                                                                                |[0x80000398]:slti a1, a0, 3<br> [0x8000039c]:sw a1, 128(ra)<br>       |
|  52|[0x800032d0]<br>0x00000001|- rs1_val == -134217729<br>                                                                                                                                               |[0x800003a8]:slti a1, a0, 4063<br> [0x800003ac]:sw a1, 132(ra)<br>    |
|  53|[0x800032d4]<br>0x00000001|- rs1_val == -268435457<br>                                                                                                                                               |[0x800003b8]:slti a1, a0, 9<br> [0x800003bc]:sw a1, 136(ra)<br>       |
|  54|[0x800032d8]<br>0x00000001|- rs1_val == -536870913<br>                                                                                                                                               |[0x800003c8]:slti a1, a0, 1024<br> [0x800003cc]:sw a1, 140(ra)<br>    |
|  55|[0x800032dc]<br>0x00000001|- rs1_val == -1073741825<br>                                                                                                                                              |[0x800003d8]:slti a1, a0, 4090<br> [0x800003dc]:sw a1, 144(ra)<br>    |
|  56|[0x800032e0]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                               |[0x800003e8]:slti a1, a0, 4095<br> [0x800003ec]:sw a1, 148(ra)<br>    |
|  57|[0x800032e4]<br>0x00000001|- imm_val == -65<br>                                                                                                                                                      |[0x800003f8]:slti a1, a0, 4031<br> [0x800003fc]:sw a1, 152(ra)<br>    |
|  58|[0x800032e8]<br>0x00000000|- imm_val == -2<br>                                                                                                                                                       |[0x80000408]:slti a1, a0, 4094<br> [0x8000040c]:sw a1, 156(ra)<br>    |
|  59|[0x800032ec]<br>0x00000001|- rs1_val == -1431655766<br>                                                                                                                                              |[0x80000418]:slti a1, a0, 8<br> [0x8000041c]:sw a1, 160(ra)<br>       |
|  60|[0x800032f0]<br>0x00000001|- rs1_val == -262145<br>                                                                                                                                                  |[0x80000428]:slti a1, a0, 2<br> [0x8000042c]:sw a1, 164(ra)<br>       |
|  61|[0x800032f4]<br>0x00000001|- rs1_val == -65<br>                                                                                                                                                      |[0x80000434]:slti a1, a0, 4095<br> [0x80000438]:sw a1, 168(ra)<br>    |
|  62|[0x800032f8]<br>0x00000001|- imm_val == 128<br>                                                                                                                                                      |[0x80000444]:slti a1, a0, 128<br> [0x80000448]:sw a1, 172(ra)<br>     |
|  63|[0x800032fc]<br>0x00000001|- rs1_val == -257<br>                                                                                                                                                     |[0x80000450]:slti a1, a0, 16<br> [0x80000454]:sw a1, 176(ra)<br>      |
|  64|[0x80003300]<br>0x00000001|- rs1_val == -513<br>                                                                                                                                                     |[0x8000045c]:slti a1, a0, 1<br> [0x80000460]:sw a1, 180(ra)<br>       |
|  65|[0x80003304]<br>0x00000001|- rs1_val == -1025<br>                                                                                                                                                    |[0x80000468]:slti a1, a0, 32<br> [0x8000046c]:sw a1, 184(ra)<br>      |
|  66|[0x80003308]<br>0x00000001|- rs1_val == -2049<br>                                                                                                                                                    |[0x80000478]:slti a1, a0, 7<br> [0x8000047c]:sw a1, 188(ra)<br>       |
|  67|[0x8000330c]<br>0x00000001|- rs1_val == -4097<br>                                                                                                                                                    |[0x80000488]:slti a1, a0, 4088<br> [0x8000048c]:sw a1, 192(ra)<br>    |
|  68|[0x80003310]<br>0x00000001|- rs1_val == -8193<br>                                                                                                                                                    |[0x80000498]:slti a1, a0, 4090<br> [0x8000049c]:sw a1, 196(ra)<br>    |
|  69|[0x80003314]<br>0x00000000|- imm_val == -3<br>                                                                                                                                                       |[0x800004a4]:slti a1, a0, 4093<br> [0x800004a8]:sw a1, 200(ra)<br>    |
|  70|[0x80003318]<br>0x00000001|- rs1_val == -65537<br>                                                                                                                                                   |[0x800004b4]:slti a1, a0, 32<br> [0x800004b8]:sw a1, 204(ra)<br>      |
|  71|[0x8000331c]<br>0x00000001|- rs1_val == -131073<br>                                                                                                                                                  |[0x800004c4]:slti a1, a0, 3071<br> [0x800004c8]:sw a1, 208(ra)<br>    |
|  72|[0x80003324]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                                                                  |[0x800004dc]:slti a1, a0, 3072<br> [0x800004e0]:sw a1, 216(ra)<br>    |
