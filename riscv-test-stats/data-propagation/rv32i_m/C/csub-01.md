
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000770')]      |
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | csub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
| Total Number of coverpoints| 159     |
| Total Coverpoints Hit     | 159      |
| Total Signature Updates   | 99      |
| STAT1                     | 97      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000620]:c.sub a0, a1
      [0x80000622]:sw a0, 312(ra)
 -- Signature Address: 0x80003348 Data: 0xFFFFFFF0
 -- Redundant Coverpoints hit by the op
      - opcode : c.sub
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 32
      - rs1_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000768]:c.sub a0, a1
      [0x8000076a]:sw a0, 392(ra)
 -- Signature Address: 0x80003398 Data: 0x00000421
 -- Redundant Coverpoints hit by the op
      - opcode : c.sub
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -1025
      - rs1_val == 32






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

|s.no|        signature         |                                                                    coverpoints                                                                     |                             code                             |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003210]<br>0x7FFFFFFB|- opcode : c.sub<br> - rs1 : x11<br> - rs2 : x9<br> - rs1 != rs2<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val > 0<br> - rs2_val == 2147483647<br> |[0x8000010c]:c.sub a1, s1<br> [0x8000010e]:sw a1, 0(ra)<br>   |
|   2|[0x80003214]<br>0x00000000|- rs1 : x12<br> - rs2 : x12<br> - rs1 == rs2<br> - rs2_val == 32<br> - rs1_val == 32<br>                                                            |[0x8000011a]:c.sub a2, a2<br> [0x8000011c]:sw a2, 4(ra)<br>   |
|   3|[0x80003218]<br>0x2AAAAAAB|- rs1 : x9<br> - rs2 : x15<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 1431655765<br> - rs1_val == -2147483648<br>                             |[0x8000012c]:c.sub s1, a5<br> [0x8000012e]:sw s1, 8(ra)<br>   |
|   4|[0x8000321c]<br>0x00000009|- rs1 : x13<br> - rs2 : x14<br> - rs1_val == 0<br> - rs2_val < 0<br> - rs2_val == -9<br>                                                            |[0x8000013a]:c.sub a3, a4<br> [0x8000013c]:sw a3, 12(ra)<br>  |
|   5|[0x80003220]<br>0x80020000|- rs1 : x14<br> - rs2 : x11<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -131073<br> - rs1_val == 2147483647<br>                               |[0x80000150]:c.sub a4, a1<br> [0x80000152]:sw a4, 16(ra)<br>  |
|   6|[0x80003224]<br>0xAAAAAAAC|- rs1 : x10<br> - rs2 : x8<br> - rs1_val == 1<br>                                                                                                   |[0x80000162]:c.sub a0, s0<br> [0x80000164]:sw a0, 20(ra)<br>  |
|   7|[0x80003228]<br>0x7FFFDFFF|- rs1 : x8<br> - rs2 : x10<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -8193<br>                                  |[0x80000174]:c.sub s0, a0<br> [0x80000176]:sw fp, 24(ra)<br>  |
|   8|[0x8000322c]<br>0x00008000|- rs1 : x15<br> - rs2 : x13<br> - rs2_val == 0<br> - rs1_val == 32768<br>                                                                           |[0x80000182]:c.sub a5, a3<br> [0x80000184]:sw a5, 28(ra)<br>  |
|   9|[0x80003230]<br>0xFBFFFFFE|- rs2_val == 1<br> - rs1_val == -67108865<br>                                                                                                       |[0x80000194]:c.sub a0, a1<br> [0x80000196]:sw a0, 32(ra)<br>  |
|  10|[0x80003234]<br>0xFFFFE002|- rs2_val == 8192<br> - rs1_val == 2<br>                                                                                                            |[0x800001a2]:c.sub a0, a1<br> [0x800001a4]:sw a0, 36(ra)<br>  |
|  11|[0x80003238]<br>0xFFFFE004|- rs1_val == 4<br>                                                                                                                                  |[0x800001b0]:c.sub a0, a1<br> [0x800001b2]:sw a0, 40(ra)<br>  |
|  12|[0x8000323c]<br>0xFFFFF808|- rs2_val == 2048<br> - rs1_val == 8<br>                                                                                                            |[0x800001c2]:c.sub a0, a1<br> [0x800001c4]:sw a0, 44(ra)<br>  |
|  13|[0x80003240]<br>0x00000010|- rs1_val == 16<br>                                                                                                                                 |[0x800001d0]:c.sub a0, a1<br> [0x800001d2]:sw a0, 48(ra)<br>  |
|  14|[0x80003244]<br>0xFFFC0040|- rs2_val == 262144<br> - rs1_val == 64<br>                                                                                                         |[0x800001de]:c.sub a0, a1<br> [0x800001e0]:sw a0, 52(ra)<br>  |
|  15|[0x80003248]<br>0xFFFE0080|- rs2_val == 131072<br> - rs1_val == 128<br>                                                                                                        |[0x800001ec]:c.sub a0, a1<br> [0x800001ee]:sw a0, 56(ra)<br>  |
|  16|[0x8000324c]<br>0x00040101|- rs2_val == -262145<br> - rs1_val == 256<br>                                                                                                       |[0x800001fe]:c.sub a0, a1<br> [0x80000200]:sw a0, 60(ra)<br>  |
|  17|[0x80003250]<br>0x40000200|- rs1_val == 512<br>                                                                                                                                |[0x8000020c]:c.sub a0, a1<br> [0x8000020e]:sw a0, 64(ra)<br>  |
|  18|[0x80003254]<br>0x00080401|- rs2_val == -524289<br> - rs1_val == 1024<br>                                                                                                      |[0x8000021e]:c.sub a0, a1<br> [0x80000220]:sw a0, 68(ra)<br>  |
|  19|[0x80003258]<br>0xFFF80800|- rs2_val == 524288<br> - rs1_val == 2048<br>                                                                                                       |[0x80000230]:c.sub a0, a1<br> [0x80000232]:sw a0, 72(ra)<br>  |
|  20|[0x8000325c]<br>0x00001011|- rs2_val == -17<br> - rs1_val == 4096<br>                                                                                                          |[0x8000023e]:c.sub a0, a1<br> [0x80000240]:sw a0, 76(ra)<br>  |
|  21|[0x80003260]<br>0xFC002000|- rs2_val == 67108864<br> - rs1_val == 8192<br>                                                                                                     |[0x8000024c]:c.sub a0, a1<br> [0x8000024e]:sw a0, 80(ra)<br>  |
|  22|[0x80003264]<br>0x00044001|- rs1_val == 16384<br>                                                                                                                              |[0x8000025e]:c.sub a0, a1<br> [0x80000260]:sw a0, 84(ra)<br>  |
|  23|[0x80003268]<br>0x0001000A|- rs1_val == 65536<br>                                                                                                                              |[0x8000026c]:c.sub a0, a1<br> [0x8000026e]:sw a0, 88(ra)<br>  |
|  24|[0x8000326c]<br>0xFE020000|- rs2_val == 33554432<br> - rs1_val == 131072<br>                                                                                                   |[0x8000027a]:c.sub a0, a1<br> [0x8000027c]:sw a0, 92(ra)<br>  |
|  25|[0x80003270]<br>0x10040001|- rs2_val == -268435457<br> - rs1_val == 262144<br>                                                                                                 |[0x8000028c]:c.sub a0, a1<br> [0x8000028e]:sw a0, 96(ra)<br>  |
|  26|[0x80003274]<br>0x80080000|- rs1_val == 524288<br>                                                                                                                             |[0x8000029a]:c.sub a0, a1<br> [0x8000029c]:sw a0, 100(ra)<br> |
|  27|[0x80003278]<br>0xFF100000|- rs2_val == 16777216<br> - rs1_val == 1048576<br>                                                                                                  |[0x800002a8]:c.sub a0, a1<br> [0x800002aa]:sw a0, 104(ra)<br> |
|  28|[0x8000327c]<br>0x00202001|- rs2_val == -8193<br> - rs1_val == 2097152<br>                                                                                                     |[0x800002ba]:c.sub a0, a1<br> [0x800002bc]:sw a0, 108(ra)<br> |
|  29|[0x80003280]<br>0x00400041|- rs2_val == -65<br> - rs1_val == 4194304<br>                                                                                                       |[0x800002c8]:c.sub a0, a1<br> [0x800002ca]:sw a0, 112(ra)<br> |
|  30|[0x80003284]<br>0xFE800000|- rs1_val == 8388608<br>                                                                                                                            |[0x800002d6]:c.sub a0, a1<br> [0x800002d8]:sw a0, 116(ra)<br> |
|  31|[0x80003288]<br>0x00F80000|- rs1_val == 16777216<br>                                                                                                                           |[0x800002e4]:c.sub a0, a1<br> [0x800002e6]:sw a0, 120(ra)<br> |
|  32|[0x8000328c]<br>0x12000001|- rs1_val == 33554432<br>                                                                                                                           |[0x800002f6]:c.sub a0, a1<br> [0x800002f8]:sw a0, 124(ra)<br> |
|  33|[0x80003290]<br>0x04000002|- rs2_val == -2<br> - rs1_val == 67108864<br>                                                                                                       |[0x80000304]:c.sub a0, a1<br> [0x80000306]:sw a0, 128(ra)<br> |
|  34|[0x80003294]<br>0x07FC0000|- rs1_val == 134217728<br>                                                                                                                          |[0x80000312]:c.sub a0, a1<br> [0x80000314]:sw a0, 132(ra)<br> |
|  35|[0x80003298]<br>0x0F800000|- rs2_val == 8388608<br> - rs1_val == 268435456<br>                                                                                                 |[0x80000320]:c.sub a0, a1<br> [0x80000322]:sw a0, 136(ra)<br> |
|  36|[0x8000329c]<br>0xE0000000|- rs2_val == 1073741824<br> - rs1_val == 536870912<br>                                                                                              |[0x8000032e]:c.sub a0, a1<br> [0x80000330]:sw a0, 140(ra)<br> |
|  37|[0x800032a0]<br>0x3FFFFFFB|- rs1_val == 1073741824<br>                                                                                                                         |[0x8000033c]:c.sub a0, a1<br> [0x8000033e]:sw a0, 144(ra)<br> |
|  38|[0x800032a4]<br>0x00000002|- rs1_val == -2<br>                                                                                                                                 |[0x8000034a]:c.sub a0, a1<br> [0x8000034c]:sw a0, 148(ra)<br> |
|  39|[0x800032a8]<br>0x00000000|- rs2_val == -3<br> - rs1_val == -3<br>                                                                                                             |[0x80000358]:c.sub a0, a1<br> [0x8000035a]:sw a0, 152(ra)<br> |
|  40|[0x800032ac]<br>0xFFFFFFF5|- rs1_val == -5<br>                                                                                                                                 |[0x80000366]:c.sub a0, a1<br> [0x80000368]:sw a0, 156(ra)<br> |
|  41|[0x800032b0]<br>0xFFFFFFFE|- rs1_val == -9<br>                                                                                                                                 |[0x80000374]:c.sub a0, a1<br> [0x80000376]:sw a0, 160(ra)<br> |
|  42|[0x800032b4]<br>0x03FFFFF0|- rs2_val == -67108865<br> - rs1_val == -17<br>                                                                                                     |[0x80000386]:c.sub a0, a1<br> [0x80000388]:sw a0, 164(ra)<br> |
|  43|[0x800032b8]<br>0xAAAAAA8A|- rs1_val == -33<br>                                                                                                                                |[0x80000398]:c.sub a0, a1<br> [0x8000039a]:sw a0, 168(ra)<br> |
|  44|[0x800032bc]<br>0xFFFFFEBF|- rs2_val == 256<br> - rs1_val == -65<br>                                                                                                           |[0x800003a6]:c.sub a0, a1<br> [0x800003a8]:sw a0, 172(ra)<br> |
|  45|[0x800032c0]<br>0x7FFFFF7F|- rs1_val == -129<br>                                                                                                                               |[0x800003b4]:c.sub a0, a1<br> [0x800003b6]:sw a0, 176(ra)<br> |
|  46|[0x800032c4]<br>0x003FFFFE|- rs2_val == -4194305<br>                                                                                                                           |[0x800003c6]:c.sub a0, a1<br> [0x800003c8]:sw a0, 180(ra)<br> |
|  47|[0x800032c8]<br>0x007FFFF0|- rs2_val == -8388609<br>                                                                                                                           |[0x800003d8]:c.sub a0, a1<br> [0x800003da]:sw a0, 184(ra)<br> |
|  48|[0x800032cc]<br>0x00FFFFFD|- rs2_val == -16777217<br>                                                                                                                          |[0x800003ea]:c.sub a0, a1<br> [0x800003ec]:sw a0, 188(ra)<br> |
|  49|[0x800032d0]<br>0x0A000001|- rs2_val == -33554433<br>                                                                                                                          |[0x800003fc]:c.sub a0, a1<br> [0x800003fe]:sw a0, 192(ra)<br> |
|  50|[0x800032d4]<br>0x5D555556|- rs2_val == -134217729<br> - rs1_val == 1431655765<br>                                                                                             |[0x80000412]:c.sub a0, a1<br> [0x80000414]:sw a0, 196(ra)<br> |
|  51|[0x800032d8]<br>0xE0000000|- rs2_val == -536870913<br> - rs1_val == -1073741825<br>                                                                                            |[0x80000428]:c.sub a0, a1<br> [0x8000042a]:sw a0, 200(ra)<br> |
|  52|[0x800032dc]<br>0x3FFFFFFC|- rs2_val == -1073741825<br>                                                                                                                        |[0x8000043a]:c.sub a0, a1<br> [0x8000043c]:sw a0, 204(ra)<br> |
|  53|[0x800032e0]<br>0xD5555556|- rs2_val == -1431655766<br>                                                                                                                        |[0x8000044c]:c.sub a0, a1<br> [0x8000044e]:sw a0, 208(ra)<br> |
|  54|[0x800032e4]<br>0xFFFFFF00|- rs1_val == -257<br>                                                                                                                               |[0x8000045a]:c.sub a0, a1<br> [0x8000045c]:sw a0, 212(ra)<br> |
|  55|[0x800032e8]<br>0xFFFFEDFF|- rs2_val == 4096<br> - rs1_val == -513<br>                                                                                                         |[0x80000468]:c.sub a0, a1<br> [0x8000046a]:sw a0, 216(ra)<br> |
|  56|[0x800032ec]<br>0xFF7FFBFF|- rs1_val == -1025<br>                                                                                                                              |[0x80000476]:c.sub a0, a1<br> [0x80000478]:sw a0, 220(ra)<br> |
|  57|[0x800032f0]<br>0x00007800|- rs2_val == -32769<br> - rs1_val == -2049<br>                                                                                                      |[0x8000048c]:c.sub a0, a1<br> [0x8000048e]:sw a0, 224(ra)<br> |
|  58|[0x800032f4]<br>0xFFFFEFFC|- rs1_val == -4097<br>                                                                                                                              |[0x8000049e]:c.sub a0, a1<br> [0x800004a0]:sw a0, 228(ra)<br> |
|  59|[0x800032f8]<br>0xBFFFBFFF|- rs1_val == -16385<br>                                                                                                                             |[0x800004b0]:c.sub a0, a1<br> [0x800004b2]:sw a0, 232(ra)<br> |
|  60|[0x800032fc]<br>0xFFFD7FFF|- rs1_val == -32769<br>                                                                                                                             |[0x800004c2]:c.sub a0, a1<br> [0x800004c4]:sw a0, 236(ra)<br> |
|  61|[0x80003300]<br>0xFFFF0004|- rs2_val == -5<br> - rs1_val == -65537<br>                                                                                                         |[0x800004d4]:c.sub a0, a1<br> [0x800004d6]:sw a0, 240(ra)<br> |
|  62|[0x80003304]<br>0x00060000|- rs1_val == -131073<br>                                                                                                                            |[0x800004ea]:c.sub a0, a1<br> [0x800004ec]:sw a0, 244(ra)<br> |
|  63|[0x80003308]<br>0xFFFC8000|- rs1_val == -262145<br>                                                                                                                            |[0x80000500]:c.sub a0, a1<br> [0x80000502]:sw a0, 248(ra)<br> |
|  64|[0x8000330c]<br>0xFFF5FFFF|- rs1_val == -524289<br>                                                                                                                            |[0x80000512]:c.sub a0, a1<br> [0x80000514]:sw a0, 252(ra)<br> |
|  65|[0x80003310]<br>0xFFEFFFF8|- rs1_val == -1048577<br>                                                                                                                           |[0x80000524]:c.sub a0, a1<br> [0x80000526]:sw a0, 256(ra)<br> |
|  66|[0x80003314]<br>0xFFE00400|- rs2_val == -1025<br> - rs1_val == -2097153<br>                                                                                                    |[0x80000536]:c.sub a0, a1<br> [0x80000538]:sw a0, 260(ra)<br> |
|  67|[0x80003318]<br>0xFFC20000|- rs1_val == -4194305<br>                                                                                                                           |[0x8000054c]:c.sub a0, a1<br> [0x8000054e]:sw a0, 264(ra)<br> |
|  68|[0x8000331c]<br>0xFF801000|- rs2_val == -4097<br> - rs1_val == -8388609<br>                                                                                                    |[0x80000562]:c.sub a0, a1<br> [0x80000564]:sw a0, 268(ra)<br> |
|  69|[0x80003320]<br>0x54555555|- rs1_val == -16777217<br>                                                                                                                          |[0x80000578]:c.sub a0, a1<br> [0x8000057a]:sw a0, 272(ra)<br> |
|  70|[0x80003324]<br>0xFDFFFF7F|- rs2_val == 128<br> - rs1_val == -33554433<br>                                                                                                     |[0x8000058a]:c.sub a0, a1<br> [0x8000058c]:sw a0, 276(ra)<br> |
|  71|[0x80003328]<br>0xF7FFFFBF|- rs2_val == 64<br> - rs1_val == -134217729<br>                                                                                                     |[0x8000059c]:c.sub a0, a1<br> [0x8000059e]:sw a0, 280(ra)<br> |
|  72|[0x8000332c]<br>0xEFFEFFFF|- rs2_val == 65536<br> - rs1_val == -268435457<br>                                                                                                  |[0x800005ae]:c.sub a0, a1<br> [0x800005b0]:sw a0, 284(ra)<br> |
|  73|[0x80003330]<br>0xE4000000|- rs1_val == -536870913<br>                                                                                                                         |[0x800005c4]:c.sub a0, a1<br> [0x800005c6]:sw a0, 288(ra)<br> |
|  74|[0x80003334]<br>0xAAAAAAB4|- rs1_val == -1431655766<br>                                                                                                                        |[0x800005d6]:c.sub a0, a1<br> [0x800005d8]:sw a0, 292(ra)<br> |
|  75|[0x80003338]<br>0x00000007|- rs2_val == 2<br>                                                                                                                                  |[0x800005e4]:c.sub a0, a1<br> [0x800005e6]:sw a0, 296(ra)<br> |
|  76|[0x8000333c]<br>0xFFFFEFFB|- rs2_val == 4<br>                                                                                                                                  |[0x800005f6]:c.sub a0, a1<br> [0x800005f8]:sw a0, 300(ra)<br> |
|  77|[0x80003340]<br>0xFFFFFFF0|- rs2_val == 8<br>                                                                                                                                  |[0x80000604]:c.sub a0, a1<br> [0x80000606]:sw a0, 304(ra)<br> |
|  78|[0x80003344]<br>0xFFFFFBEF|- rs2_val == 16<br>                                                                                                                                 |[0x80000612]:c.sub a0, a1<br> [0x80000614]:sw a0, 308(ra)<br> |
|  79|[0x8000334c]<br>0xFFFFFDFE|- rs2_val == 512<br>                                                                                                                                |[0x8000062e]:c.sub a0, a1<br> [0x80000630]:sw a0, 316(ra)<br> |
|  80|[0x80003350]<br>0xFFFFF9FF|- rs2_val == 1024<br>                                                                                                                               |[0x8000063c]:c.sub a0, a1<br> [0x8000063e]:sw a0, 320(ra)<br> |
|  81|[0x80003354]<br>0xFBFFBFFF|- rs2_val == 16384<br>                                                                                                                              |[0x8000064e]:c.sub a0, a1<br> [0x80000650]:sw a0, 324(ra)<br> |
|  82|[0x80003358]<br>0x3FFF8000|- rs2_val == 32768<br>                                                                                                                              |[0x8000065c]:c.sub a0, a1<br> [0x8000065e]:sw a0, 328(ra)<br> |
|  83|[0x8000335c]<br>0xFFC00006|- rs2_val == 4194304<br>                                                                                                                            |[0x8000066a]:c.sub a0, a1<br> [0x8000066c]:sw a0, 332(ra)<br> |
|  84|[0x80003360]<br>0xF7FFFFFA|- rs2_val == 134217728<br>                                                                                                                          |[0x80000678]:c.sub a0, a1<br> [0x8000067a]:sw a0, 336(ra)<br> |
|  85|[0x80003364]<br>0x000FFC00|- rs2_val == -1048577<br>                                                                                                                           |[0x8000068a]:c.sub a0, a1<br> [0x8000068c]:sw a0, 340(ra)<br> |
|  86|[0x80003368]<br>0x6FFFFFFF|- rs2_val == 268435456<br>                                                                                                                          |[0x8000069c]:c.sub a0, a1<br> [0x8000069e]:sw a0, 344(ra)<br> |
|  87|[0x8000336c]<br>0xDFFFF7FF|- rs2_val == 536870912<br>                                                                                                                          |[0x800006ae]:c.sub a0, a1<br> [0x800006b0]:sw a0, 348(ra)<br> |
|  88|[0x80003370]<br>0x02000021|- rs2_val == -33<br>                                                                                                                                |[0x800006bc]:c.sub a0, a1<br> [0x800006be]:sw a0, 352(ra)<br> |
|  89|[0x80003374]<br>0x00001081|- rs2_val == -129<br>                                                                                                                               |[0x800006ca]:c.sub a0, a1<br> [0x800006cc]:sw a0, 356(ra)<br> |
|  90|[0x80003378]<br>0xFFFF0100|- rs2_val == -257<br>                                                                                                                               |[0x800006dc]:c.sub a0, a1<br> [0x800006de]:sw a0, 360(ra)<br> |
|  91|[0x8000337c]<br>0xE0000200|- rs2_val == -513<br>                                                                                                                               |[0x800006ee]:c.sub a0, a1<br> [0x800006f0]:sw a0, 364(ra)<br> |
|  92|[0x80003380]<br>0xFFFC0800|- rs2_val == -2049<br>                                                                                                                              |[0x80000704]:c.sub a0, a1<br> [0x80000706]:sw a0, 368(ra)<br> |
|  93|[0x80003384]<br>0x00003FE0|- rs2_val == -16385<br>                                                                                                                             |[0x80000716]:c.sub a0, a1<br> [0x80000718]:sw a0, 372(ra)<br> |
|  94|[0x80003388]<br>0x40010000|- rs2_val == -65537<br>                                                                                                                             |[0x8000072c]:c.sub a0, a1<br> [0x8000072e]:sw a0, 376(ra)<br> |
|  95|[0x8000338c]<br>0x00200201|- rs2_val == -2097153<br>                                                                                                                           |[0x8000073e]:c.sub a0, a1<br> [0x80000740]:sw a0, 380(ra)<br> |
|  96|[0x80003390]<br>0xFFEFFFF8|- rs2_val == 1048576<br>                                                                                                                            |[0x8000074c]:c.sub a0, a1<br> [0x8000074e]:sw a0, 384(ra)<br> |
|  97|[0x80003394]<br>0xFFE00010|- rs2_val == 2097152<br>                                                                                                                            |[0x8000075a]:c.sub a0, a1<br> [0x8000075c]:sw a0, 388(ra)<br> |
