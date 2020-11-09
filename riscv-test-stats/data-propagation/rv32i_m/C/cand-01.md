
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000790')]      |
| SIG_REGION                | [('0x80003204', '0x80003394', '100 words')]      |
| COV_LABELS                | cand      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cand-01.S/cand-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 100      |
| STAT1                     | 99      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000077e]:c.and a0, a1
      [0x80000780]:sw a0, 396(ra)
 -- Signature Address: 0x80003390 Data: 0x00000006
 -- Redundant Coverpoints hit by the op
      - opcode : c.and
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs1_val == -131073






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

|s.no|        signature         |                                                               coverpoints                                                                |                             code                             |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFDFFFF|- opcode : c.and<br> - rs1 : x15<br> - rs2 : x15<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -131073<br> - rs1_val == -131073<br> |[0x8000010c]:c.and a5, a5<br> [0x8000010e]:sw a5, 0(ra)<br>   |
|   2|[0x80003208]<br>0xFFFFEFFF|- rs1 : x13<br> - rs2 : x9<br> - rs1 != rs2<br> - rs1_val == -4097<br>                                                                    |[0x8000011e]:c.and a3, s1<br> [0x80000120]:sw a3, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x10<br> - rs2 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val > 0<br> - rs2_val == 32<br> - rs1_val == -2147483648<br>        |[0x8000012c]:c.and a0, a3<br> [0x8000012e]:sw a0, 8(ra)<br>   |
|   4|[0x80003210]<br>0x00000000|- rs1 : x12<br> - rs2 : x8<br> - rs1_val == 0<br> - rs2_val == -2<br>                                                                     |[0x8000013a]:c.and a2, s0<br> [0x8000013c]:sw a2, 12(ra)<br>  |
|   5|[0x80003214]<br>0x00100000|- rs1 : x9<br> - rs2 : x10<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 1048576<br> - rs1_val == 2147483647<br>                      |[0x8000014c]:c.and s1, a0<br> [0x8000014e]:sw s1, 16(ra)<br>  |
|   6|[0x80003218]<br>0x00000000|- rs1 : x8<br> - rs2 : x11<br> - rs1_val == 1<br> - rs2_val == 16777216<br>                                                               |[0x8000015a]:c.and s0, a1<br> [0x8000015c]:sw fp, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x80000000|- rs1 : x11<br> - rs2 : x12<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -1431655766<br>                 |[0x8000016c]:c.and a1, a2<br> [0x8000016e]:sw a1, 24(ra)<br>  |
|   8|[0x80003220]<br>0x00000000|- rs1 : x14<br> - rs2_val == 0<br> - rs1_val == -257<br>                                                                                  |[0x8000017a]:c.and a4, a1<br> [0x8000017c]:sw a4, 28(ra)<br>  |
|   9|[0x80003224]<br>0x7FFFFF7F|- rs2 : x14<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -129<br>                                        |[0x8000018c]:c.and a0, a4<br> [0x8000018e]:sw a0, 32(ra)<br>  |
|  10|[0x80003228]<br>0x00000000|- rs2_val == 1<br> - rs1_val == 4194304<br>                                                                                               |[0x8000019a]:c.and a0, a1<br> [0x8000019c]:sw a0, 36(ra)<br>  |
|  11|[0x8000322c]<br>0x00000002|- rs2_val == -262145<br> - rs1_val == 2<br>                                                                                               |[0x800001ac]:c.and a0, a1<br> [0x800001ae]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0x00000000|- rs1_val == 4<br>                                                                                                                        |[0x800001ba]:c.and a0, a1<br> [0x800001bc]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0x00000000|- rs2_val == 65536<br> - rs1_val == 8<br>                                                                                                 |[0x800001c8]:c.and a0, a1<br> [0x800001ca]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0x00000000|- rs2_val == 1073741824<br> - rs1_val == 16<br>                                                                                           |[0x800001d6]:c.and a0, a1<br> [0x800001d8]:sw a0, 52(ra)<br>  |
|  15|[0x8000323c]<br>0x00000020|- rs2_val == -1048577<br> - rs1_val == 32<br>                                                                                             |[0x800001e8]:c.and a0, a1<br> [0x800001ea]:sw a0, 56(ra)<br>  |
|  16|[0x80003240]<br>0x00000000|- rs2_val == 67108864<br> - rs1_val == 64<br>                                                                                             |[0x800001f6]:c.and a0, a1<br> [0x800001f8]:sw a0, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00000000|- rs1_val == 128<br>                                                                                                                      |[0x80000204]:c.and a0, a1<br> [0x80000206]:sw a0, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00000100|- rs2_val == -32769<br> - rs1_val == 256<br>                                                                                              |[0x80000216]:c.and a0, a1<br> [0x80000218]:sw a0, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x00000000|- rs1_val == 512<br>                                                                                                                      |[0x80000224]:c.and a0, a1<br> [0x80000226]:sw a0, 72(ra)<br>  |
|  20|[0x80003250]<br>0x00000000|- rs1_val == 1024<br>                                                                                                                     |[0x80000232]:c.and a0, a1<br> [0x80000234]:sw a0, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00000000|- rs2_val == 268435456<br> - rs1_val == 2048<br>                                                                                          |[0x80000244]:c.and a0, a1<br> [0x80000246]:sw a0, 80(ra)<br>  |
|  22|[0x80003258]<br>0x00000000|- rs2_val == 8388608<br> - rs1_val == 4096<br>                                                                                            |[0x80000252]:c.and a0, a1<br> [0x80000254]:sw a0, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x00002000|- rs1_val == 8192<br>                                                                                                                     |[0x80000260]:c.and a0, a1<br> [0x80000262]:sw a0, 88(ra)<br>  |
|  24|[0x80003260]<br>0x00000000|- rs1_val == 16384<br>                                                                                                                    |[0x8000026e]:c.and a0, a1<br> [0x80000270]:sw a0, 92(ra)<br>  |
|  25|[0x80003264]<br>0x00000000|- rs1_val == 32768<br>                                                                                                                    |[0x8000027c]:c.and a0, a1<br> [0x8000027e]:sw a0, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00010000|- rs2_val == -513<br> - rs1_val == 65536<br>                                                                                              |[0x8000028a]:c.and a0, a1<br> [0x8000028c]:sw a0, 100(ra)<br> |
|  27|[0x8000326c]<br>0x00020000|- rs1_val == 131072<br>                                                                                                                   |[0x80000298]:c.and a0, a1<br> [0x8000029a]:sw a0, 104(ra)<br> |
|  28|[0x80003270]<br>0x00040000|- rs2_val == -8193<br> - rs1_val == 262144<br>                                                                                            |[0x800002aa]:c.and a0, a1<br> [0x800002ac]:sw a0, 108(ra)<br> |
|  29|[0x80003274]<br>0x00080000|- rs1_val == 524288<br>                                                                                                                   |[0x800002b8]:c.and a0, a1<br> [0x800002ba]:sw a0, 112(ra)<br> |
|  30|[0x80003278]<br>0x00100000|- rs2_val == -134217729<br> - rs1_val == 1048576<br>                                                                                      |[0x800002ca]:c.and a0, a1<br> [0x800002cc]:sw a0, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00000000|- rs2_val == 16384<br> - rs1_val == 2097152<br>                                                                                           |[0x800002d8]:c.and a0, a1<br> [0x800002da]:sw a0, 120(ra)<br> |
|  32|[0x80003280]<br>0x00000000|- rs2_val == 128<br> - rs1_val == 8388608<br>                                                                                             |[0x800002e6]:c.and a0, a1<br> [0x800002e8]:sw a0, 124(ra)<br> |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                 |[0x800002f4]:c.and a0, a1<br> [0x800002f6]:sw a0, 128(ra)<br> |
|  34|[0x80003288]<br>0x02000000|- rs2_val == -65537<br> - rs1_val == 33554432<br>                                                                                         |[0x80000306]:c.and a0, a1<br> [0x80000308]:sw a0, 132(ra)<br> |
|  35|[0x8000328c]<br>0x04000000|- rs1_val == 67108864<br>                                                                                                                 |[0x80000314]:c.and a0, a1<br> [0x80000316]:sw a0, 136(ra)<br> |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                |[0x80000322]:c.and a0, a1<br> [0x80000324]:sw a0, 140(ra)<br> |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                |[0x80000330]:c.and a0, a1<br> [0x80000332]:sw a0, 144(ra)<br> |
|  38|[0x80003298]<br>0x20000000|- rs2_val == -16385<br> - rs1_val == 536870912<br>                                                                                        |[0x80000342]:c.and a0, a1<br> [0x80000344]:sw a0, 148(ra)<br> |
|  39|[0x8000329c]<br>0x00000000|- rs2_val == 32768<br> - rs1_val == 1073741824<br>                                                                                        |[0x80000350]:c.and a0, a1<br> [0x80000352]:sw a0, 152(ra)<br> |
|  40|[0x800032a0]<br>0xFFFFFEFE|- rs2_val == -257<br> - rs1_val == -2<br>                                                                                                 |[0x8000035e]:c.and a0, a1<br> [0x80000360]:sw a0, 156(ra)<br> |
|  41|[0x800032a4]<br>0x02000000|- rs2_val == 33554432<br> - rs1_val == -3<br>                                                                                             |[0x8000036c]:c.and a0, a1<br> [0x8000036e]:sw a0, 160(ra)<br> |
|  42|[0x800032a8]<br>0x00010000|- rs1_val == -5<br>                                                                                                                       |[0x8000037a]:c.and a0, a1<br> [0x8000037c]:sw a0, 164(ra)<br> |
|  43|[0x800032ac]<br>0x00000006|- rs1_val == -9<br>                                                                                                                       |[0x80000388]:c.and a0, a1<br> [0x8000038a]:sw a0, 168(ra)<br> |
|  44|[0x800032b0]<br>0xC0000000|- rs1_val == -17<br>                                                                                                                      |[0x80000396]:c.and a0, a1<br> [0x80000398]:sw a0, 172(ra)<br> |
|  45|[0x800032b4]<br>0xFFFFFFD8|- rs1_val == -33<br>                                                                                                                      |[0x800003a4]:c.and a0, a1<br> [0x800003a6]:sw a0, 176(ra)<br> |
|  46|[0x800032b8]<br>0x00800000|- rs2_val == -4194305<br>                                                                                                                 |[0x800003b6]:c.and a0, a1<br> [0x800003b8]:sw a0, 180(ra)<br> |
|  47|[0x800032bc]<br>0x00200000|- rs2_val == -8388609<br>                                                                                                                 |[0x800003c8]:c.and a0, a1<br> [0x800003ca]:sw a0, 184(ra)<br> |
|  48|[0x800032c0]<br>0xFEFFFFF6|- rs2_val == -16777217<br>                                                                                                                |[0x800003da]:c.and a0, a1<br> [0x800003dc]:sw a0, 188(ra)<br> |
|  49|[0x800032c4]<br>0xFCFFFFFF|- rs2_val == -33554433<br> - rs1_val == -16777217<br>                                                                                     |[0x800003f0]:c.and a0, a1<br> [0x800003f2]:sw a0, 192(ra)<br> |
|  50|[0x800032c8]<br>0xFBF7FFFF|- rs2_val == -67108865<br> - rs1_val == -524289<br>                                                                                       |[0x80000406]:c.and a0, a1<br> [0x80000408]:sw a0, 196(ra)<br> |
|  51|[0x800032cc]<br>0x00100000|- rs2_val == -268435457<br>                                                                                                               |[0x80000418]:c.and a0, a1<br> [0x8000041a]:sw a0, 200(ra)<br> |
|  52|[0x800032d0]<br>0xDFFFFFFB|- rs2_val == -536870913<br>                                                                                                               |[0x8000042a]:c.and a0, a1<br> [0x8000042c]:sw a0, 204(ra)<br> |
|  53|[0x800032d4]<br>0x10000000|- rs2_val == -1073741825<br>                                                                                                              |[0x8000043c]:c.and a0, a1<br> [0x8000043e]:sw a0, 208(ra)<br> |
|  54|[0x800032d8]<br>0x55555545|- rs2_val == 1431655765<br>                                                                                                               |[0x8000044e]:c.and a0, a1<br> [0x80000450]:sw a0, 212(ra)<br> |
|  55|[0x800032dc]<br>0xAAAAAAAA|- rs2_val == -1431655766<br> - rs1_val == -262145<br>                                                                                     |[0x80000464]:c.and a0, a1<br> [0x80000466]:sw a0, 216(ra)<br> |
|  56|[0x800032e0]<br>0x00004000|- rs1_val == -65<br>                                                                                                                      |[0x80000472]:c.and a0, a1<br> [0x80000474]:sw a0, 220(ra)<br> |
|  57|[0x800032e4]<br>0xFFBFFDFF|- rs1_val == -513<br>                                                                                                                     |[0x80000484]:c.and a0, a1<br> [0x80000486]:sw a0, 224(ra)<br> |
|  58|[0x800032e8]<br>0xFFFFFBDF|- rs2_val == -33<br> - rs1_val == -1025<br>                                                                                               |[0x80000492]:c.and a0, a1<br> [0x80000494]:sw a0, 228(ra)<br> |
|  59|[0x800032ec]<br>0x00004000|- rs1_val == -2049<br>                                                                                                                    |[0x800004a4]:c.and a0, a1<br> [0x800004a6]:sw a0, 232(ra)<br> |
|  60|[0x800032f0]<br>0x00100000|- rs1_val == -8193<br>                                                                                                                    |[0x800004b6]:c.and a0, a1<br> [0x800004b8]:sw a0, 236(ra)<br> |
|  61|[0x800032f4]<br>0xFFF7BFFF|- rs2_val == -524289<br> - rs1_val == -16385<br>                                                                                          |[0x800004cc]:c.and a0, a1<br> [0x800004ce]:sw a0, 240(ra)<br> |
|  62|[0x800032f8]<br>0xFFDF7FFF|- rs2_val == -2097153<br> - rs1_val == -32769<br>                                                                                         |[0x800004e2]:c.and a0, a1<br> [0x800004e4]:sw a0, 244(ra)<br> |
|  63|[0x800032fc]<br>0xFEFEFFFF|- rs1_val == -65537<br>                                                                                                                   |[0x800004f8]:c.and a0, a1<br> [0x800004fa]:sw a0, 248(ra)<br> |
|  64|[0x80003300]<br>0xFEEFFFFF|- rs1_val == -1048577<br>                                                                                                                 |[0x8000050e]:c.and a0, a1<br> [0x80000510]:sw a0, 252(ra)<br> |
|  65|[0x80003304]<br>0x00100000|- rs1_val == -2097153<br>                                                                                                                 |[0x80000520]:c.and a0, a1<br> [0x80000522]:sw a0, 256(ra)<br> |
|  66|[0x80003308]<br>0xFF3FFFFF|- rs1_val == -4194305<br>                                                                                                                 |[0x80000536]:c.and a0, a1<br> [0x80000538]:sw a0, 260(ra)<br> |
|  67|[0x8000330c]<br>0x00000040|- rs2_val == 64<br> - rs1_val == -8388609<br>                                                                                             |[0x80000548]:c.and a0, a1<br> [0x8000054a]:sw a0, 264(ra)<br> |
|  68|[0x80003310]<br>0x00000080|- rs1_val == -33554433<br>                                                                                                                |[0x8000055a]:c.and a0, a1<br> [0x8000055c]:sw a0, 268(ra)<br> |
|  69|[0x80003314]<br>0x00000005|- rs1_val == -67108865<br>                                                                                                                |[0x8000056c]:c.and a0, a1<br> [0x8000056e]:sw a0, 272(ra)<br> |
|  70|[0x80003318]<br>0x80000000|- rs1_val == -134217729<br>                                                                                                               |[0x8000057e]:c.and a0, a1<br> [0x80000580]:sw a0, 276(ra)<br> |
|  71|[0x8000331c]<br>0x00000004|- rs2_val == 4<br> - rs1_val == -268435457<br>                                                                                            |[0x80000590]:c.and a0, a1<br> [0x80000592]:sw a0, 280(ra)<br> |
|  72|[0x80003320]<br>0xDEFFFFFF|- rs1_val == -536870913<br>                                                                                                               |[0x800005a6]:c.and a0, a1<br> [0x800005a8]:sw a0, 284(ra)<br> |
|  73|[0x80003324]<br>0xAAAAAAAA|- rs1_val == -1073741825<br>                                                                                                              |[0x800005bc]:c.and a0, a1<br> [0x800005be]:sw a0, 288(ra)<br> |
|  74|[0x80003328]<br>0x55555555|- rs1_val == 1431655765<br>                                                                                                               |[0x800005d2]:c.and a0, a1<br> [0x800005d4]:sw a0, 292(ra)<br> |
|  75|[0x8000332c]<br>0x00000002|- rs2_val == 2<br>                                                                                                                        |[0x800005e4]:c.and a0, a1<br> [0x800005e6]:sw a0, 296(ra)<br> |
|  76|[0x80003330]<br>0x00000008|- rs2_val == 8<br>                                                                                                                        |[0x800005f6]:c.and a0, a1<br> [0x800005f8]:sw a0, 300(ra)<br> |
|  77|[0x80003334]<br>0x00000000|- rs2_val == 16<br>                                                                                                                       |[0x80000604]:c.and a0, a1<br> [0x80000606]:sw a0, 304(ra)<br> |
|  78|[0x80003338]<br>0x00000000|- rs2_val == 256<br>                                                                                                                      |[0x80000612]:c.and a0, a1<br> [0x80000614]:sw a0, 308(ra)<br> |
|  79|[0x8000333c]<br>0x00000200|- rs2_val == 512<br>                                                                                                                      |[0x80000624]:c.and a0, a1<br> [0x80000626]:sw a0, 312(ra)<br> |
|  80|[0x80003340]<br>0x00000400|- rs2_val == 1024<br>                                                                                                                     |[0x80000636]:c.and a0, a1<br> [0x80000638]:sw a0, 316(ra)<br> |
|  81|[0x80003344]<br>0x00000800|- rs2_val == 2048<br>                                                                                                                     |[0x80000648]:c.and a0, a1<br> [0x8000064a]:sw a0, 320(ra)<br> |
|  82|[0x80003348]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                     |[0x8000065a]:c.and a0, a1<br> [0x8000065c]:sw a0, 324(ra)<br> |
|  83|[0x8000334c]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                     |[0x80000668]:c.and a0, a1<br> [0x8000066a]:sw a0, 328(ra)<br> |
|  84|[0x80003350]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                   |[0x8000067a]:c.and a0, a1<br> [0x8000067c]:sw a0, 332(ra)<br> |
|  85|[0x80003354]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                  |[0x8000068c]:c.and a0, a1<br> [0x8000068e]:sw a0, 336(ra)<br> |
|  86|[0x80003358]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                |[0x8000069a]:c.and a0, a1<br> [0x8000069c]:sw a0, 340(ra)<br> |
|  87|[0x8000335c]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                |[0x800006ac]:c.and a0, a1<br> [0x800006ae]:sw a0, 344(ra)<br> |
|  88|[0x80003360]<br>0xFFFFFFF9|- rs2_val == -3<br>                                                                                                                       |[0x800006ba]:c.and a0, a1<br> [0x800006bc]:sw a0, 348(ra)<br> |
|  89|[0x80003364]<br>0x40000000|- rs2_val == -5<br>                                                                                                                       |[0x800006c8]:c.and a0, a1<br> [0x800006ca]:sw a0, 352(ra)<br> |
|  90|[0x80003368]<br>0xFFFFFFB7|- rs2_val == -9<br>                                                                                                                       |[0x800006d6]:c.and a0, a1<br> [0x800006d8]:sw a0, 356(ra)<br> |
|  91|[0x8000336c]<br>0x10000000|- rs2_val == -17<br>                                                                                                                      |[0x800006e4]:c.and a0, a1<br> [0x800006e6]:sw a0, 360(ra)<br> |
|  92|[0x80003370]<br>0xFFF7FFBF|- rs2_val == -65<br>                                                                                                                      |[0x800006f6]:c.and a0, a1<br> [0x800006f8]:sw a0, 364(ra)<br> |
|  93|[0x80003374]<br>0xFFEFFF7F|- rs2_val == -129<br>                                                                                                                     |[0x80000708]:c.and a0, a1<br> [0x8000070a]:sw a0, 368(ra)<br> |
|  94|[0x80003378]<br>0xBFFFFBFF|- rs2_val == -1025<br>                                                                                                                    |[0x8000071a]:c.and a0, a1<br> [0x8000071c]:sw a0, 372(ra)<br> |
|  95|[0x8000337c]<br>0x00000008|- rs2_val == -2049<br>                                                                                                                    |[0x8000072c]:c.and a0, a1<br> [0x8000072e]:sw a0, 376(ra)<br> |
|  96|[0x80003380]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                   |[0x8000073a]:c.and a0, a1<br> [0x8000073c]:sw a0, 380(ra)<br> |
|  97|[0x80003384]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                   |[0x80000748]:c.and a0, a1<br> [0x8000074a]:sw a0, 384(ra)<br> |
|  98|[0x80003388]<br>0x00000400|- rs2_val == -4097<br>                                                                                                                    |[0x8000075a]:c.and a0, a1<br> [0x8000075c]:sw a0, 388(ra)<br> |
|  99|[0x8000338c]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                  |[0x8000076c]:c.and a0, a1<br> [0x8000076e]:sw a0, 392(ra)<br> |
