
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000550')]      |
| SIG_REGION                | [('0x80002204', '0x80002364', '88 words')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 151     |
| Total Coverpoints Hit     | 146      |
| Total Signature Updates   | 88      |
| STAT1                     | 86      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000470]:srli a1, a0, 23
      [0x80000474]:sw a1, 228(ra)
 -- Signature Address: 0x80002328 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == 23
      - rs1_val==0
      - rs1_val == 0 and imm_val >= 0 and imm_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000544]:srli a1, a0, 12
      [0x80000548]:sw a1, 284(ra)
 -- Signature Address: 0x80002360 Data: 0x000FFEFF
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == -1048577
      - rs1_val < 0 and imm_val > 0 and imm_val < xlen






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

|s.no|        signature         |                                                                                                     coverpoints                                                                                                      |                                code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000001|- opcode : srli<br> - rs1 : x4<br> - rd : x5<br> - rs1 != rd<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -65<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br>                                  |[0x80000084]:srli t0, tp, 31<br> [0x80000088]:sw t0, 0(ra)<br>      |
|   2|[0x80002208]<br>0x007FFFFF|- rs1 : x9<br> - rd : x9<br> - rs1 == rd<br> - rs1_val == 2147483647<br> - imm_val == 8<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> |[0x80000094]:srli s1, s1, 8<br> [0x80000098]:sw s1, 4(ra)<br>       |
|   3|[0x8000220c]<br>0x00000000|- rs1 : x0<br> - rd : x6<br> - imm_val == 23<br> - rs1_val==0<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                                              |[0x800000a0]:srli t1, zero, 23<br> [0x800000a4]:sw t1, 8(ra)<br>    |
|   4|[0x80002210]<br>0x037FFFFF|- rs1 : x12<br> - rd : x4<br> - rs1_val == -536870913<br>                                                                                                                                                             |[0x800000b0]:srli tp, a2, 6<br> [0x800000b4]:sw tp, 12(ra)<br>      |
|   5|[0x80002214]<br>0x003BFFFF|- rs1 : x8<br> - rd : x14<br> - rs1_val == -268435457<br> - imm_val == 10<br>                                                                                                                                         |[0x800000c0]:srli a4, fp, 10<br> [0x800000c4]:sw a4, 16(ra)<br>     |
|   6|[0x80002218]<br>0x3DFFFFFF|- rs1 : x7<br> - rd : x3<br> - rs1_val == -134217729<br> - imm_val == 2<br>                                                                                                                                           |[0x800000d0]:srli gp, t2, 2<br> [0x800000d4]:sw gp, 20(ra)<br>      |
|   7|[0x8000221c]<br>0x00003EFF|- rs1 : x6<br> - rd : x2<br> - rs1_val == -67108865<br>                                                                                                                                                               |[0x800000e0]:srli sp, t1, 18<br> [0x800000e4]:sw sp, 24(ra)<br>     |
|   8|[0x80002220]<br>0x0000FDFF|- rs1 : x11<br> - rd : x15<br> - rs1_val == -33554433<br> - imm_val == 16<br>                                                                                                                                         |[0x800000f0]:srli a5, a1, 16<br> [0x800000f4]:sw a5, 28(ra)<br>     |
|   9|[0x80002224]<br>0x7F7FFFFF|- rs1 : x5<br> - rd : x13<br> - rs1_val == -16777217<br> - imm_val == 1<br>                                                                                                                                           |[0x80000108]:srli a3, t0, 1<br> [0x8000010c]:sw a3, 0(tp)<br>       |
|  10|[0x80002228]<br>0x00007FBF|- rs1 : x15<br> - rd : x11<br> - rs1_val == -8388609<br>                                                                                                                                                              |[0x80000118]:srli a1, a5, 17<br> [0x8000011c]:sw a1, 4(tp)<br>      |
|  11|[0x8000222c]<br>0x0001FF7F|- rs1 : x2<br> - rd : x12<br> - rs1_val == -4194305<br> - imm_val == 15<br>                                                                                                                                           |[0x80000128]:srli a2, sp, 15<br> [0x8000012c]:sw a2, 8(tp)<br>      |
|  12|[0x80002230]<br>0x01FFBFFF|- rs1 : x14<br> - rd : x7<br> - rs1_val == -2097153<br>                                                                                                                                                               |[0x80000138]:srli t2, a4, 7<br> [0x8000013c]:sw t2, 12(tp)<br>      |
|  13|[0x80002234]<br>0x00000000|- rs1 : x13<br> - rd : x0<br> - rs1_val == -1048577<br>                                                                                                                                                               |[0x80000148]:srli zero, a3, 12<br> [0x8000014c]:sw zero, 16(tp)<br> |
|  14|[0x80002238]<br>0x000007FF|- rs1 : x3<br> - rd : x10<br> - rs1_val == -524289<br> - imm_val == 21<br>                                                                                                                                            |[0x80000158]:srli a0, gp, 21<br> [0x8000015c]:sw a0, 20(tp)<br>     |
|  15|[0x8000223c]<br>0x0000FFFB|- rs1 : x10<br> - rd : x1<br> - rs1_val == -262145<br>                                                                                                                                                                |[0x80000168]:srli ra, a0, 16<br> [0x8000016c]:sw ra, 24(tp)<br>     |
|  16|[0x80002240]<br>0x00007FFE|- rs1 : x1<br> - rd : x8<br> - rs1_val == -131073<br>                                                                                                                                                                 |[0x80000178]:srli fp, ra, 17<br> [0x8000017c]:sw fp, 28(tp)<br>     |
|  17|[0x80002244]<br>0x001FFFDF|- rs1_val == -65537<br>                                                                                                                                                                                               |[0x80000190]:srli a1, a0, 11<br> [0x80000194]:sw a1, 0(ra)<br>      |
|  18|[0x80002248]<br>0x00003FFF|- rs1_val == -32769<br>                                                                                                                                                                                               |[0x800001a0]:srli a1, a0, 18<br> [0x800001a4]:sw a1, 4(ra)<br>      |
|  19|[0x8000224c]<br>0xFFFFBFFF|- rs1_val == -16385<br> - rs1_val < 0 and imm_val == 0<br>                                                                                                                                                            |[0x800001b0]:srli a1, a0, 0<br> [0x800001b4]:sw a1, 8(ra)<br>       |
|  20|[0x80002250]<br>0x00001FFF|- rs1_val == -8193<br>                                                                                                                                                                                                |[0x800001c0]:srli a1, a0, 19<br> [0x800001c4]:sw a1, 12(ra)<br>     |
|  21|[0x80002254]<br>0x003FFFFB|- rs1_val == -4097<br>                                                                                                                                                                                                |[0x800001d0]:srli a1, a0, 10<br> [0x800001d4]:sw a1, 16(ra)<br>     |
|  22|[0x80002258]<br>0x000007FF|- rs1_val == -2049<br>                                                                                                                                                                                                |[0x800001e0]:srli a1, a0, 21<br> [0x800001e4]:sw a1, 20(ra)<br>     |
|  23|[0x8000225c]<br>0x03FFFFEF|- rs1_val == -1025<br>                                                                                                                                                                                                |[0x800001ec]:srli a1, a0, 6<br> [0x800001f0]:sw a1, 24(ra)<br>      |
|  24|[0x80002260]<br>0x00001FFF|- rs1_val == -513<br>                                                                                                                                                                                                 |[0x800001f8]:srli a1, a0, 19<br> [0x800001fc]:sw a1, 28(ra)<br>     |
|  25|[0x80002264]<br>0x00FFFFFE|- rs1_val == -257<br>                                                                                                                                                                                                 |[0x80000204]:srli a1, a0, 8<br> [0x80000208]:sw a1, 32(ra)<br>      |
|  26|[0x80002268]<br>0x00FFFFFF|- rs1_val == -129<br>                                                                                                                                                                                                 |[0x80000210]:srli a1, a0, 8<br> [0x80000214]:sw a1, 36(ra)<br>      |
|  27|[0x8000226c]<br>0x3FFFFFF7|- rs1_val == -33<br>                                                                                                                                                                                                  |[0x8000021c]:srli a1, a0, 2<br> [0x80000220]:sw a1, 40(ra)<br>      |
|  28|[0x80002270]<br>0x00003FFF|- rs1_val == -17<br>                                                                                                                                                                                                  |[0x80000228]:srli a1, a0, 18<br> [0x8000022c]:sw a1, 44(ra)<br>     |
|  29|[0x80002274]<br>0x3FFFFFFD|- rs1_val == -9<br>                                                                                                                                                                                                   |[0x80000234]:srli a1, a0, 2<br> [0x80000238]:sw a1, 48(ra)<br>      |
|  30|[0x80002278]<br>0x03FFFFFF|- rs1_val == -5<br>                                                                                                                                                                                                   |[0x80000240]:srli a1, a0, 6<br> [0x80000244]:sw a1, 52(ra)<br>      |
|  31|[0x8000227c]<br>0x0001FFFF|- rs1_val == -3<br>                                                                                                                                                                                                   |[0x8000024c]:srli a1, a0, 15<br> [0x80000250]:sw a1, 56(ra)<br>     |
|  32|[0x80002280]<br>0x000FFFFF|- rs1_val == -2<br>                                                                                                                                                                                                   |[0x80000258]:srli a1, a0, 12<br> [0x8000025c]:sw a1, 60(ra)<br>     |
|  33|[0x80002284]<br>0x00000000|- imm_val == 27<br> - rs1_val == 262144<br>                                                                                                                                                                           |[0x80000264]:srli a1, a0, 27<br> [0x80000268]:sw a1, 64(ra)<br>     |
|  34|[0x80002288]<br>0x00000006|- imm_val == 29<br>                                                                                                                                                                                                   |[0x80000270]:srli a1, a0, 29<br> [0x80000274]:sw a1, 68(ra)<br>     |
|  35|[0x8000228c]<br>0x00000000|- imm_val == 30<br> - rs1_val == 64<br>                                                                                                                                                                               |[0x8000027c]:srli a1, a0, 30<br> [0x80000280]:sw a1, 72(ra)<br>     |
|  36|[0x80002290]<br>0x00200000|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br>                                                                                                                      |[0x80000288]:srli a1, a0, 10<br> [0x8000028c]:sw a1, 76(ra)<br>     |
|  37|[0x80002294]<br>0x40000000|- rs1_val == 1073741824<br> - rs1_val > 0 and imm_val == 0<br>                                                                                                                                                        |[0x80000294]:srli a1, a0, 0<br> [0x80000298]:sw a1, 80(ra)<br>      |
|  38|[0x80002298]<br>0x00001000|- rs1_val == 536870912<br>                                                                                                                                                                                            |[0x800002a0]:srli a1, a0, 17<br> [0x800002a4]:sw a1, 84(ra)<br>     |
|  39|[0x8000229c]<br>0x00000800|- rs1_val == 268435456<br>                                                                                                                                                                                            |[0x800002ac]:srli a1, a0, 17<br> [0x800002b0]:sw a1, 88(ra)<br>     |
|  40|[0x800022a0]<br>0x00010000|- rs1_val == 134217728<br>                                                                                                                                                                                            |[0x800002b8]:srli a1, a0, 11<br> [0x800002bc]:sw a1, 92(ra)<br>     |
|  41|[0x800022a4]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                             |[0x800002c4]:srli a1, a0, 30<br> [0x800002c8]:sw a1, 96(ra)<br>     |
|  42|[0x800022a8]<br>0x00000040|- rs1_val == 33554432<br>                                                                                                                                                                                             |[0x800002d0]:srli a1, a0, 19<br> [0x800002d4]:sw a1, 100(ra)<br>    |
|  43|[0x800022ac]<br>0x00000800|- rs1_val == 16777216<br>                                                                                                                                                                                             |[0x800002dc]:srli a1, a0, 13<br> [0x800002e0]:sw a1, 104(ra)<br>    |
|  44|[0x800022b0]<br>0x00010000|- rs1_val == 8388608<br>                                                                                                                                                                                              |[0x800002e8]:srli a1, a0, 7<br> [0x800002ec]:sw a1, 108(ra)<br>     |
|  45|[0x800022b4]<br>0x00010000|- rs1_val == 4194304<br>                                                                                                                                                                                              |[0x800002f4]:srli a1, a0, 6<br> [0x800002f8]:sw a1, 112(ra)<br>     |
|  46|[0x800022b8]<br>0x00020000|- rs1_val == 2097152<br> - imm_val == 4<br>                                                                                                                                                                           |[0x80000300]:srli a1, a0, 4<br> [0x80000304]:sw a1, 116(ra)<br>     |
|  47|[0x800022bc]<br>0x00000800|- rs1_val == 1048576<br>                                                                                                                                                                                              |[0x8000030c]:srli a1, a0, 9<br> [0x80000310]:sw a1, 120(ra)<br>     |
|  48|[0x800022c0]<br>0x00000100|- rs1_val == 524288<br>                                                                                                                                                                                               |[0x80000318]:srli a1, a0, 11<br> [0x8000031c]:sw a1, 124(ra)<br>    |
|  49|[0x800022c4]<br>0x00000002|- rs1_val == 131072<br>                                                                                                                                                                                               |[0x80000324]:srli a1, a0, 16<br> [0x80000328]:sw a1, 128(ra)<br>    |
|  50|[0x800022c8]<br>0x00010000|- rs1_val == 65536<br>                                                                                                                                                                                                |[0x80000330]:srli a1, a0, 0<br> [0x80000334]:sw a1, 132(ra)<br>     |
|  51|[0x800022cc]<br>0x00000000|- rs1_val == 32768<br>                                                                                                                                                                                                |[0x8000033c]:srli a1, a0, 16<br> [0x80000340]:sw a1, 136(ra)<br>    |
|  52|[0x800022d0]<br>0x00000100|- rs1_val == 16384<br>                                                                                                                                                                                                |[0x80000348]:srli a1, a0, 6<br> [0x8000034c]:sw a1, 140(ra)<br>     |
|  53|[0x800022d4]<br>0x00000200|- rs1_val == 8192<br>                                                                                                                                                                                                 |[0x80000354]:srli a1, a0, 4<br> [0x80000358]:sw a1, 144(ra)<br>     |
|  54|[0x800022d8]<br>0x00000000|- rs1_val == 4096<br>                                                                                                                                                                                                 |[0x80000360]:srli a1, a0, 15<br> [0x80000364]:sw a1, 148(ra)<br>    |
|  55|[0x800022dc]<br>0x00000008|- rs1_val == 2048<br>                                                                                                                                                                                                 |[0x80000370]:srli a1, a0, 8<br> [0x80000374]:sw a1, 152(ra)<br>     |
|  56|[0x800022e0]<br>0x00000000|- rs1_val == 1024<br>                                                                                                                                                                                                 |[0x8000037c]:srli a1, a0, 18<br> [0x80000380]:sw a1, 156(ra)<br>    |
|  57|[0x800022e4]<br>0x00000000|- rs1_val == 512<br>                                                                                                                                                                                                  |[0x80000388]:srli a1, a0, 14<br> [0x8000038c]:sw a1, 160(ra)<br>    |
|  58|[0x800022e8]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                                                                                  |[0x80000394]:srli a1, a0, 19<br> [0x80000398]:sw a1, 164(ra)<br>    |
|  59|[0x800022ec]<br>0x00000000|- rs1_val == 128<br>                                                                                                                                                                                                  |[0x800003a0]:srli a1, a0, 8<br> [0x800003a4]:sw a1, 168(ra)<br>     |
|  60|[0x800022f0]<br>0x00000000|- rs1_val == 32<br>                                                                                                                                                                                                   |[0x800003ac]:srli a1, a0, 11<br> [0x800003b0]:sw a1, 172(ra)<br>    |
|  61|[0x800022f4]<br>0x00000000|- rs1_val == 16<br>                                                                                                                                                                                                   |[0x800003b8]:srli a1, a0, 23<br> [0x800003bc]:sw a1, 176(ra)<br>    |
|  62|[0x800022f8]<br>0x00000000|- rs1_val == 8<br>                                                                                                                                                                                                    |[0x800003c4]:srli a1, a0, 29<br> [0x800003c8]:sw a1, 180(ra)<br>    |
|  63|[0x800022fc]<br>0x00000000|- rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                                                                   |[0x800003d0]:srli a1, a0, 9<br> [0x800003d4]:sw a1, 184(ra)<br>     |
|  64|[0x80002300]<br>0x00000000|- rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                                                                   |[0x800003dc]:srli a1, a0, 17<br> [0x800003e0]:sw a1, 188(ra)<br>    |
|  65|[0x80002304]<br>0x00000000|- rs1_val == 1<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val > 0 and imm_val == (xlen-1)<br>                                                                                                   |[0x800003e8]:srli a1, a0, 31<br> [0x800003ec]:sw a1, 192(ra)<br>    |
|  66|[0x80002308]<br>0x00000005|- rs1_val==46341<br>                                                                                                                                                                                                  |[0x800003f8]:srli a1, a0, 13<br> [0x800003fc]:sw a1, 196(ra)<br>    |
|  67|[0x8000230c]<br>0x01FFFE95|- rs1_val==-46339<br>                                                                                                                                                                                                 |[0x80000408]:srli a1, a0, 7<br> [0x8000040c]:sw a1, 200(ra)<br>     |
|  68|[0x80002310]<br>0x000CCCCC|- rs1_val==1717986919<br>                                                                                                                                                                                             |[0x80000418]:srli a1, a0, 11<br> [0x8000041c]:sw a1, 204(ra)<br>    |
|  69|[0x80002314]<br>0x0000CCCC|- rs1_val==858993460<br>                                                                                                                                                                                              |[0x80000428]:srli a1, a0, 14<br> [0x8000042c]:sw a1, 208(ra)<br>    |
|  70|[0x80002318]<br>0x00000000|- rs1_val==6<br>                                                                                                                                                                                                      |[0x80000434]:srli a1, a0, 14<br> [0x80000438]:sw a1, 212(ra)<br>    |
|  71|[0x8000231c]<br>0x55555555|- rs1_val==-1431655765<br>                                                                                                                                                                                            |[0x80000444]:srli a1, a0, 1<br> [0x80000448]:sw a1, 216(ra)<br>     |
|  72|[0x80002320]<br>0x00005555|- rs1_val==1431655766<br>                                                                                                                                                                                             |[0x80000454]:srli a1, a0, 16<br> [0x80000458]:sw a1, 220(ra)<br>    |
|  73|[0x80002324]<br>0x00000000|- rs1_val==46339<br>                                                                                                                                                                                                  |[0x80000464]:srli a1, a0, 21<br> [0x80000468]:sw a1, 224(ra)<br>    |
|  74|[0x8000232c]<br>0x00000000|- rs1_val==3<br>                                                                                                                                                                                                      |[0x8000047c]:srli a1, a0, 8<br> [0x80000480]:sw a1, 232(ra)<br>     |
|  75|[0x80002330]<br>0x2AAAAAAA|- rs1_val==-1431655766<br> - rs1_val == -1431655766<br>                                                                                                                                                               |[0x8000048c]:srli a1, a0, 2<br> [0x80000490]:sw a1, 236(ra)<br>     |
|  76|[0x80002334]<br>0x000AAAAA|- rs1_val==1431655765<br> - rs1_val == 1431655765<br>                                                                                                                                                                 |[0x8000049c]:srli a1, a0, 11<br> [0x800004a0]:sw a1, 240(ra)<br>    |
|  77|[0x80002338]<br>0x00000000|- rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br>                                                                                                                                                           |[0x800004a8]:srli a1, a0, 4<br> [0x800004ac]:sw a1, 244(ra)<br>     |
|  78|[0x8000233c]<br>0x00000333|- rs1_val==1717986917<br>                                                                                                                                                                                             |[0x800004b8]:srli a1, a0, 21<br> [0x800004bc]:sw a1, 248(ra)<br>    |
|  79|[0x80002340]<br>0x00CCCCCC|- rs1_val==858993458<br>                                                                                                                                                                                              |[0x800004c8]:srli a1, a0, 6<br> [0x800004cc]:sw a1, 252(ra)<br>     |
|  80|[0x80002344]<br>0x01555555|- rs1_val==1431655764<br>                                                                                                                                                                                             |[0x800004d8]:srli a1, a0, 6<br> [0x800004dc]:sw a1, 256(ra)<br>     |
|  81|[0x80002348]<br>0x00000000|- rs1_val==46340<br>                                                                                                                                                                                                  |[0x800004e8]:srli a1, a0, 23<br> [0x800004ec]:sw a1, 260(ra)<br>    |
|  82|[0x8000234c]<br>0x00FFFF4A|- rs1_val==-46340<br>                                                                                                                                                                                                 |[0x800004f8]:srli a1, a0, 8<br> [0x800004fc]:sw a1, 264(ra)<br>     |
|  83|[0x80002350]<br>0x00333333|- rs1_val==1717986918<br>                                                                                                                                                                                             |[0x80000508]:srli a1, a0, 9<br> [0x8000050c]:sw a1, 268(ra)<br>     |
|  84|[0x80002354]<br>0x00000000|- rs1_val==858993459<br>                                                                                                                                                                                              |[0x80000518]:srli a1, a0, 30<br> [0x8000051c]:sw a1, 272(ra)<br>    |
|  85|[0x80002358]<br>0x00000000|- rs1_val==5<br>                                                                                                                                                                                                      |[0x80000524]:srli a1, a0, 11<br> [0x80000528]:sw a1, 276(ra)<br>    |
|  86|[0x8000235c]<br>0x0000017F|- rs1_val == -1073741825<br>                                                                                                                                                                                          |[0x80000534]:srli a1, a0, 23<br> [0x80000538]:sw a1, 280(ra)<br>    |
