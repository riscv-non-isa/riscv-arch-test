
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000740')]      |
| SIG_REGION                | [('0x80003204', '0x80003384', '96 words')]      |
| COV_LABELS                | cxor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 96      |
| STAT1                     | 95      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000043a]:c.xor a0, a1
      [0x8000043c]:sw a0, 204(ra)
 -- Signature Address: 0x800032d0 Data: 0xBFFFFFF6
 -- Redundant Coverpoints hit by the op
      - opcode : c.xor
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -1073741825






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

|s.no|        signature         |                                                                   coverpoints                                                                    |                             code                             |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : c.xor<br> - rs1 : x15<br> - rs2 : x15<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -1073741825<br> - rs1_val == -1073741825<br> |[0x8000010c]:c.xor a5, a5<br> [0x8000010e]:sw a5, 0(ra)<br>   |
|   2|[0x80003208]<br>0xFFFFDEFF|- rs1 : x13<br> - rs2 : x9<br> - rs1 != rs2<br> - rs2_val == -8193<br> - rs1_val == 256<br>                                                       |[0x8000011e]:c.xor a3, s1<br> [0x80000120]:sw a3, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x80000040|- rs1 : x9<br> - rs2 : x11<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val > 0<br> - rs2_val == 64<br> - rs1_val == -2147483648<br>                 |[0x8000012c]:c.xor s1, a1<br> [0x8000012e]:sw s1, 8(ra)<br>   |
|   4|[0x80003210]<br>0x00000080|- rs1 : x14<br> - rs2 : x12<br> - rs1_val == 0<br> - rs2_val == 128<br>                                                                           |[0x8000013a]:c.xor a4, a2<br> [0x8000013c]:sw a4, 12(ra)<br>  |
|   5|[0x80003214]<br>0x7FFFFFF9|- rs1 : x12<br> - rs2 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                       |[0x8000014c]:c.xor a2, s0<br> [0x8000014e]:sw a2, 16(ra)<br>  |
|   6|[0x80003218]<br>0x10000001|- rs1 : x10<br> - rs2 : x13<br> - rs1_val == 1<br> - rs2_val == 268435456<br>                                                                     |[0x8000015a]:c.xor a0, a3<br> [0x8000015c]:sw a0, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x77FFFFFF|- rs1 : x8<br> - rs2 : x10<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -134217729<br>                           |[0x8000016c]:c.xor s0, a0<br> [0x8000016e]:sw fp, 24(ra)<br>  |
|   8|[0x80003220]<br>0xFFFFFFEF|- rs1 : x11<br> - rs2 : x14<br> - rs2_val == 0<br> - rs1_val == -17<br>                                                                           |[0x8000017a]:c.xor a1, a4<br> [0x8000017c]:sw a1, 28(ra)<br>  |
|   9|[0x80003224]<br>0x80000005|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                      |[0x8000018c]:c.xor a0, a1<br> [0x8000018e]:sw a0, 32(ra)<br>  |
|  10|[0x80003228]<br>0x01000002|- rs2_val == 16777216<br> - rs1_val == 2<br>                                                                                                      |[0x8000019a]:c.xor a0, a1<br> [0x8000019c]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0xFFFEFFFB|- rs2_val == -65537<br> - rs1_val == 4<br>                                                                                                        |[0x800001ac]:c.xor a0, a1<br> [0x800001ae]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0x00002008|- rs2_val == 8192<br> - rs1_val == 8<br>                                                                                                          |[0x800001ba]:c.xor a0, a1<br> [0x800001bc]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0x00010010|- rs2_val == 65536<br> - rs1_val == 16<br>                                                                                                        |[0x800001c8]:c.xor a0, a1<br> [0x800001ca]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0x80000020|- rs1_val == 32<br>                                                                                                                               |[0x800001d6]:c.xor a0, a1<br> [0x800001d8]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0xFFF7FFBF|- rs2_val == -524289<br> - rs1_val == 64<br>                                                                                                      |[0x800001e8]:c.xor a0, a1<br> [0x800001ea]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000080|- rs1_val == 128<br>                                                                                                                              |[0x800001f6]:c.xor a0, a1<br> [0x800001f8]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0xFFFFF9FF|- rs2_val == -1025<br> - rs1_val == 512<br>                                                                                                       |[0x80000204]:c.xor a0, a1<br> [0x80000206]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x02000400|- rs2_val == 33554432<br> - rs1_val == 1024<br>                                                                                                   |[0x80000212]:c.xor a0, a1<br> [0x80000214]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x20000800|- rs2_val == 536870912<br> - rs1_val == 2048<br>                                                                                                  |[0x80000224]:c.xor a0, a1<br> [0x80000226]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0xFFDFEFFF|- rs2_val == -2097153<br> - rs1_val == 4096<br>                                                                                                   |[0x80000236]:c.xor a0, a1<br> [0x80000238]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x04002000|- rs2_val == 67108864<br> - rs1_val == 8192<br>                                                                                                   |[0x80000244]:c.xor a0, a1<br> [0x80000246]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x08004000|- rs2_val == 134217728<br> - rs1_val == 16384<br>                                                                                                 |[0x80000252]:c.xor a0, a1<br> [0x80000254]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00208000|- rs2_val == 2097152<br> - rs1_val == 32768<br>                                                                                                   |[0x80000260]:c.xor a0, a1<br> [0x80000262]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0x00010020|- rs2_val == 32<br> - rs1_val == 65536<br>                                                                                                        |[0x8000026e]:c.xor a0, a1<br> [0x80000270]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0xFFFDFF7F|- rs2_val == -129<br> - rs1_val == 131072<br>                                                                                                     |[0x8000027c]:c.xor a0, a1<br> [0x8000027e]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0xFFFBDFFF|- rs1_val == 262144<br>                                                                                                                           |[0x8000028e]:c.xor a0, a1<br> [0x80000290]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0xFFF7DFFF|- rs1_val == 524288<br>                                                                                                                           |[0x800002a0]:c.xor a0, a1<br> [0x800002a2]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0xFFEBFFFF|- rs2_val == -262145<br> - rs1_val == 1048576<br>                                                                                                 |[0x800002b2]:c.xor a0, a1<br> [0x800002b4]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0xDFDFFFFF|- rs2_val == -536870913<br> - rs1_val == 2097152<br>                                                                                              |[0x800002c4]:c.xor a0, a1<br> [0x800002c6]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0x02400000|- rs1_val == 4194304<br>                                                                                                                          |[0x800002d2]:c.xor a0, a1<br> [0x800002d4]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00810000|- rs1_val == 8388608<br>                                                                                                                          |[0x800002e0]:c.xor a0, a1<br> [0x800002e2]:sw a0, 120(ra)<br> |
|  32|[0x80003280]<br>0x01040000|- rs2_val == 262144<br> - rs1_val == 16777216<br>                                                                                                 |[0x800002ee]:c.xor a0, a1<br> [0x800002f0]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0xFDFFFFF9|- rs1_val == 33554432<br>                                                                                                                         |[0x800002fc]:c.xor a0, a1<br> [0x800002fe]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0xFBFFFFFC|- rs1_val == 67108864<br>                                                                                                                         |[0x8000030a]:c.xor a0, a1<br> [0x8000030c]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x08000020|- rs1_val == 134217728<br>                                                                                                                        |[0x80000318]:c.xor a0, a1<br> [0x8000031a]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                        |[0x80000326]:c.xor a0, a1<br> [0x80000328]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x60000000|- rs2_val == 1073741824<br> - rs1_val == 536870912<br>                                                                                            |[0x80000334]:c.xor a0, a1<br> [0x80000336]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0xBFFFFFFF|- rs1_val == 1073741824<br>                                                                                                                       |[0x80000342]:c.xor a0, a1<br> [0x80000344]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0x00008001|- rs2_val == -32769<br> - rs1_val == -2<br>                                                                                                       |[0x80000354]:c.xor a0, a1<br> [0x80000356]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0x00040002|- rs1_val == -3<br>                                                                                                                               |[0x80000366]:c.xor a0, a1<br> [0x80000368]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0x00008004|- rs1_val == -5<br>                                                                                                                               |[0x80000378]:c.xor a0, a1<br> [0x8000037a]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0xFFFEFFF7|- rs1_val == -9<br>                                                                                                                               |[0x80000386]:c.xor a0, a1<br> [0x80000388]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0x00000030|- rs2_val == -17<br> - rs1_val == -33<br>                                                                                                         |[0x80000394]:c.xor a0, a1<br> [0x80000396]:sw a0, 168(ra)<br> |
|  44|[0x800032b0]<br>0x00000060|- rs2_val == -33<br> - rs1_val == -65<br>                                                                                                         |[0x800003a2]:c.xor a0, a1<br> [0x800003a4]:sw a0, 172(ra)<br> |
|  45|[0x800032b4]<br>0x00400002|- rs2_val == -4194305<br>                                                                                                                         |[0x800003b4]:c.xor a0, a1<br> [0x800003b6]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0x00840000|- rs2_val == -8388609<br> - rs1_val == -262145<br>                                                                                                |[0x800003ca]:c.xor a0, a1<br> [0x800003cc]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFEFFFFF9|- rs2_val == -16777217<br>                                                                                                                        |[0x800003dc]:c.xor a0, a1<br> [0x800003de]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0xF9FFFFFF|- rs2_val == -33554433<br>                                                                                                                        |[0x800003ee]:c.xor a0, a1<br> [0x800003f0]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0xFBFBFFFF|- rs2_val == -67108865<br>                                                                                                                        |[0x80000400]:c.xor a0, a1<br> [0x80000402]:sw a0, 192(ra)<br> |
|  50|[0x800032c8]<br>0x18000000|- rs2_val == -134217729<br> - rs1_val == -268435457<br>                                                                                           |[0x80000416]:c.xor a0, a1<br> [0x80000418]:sw a0, 196(ra)<br> |
|  51|[0x800032cc]<br>0xEFFFFFFE|- rs2_val == -268435457<br>                                                                                                                       |[0x80000428]:c.xor a0, a1<br> [0x8000042a]:sw a0, 200(ra)<br> |
|  52|[0x800032d4]<br>0x55555455|- rs2_val == 1431655765<br>                                                                                                                       |[0x8000044c]:c.xor a0, a1<br> [0x8000044e]:sw a0, 208(ra)<br> |
|  53|[0x800032d8]<br>0xAAAAAAA8|- rs2_val == -1431655766<br>                                                                                                                      |[0x8000045e]:c.xor a0, a1<br> [0x80000460]:sw a0, 212(ra)<br> |
|  54|[0x800032dc]<br>0xFFFFFF3F|- rs1_val == -129<br>                                                                                                                             |[0x8000046c]:c.xor a0, a1<br> [0x8000046e]:sw a0, 216(ra)<br> |
|  55|[0x800032e0]<br>0xFFDFFEFF|- rs1_val == -257<br>                                                                                                                             |[0x8000047a]:c.xor a0, a1<br> [0x8000047c]:sw a0, 220(ra)<br> |
|  56|[0x800032e4]<br>0x00000240|- rs2_val == -65<br> - rs1_val == -513<br>                                                                                                        |[0x80000488]:c.xor a0, a1<br> [0x8000048a]:sw a0, 224(ra)<br> |
|  57|[0x800032e8]<br>0x00000401|- rs2_val == -2<br> - rs1_val == -1025<br>                                                                                                        |[0x80000496]:c.xor a0, a1<br> [0x80000498]:sw a0, 228(ra)<br> |
|  58|[0x800032ec]<br>0xFFFFF7FD|- rs2_val == 2<br> - rs1_val == -2049<br>                                                                                                         |[0x800004a8]:c.xor a0, a1<br> [0x800004aa]:sw a0, 232(ra)<br> |
|  59|[0x800032f0]<br>0xFFF7EFFF|- rs2_val == 524288<br> - rs1_val == -4097<br>                                                                                                    |[0x800004ba]:c.xor a0, a1<br> [0x800004bc]:sw a0, 236(ra)<br> |
|  60|[0x800032f4]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                            |[0x800004cc]:c.xor a0, a1<br> [0x800004ce]:sw a0, 240(ra)<br> |
|  61|[0x800032f8]<br>0xFFFFBFF7|- rs2_val == 8<br> - rs1_val == -16385<br>                                                                                                        |[0x800004de]:c.xor a0, a1<br> [0x800004e0]:sw a0, 244(ra)<br> |
|  62|[0x800032fc]<br>0x00008002|- rs2_val == -3<br> - rs1_val == -32769<br>                                                                                                       |[0x800004f0]:c.xor a0, a1<br> [0x800004f2]:sw a0, 248(ra)<br> |
|  63|[0x80003300]<br>0x00010004|- rs2_val == -5<br> - rs1_val == -65537<br>                                                                                                       |[0x80000502]:c.xor a0, a1<br> [0x80000504]:sw a0, 252(ra)<br> |
|  64|[0x80003304]<br>0xBFFDFFFF|- rs1_val == -131073<br>                                                                                                                          |[0x80000514]:c.xor a0, a1<br> [0x80000516]:sw a0, 256(ra)<br> |
|  65|[0x80003308]<br>0x20080000|- rs1_val == -524289<br>                                                                                                                          |[0x8000052a]:c.xor a0, a1<br> [0x8000052c]:sw a0, 260(ra)<br> |
|  66|[0x8000330c]<br>0xFF7FFFF7|- rs1_val == -8388609<br>                                                                                                                         |[0x8000053c]:c.xor a0, a1<br> [0x8000053e]:sw a0, 264(ra)<br> |
|  67|[0x80003310]<br>0xC1000000|- rs1_val == -16777217<br>                                                                                                                        |[0x80000552]:c.xor a0, a1<br> [0x80000554]:sw a0, 268(ra)<br> |
|  68|[0x80003314]<br>0xFDFFFFF9|- rs1_val == -33554433<br>                                                                                                                        |[0x80000564]:c.xor a0, a1<br> [0x80000566]:sw a0, 272(ra)<br> |
|  69|[0x80003318]<br>0xC4000000|- rs1_val == -67108865<br>                                                                                                                        |[0x8000057a]:c.xor a0, a1<br> [0x8000057c]:sw a0, 276(ra)<br> |
|  70|[0x8000331c]<br>0xDFFFF7FF|- rs2_val == 2048<br> - rs1_val == -536870913<br>                                                                                                 |[0x80000590]:c.xor a0, a1<br> [0x80000592]:sw a0, 280(ra)<br> |
|  71|[0x80003320]<br>0x55555575|- rs1_val == 1431655765<br>                                                                                                                       |[0x800005a2]:c.xor a0, a1<br> [0x800005a4]:sw a0, 284(ra)<br> |
|  72|[0x80003324]<br>0x55D55555|- rs1_val == -1431655766<br>                                                                                                                      |[0x800005b8]:c.xor a0, a1<br> [0x800005ba]:sw a0, 288(ra)<br> |
|  73|[0x80003328]<br>0xFFFFFFF2|- rs2_val == 4<br>                                                                                                                                |[0x800005c6]:c.xor a0, a1<br> [0x800005c8]:sw a0, 292(ra)<br> |
|  74|[0x8000332c]<br>0x00000017|- rs2_val == 16<br>                                                                                                                               |[0x800005d4]:c.xor a0, a1<br> [0x800005d6]:sw a0, 296(ra)<br> |
|  75|[0x80003330]<br>0x00400100|- rs2_val == 256<br>                                                                                                                              |[0x800005e2]:c.xor a0, a1<br> [0x800005e4]:sw a0, 300(ra)<br> |
|  76|[0x80003334]<br>0xFFFFFDFC|- rs2_val == 512<br>                                                                                                                              |[0x800005f0]:c.xor a0, a1<br> [0x800005f2]:sw a0, 304(ra)<br> |
|  77|[0x80003338]<br>0xFFFFFBF6|- rs2_val == 1024<br>                                                                                                                             |[0x800005fe]:c.xor a0, a1<br> [0x80000600]:sw a0, 308(ra)<br> |
|  78|[0x8000333c]<br>0xFFBFEFFF|- rs2_val == 4096<br> - rs1_val == -4194305<br>                                                                                                   |[0x80000610]:c.xor a0, a1<br> [0x80000612]:sw a0, 312(ra)<br> |
|  79|[0x80003340]<br>0xFEFFBFFF|- rs2_val == 16384<br>                                                                                                                            |[0x80000622]:c.xor a0, a1<br> [0x80000624]:sw a0, 316(ra)<br> |
|  80|[0x80003344]<br>0xFFBFFEFF|- rs2_val == 4194304<br>                                                                                                                          |[0x80000630]:c.xor a0, a1<br> [0x80000632]:sw a0, 320(ra)<br> |
|  81|[0x80003348]<br>0xFF7FEFFF|- rs2_val == 8388608<br>                                                                                                                          |[0x80000642]:c.xor a0, a1<br> [0x80000644]:sw a0, 324(ra)<br> |
|  82|[0x8000334c]<br>0x3FFDFFFF|- rs2_val == -131073<br>                                                                                                                          |[0x80000654]:c.xor a0, a1<br> [0x80000656]:sw a0, 328(ra)<br> |
|  83|[0x80003350]<br>0xFFF7FFF7|- rs2_val == -9<br>                                                                                                                               |[0x80000662]:c.xor a0, a1<br> [0x80000664]:sw a0, 332(ra)<br> |
|  84|[0x80003354]<br>0xFFFDFEFF|- rs2_val == -257<br>                                                                                                                             |[0x80000670]:c.xor a0, a1<br> [0x80000672]:sw a0, 336(ra)<br> |
|  85|[0x80003358]<br>0xFFFFFDFC|- rs2_val == -513<br>                                                                                                                             |[0x8000067e]:c.xor a0, a1<br> [0x80000680]:sw a0, 340(ra)<br> |
|  86|[0x8000335c]<br>0x00000805|- rs2_val == -2049<br>                                                                                                                            |[0x80000690]:c.xor a0, a1<br> [0x80000692]:sw a0, 344(ra)<br> |
|  87|[0x80003360]<br>0x00801000|- rs2_val == -4097<br>                                                                                                                            |[0x800006a6]:c.xor a0, a1<br> [0x800006a8]:sw a0, 348(ra)<br> |
|  88|[0x80003364]<br>0x00120000|- rs2_val == 1048576<br>                                                                                                                          |[0x800006b4]:c.xor a0, a1<br> [0x800006b6]:sw a0, 352(ra)<br> |
|  89|[0x80003368]<br>0x00280000|- rs1_val == -2097153<br>                                                                                                                         |[0x800006ca]:c.xor a0, a1<br> [0x800006cc]:sw a0, 356(ra)<br> |
|  90|[0x8000336c]<br>0x00004006|- rs2_val == -16385<br>                                                                                                                           |[0x800006dc]:c.xor a0, a1<br> [0x800006de]:sw a0, 360(ra)<br> |
|  91|[0x80003370]<br>0xFFFF7FF6|- rs2_val == 32768<br>                                                                                                                            |[0x800006ea]:c.xor a0, a1<br> [0x800006ec]:sw a0, 364(ra)<br> |
|  92|[0x80003374]<br>0xFFFDDFFF|- rs2_val == 131072<br>                                                                                                                           |[0x800006fc]:c.xor a0, a1<br> [0x800006fe]:sw a0, 368(ra)<br> |
|  93|[0x80003378]<br>0xFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                         |[0x8000070e]:c.xor a0, a1<br> [0x80000710]:sw a0, 372(ra)<br> |
|  94|[0x8000337c]<br>0x40100000|- rs2_val == -1048577<br>                                                                                                                         |[0x80000724]:c.xor a0, a1<br> [0x80000726]:sw a0, 376(ra)<br> |
|  95|[0x80003380]<br>0xBFFFFFFE|- rs2_val == 1<br>                                                                                                                                |[0x80000736]:c.xor a0, a1<br> [0x80000738]:sw a0, 380(ra)<br> |
