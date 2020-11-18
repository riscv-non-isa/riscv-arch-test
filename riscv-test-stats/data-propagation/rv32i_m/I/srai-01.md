
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005b0')]      |
| SIG_REGION                | [('0x80002204', '0x8000235c', '86 words')]      |
| COV_LABELS                | srai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srai-01.S/srai-01.S    |
| Total Number of coverpoints| 178     |
| Total Coverpoints Hit     | 178      |
| Total Signature Updates   | 86      |
| STAT1                     | 85      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a4]:srai a1, a0, 29
      [0x800005a8]:sw a1, 240(sp)
 -- Signature Address: 0x80002358 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 8192
      - imm_val == 29






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

|s.no|        signature         |                                                                            coverpoints                                                                            |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFFFFFF|- opcode : srai<br> - rs1 : x18<br> - rd : x14<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -4097<br> - imm_val == 29<br> |[0x80000108]:srai a4, s2, 29<br> [0x8000010c]:sw a4, 0(ra)<br>      |
|   2|[0x80002208]<br>0x00000000|- rs1 : x24<br> - rd : x24<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 256<br> - imm_val == 30<br>                       |[0x80000114]:srai s8, s8, 30<br> [0x80000118]:sw s8, 4(ra)<br>      |
|   3|[0x8000220c]<br>0xFFFF4AFC|- rs1 : x13<br> - rd : x21<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val==-46340<br>                                                                            |[0x80000124]:srai s5, a3, 0<br> [0x80000128]:sw s5, 8(ra)<br>       |
|   4|[0x80002210]<br>0x00000005|- rs1 : x17<br> - rd : x29<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val==5<br>                                                                                 |[0x80000130]:srai t4, a7, 0<br> [0x80000134]:sw t4, 12(ra)<br>      |
|   5|[0x80002214]<br>0xFFFFFFFF|- rs1 : x8<br> - rd : x28<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -67108865<br>                                                                 |[0x80000140]:srai t3, fp, 31<br> [0x80000144]:sw t3, 16(ra)<br>     |
|   6|[0x80002218]<br>0x00000000|- rs1 : x10<br> - rd : x15<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                     |[0x80000150]:srai a5, a0, 31<br> [0x80000154]:sw a5, 20(ra)<br>     |
|   7|[0x8000221c]<br>0x00000000|- rs1 : x20<br> - rd : x18<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4<br> - rs1_val==4<br> - imm_val == 4<br>                  |[0x8000015c]:srai s2, s4, 4<br> [0x80000160]:sw s2, 24(ra)<br>      |
|   8|[0x80002220]<br>0xFC000000|- rs1 : x22<br> - rd : x16<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                    |[0x80000168]:srai a6, s6, 5<br> [0x8000016c]:sw a6, 28(ra)<br>      |
|   9|[0x80002224]<br>0x00000000|- rs1 : x29<br> - rd : x30<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br> - imm_val == 23<br>                                         |[0x80000174]:srai t5, t4, 23<br> [0x80000178]:sw t5, 32(ra)<br>     |
|  10|[0x80002228]<br>0x00000000|- rs1 : x0<br> - rd : x4<br>                                                                                                                                       |[0x80000184]:srai tp, zero, 13<br> [0x80000188]:sw tp, 36(ra)<br>   |
|  11|[0x8000222c]<br>0x00000000|- rs1 : x3<br> - rd : x27<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                            |[0x80000190]:srai s11, gp, 29<br> [0x80000194]:sw s11, 40(ra)<br>   |
|  12|[0x80002230]<br>0x00000000|- rs1 : x6<br> - rd : x7<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 21<br>                                                                               |[0x8000019c]:srai t2, t1, 21<br> [0x800001a0]:sw t2, 44(ra)<br>     |
|  13|[0x80002234]<br>0x00000000|- rs1 : x30<br> - rd : x2<br> - rs1_val == 8<br>                                                                                                                   |[0x800001a8]:srai sp, t5, 29<br> [0x800001ac]:sw sp, 48(ra)<br>     |
|  14|[0x80002238]<br>0x00000000|- rs1 : x16<br> - rd : x3<br> - rs1_val == 16<br> - imm_val == 15<br>                                                                                              |[0x800001b4]:srai gp, a6, 15<br> [0x800001b8]:sw gp, 52(ra)<br>     |
|  15|[0x8000223c]<br>0x00000000|- rs1 : x2<br> - rd : x9<br> - rs1_val == 32<br> - imm_val == 8<br>                                                                                                |[0x800001c0]:srai s1, sp, 8<br> [0x800001c4]:sw s1, 56(ra)<br>      |
|  16|[0x80002240]<br>0x00000000|- rs1 : x26<br> - rd : x13<br> - rs1_val == 64<br>                                                                                                                 |[0x800001cc]:srai a3, s10, 8<br> [0x800001d0]:sw a3, 60(ra)<br>     |
|  17|[0x80002244]<br>0x00000000|- rs1 : x4<br> - rd : x20<br> - rs1_val == 128<br>                                                                                                                 |[0x800001d8]:srai s4, tp, 11<br> [0x800001dc]:sw s4, 64(ra)<br>     |
|  18|[0x80002248]<br>0x00000100|- rs1 : x7<br> - rd : x25<br> - rs1_val == 512<br> - imm_val == 1<br>                                                                                              |[0x800001e4]:srai s9, t2, 1<br> [0x800001e8]:sw s9, 68(ra)<br>      |
|  19|[0x8000224c]<br>0x00000000|- rs1 : x9<br> - rd : x23<br> - rs1_val == 1024<br>                                                                                                                |[0x800001f0]:srai s7, s1, 19<br> [0x800001f4]:sw s7, 72(ra)<br>     |
|  20|[0x80002250]<br>0x00000000|- rs1 : x23<br> - rd : x19<br> - rs1_val == 2048<br>                                                                                                               |[0x80000200]:srai s3, s7, 15<br> [0x80000204]:sw s3, 76(ra)<br>     |
|  21|[0x80002254]<br>0x00000000|- rs1 : x25<br> - rd : x22<br> - rs1_val == 4096<br>                                                                                                               |[0x8000020c]:srai s6, s9, 23<br> [0x80000210]:sw s6, 80(ra)<br>     |
|  22|[0x80002258]<br>0x00000000|- rs1 : x11<br> - rd : x0<br> - rs1_val == 8192<br>                                                                                                                |[0x80000218]:srai zero, a1, 29<br> [0x8000021c]:sw zero, 84(ra)<br> |
|  23|[0x8000225c]<br>0x00000010|- rs1 : x15<br> - rd : x17<br> - rs1_val == 16384<br> - imm_val == 10<br>                                                                                          |[0x80000224]:srai a7, a5, 10<br> [0x80000228]:sw a7, 88(ra)<br>     |
|  24|[0x80002260]<br>0x00004000|- rs1 : x27<br> - rd : x10<br> - rs1_val == 32768<br>                                                                                                              |[0x80000230]:srai a0, s11, 1<br> [0x80000234]:sw a0, 92(ra)<br>     |
|  25|[0x80002264]<br>0x00000000|- rs1 : x31<br> - rd : x6<br> - rs1_val == 65536<br> - imm_val == 27<br>                                                                                           |[0x8000023c]:srai t1, t6, 27<br> [0x80000240]:sw t1, 96(ra)<br>     |
|  26|[0x80002268]<br>0x00000000|- rs1 : x5<br> - rd : x11<br> - rs1_val == 131072<br>                                                                                                              |[0x80000250]:srai a1, t0, 18<br> [0x80000254]:sw a1, 0(sp)<br>      |
|  27|[0x8000226c]<br>0x00000000|- rs1 : x1<br> - rd : x5<br> - rs1_val == 262144<br>                                                                                                               |[0x8000025c]:srai t0, ra, 21<br> [0x80000260]:sw t0, 4(sp)<br>      |
|  28|[0x80002270]<br>0x00000400|- rs1 : x12<br> - rd : x26<br> - rs1_val == 524288<br>                                                                                                             |[0x80000268]:srai s10, a2, 9<br> [0x8000026c]:sw s10, 8(sp)<br>     |
|  29|[0x80002274]<br>0x00000040|- rs1 : x14<br> - rd : x8<br> - rs1_val == 1048576<br>                                                                                                             |[0x80000274]:srai fp, a4, 14<br> [0x80000278]:sw fp, 12(sp)<br>     |
|  30|[0x80002278]<br>0x00000010|- rs1 : x21<br> - rd : x1<br> - rs1_val == 2097152<br>                                                                                                             |[0x80000280]:srai ra, s5, 17<br> [0x80000284]:sw ra, 16(sp)<br>     |
|  31|[0x8000227c]<br>0x00000100|- rs1 : x28<br> - rd : x31<br> - rs1_val == 4194304<br>                                                                                                            |[0x8000028c]:srai t6, t3, 14<br> [0x80000290]:sw t6, 20(sp)<br>     |
|  32|[0x80002280]<br>0x00000020|- rs1 : x19<br> - rd : x12<br> - rs1_val == 8388608<br>                                                                                                            |[0x80000298]:srai a2, s3, 18<br> [0x8000029c]:sw a2, 24(sp)<br>     |
|  33|[0x80002284]<br>0x00100000|- rs1_val == 16777216<br>                                                                                                                                          |[0x800002a4]:srai a1, a0, 4<br> [0x800002a8]:sw a1, 28(sp)<br>      |
|  34|[0x80002288]<br>0x00000004|- rs1_val == 33554432<br>                                                                                                                                          |[0x800002b0]:srai a1, a0, 23<br> [0x800002b4]:sw a1, 32(sp)<br>     |
|  35|[0x8000228c]<br>0x00400000|- rs1_val == 67108864<br>                                                                                                                                          |[0x800002bc]:srai a1, a0, 4<br> [0x800002c0]:sw a1, 36(sp)<br>      |
|  36|[0x80002290]<br>0x01000000|- rs1_val == 134217728<br>                                                                                                                                         |[0x800002c8]:srai a1, a0, 3<br> [0x800002cc]:sw a1, 40(sp)<br>      |
|  37|[0x80002294]<br>0x00001000|- rs1_val == 268435456<br> - imm_val == 16<br>                                                                                                                     |[0x800002d4]:srai a1, a0, 16<br> [0x800002d8]:sw a1, 44(sp)<br>     |
|  38|[0x80002298]<br>0x00100000|- rs1_val == 536870912<br>                                                                                                                                         |[0x800002e0]:srai a1, a0, 9<br> [0x800002e4]:sw a1, 48(sp)<br>      |
|  39|[0x8000229c]<br>0x00004000|- rs1_val == 1073741824<br>                                                                                                                                        |[0x800002ec]:srai a1, a0, 16<br> [0x800002f0]:sw a1, 52(sp)<br>     |
|  40|[0x800022a0]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                |[0x800002f8]:srai a1, a0, 1<br> [0x800002fc]:sw a1, 56(sp)<br>      |
|  41|[0x800022a4]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                |[0x80000304]:srai a1, a0, 17<br> [0x80000308]:sw a1, 60(sp)<br>     |
|  42|[0x800022a8]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                |[0x80000310]:srai a1, a0, 23<br> [0x80000314]:sw a1, 64(sp)<br>     |
|  43|[0x800022ac]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                |[0x8000031c]:srai a1, a0, 6<br> [0x80000320]:sw a1, 68(sp)<br>      |
|  44|[0x800022b0]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                               |[0x80000328]:srai a1, a0, 17<br> [0x8000032c]:sw a1, 72(sp)<br>     |
|  45|[0x800022b4]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                               |[0x80000334]:srai a1, a0, 15<br> [0x80000338]:sw a1, 76(sp)<br>     |
|  46|[0x800022b8]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                               |[0x80000340]:srai a1, a0, 15<br> [0x80000344]:sw a1, 80(sp)<br>     |
|  47|[0x800022bc]<br>0xFFFFFFBF|- rs1_val == -129<br>                                                                                                                                              |[0x8000034c]:srai a1, a0, 1<br> [0x80000350]:sw a1, 84(sp)<br>      |
|  48|[0x800022c0]<br>0xFFFFFFFD|- rs1_val == -257<br>                                                                                                                                              |[0x80000358]:srai a1, a0, 7<br> [0x8000035c]:sw a1, 88(sp)<br>      |
|  49|[0x800022c4]<br>0xFFFFFFDF|- rs1_val == -513<br>                                                                                                                                              |[0x80000364]:srai a1, a0, 4<br> [0x80000368]:sw a1, 92(sp)<br>      |
|  50|[0x800022c8]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                             |[0x80000370]:srai a1, a0, 29<br> [0x80000374]:sw a1, 96(sp)<br>     |
|  51|[0x800022cc]<br>0xFFFFFFFB|- rs1_val == -2049<br>                                                                                                                                             |[0x80000380]:srai a1, a0, 9<br> [0x80000384]:sw a1, 100(sp)<br>     |
|  52|[0x800022d0]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                             |[0x80000390]:srai a1, a0, 18<br> [0x80000394]:sw a1, 104(sp)<br>    |
|  53|[0x800022d4]<br>0xFFFFFFFB|- rs1_val == -16385<br>                                                                                                                                            |[0x800003a0]:srai a1, a0, 12<br> [0x800003a4]:sw a1, 108(sp)<br>    |
|  54|[0x800022d8]<br>0xFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                            |[0x800003b0]:srai a1, a0, 16<br> [0x800003b4]:sw a1, 112(sp)<br>    |
|  55|[0x800022dc]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                            |[0x800003c0]:srai a1, a0, 27<br> [0x800003c4]:sw a1, 116(sp)<br>    |
|  56|[0x800022e0]<br>0xFFFDFFFF|- rs1_val == -2097153<br>                                                                                                                                          |[0x800003d0]:srai a1, a0, 4<br> [0x800003d4]:sw a1, 120(sp)<br>     |
|  57|[0x800022e4]<br>0xFFFFFDFF|- rs1_val == -4194305<br>                                                                                                                                          |[0x800003e0]:srai a1, a0, 13<br> [0x800003e4]:sw a1, 124(sp)<br>    |
|  58|[0x800022e8]<br>0xFFEFFFFF|- rs1_val == -8388609<br>                                                                                                                                          |[0x800003f0]:srai a1, a0, 3<br> [0x800003f4]:sw a1, 128(sp)<br>     |
|  59|[0x800022ec]<br>0xFFFFBFFF|- rs1_val == -16777217<br>                                                                                                                                         |[0x80000400]:srai a1, a0, 10<br> [0x80000404]:sw a1, 132(sp)<br>    |
|  60|[0x800022f0]<br>0xFFFFF7FF|- rs1_val == -33554433<br>                                                                                                                                         |[0x80000410]:srai a1, a0, 14<br> [0x80000414]:sw a1, 136(sp)<br>    |
|  61|[0x800022f4]<br>0xFFF7FFFF|- rs1_val == -134217729<br>                                                                                                                                        |[0x80000420]:srai a1, a0, 8<br> [0x80000424]:sw a1, 140(sp)<br>     |
|  62|[0x800022f8]<br>0xFFFF7FFF|- rs1_val == -268435457<br>                                                                                                                                        |[0x80000430]:srai a1, a0, 13<br> [0x80000434]:sw a1, 144(sp)<br>    |
|  63|[0x800022fc]<br>0xF7FFFFFF|- rs1_val == -536870913<br> - imm_val == 2<br>                                                                                                                     |[0x80000440]:srai a1, a0, 2<br> [0x80000444]:sw a1, 148(sp)<br>     |
|  64|[0x80002300]<br>0xFFDFFFFF|- rs1_val == -1073741825<br>                                                                                                                                       |[0x80000450]:srai a1, a0, 9<br> [0x80000454]:sw a1, 152(sp)<br>     |
|  65|[0x80002304]<br>0xFFFFFFFD|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                            |[0x80000460]:srai a1, a0, 29<br> [0x80000464]:sw a1, 156(sp)<br>    |
|  66|[0x80002308]<br>0x00000000|- rs1_val==3<br>                                                                                                                                                   |[0x8000046c]:srai a1, a0, 4<br> [0x80000470]:sw a1, 160(sp)<br>     |
|  67|[0x8000230c]<br>0x06666666|- rs1_val==858993459<br>                                                                                                                                           |[0x8000047c]:srai a1, a0, 3<br> [0x80000480]:sw a1, 164(sp)<br>     |
|  68|[0x80002310]<br>0x000CCCCC|- rs1_val==1717986918<br>                                                                                                                                          |[0x8000048c]:srai a1, a0, 11<br> [0x80000490]:sw a1, 168(sp)<br>    |
|  69|[0x80002314]<br>0x00000002|- rs1_val==46340<br>                                                                                                                                               |[0x8000049c]:srai a1, a0, 14<br> [0x800004a0]:sw a1, 172(sp)<br>    |
|  70|[0x80002318]<br>0x00006666|- rs1_val==1717986919<br>                                                                                                                                          |[0x800004ac]:srai a1, a0, 16<br> [0x800004b0]:sw a1, 176(sp)<br>    |
|  71|[0x8000231c]<br>0xFFFFFE95|- rs1_val==-46339<br>                                                                                                                                              |[0x800004bc]:srai a1, a0, 7<br> [0x800004c0]:sw a1, 180(sp)<br>     |
|  72|[0x80002320]<br>0x00000000|- rs1_val==46341<br>                                                                                                                                               |[0x800004cc]:srai a1, a0, 19<br> [0x800004d0]:sw a1, 184(sp)<br>    |
|  73|[0x80002324]<br>0x00000002|- rs1_val==1431655766<br>                                                                                                                                          |[0x800004dc]:srai a1, a0, 29<br> [0x800004e0]:sw a1, 188(sp)<br>    |
|  74|[0x80002328]<br>0xFFFF7FFF|- rs1_val == -1048577<br>                                                                                                                                          |[0x800004ec]:srai a1, a0, 5<br> [0x800004f0]:sw a1, 192(sp)<br>     |
|  75|[0x8000232c]<br>0xFFFFEAAA|- rs1_val==-1431655765<br>                                                                                                                                         |[0x800004fc]:srai a1, a0, 18<br> [0x80000500]:sw a1, 196(sp)<br>    |
|  76|[0x80002330]<br>0x000AAAAA|- rs1_val==1431655764<br>                                                                                                                                          |[0x8000050c]:srai a1, a0, 11<br> [0x80000510]:sw a1, 200(sp)<br>    |
|  77|[0x80002334]<br>0x00000000|- rs1_val==6<br>                                                                                                                                                   |[0x80000518]:srai a1, a0, 31<br> [0x8000051c]:sw a1, 204(sp)<br>    |
|  78|[0x80002338]<br>0x00000199|- rs1_val==858993458<br>                                                                                                                                           |[0x80000528]:srai a1, a0, 21<br> [0x8000052c]:sw a1, 208(sp)<br>    |
|  79|[0x8000233c]<br>0x00000CCC|- rs1_val==1717986917<br>                                                                                                                                          |[0x80000538]:srai a1, a0, 19<br> [0x8000053c]:sw a1, 212(sp)<br>    |
|  80|[0x80002340]<br>0x00000000|- rs1_val==46339<br>                                                                                                                                               |[0x80000548]:srai a1, a0, 21<br> [0x8000054c]:sw a1, 216(sp)<br>    |
|  81|[0x80002344]<br>0xFFFFBFFF|- rs1_val == -131073<br>                                                                                                                                           |[0x80000558]:srai a1, a0, 3<br> [0x8000055c]:sw a1, 220(sp)<br>     |
|  82|[0x80002348]<br>0xFFFEFFFF|- rs1_val == -262145<br>                                                                                                                                           |[0x80000568]:srai a1, a0, 2<br> [0x8000056c]:sw a1, 224(sp)<br>     |
|  83|[0x8000234c]<br>0xFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                           |[0x80000578]:srai a1, a0, 21<br> [0x8000057c]:sw a1, 228(sp)<br>    |
|  84|[0x80002350]<br>0x00000000|- rs1_val==858993460<br>                                                                                                                                           |[0x80000588]:srai a1, a0, 30<br> [0x8000058c]:sw a1, 232(sp)<br>    |
|  85|[0x80002354]<br>0x0003FFFF|- rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                                                   |[0x80000598]:srai a1, a0, 13<br> [0x8000059c]:sw a1, 236(sp)<br>    |
