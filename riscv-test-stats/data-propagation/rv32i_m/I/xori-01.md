
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
| SIG_REGION                | [('0x80003204', '0x80003348', '81 words')]      |
| COV_LABELS                | xori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xori-01.S/xori-01.S    |
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
      [0x80000504]:xori a1, a0, 4031
      [0x80000508]:sw a1, 216(t0)
 -- Signature Address: 0x80003340 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : xori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == imm_val
      - rs1_val < 0 and imm_val < 0
      - imm_val == -65
      - rs1_val == -65






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

|s.no|        signature         |                                                                              coverpoints                                                                              |                                code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : xori<br> - rs1 : x17<br> - rd : x0<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -65<br> - rs1_val == -65<br> |[0x80000104]:xori zero, a7, 4031<br> [0x80000108]:sw zero, 0(sp)<br> |
|   2|[0x80003214]<br>0x00010100|- rs1 : x30<br> - rd : x30<br> - rs1 == rd<br> - rs1_val != imm_val<br> - imm_val == -257<br> - rs1_val == -65537<br>                                                  |[0x80000114]:xori t5, t5, 3839<br> [0x80000118]:sw t5, 4(sp)<br>     |
|   3|[0x80003218]<br>0x00000008|- rs1 : x31<br> - rd : x3<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val > 0<br>                                                                                     |[0x80000120]:xori gp, t6, 9<br> [0x80000124]:sw gp, 8(sp)<br>        |
|   4|[0x8000321c]<br>0xFFFFFFF3|- rs1 : x5<br> - rd : x7<br> - rs1_val > 0 and imm_val < 0<br>                                                                                                         |[0x8000012c]:xori t2, t0, 4086<br> [0x80000130]:sw t2, 12(sp)<br>    |
|   5|[0x80003220]<br>0xFFFFFBFE|- rs1 : x15<br> - rd : x27<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 1024<br> - rs1_val == -2<br>                                                             |[0x80000138]:xori s11, a5, 1024<br> [0x8000013c]:sw s11, 16(sp)<br>  |
|   6|[0x80003224]<br>0x7FFFFFF8|- rs1 : x28<br> - rd : x5<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                             |[0x80000144]:xori t0, t3, 4088<br> [0x80000148]:sw t0, 20(sp)<br>    |
|   7|[0x80003228]<br>0x00000001|- rs1 : x23<br> - rd : x24<br> - imm_val == 1<br> - rs1_val == 0<br>                                                                                                   |[0x80000150]:xori s8, s7, 1<br> [0x80000154]:sw s8, 24(sp)<br>       |
|   8|[0x8000322c]<br>0x7FFFFFFA|- rs1 : x27<br> - rd : x19<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                            |[0x80000160]:xori s3, s11, 5<br> [0x80000164]:sw s3, 28(sp)<br>      |
|   9|[0x80003230]<br>0x0000077F|- rs1 : x18<br> - rd : x11<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -129<br>                                                              |[0x8000016c]:xori a1, s2, 2048<br> [0x80000170]:sw a1, 32(sp)<br>    |
|  10|[0x80003234]<br>0x00000007|- rs1 : x26<br> - rd : x20<br> - imm_val == 0<br>                                                                                                                      |[0x80000178]:xori s4, s10, 0<br> [0x8000017c]:sw s4, 36(sp)<br>      |
|  11|[0x80003238]<br>0xFFFBF800|- rs1 : x22<br> - rd : x17<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -262145<br>                                                           |[0x80000188]:xori a7, s6, 2047<br> [0x8000018c]:sw a7, 40(sp)<br>    |
|  12|[0x8000323c]<br>0xFFFFFFDD|- rs1 : x11<br> - rd : x13<br> - imm_val == -33<br> - rs1_val == 2<br>                                                                                                 |[0x80000194]:xori a3, a1, 4063<br> [0x80000198]:sw a3, 44(sp)<br>    |
|  13|[0x80003240]<br>0x00000024|- rs1 : x20<br> - rd : x8<br> - imm_val == 32<br> - rs1_val == 4<br>                                                                                                   |[0x800001a0]:xori fp, s4, 32<br> [0x800001a4]:sw fp, 48(sp)<br>      |
|  14|[0x80003244]<br>0xFFFFFFFE|- rs1 : x16<br> - rd : x29<br> - rs1_val == 8<br>                                                                                                                      |[0x800001ac]:xori t4, a6, 4086<br> [0x800001b0]:sw t4, 52(sp)<br>    |
|  15|[0x80003248]<br>0xFFFFFBEF|- rs1 : x8<br> - rd : x9<br> - imm_val == -1025<br> - rs1_val == 16<br>                                                                                                |[0x800001b8]:xori s1, fp, 3071<br> [0x800001bc]:sw s1, 56(sp)<br>    |
|  16|[0x8000324c]<br>0xFFFFFFD8|- rs1 : x19<br> - rd : x26<br> - rs1_val == 32<br>                                                                                                                     |[0x800001c4]:xori s10, s3, 4088<br> [0x800001c8]:sw s10, 60(sp)<br>  |
|  17|[0x80003250]<br>0x00000042|- rs1 : x29<br> - rd : x23<br> - imm_val == 2<br> - rs1_val == 64<br>                                                                                                  |[0x800001d0]:xori s7, t4, 2<br> [0x800001d4]:sw s7, 64(sp)<br>       |
|  18|[0x80003254]<br>0x00000090|- rs1 : x24<br> - rd : x6<br> - imm_val == 16<br> - rs1_val == 128<br>                                                                                                 |[0x800001dc]:xori t1, s8, 16<br> [0x800001e0]:sw t1, 68(sp)<br>      |
|  19|[0x80003258]<br>0xFFFFFEF8|- rs1 : x7<br> - rd : x31<br> - rs1_val == 256<br>                                                                                                                     |[0x800001e8]:xori t6, t2, 4088<br> [0x800001ec]:sw t6, 72(sp)<br>    |
|  20|[0x8000325c]<br>0x00000240|- rs1 : x4<br> - rd : x14<br> - imm_val == 64<br> - rs1_val == 512<br>                                                                                                 |[0x800001f4]:xori a4, tp, 64<br> [0x800001f8]:sw a4, 76(sp)<br>      |
|  21|[0x80003260]<br>0xFFFFF9FF|- rs1 : x1<br> - rd : x10<br> - imm_val == -513<br> - rs1_val == 1024<br>                                                                                              |[0x80000200]:xori a0, ra, 3583<br> [0x80000204]:sw a0, 80(sp)<br>    |
|  22|[0x80003264]<br>0xFFFFF7F7|- rs1 : x21<br> - rd : x28<br> - imm_val == -9<br> - rs1_val == 2048<br>                                                                                               |[0x80000210]:xori t3, s5, 4087<br> [0x80000214]:sw t3, 84(sp)<br>    |
|  23|[0x80003268]<br>0x00001003|- rs1 : x10<br> - rd : x12<br> - rs1_val == 4096<br>                                                                                                                   |[0x80000224]:xori a2, a0, 3<br> [0x80000228]:sw a2, 0(t0)<br>        |
|  24|[0x8000326c]<br>0x00002200|- rs1 : x12<br> - rd : x4<br> - imm_val == 512<br> - rs1_val == 8192<br>                                                                                               |[0x80000230]:xori tp, a2, 512<br> [0x80000234]:sw tp, 4(t0)<br>      |
|  25|[0x80003270]<br>0xFFFFBFF7|- rs1 : x14<br> - rd : x2<br> - rs1_val == 16384<br>                                                                                                                   |[0x8000023c]:xori sp, a4, 4087<br> [0x80000240]:sw sp, 8(t0)<br>     |
|  26|[0x80003274]<br>0x00008003|- rs1 : x2<br> - rd : x25<br> - rs1_val == 32768<br>                                                                                                                   |[0x80000248]:xori s9, sp, 3<br> [0x8000024c]:sw s9, 12(t0)<br>       |
|  27|[0x80003278]<br>0xFFFEFBFF|- rs1 : x25<br> - rd : x21<br> - rs1_val == 65536<br>                                                                                                                  |[0x80000254]:xori s5, s9, 3071<br> [0x80000258]:sw s5, 16(t0)<br>    |
|  28|[0x8000327c]<br>0xFFFDFFFC|- rs1 : x13<br> - rd : x1<br> - rs1_val == 131072<br>                                                                                                                  |[0x80000260]:xori ra, a3, 4092<br> [0x80000264]:sw ra, 20(t0)<br>    |
|  29|[0x80003280]<br>0xFFFBFFF6|- rs1 : x6<br> - rd : x22<br> - rs1_val == 262144<br>                                                                                                                  |[0x8000026c]:xori s6, t1, 4086<br> [0x80000270]:sw s6, 24(t0)<br>    |
|  30|[0x80003284]<br>0x000803FF|- rs1 : x3<br> - rd : x18<br> - rs1_val == 524288<br>                                                                                                                  |[0x80000278]:xori s2, gp, 1023<br> [0x8000027c]:sw s2, 28(t0)<br>    |
|  31|[0x80003288]<br>0xFFFFFFFE|- rs1 : x0<br> - rd : x15<br> - imm_val == -2<br>                                                                                                                      |[0x80000288]:xori a5, zero, 4094<br> [0x8000028c]:sw a5, 32(t0)<br>  |
|  32|[0x8000328c]<br>0xFFDFFFBF|- rs1 : x9<br> - rd : x16<br> - rs1_val == 2097152<br>                                                                                                                 |[0x80000294]:xori a6, s1, 4031<br> [0x80000298]:sw a6, 36(t0)<br>    |
|  33|[0x80003290]<br>0xFFBFFF7F|- imm_val == -129<br> - rs1_val == 4194304<br>                                                                                                                         |[0x800002a0]:xori a1, a0, 3967<br> [0x800002a4]:sw a1, 40(t0)<br>    |
|  34|[0x80003294]<br>0x008003FF|- rs1_val == 8388608<br>                                                                                                                                               |[0x800002ac]:xori a1, a0, 1023<br> [0x800002b0]:sw a1, 44(t0)<br>    |
|  35|[0x80003298]<br>0xFEFFFBFF|- rs1_val == 16777216<br>                                                                                                                                              |[0x800002b8]:xori a1, a0, 3071<br> [0x800002bc]:sw a1, 48(t0)<br>    |
|  36|[0x8000329c]<br>0xFDFFFC00|- rs1_val == 33554432<br>                                                                                                                                              |[0x800002c4]:xori a1, a0, 3072<br> [0x800002c8]:sw a1, 52(t0)<br>    |
|  37|[0x800032a0]<br>0x04000555|- imm_val == 1365<br> - rs1_val == 67108864<br>                                                                                                                        |[0x800002d0]:xori a1, a0, 1365<br> [0x800002d4]:sw a1, 56(t0)<br>    |
|  38|[0x800032a4]<br>0x08000400|- rs1_val == 134217728<br>                                                                                                                                             |[0x800002dc]:xori a1, a0, 1024<br> [0x800002e0]:sw a1, 60(t0)<br>    |
|  39|[0x800032a8]<br>0x10000555|- rs1_val == 268435456<br>                                                                                                                                             |[0x800002e8]:xori a1, a0, 1365<br> [0x800002ec]:sw a1, 64(t0)<br>    |
|  40|[0x800032ac]<br>0x200007FF|- rs1_val == 536870912<br>                                                                                                                                             |[0x800002f4]:xori a1, a0, 2047<br> [0x800002f8]:sw a1, 68(t0)<br>    |
|  41|[0x800032b0]<br>0xBFFFFFFA|- rs1_val == 1073741824<br>                                                                                                                                            |[0x80000300]:xori a1, a0, 4090<br> [0x80000304]:sw a1, 72(t0)<br>    |
|  42|[0x800032b4]<br>0x00000202|- rs1_val == -3<br>                                                                                                                                                    |[0x8000030c]:xori a1, a0, 3583<br> [0x80000310]:sw a1, 76(t0)<br>    |
|  43|[0x800032b8]<br>0xFFFFFFFD|- rs1_val == -5<br>                                                                                                                                                    |[0x80000318]:xori a1, a0, 6<br> [0x8000031c]:sw a1, 80(t0)<br>       |
|  44|[0x800032bc]<br>0x00000008|- rs1_val == -9<br>                                                                                                                                                    |[0x80000324]:xori a1, a0, 4095<br> [0x80000328]:sw a1, 84(t0)<br>    |
|  45|[0x800032c0]<br>0x00000010|- rs1_val == -17<br>                                                                                                                                                   |[0x80000330]:xori a1, a0, 4095<br> [0x80000334]:sw a1, 88(t0)<br>    |
|  46|[0x800032c4]<br>0xFFFFF820|- rs1_val == -33<br>                                                                                                                                                   |[0x8000033c]:xori a1, a0, 2047<br> [0x80000340]:sw a1, 92(t0)<br>    |
|  47|[0x800032c8]<br>0xFFF7FC00|- rs1_val == -524289<br>                                                                                                                                               |[0x8000034c]:xori a1, a0, 1023<br> [0x80000350]:sw a1, 96(t0)<br>    |
|  48|[0x800032cc]<br>0x00100040|- rs1_val == -1048577<br>                                                                                                                                              |[0x8000035c]:xori a1, a0, 4031<br> [0x80000360]:sw a1, 100(t0)<br>   |
|  49|[0x800032d0]<br>0xFFDFFC00|- rs1_val == -2097153<br>                                                                                                                                              |[0x8000036c]:xori a1, a0, 1023<br> [0x80000370]:sw a1, 104(t0)<br>   |
|  50|[0x800032d4]<br>0x00400040|- rs1_val == -4194305<br>                                                                                                                                              |[0x8000037c]:xori a1, a0, 4031<br> [0x80000380]:sw a1, 108(t0)<br>   |
|  51|[0x800032d8]<br>0xFF7FFDFF|- rs1_val == -8388609<br>                                                                                                                                              |[0x8000038c]:xori a1, a0, 512<br> [0x80000390]:sw a1, 112(t0)<br>    |
|  52|[0x800032dc]<br>0xFEFFFDFF|- rs1_val == -16777217<br>                                                                                                                                             |[0x8000039c]:xori a1, a0, 512<br> [0x800003a0]:sw a1, 116(t0)<br>    |
|  53|[0x800032e0]<br>0xFDFFF800|- rs1_val == -33554433<br>                                                                                                                                             |[0x800003ac]:xori a1, a0, 2047<br> [0x800003b0]:sw a1, 120(t0)<br>   |
|  54|[0x800032e4]<br>0xFBFFFAAA|- rs1_val == -67108865<br>                                                                                                                                             |[0x800003bc]:xori a1, a0, 1365<br> [0x800003c0]:sw a1, 124(t0)<br>   |
|  55|[0x800032e8]<br>0xF7FFFFF9|- rs1_val == -134217729<br>                                                                                                                                            |[0x800003cc]:xori a1, a0, 6<br> [0x800003d0]:sw a1, 128(t0)<br>      |
|  56|[0x800032ec]<br>0xEFFFFFBF|- rs1_val == -268435457<br>                                                                                                                                            |[0x800003dc]:xori a1, a0, 64<br> [0x800003e0]:sw a1, 132(t0)<br>     |
|  57|[0x800032f0]<br>0x20000004|- imm_val == -5<br> - rs1_val == -536870913<br>                                                                                                                        |[0x800003ec]:xori a1, a0, 4091<br> [0x800003f0]:sw a1, 136(t0)<br>   |
|  58|[0x800032f4]<br>0xBFFFF800|- rs1_val == -1073741825<br>                                                                                                                                           |[0x800003fc]:xori a1, a0, 2047<br> [0x80000400]:sw a1, 140(t0)<br>   |
|  59|[0x800032f8]<br>0x55555555|- rs1_val == 1431655765<br>                                                                                                                                            |[0x8000040c]:xori a1, a0, 0<br> [0x80000410]:sw a1, 144(t0)<br>      |
|  60|[0x800032fc]<br>0x55555155|- rs1_val == -1431655766<br>                                                                                                                                           |[0x8000041c]:xori a1, a0, 3071<br> [0x80000420]:sw a1, 148(t0)<br>   |
|  61|[0x80003300]<br>0x00008004|- imm_val == 4<br>                                                                                                                                                     |[0x80000428]:xori a1, a0, 4<br> [0x8000042c]:sw a1, 152(t0)<br>      |
|  62|[0x80003304]<br>0x00002007|- rs1_val == -8193<br>                                                                                                                                                 |[0x80000438]:xori a1, a0, 4088<br> [0x8000043c]:sw a1, 156(t0)<br>   |
|  63|[0x80003308]<br>0xFFFFFAAD|- imm_val == -1366<br>                                                                                                                                                 |[0x80000444]:xori a1, a0, 2730<br> [0x80000448]:sw a1, 160(t0)<br>   |
|  64|[0x8000330c]<br>0xFFFFBFFA|- rs1_val == -16385<br>                                                                                                                                                |[0x80000454]:xori a1, a0, 5<br> [0x80000458]:sw a1, 164(t0)<br>      |
|  65|[0x80003310]<br>0xFFFFFFF4|- imm_val == 8<br>                                                                                                                                                     |[0x80000460]:xori a1, a0, 8<br> [0x80000464]:sw a1, 168(t0)<br>      |
|  66|[0x80003314]<br>0x000207FF|- rs1_val == -131073<br>                                                                                                                                               |[0x80000470]:xori a1, a0, 2048<br> [0x80000474]:sw a1, 172(t0)<br>   |
|  67|[0x80003318]<br>0x000000C0|- imm_val == 128<br>                                                                                                                                                   |[0x8000047c]:xori a1, a0, 128<br> [0x80000480]:sw a1, 176(t0)<br>    |
|  68|[0x8000331c]<br>0xFFFFFD00|- rs1_val == -257<br>                                                                                                                                                  |[0x80000488]:xori a1, a0, 1023<br> [0x8000048c]:sw a1, 180(t0)<br>   |
|  69|[0x80003320]<br>0x000007FF|- rs1_val == -1025<br>                                                                                                                                                 |[0x80000494]:xori a1, a0, 3072<br> [0x80000498]:sw a1, 184(t0)<br>   |
|  70|[0x80003324]<br>0x00000900|- imm_val == 256<br>                                                                                                                                                   |[0x800004a4]:xori a1, a0, 256<br> [0x800004a8]:sw a1, 188(t0)<br>    |
|  71|[0x80003328]<br>0x00000205|- rs1_val == -513<br>                                                                                                                                                  |[0x800004b0]:xori a1, a0, 4090<br> [0x800004b4]:sw a1, 192(t0)<br>   |
|  72|[0x8000332c]<br>0xFFFFF7FB|- rs1_val == -2049<br>                                                                                                                                                 |[0x800004c0]:xori a1, a0, 4<br> [0x800004c4]:sw a1, 196(t0)<br>      |
|  73|[0x80003330]<br>0x00001009|- rs1_val == -4097<br>                                                                                                                                                 |[0x800004d0]:xori a1, a0, 4086<br> [0x800004d4]:sw a1, 200(t0)<br>   |
|  74|[0x80003334]<br>0x7FFFFFFD|- imm_val == -3<br>                                                                                                                                                    |[0x800004dc]:xori a1, a0, 4093<br> [0x800004e0]:sw a1, 204(t0)<br>   |
|  75|[0x80003338]<br>0x00008002|- rs1_val == -32769<br>                                                                                                                                                |[0x800004ec]:xori a1, a0, 4093<br> [0x800004f0]:sw a1, 208(t0)<br>   |
|  76|[0x8000333c]<br>0x00000010|- imm_val == -17<br>                                                                                                                                                   |[0x800004f8]:xori a1, a0, 4079<br> [0x800004fc]:sw a1, 212(t0)<br>   |
|  77|[0x80003344]<br>0xFFEFFFFE|- rs1_val == 1048576<br>                                                                                                                                               |[0x80000510]:xori a1, a0, 4094<br> [0x80000514]:sw a1, 220(t0)<br>   |
