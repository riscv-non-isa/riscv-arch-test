
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000520')]      |
| SIG_REGION                | [('0x80003204', '0x80003344', '80 words')]      |
| COV_LABELS                | ori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ori-01.S/ori-01.S    |
| Total Number of coverpoints| 171     |
| Total Signature Updates   | 77      |
| Total Coverpoints Covered | 171      |
| STAT1                     | 76      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000050c]:ori a1, a0, 128
      [0x80000510]:sw a1, 212(gp)
 -- Signature Address: 0x80003340 Data: 0x00008080
 -- Redundant Coverpoints hit by the op
      - opcode : ori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 128
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

|s.no|        signature         |                                                                       coverpoints                                                                       |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000003|- opcode : ori<br> - rs1 : x17<br> - rd : x13<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>                             |[0x80000104]:ori a3, a7, 3<br> [0x80000108]:sw a3, 0(sp)<br>       |
|   2|[0x80003214]<br>0xFF7FFFFF|- rs1 : x14<br> - rd : x14<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 512<br> - rs1_val == -8388609<br> |[0x80000114]:ori a4, a4, 512<br> [0x80000118]:sw a4, 4(sp)<br>     |
|   3|[0x80003218]<br>0xFFFFFFFC|- rs1 : x18<br> - rd : x27<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 512<br>                                                                    |[0x80000120]:ori s11, s2, 4092<br> [0x80000124]:sw s11, 8(sp)<br>  |
|   4|[0x8000321c]<br>0xFFFFFFFF|- rs1 : x16<br> - rd : x19<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -3<br> - rs1_val == -129<br>                                               |[0x8000012c]:ori s3, a6, 4093<br> [0x80000130]:sw s3, 12(sp)<br>   |
|   5|[0x80003220]<br>0xFFFFFFF7|- rs1 : x28<br> - rd : x25<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -9<br> - rs1_val == -2147483648<br>                                          |[0x80000138]:ori s9, t3, 4087<br> [0x8000013c]:sw s9, 16(sp)<br>   |
|   6|[0x80003224]<br>0x00000080|- rs1 : x13<br> - rd : x3<br> - rs1_val == 0<br> - imm_val == 128<br>                                                                                    |[0x80000144]:ori gp, a3, 128<br> [0x80000148]:sw gp, 20(sp)<br>    |
|   7|[0x80003228]<br>0x7FFFFFFF|- rs1 : x23<br> - rd : x22<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == 256<br> - rs1_val == 2147483647<br>                                         |[0x80000154]:ori s6, s7, 256<br> [0x80000158]:sw s6, 24(sp)<br>    |
|   8|[0x8000322c]<br>0xFFFFFFEF|- rs1 : x22<br> - rd : x23<br> - rs1_val == 1<br> - imm_val == -17<br>                                                                                   |[0x80000160]:ori s7, s6, 4079<br> [0x80000164]:sw s7, 28(sp)<br>   |
|   9|[0x80003230]<br>0xFFFFFFFC|- rs1 : x31<br> - rd : x10<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                                                                      |[0x8000016c]:ori a0, t6, 2048<br> [0x80000170]:sw a0, 32(sp)<br>   |
|  10|[0x80003234]<br>0x00800000|- rs1 : x20<br> - rd : x24<br> - imm_val == 0<br> - rs1_val == 8388608<br>                                                                               |[0x80000178]:ori s8, s4, 0<br> [0x8000017c]:sw s8, 36(sp)<br>      |
|  11|[0x80003238]<br>0x000007FF|- rs1 : x0<br> - rd : x12<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br>                                                                       |[0x80000184]:ori a2, zero, 2047<br> [0x80000188]:sw a2, 40(sp)<br> |
|  12|[0x8000323c]<br>0xFFFBFFFF|- rs1 : x30<br> - rd : x16<br> - imm_val == 1<br> - rs1_val == -262145<br>                                                                               |[0x80000194]:ori a6, t5, 1<br> [0x80000198]:sw a6, 44(sp)<br>      |
|  13|[0x80003240]<br>0x00000042|- rs1 : x10<br> - rd : x28<br> - imm_val == 64<br> - rs1_val == 2<br>                                                                                    |[0x800001a0]:ori t3, a0, 64<br> [0x800001a4]:sw t3, 48(sp)<br>     |
|  14|[0x80003244]<br>0x00000024|- rs1 : x12<br> - rd : x8<br> - imm_val == 32<br> - rs1_val == 4<br>                                                                                     |[0x800001ac]:ori fp, a2, 32<br> [0x800001b0]:sw fp, 52(sp)<br>     |
|  15|[0x80003248]<br>0x00000008|- rs1 : x15<br> - rd : x29<br> - imm_val == 8<br> - rs1_val == 8<br>                                                                                     |[0x800001b8]:ori t4, a5, 8<br> [0x800001bc]:sw t4, 56(sp)<br>      |
|  16|[0x8000324c]<br>0x00000012|- rs1 : x25<br> - rd : x5<br> - imm_val == 2<br> - rs1_val == 16<br>                                                                                     |[0x800001c4]:ori t0, s9, 2<br> [0x800001c8]:sw t0, 60(sp)<br>      |
|  17|[0x80003250]<br>0xFFFFFFBF|- rs1 : x11<br> - rd : x20<br> - imm_val == -65<br> - rs1_val == 32<br>                                                                                  |[0x800001d0]:ori s4, a1, 4031<br> [0x800001d4]:sw s4, 64(sp)<br>   |
|  18|[0x80003254]<br>0x00000040|- rs1 : x7<br> - rd : x6<br> - rs1_val == 64<br>                                                                                                         |[0x800001dc]:ori t1, t2, 64<br> [0x800001e0]:sw t1, 68(sp)<br>     |
|  19|[0x80003258]<br>0xFFFFFFFA|- rs1 : x21<br> - rd : x11<br> - rs1_val == 128<br>                                                                                                      |[0x800001e8]:ori a1, s5, 4090<br> [0x800001ec]:sw a1, 72(sp)<br>   |
|  20|[0x8000325c]<br>0xFFFFFFFF|- rs1 : x27<br> - rd : x7<br> - imm_val == -257<br> - rs1_val == 256<br>                                                                                 |[0x800001f4]:ori t2, s11, 3839<br> [0x800001f8]:sw t2, 76(sp)<br>  |
|  21|[0x80003260]<br>0x00000600|- rs1 : x5<br> - rd : x1<br> - rs1_val == 1024<br>                                                                                                       |[0x80000200]:ori ra, t0, 512<br> [0x80000204]:sw ra, 80(sp)<br>    |
|  22|[0x80003264]<br>0x00000802|- rs1 : x3<br> - rd : x18<br> - rs1_val == 2048<br>                                                                                                      |[0x80000210]:ori s2, gp, 2<br> [0x80000214]:sw s2, 84(sp)<br>      |
|  23|[0x80003268]<br>0x00001400|- rs1 : x6<br> - rd : x9<br> - imm_val == 1024<br> - rs1_val == 4096<br>                                                                                 |[0x8000021c]:ori s1, t1, 1024<br> [0x80000220]:sw s1, 88(sp)<br>   |
|  24|[0x8000326c]<br>0x00002004|- rs1 : x19<br> - rd : x15<br> - imm_val == 4<br> - rs1_val == 8192<br>                                                                                  |[0x80000230]:ori a5, s3, 4<br> [0x80000234]:sw a5, 0(gp)<br>       |
|  25|[0x80003270]<br>0x00004002|- rs1 : x9<br> - rd : x4<br> - rs1_val == 16384<br>                                                                                                      |[0x8000023c]:ori tp, s1, 2<br> [0x80000240]:sw tp, 4(gp)<br>       |
|  26|[0x80003274]<br>0x00000000|- rs1 : x24<br> - rd : x0<br> - rs1_val == 32768<br>                                                                                                     |[0x80000248]:ori zero, s8, 128<br> [0x8000024c]:sw zero, 8(gp)<br> |
|  27|[0x80003278]<br>0x000103FF|- rs1 : x8<br> - rd : x17<br> - rs1_val == 65536<br>                                                                                                     |[0x80000254]:ori a7, fp, 1023<br> [0x80000258]:sw a7, 12(gp)<br>   |
|  28|[0x8000327c]<br>0x00020004|- rs1 : x4<br> - rd : x26<br> - rs1_val == 131072<br>                                                                                                    |[0x80000260]:ori s10, tp, 4<br> [0x80000264]:sw s10, 16(gp)<br>    |
|  29|[0x80003280]<br>0x000407FF|- rs1 : x29<br> - rd : x30<br> - rs1_val == 262144<br>                                                                                                   |[0x8000026c]:ori t5, t4, 2047<br> [0x80000270]:sw t5, 20(gp)<br>   |
|  30|[0x80003284]<br>0x000807FF|- rs1 : x1<br> - rd : x31<br> - rs1_val == 524288<br>                                                                                                    |[0x80000278]:ori t6, ra, 2047<br> [0x8000027c]:sw t6, 24(gp)<br>   |
|  31|[0x80003288]<br>0xFFFFFFFE|- rs1 : x2<br> - rd : x21<br> - imm_val == -2<br> - rs1_val == 1048576<br>                                                                               |[0x80000284]:ori s5, sp, 4094<br> [0x80000288]:sw s5, 28(gp)<br>   |
|  32|[0x8000328c]<br>0x002007FF|- rs1 : x26<br> - rd : x2<br> - rs1_val == 2097152<br>                                                                                                   |[0x80000290]:ori sp, s10, 2047<br> [0x80000294]:sw sp, 32(gp)<br>  |
|  33|[0x80003290]<br>0x004007FF|- rs1_val == 4194304<br>                                                                                                                                 |[0x8000029c]:ori a1, a0, 2047<br> [0x800002a0]:sw a1, 36(gp)<br>   |
|  34|[0x80003294]<br>0x01000006|- rs1_val == 16777216<br>                                                                                                                                |[0x800002a8]:ori a1, a0, 6<br> [0x800002ac]:sw a1, 40(gp)<br>      |
|  35|[0x80003298]<br>0xFFFFFFFD|- rs1_val == 33554432<br>                                                                                                                                |[0x800002b4]:ori a1, a0, 4093<br> [0x800002b8]:sw a1, 44(gp)<br>   |
|  36|[0x8000329c]<br>0x04000010|- imm_val == 16<br> - rs1_val == 67108864<br>                                                                                                            |[0x800002c0]:ori a1, a0, 16<br> [0x800002c4]:sw a1, 48(gp)<br>     |
|  37|[0x800032a0]<br>0x08000001|- rs1_val == 134217728<br>                                                                                                                               |[0x800002cc]:ori a1, a0, 1<br> [0x800002d0]:sw a1, 52(gp)<br>      |
|  38|[0x800032a4]<br>0x100003FF|- rs1_val == 268435456<br>                                                                                                                               |[0x800002d8]:ori a1, a0, 1023<br> [0x800002dc]:sw a1, 56(gp)<br>   |
|  39|[0x800032a8]<br>0x20000200|- rs1_val == 536870912<br>                                                                                                                               |[0x800002e4]:ori a1, a0, 512<br> [0x800002e8]:sw a1, 60(gp)<br>    |
|  40|[0x800032ac]<br>0x40000010|- rs1_val == 1073741824<br>                                                                                                                              |[0x800002f0]:ori a1, a0, 16<br> [0x800002f4]:sw a1, 64(gp)<br>     |
|  41|[0x800032b0]<br>0xFFFFFFFE|- rs1_val == -2<br>                                                                                                                                      |[0x800002fc]:ori a1, a0, 4088<br> [0x80000300]:sw a1, 68(gp)<br>   |
|  42|[0x800032b4]<br>0xFFFFFFFF|- imm_val == -1366<br> - rs1_val == -3<br>                                                                                                               |[0x80000308]:ori a1, a0, 2730<br> [0x8000030c]:sw a1, 72(gp)<br>   |
|  43|[0x800032b8]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                      |[0x80000314]:ori a1, a0, 1023<br> [0x80000318]:sw a1, 76(gp)<br>   |
|  44|[0x800032bc]<br>0xFFFFFFF7|- rs1_val == -9<br>                                                                                                                                      |[0x80000320]:ori a1, a0, 2<br> [0x80000324]:sw a1, 80(gp)<br>      |
|  45|[0x800032c0]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                     |[0x8000032c]:ori a1, a0, 4092<br> [0x80000330]:sw a1, 84(gp)<br>   |
|  46|[0x800032c4]<br>0xFFF7FFFF|- rs1_val == -524289<br>                                                                                                                                 |[0x8000033c]:ori a1, a0, 3<br> [0x80000340]:sw a1, 88(gp)<br>      |
|  47|[0x800032c8]<br>0xFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                                |[0x8000034c]:ori a1, a0, 1023<br> [0x80000350]:sw a1, 92(gp)<br>   |
|  48|[0x800032cc]<br>0xFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                |[0x8000035c]:ori a1, a0, 1<br> [0x80000360]:sw a1, 96(gp)<br>      |
|  49|[0x800032d0]<br>0xFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                |[0x8000036c]:ori a1, a0, 4092<br> [0x80000370]:sw a1, 100(gp)<br>  |
|  50|[0x800032d4]<br>0xFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                               |[0x8000037c]:ori a1, a0, 4092<br> [0x80000380]:sw a1, 104(gp)<br>  |
|  51|[0x800032d8]<br>0xFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                               |[0x8000038c]:ori a1, a0, 4087<br> [0x80000390]:sw a1, 108(gp)<br>  |
|  52|[0x800032dc]<br>0xFFFFFFFF|- rs1_val == -67108865<br>                                                                                                                               |[0x8000039c]:ori a1, a0, 4089<br> [0x800003a0]:sw a1, 112(gp)<br>  |
|  53|[0x800032e0]<br>0xFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                              |[0x800003ac]:ori a1, a0, 4088<br> [0x800003b0]:sw a1, 116(gp)<br>  |
|  54|[0x800032e4]<br>0xFFFFFFFF|- rs1_val == -268435457<br>                                                                                                                              |[0x800003bc]:ori a1, a0, 3072<br> [0x800003c0]:sw a1, 120(gp)<br>  |
|  55|[0x800032e8]<br>0xDFFFFFFF|- rs1_val == -536870913<br>                                                                                                                              |[0x800003cc]:ori a1, a0, 8<br> [0x800003d0]:sw a1, 124(gp)<br>     |
|  56|[0x800032ec]<br>0xBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                             |[0x800003dc]:ori a1, a0, 5<br> [0x800003e0]:sw a1, 128(gp)<br>     |
|  57|[0x800032f0]<br>0x55555555|- rs1_val == 1431655765<br>                                                                                                                              |[0x800003ec]:ori a1, a0, 4<br> [0x800003f0]:sw a1, 132(gp)<br>     |
|  58|[0x800032f4]<br>0xAAAAABAA|- rs1_val == -1431655766<br>                                                                                                                             |[0x800003fc]:ori a1, a0, 256<br> [0x80000400]:sw a1, 136(gp)<br>   |
|  59|[0x800032f8]<br>0xFFFFFFFF|- imm_val == -5<br>                                                                                                                                      |[0x8000040c]:ori a1, a0, 4091<br> [0x80000410]:sw a1, 140(gp)<br>  |
|  60|[0x800032fc]<br>0xFFFFFFFF|- imm_val == -33<br>                                                                                                                                     |[0x8000041c]:ori a1, a0, 4063<br> [0x80000420]:sw a1, 144(gp)<br>  |
|  61|[0x80003300]<br>0xFFFFFF7F|- imm_val == -129<br>                                                                                                                                    |[0x8000042c]:ori a1, a0, 3967<br> [0x80000430]:sw a1, 148(gp)<br>  |
|  62|[0x80003304]<br>0xFFFFFFFF|- imm_val == -513<br>                                                                                                                                    |[0x8000043c]:ori a1, a0, 3583<br> [0x80000440]:sw a1, 152(gp)<br>  |
|  63|[0x80003308]<br>0xFFFFFBFF|- imm_val == -1025<br>                                                                                                                                   |[0x80000448]:ori a1, a0, 3071<br> [0x8000044c]:sw a1, 156(gp)<br>  |
|  64|[0x8000330c]<br>0xFFFFFFF7|- imm_val == 1365<br>                                                                                                                                    |[0x80000454]:ori a1, a0, 1365<br> [0x80000458]:sw a1, 160(gp)<br>  |
|  65|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                     |[0x80000460]:ori a1, a0, 3071<br> [0x80000464]:sw a1, 164(gp)<br>  |
|  66|[0x80003314]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                     |[0x8000046c]:ori a1, a0, 3967<br> [0x80000470]:sw a1, 168(gp)<br>  |
|  67|[0x80003318]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                    |[0x80000478]:ori a1, a0, 4063<br> [0x8000047c]:sw a1, 172(gp)<br>  |
|  68|[0x8000331c]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                                                                    |[0x80000484]:ori a1, a0, 4<br> [0x80000488]:sw a1, 176(gp)<br>     |
|  69|[0x80003320]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                   |[0x80000490]:ori a1, a0, 4094<br> [0x80000494]:sw a1, 180(gp)<br>  |
|  70|[0x80003324]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                   |[0x800004a0]:ori a1, a0, 9<br> [0x800004a4]:sw a1, 184(gp)<br>     |
|  71|[0x80003328]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                   |[0x800004b0]:ori a1, a0, 4091<br> [0x800004b4]:sw a1, 188(gp)<br>  |
|  72|[0x8000332c]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                   |[0x800004c0]:ori a1, a0, 4095<br> [0x800004c4]:sw a1, 192(gp)<br>  |
|  73|[0x80003330]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                  |[0x800004d0]:ori a1, a0, 4089<br> [0x800004d4]:sw a1, 196(gp)<br>  |
|  74|[0x80003334]<br>0xFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                  |[0x800004e0]:ori a1, a0, 1023<br> [0x800004e4]:sw a1, 200(gp)<br>  |
|  75|[0x80003338]<br>0xFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                  |[0x800004f0]:ori a1, a0, 1024<br> [0x800004f4]:sw a1, 204(gp)<br>  |
|  76|[0x8000333c]<br>0xFFFDFFFF|- rs1_val == -131073<br>                                                                                                                                 |[0x80000500]:ori a1, a0, 2047<br> [0x80000504]:sw a1, 208(gp)<br>  |
