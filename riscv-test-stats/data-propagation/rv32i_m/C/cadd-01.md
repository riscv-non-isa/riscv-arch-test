
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000710')]      |
| SIG_REGION                | [('0x80003204', '0x80003390', '99 words')]      |
| COV_LABELS                | cadd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Number of coverpoints| 206     |
| Total Coverpoints Hit     | 206      |
| Total Signature Updates   | 96      |
| STAT1                     | 94      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003f8]:c.add a0, a1
      [0x800003fa]:sw a0, 112(ra)
 -- Signature Address: 0x800032d4 Data: 0x5555555A
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006f2]:c.add a0, a1
      [0x800006f4]:sw a0, 292(ra)
 -- Signature Address: 0x80003388 Data: 0x555554D4
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -129
      - rs1_val == 1431655765






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

|s.no|        signature         |                                                                       coverpoints                                                                       |                              code                              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003210]<br>0x00080003|- opcode : c.add<br> - rs1 : x6<br> - rs2 : x26<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs1_val == 524288<br>                                           |[0x80000108]:c.add t1, s10<br> [0x8000010a]:c.swsp t1, 0<br>    |
|   2|[0x80003214]<br>0xAAAAAAAA|- rs1 : x29<br> - rs2 : x29<br> - rs1 == rs2<br> - rs2_val == 1431655765<br> - rs1_val == 1431655765<br>                                                 |[0x80000118]:c.add t4, t4<br> [0x8000011a]:c.swsp t4, 1<br>     |
|   3|[0x80003218]<br>0x80800000|- rs1 : x17<br> - rs2 : x24<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 8388608<br> - rs1_val == -2147483648<br>                                    |[0x80000124]:c.add a7, s8<br> [0x80000126]:c.swsp a7, 2<br>     |
|   4|[0x8000321c]<br>0xFFFF7FFF|- rs1 : x16<br> - rs2 : x12<br> - rs1_val == 0<br> - rs2_val < 0<br> - rs2_val == -32769<br>                                                             |[0x80000134]:c.add a6, a2<br> [0x80000136]:c.swsp a6, 3<br>     |
|   5|[0x80003220]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x3<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -2147483648<br> - rs1_val == 2147483647<br> |[0x80000144]:c.add s7, gp<br> [0x80000146]:c.swsp s7, 4<br>     |
|   6|[0x80003224]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x5<br> - rs1_val == 1<br> - rs2_val == -2<br>                                                                                     |[0x80000150]:c.add t2, t0<br> [0x80000152]:c.swsp t2, 5<br>     |
|   7|[0x80003228]<br>0xFFFFFFFC|- rs1 : x13<br> - rs2 : x10<br> - rs2_val == 0<br>                                                                                                       |[0x8000015c]:c.add a3, a0<br> [0x8000015e]:c.swsp a3, 6<br>     |
|   8|[0x8000322c]<br>0x2AAAAAA9|- rs1 : x1<br> - rs2 : x4<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -1431655766<br>                                  |[0x80000170]:c.add ra, tp<br> [0x80000172]:c.swsp ra, 7<br>     |
|   9|[0x80003230]<br>0x00000001|- rs1 : x26<br> - rs2 : x25<br> - rs2_val == 1<br>                                                                                                       |[0x8000017c]:c.add s10, s9<br> [0x8000017e]:c.swsp s10, 8<br>   |
|  10|[0x80003234]<br>0x00000004|- rs1 : x12<br> - rs2 : x11<br> - rs2_val == 2<br> - rs1_val == 2<br>                                                                                    |[0x80000188]:c.add a2, a1<br> [0x8000018a]:c.swsp a2, 9<br>     |
|  11|[0x80003238]<br>0xFFFFFFC3|- rs1 : x19<br> - rs2 : x22<br> - rs2_val == -65<br> - rs1_val == 4<br>                                                                                  |[0x80000194]:c.add s3, s6<br> [0x80000196]:c.swsp s3, 10<br>    |
|  12|[0x8000323c]<br>0x0000000A|- rs1 : x18<br> - rs2 : x1<br> - rs1_val == 8<br>                                                                                                        |[0x800001a0]:c.add s2, ra<br> [0x800001a2]:c.swsp s2, 11<br>    |
|  13|[0x80003240]<br>0x00400010|- rs1 : x4<br> - rs2 : x6<br> - rs2_val == 4194304<br> - rs1_val == 16<br>                                                                               |[0x800001ac]:c.add tp, t1<br> [0x800001ae]:c.swsp tp, 12<br>    |
|  14|[0x80003244]<br>0xFFF0001F|- rs1 : x28<br> - rs2 : x27<br> - rs2_val == -1048577<br> - rs1_val == 32<br>                                                                            |[0x800001bc]:c.add t3, s11<br> [0x800001be]:c.swsp t3, 13<br>   |
|  15|[0x80003248]<br>0x40000040|- rs1 : x14<br> - rs2 : x8<br> - rs2_val == 1073741824<br> - rs1_val == 64<br>                                                                           |[0x800001c8]:c.add a4, fp<br> [0x800001ca]:c.swsp a4, 14<br>    |
|  16|[0x8000324c]<br>0xFFFFF87F|- rs1 : x11<br> - rs2 : x9<br> - rs2_val == -2049<br> - rs1_val == 128<br>                                                                               |[0x800001d8]:c.add a1, s1<br> [0x800001da]:c.swsp a1, 15<br>    |
|  17|[0x80003250]<br>0x000000F8|- rs1 : x22<br> - rs2 : x19<br> - rs1_val == 256<br>                                                                                                     |[0x800001e4]:c.add s6, s3<br> [0x800001e6]:c.swsp s6, 16<br>    |
|  18|[0x80003254]<br>0xFFFFF1FF|- rs1 : x3<br> - rs2 : x14<br> - rs2_val == -4097<br> - rs1_val == 512<br>                                                                               |[0x800001f4]:c.add gp, a4<br> [0x800001f6]:c.swsp gp, 17<br>    |
|  19|[0x80003258]<br>0x00000400|- rs1 : x24<br> - rs2 : x20<br> - rs1_val == 1024<br>                                                                                                    |[0x80000200]:c.add s8, s4<br> [0x80000202]:c.swsp s8, 18<br>    |
|  20|[0x8000325c]<br>0x01000800|- rs1 : x5<br> - rs2 : x31<br> - rs2_val == 16777216<br> - rs1_val == 2048<br>                                                                           |[0x80000210]:c.add t0, t6<br> [0x80000212]:c.swsp t0, 19<br>    |
|  21|[0x80003260]<br>0x00001002|- rs1 : x21<br> - rs2 : x23<br> - rs1_val == 4096<br>                                                                                                    |[0x8000021c]:c.add s5, s7<br> [0x8000021e]:c.swsp s5, 20<br>    |
|  22|[0x80003264]<br>0x00001BFF|- rs1 : x25<br> - rs2 : x13<br> - rs2_val == -1025<br> - rs1_val == 8192<br>                                                                             |[0x80000230]:c.add s9, a3<br> [0x80000232]:sw s9, 0(ra)<br>     |
|  23|[0x80003268]<br>0x00084000|- rs1 : x9<br> - rs2 : x30<br> - rs2_val == 524288<br> - rs1_val == 16384<br>                                                                            |[0x8000023e]:c.add s1, t5<br> [0x80000240]:sw s1, 4(ra)<br>     |
|  24|[0x8000326c]<br>0x0000A000|- rs1 : x30<br> - rs2 : x28<br> - rs2_val == 8192<br> - rs1_val == 32768<br>                                                                             |[0x8000024c]:c.add t5, t3<br> [0x8000024e]:sw t5, 8(ra)<br>     |
|  25|[0x80003270]<br>0x0000FFDF|- rs1 : x31<br> - rs2 : x7<br> - rs2_val == -33<br> - rs1_val == 65536<br>                                                                               |[0x8000025a]:c.add t6, t2<br> [0x8000025c]:sw t6, 12(ra)<br>    |
|  26|[0x80003274]<br>0x08020000|- rs1 : x27<br> - rs2 : x16<br> - rs2_val == 134217728<br> - rs1_val == 131072<br>                                                                       |[0x80000268]:c.add s11, a6<br> [0x8000026a]:sw s11, 16(ra)<br>  |
|  27|[0x80003278]<br>0x0003FFFB|- rs1 : x2<br> - rs2 : x18<br> - rs2_val == -5<br> - rs1_val == 262144<br>                                                                               |[0x80000276]:c.add sp, s2<br> [0x80000278]:sw sp, 20(ra)<br>    |
|  28|[0x8000327c]<br>0xC00FFFFF|- rs1 : x10<br> - rs2 : x15<br> - rs2_val == -1073741825<br> - rs1_val == 1048576<br>                                                                    |[0x80000288]:c.add a0, a5<br> [0x8000028a]:sw a0, 24(ra)<br>    |
|  29|[0x80003280]<br>0x20200000|- rs1 : x20<br> - rs2 : x17<br> - rs2_val == 536870912<br> - rs1_val == 2097152<br>                                                                      |[0x80000296]:c.add s4, a7<br> [0x80000298]:sw s4, 28(ra)<br>    |
|  30|[0x80003284]<br>0x00000000|- rs1 : x0<br> - rs2 : x21<br>                                                                                                                           |[0x800002a8]:c.add.hint.s5<br> [0x800002aa]:sw zero, 32(ra)<br> |
|  31|[0x80003288]<br>0x00808000|- rs1 : x15<br> - rs2 : x2<br> - rs2_val == 32768<br> - rs1_val == 8388608<br>                                                                           |[0x800002b6]:c.add a5, sp<br> [0x800002b8]:sw a5, 36(ra)<br>    |
|  32|[0x8000328c]<br>0x01100000|- rs1 : x8<br> - rs2_val == 1048576<br> - rs1_val == 16777216<br>                                                                                        |[0x800002c4]:c.add fp, s3<br> [0x800002c6]:sw fp, 40(ra)<br>    |
|  33|[0x80003290]<br>0x01DFFFFF|- rs2_val == -2097153<br> - rs1_val == 33554432<br>                                                                                                      |[0x800002d6]:c.add a0, a1<br> [0x800002d8]:sw a0, 44(ra)<br>    |
|  34|[0x80003294]<br>0x04000010|- rs2_val == 16<br> - rs1_val == 67108864<br>                                                                                                            |[0x800002e4]:c.add a0, a1<br> [0x800002e6]:sw a0, 48(ra)<br>    |
|  35|[0x80003298]<br>0x08000005|- rs1_val == 134217728<br>                                                                                                                               |[0x800002f2]:c.add a0, a1<br> [0x800002f4]:sw a0, 52(ra)<br>    |
|  36|[0x8000329c]<br>0x8FFFFFFF|- rs1_val == 268435456<br>                                                                                                                               |[0x80000304]:c.add a0, a1<br> [0x80000306]:sw a0, 56(ra)<br>    |
|  37|[0x800032a0]<br>0x1F7FFFFF|- rs2_val == -8388609<br> - rs1_val == 536870912<br>                                                                                                     |[0x80000316]:c.add a0, a1<br> [0x80000318]:sw a0, 60(ra)<br>    |
|  38|[0x800032a4]<br>0x3FFFDFFF|- rs2_val == -8193<br> - rs1_val == 1073741824<br>                                                                                                       |[0x80000328]:c.add a0, a1<br> [0x8000032a]:sw a0, 64(ra)<br>    |
|  39|[0x800032a8]<br>0x0003FFFE|- rs2_val == 262144<br> - rs1_val == -2<br>                                                                                                              |[0x80000336]:c.add a0, a1<br> [0x80000338]:sw a0, 68(ra)<br>    |
|  40|[0x800032ac]<br>0x0003FFFD|- rs1_val == -3<br>                                                                                                                                      |[0x80000344]:c.add a0, a1<br> [0x80000346]:sw a0, 72(ra)<br>    |
|  41|[0x800032b0]<br>0x7FFFFFFB|- rs1_val == -5<br>                                                                                                                                      |[0x80000352]:c.add a0, a1<br> [0x80000354]:sw a0, 76(ra)<br>    |
|  42|[0x800032b4]<br>0x01FFFFF7|- rs2_val == 33554432<br> - rs1_val == -9<br>                                                                                                            |[0x80000360]:c.add a0, a1<br> [0x80000362]:sw a0, 80(ra)<br>    |
|  43|[0x800032b8]<br>0xFFC7FFFF|- rs2_val == -4194305<br>                                                                                                                                |[0x80000372]:c.add a0, a1<br> [0x80000374]:sw a0, 84(ra)<br>    |
|  44|[0x800032bc]<br>0xFEFEFFFE|- rs2_val == -16777217<br> - rs1_val == -65537<br>                                                                                                       |[0x80000388]:c.add a0, a1<br> [0x8000038a]:sw a0, 88(ra)<br>    |
|  45|[0x800032c0]<br>0xFDFFFFDE|- rs2_val == -33554433<br> - rs1_val == -33<br>                                                                                                          |[0x8000039a]:c.add a0, a1<br> [0x8000039c]:sw a0, 92(ra)<br>    |
|  46|[0x800032c4]<br>0xFC000001|- rs2_val == -67108865<br>                                                                                                                               |[0x800003ac]:c.add a0, a1<br> [0x800003ae]:sw a0, 96(ra)<br>    |
|  47|[0x800032c8]<br>0xFBFFFFFF|- rs2_val == -134217729<br>                                                                                                                              |[0x800003be]:c.add a0, a1<br> [0x800003c0]:sw a0, 100(ra)<br>   |
|  48|[0x800032cc]<br>0xF001FFFF|- rs2_val == -268435457<br>                                                                                                                              |[0x800003d0]:c.add a0, a1<br> [0x800003d2]:sw a0, 104(ra)<br>   |
|  49|[0x800032d0]<br>0x5FFFFFFE|- rs2_val == -536870913<br>                                                                                                                              |[0x800003e6]:c.add a0, a1<br> [0x800003e8]:sw a0, 108(ra)<br>   |
|  50|[0x800032d8]<br>0xACAAAAAA|- rs2_val == -1431655766<br>                                                                                                                             |[0x8000040a]:c.add a0, a1<br> [0x8000040c]:sw a0, 116(ra)<br>   |
|  51|[0x800032dc]<br>0xFFFFFEEE|- rs2_val == -257<br> - rs1_val == -17<br>                                                                                                               |[0x80000418]:c.add a0, a1<br> [0x8000041a]:sw a0, 120(ra)<br>   |
|  52|[0x800032e0]<br>0xFFFFFFB6|- rs2_val == -9<br> - rs1_val == -65<br>                                                                                                                 |[0x80000426]:c.add a0, a1<br> [0x80000428]:sw a0, 124(ra)<br>   |
|  53|[0x800032e4]<br>0x000FFF7F|- rs1_val == -129<br>                                                                                                                                    |[0x80000434]:c.add a0, a1<br> [0x80000436]:sw a0, 128(ra)<br>   |
|  54|[0x800032e8]<br>0xFFFFFEBE|- rs1_val == -257<br>                                                                                                                                    |[0x80000442]:c.add a0, a1<br> [0x80000444]:sw a0, 132(ra)<br>   |
|  55|[0x800032ec]<br>0xFFFBFDFE|- rs2_val == -262145<br> - rs1_val == -513<br>                                                                                                           |[0x80000454]:c.add a0, a1<br> [0x80000456]:sw a0, 136(ra)<br>   |
|  56|[0x800032f0]<br>0xFFFFFC04|- rs1_val == -1025<br>                                                                                                                                   |[0x80000462]:c.add a0, a1<br> [0x80000464]:sw a0, 140(ra)<br>   |
|  57|[0x800032f4]<br>0xFFFFF805|- rs1_val == -2049<br>                                                                                                                                   |[0x80000474]:c.add a0, a1<br> [0x80000476]:sw a0, 144(ra)<br>   |
|  58|[0x800032f8]<br>0x0003EFFF|- rs1_val == -4097<br>                                                                                                                                   |[0x80000486]:c.add a0, a1<br> [0x80000488]:sw a0, 148(ra)<br>   |
|  59|[0x800032fc]<br>0xFFFFE005|- rs1_val == -8193<br>                                                                                                                                   |[0x80000498]:c.add a0, a1<br> [0x8000049a]:sw a0, 152(ra)<br>   |
|  60|[0x80003300]<br>0xFFFFBF7E|- rs2_val == -129<br> - rs1_val == -16385<br>                                                                                                            |[0x800004aa]:c.add a0, a1<br> [0x800004ac]:sw a0, 156(ra)<br>   |
|  61|[0x80003304]<br>0xFFFD7FFE|- rs2_val == -131073<br> - rs1_val == -32769<br>                                                                                                         |[0x800004c0]:c.add a0, a1<br> [0x800004c2]:sw a0, 160(ra)<br>   |
|  62|[0x80003308]<br>0xFFFE01FF|- rs2_val == 512<br> - rs1_val == -131073<br>                                                                                                            |[0x800004d2]:c.add a0, a1<br> [0x800004d4]:sw a0, 164(ra)<br>   |
|  63|[0x8000330c]<br>0xFFF3FFFE|- rs2_val == -524289<br> - rs1_val == -262145<br>                                                                                                        |[0x800004e8]:c.add a0, a1<br> [0x800004ea]:sw a0, 168(ra)<br>   |
|  64|[0x80003310]<br>0xFFF80007|- rs2_val == 8<br> - rs1_val == -524289<br>                                                                                                              |[0x800004fa]:c.add a0, a1<br> [0x800004fc]:sw a0, 172(ra)<br>   |
|  65|[0x80003314]<br>0xFF7FFBFE|- rs1_val == -8388609<br>                                                                                                                                |[0x8000050c]:c.add a0, a1<br> [0x8000050e]:sw a0, 176(ra)<br>   |
|  66|[0x80003318]<br>0xFEFFFFDE|- rs1_val == -16777217<br>                                                                                                                               |[0x8000051e]:c.add a0, a1<br> [0x80000520]:sw a0, 180(ra)<br>   |
|  67|[0x8000331c]<br>0xFE000003|- rs2_val == 4<br> - rs1_val == -33554433<br>                                                                                                            |[0x80000530]:c.add a0, a1<br> [0x80000532]:sw a0, 184(ra)<br>   |
|  68|[0x80003320]<br>0xFBFFFBFE|- rs1_val == -67108865<br>                                                                                                                               |[0x80000542]:c.add a0, a1<br> [0x80000544]:sw a0, 188(ra)<br>   |
|  69|[0x80003324]<br>0xF8007FFF|- rs1_val == -134217729<br>                                                                                                                              |[0x80000554]:c.add a0, a1<br> [0x80000556]:sw a0, 192(ra)<br>   |
|  70|[0x80003328]<br>0x0FFFFFFF|- rs1_val == -268435457<br>                                                                                                                              |[0x80000566]:c.add a0, a1<br> [0x80000568]:sw a0, 196(ra)<br>   |
|  71|[0x8000332c]<br>0xE07FFFFF|- rs1_val == -536870913<br>                                                                                                                              |[0x80000578]:c.add a0, a1<br> [0x8000057a]:sw a0, 200(ra)<br>   |
|  72|[0x80003330]<br>0xBFEFFFFE|- rs1_val == -1073741825<br>                                                                                                                             |[0x8000058e]:c.add a0, a1<br> [0x80000590]:sw a0, 204(ra)<br>   |
|  73|[0x80003334]<br>0x00000420|- rs2_val == 32<br>                                                                                                                                      |[0x8000059c]:c.add a0, a1<br> [0x8000059e]:sw a0, 208(ra)<br>   |
|  74|[0x80003338]<br>0x00000041|- rs2_val == 64<br>                                                                                                                                      |[0x800005aa]:c.add a0, a1<br> [0x800005ac]:sw a0, 212(ra)<br>   |
|  75|[0x8000333c]<br>0x00040080|- rs2_val == 128<br>                                                                                                                                     |[0x800005b8]:c.add a0, a1<br> [0x800005ba]:sw a0, 216(ra)<br>   |
|  76|[0x80003340]<br>0x00000104|- rs2_val == 256<br>                                                                                                                                     |[0x800005c6]:c.add a0, a1<br> [0x800005c8]:sw a0, 220(ra)<br>   |
|  77|[0x80003344]<br>0x400003FF|- rs2_val == 1024<br>                                                                                                                                    |[0x800005d8]:c.add a0, a1<br> [0x800005da]:sw a0, 224(ra)<br>   |
|  78|[0x80003348]<br>0x00000800|- rs2_val == 2048<br>                                                                                                                                    |[0x800005ea]:c.add a0, a1<br> [0x800005ec]:sw a0, 228(ra)<br>   |
|  79|[0x8000334c]<br>0x03FFDFFF|- rs2_val == 67108864<br>                                                                                                                                |[0x800005fc]:c.add a0, a1<br> [0x800005fe]:sw a0, 232(ra)<br>   |
|  80|[0x80003350]<br>0x10010000|- rs2_val == 65536<br>                                                                                                                                   |[0x8000060a]:c.add a0, a1<br> [0x8000060c]:sw a0, 236(ra)<br>   |
|  81|[0x80003354]<br>0x12000000|- rs2_val == 268435456<br>                                                                                                                               |[0x80000618]:c.add a0, a1<br> [0x8000061a]:sw a0, 240(ra)<br>   |
|  82|[0x80003358]<br>0xFFFFFFF3|- rs2_val == -3<br>                                                                                                                                      |[0x80000626]:c.add a0, a1<br> [0x80000628]:sw a0, 244(ra)<br>   |
|  83|[0x8000335c]<br>0x0000000F|- rs2_val == -17<br>                                                                                                                                     |[0x80000634]:c.add a0, a1<br> [0x80000636]:sw a0, 248(ra)<br>   |
|  84|[0x80003360]<br>0x000001FF|- rs2_val == -513<br>                                                                                                                                    |[0x80000642]:c.add a0, a1<br> [0x80000644]:sw a0, 252(ra)<br>   |
|  85|[0x80003364]<br>0xDFBFFFFE|- rs1_val == -4194305<br>                                                                                                                                |[0x80000658]:c.add a0, a1<br> [0x8000065a]:sw a0, 256(ra)<br>   |
|  86|[0x80003368]<br>0x08001000|- rs2_val == 4096<br>                                                                                                                                    |[0x80000666]:c.add a0, a1<br> [0x80000668]:sw a0, 260(ra)<br>   |
|  87|[0x8000336c]<br>0x00004080|- rs2_val == 16384<br>                                                                                                                                   |[0x80000674]:c.add a0, a1<br> [0x80000676]:sw a0, 264(ra)<br>   |
|  88|[0x80003370]<br>0xFBFFBFFE|- rs2_val == -16385<br>                                                                                                                                  |[0x8000068a]:c.add a0, a1<br> [0x8000068c]:sw a0, 268(ra)<br>   |
|  89|[0x80003374]<br>0xFF7EFFFE|- rs2_val == -65537<br>                                                                                                                                  |[0x800006a0]:c.add a0, a1<br> [0x800006a2]:sw a0, 272(ra)<br>   |
|  90|[0x80003378]<br>0x0001FFEF|- rs2_val == 131072<br>                                                                                                                                  |[0x800006ae]:c.add a0, a1<br> [0x800006b0]:sw a0, 276(ra)<br>   |
|  91|[0x8000337c]<br>0xFFF0007F|- rs1_val == -1048577<br>                                                                                                                                |[0x800006c0]:c.add a0, a1<br> [0x800006c2]:sw a0, 280(ra)<br>   |
|  92|[0x80003380]<br>0xFFE0003F|- rs1_val == -2097153<br>                                                                                                                                |[0x800006d2]:c.add a0, a1<br> [0x800006d4]:sw a0, 284(ra)<br>   |
|  93|[0x80003384]<br>0x00240000|- rs2_val == 2097152<br>                                                                                                                                 |[0x800006e0]:c.add a0, a1<br> [0x800006e2]:sw a0, 288(ra)<br>   |
|  94|[0x8000338c]<br>0x20400000|- rs1_val == 4194304<br>                                                                                                                                 |[0x80000700]:c.add a0, a1<br> [0x80000702]:sw a0, 296(ra)<br>   |
