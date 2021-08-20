
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000560')]      |
| SIG_REGION                | [('0x80002204', '0x80002368', '89 words')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 151     |
| Total Coverpoints Hit     | 146      |
| Total Signature Updates   | 89      |
| STAT1                     | 88      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000554]:slli a1, a0, 16
      [0x80000558]:sw a1, 284(ra)
 -- Signature Address: 0x80002364 Data: 0xFFFF0000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == -131073
      - imm_val == 16
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

|s.no|        signature         |                                                                                                      coverpoints                                                                                                      |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002204]<br>0x80000000|- opcode : slli<br> - rs1 : x2<br> - rd : x10<br> - rs1 != rd<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br>                                                       |[0x80000084]:slli a0, sp, 31<br> [0x80000088]:sw a0, 0(t0)<br>      |
|   2|[0x80002208]<br>0xF8000000|- rs1 : x3<br> - rd : x3<br> - rs1 == rd<br> - rs1_val == 2147483647<br> - imm_val == 27<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> |[0x80000094]:slli gp, gp, 27<br> [0x80000098]:sw gp, 4(t0)<br>      |
|   3|[0x8000220c]<br>0xFFFFFF80|- rs1 : x9<br> - rd : x14<br> - rs1_val == -1073741825<br>                                                                                                                                                             |[0x800000a4]:slli a4, s1, 7<br> [0x800000a8]:sw a4, 8(t0)<br>       |
|   4|[0x80002210]<br>0xBFFFFFFE|- rs1 : x7<br> - rd : x8<br> - rs1_val == -536870913<br> - imm_val == 1<br>                                                                                                                                            |[0x800000b4]:slli fp, t2, 1<br> [0x800000b8]:sw fp, 12(t0)<br>      |
|   5|[0x80002214]<br>0xFFFC0000|- rs1 : x4<br> - rd : x6<br> - rs1_val == -268435457<br>                                                                                                                                                               |[0x800000c4]:slli t1, tp, 18<br> [0x800000c8]:sw t1, 16(t0)<br>     |
|   6|[0x80002218]<br>0xF7FFFFFF|- rs1 : x11<br> - rd : x7<br> - rs1_val == -134217729<br> - rs1_val < 0 and imm_val == 0<br>                                                                                                                           |[0x800000d4]:slli t2, a1, 0<br> [0x800000d8]:sw t2, 20(t0)<br>      |
|   7|[0x8000221c]<br>0x00000000|- rs1 : x0<br> - rd : x1<br> - rs1_val==0<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                                                                   |[0x800000e0]:slli ra, zero, 7<br> [0x800000e4]:sw ra, 24(t0)<br>    |
|   8|[0x80002220]<br>0xFFFF8000|- rs1 : x1<br> - rd : x11<br> - rs1_val == -33554433<br> - imm_val == 15<br>                                                                                                                                           |[0x800000f0]:slli a1, ra, 15<br> [0x800000f4]:sw a1, 28(t0)<br>     |
|   9|[0x80002224]<br>0xFFF80000|- rs1 : x10<br> - rd : x12<br> - rs1_val == -16777217<br>                                                                                                                                                              |[0x80000100]:slli a2, a0, 19<br> [0x80000104]:sw a2, 32(t0)<br>     |
|  10|[0x80002228]<br>0xFFFF0000|- rs1 : x13<br> - rd : x9<br> - rs1_val == -8388609<br> - imm_val == 16<br>                                                                                                                                            |[0x80000118]:slli s1, a3, 16<br> [0x8000011c]:sw s1, 0(ra)<br>      |
|  11|[0x8000222c]<br>0x80000000|- rs1 : x5<br> - rd : x13<br> - rs1_val == -4194305<br>                                                                                                                                                                |[0x80000128]:slli a3, t0, 31<br> [0x8000012c]:sw a3, 4(ra)<br>      |
|  12|[0x80002230]<br>0xF8000000|- rs1 : x8<br> - rd : x15<br> - rs1_val == -2097153<br>                                                                                                                                                                |[0x80000138]:slli a5, fp, 27<br> [0x8000013c]:sw a5, 8(ra)<br>      |
|  13|[0x80002234]<br>0xFFFFF000|- rs1 : x15<br> - rd : x4<br> - rs1_val == -1048577<br>                                                                                                                                                                |[0x80000148]:slli tp, a5, 12<br> [0x8000014c]:sw tp, 12(ra)<br>     |
|  14|[0x80002238]<br>0xEFFFFE00|- rs1 : x14<br> - rd : x5<br> - rs1_val == -524289<br>                                                                                                                                                                 |[0x80000158]:slli t0, a4, 9<br> [0x8000015c]:sw t0, 16(ra)<br>      |
|  15|[0x8000223c]<br>0xFFFBFFFF|- rs1 : x6<br> - rd : x2<br> - rs1_val == -262145<br>                                                                                                                                                                  |[0x80000168]:slli sp, t1, 0<br> [0x8000016c]:sw sp, 20(ra)<br>      |
|  16|[0x80002240]<br>0x00000000|- rs1 : x12<br> - rd : x0<br> - rs1_val == -131073<br>                                                                                                                                                                 |[0x80000178]:slli zero, a2, 16<br> [0x8000017c]:sw zero, 24(ra)<br> |
|  17|[0x80002244]<br>0xF7FFF800|- rs1_val == -65537<br>                                                                                                                                                                                                |[0x80000188]:slli a1, a0, 11<br> [0x8000018c]:sw a1, 28(ra)<br>     |
|  18|[0x80002248]<br>0xFFFE0000|- rs1_val == -32769<br>                                                                                                                                                                                                |[0x800001a0]:slli a1, a0, 17<br> [0x800001a4]:sw a1, 0(ra)<br>      |
|  19|[0x8000224c]<br>0xF8000000|- rs1_val == -16385<br>                                                                                                                                                                                                |[0x800001b0]:slli a1, a0, 27<br> [0x800001b4]:sw a1, 4(ra)<br>      |
|  20|[0x80002250]<br>0xBFFE0000|- rs1_val == -8193<br>                                                                                                                                                                                                 |[0x800001c0]:slli a1, a0, 17<br> [0x800001c4]:sw a1, 8(ra)<br>      |
|  21|[0x80002254]<br>0xE0000000|- rs1_val == -4097<br> - imm_val == 29<br>                                                                                                                                                                             |[0x800001d0]:slli a1, a0, 29<br> [0x800001d4]:sw a1, 12(ra)<br>     |
|  22|[0x80002258]<br>0xFDFFC000|- rs1_val == -2049<br>                                                                                                                                                                                                 |[0x800001e0]:slli a1, a0, 14<br> [0x800001e4]:sw a1, 16(ra)<br>     |
|  23|[0x8000225c]<br>0xFF800000|- rs1_val == -1025<br> - imm_val == 23<br>                                                                                                                                                                             |[0x800001ec]:slli a1, a0, 23<br> [0x800001f0]:sw a1, 20(ra)<br>     |
|  24|[0x80002260]<br>0xFF7FC000|- rs1_val == -513<br>                                                                                                                                                                                                  |[0x800001f8]:slli a1, a0, 14<br> [0x800001fc]:sw a1, 24(ra)<br>     |
|  25|[0x80002264]<br>0xFDFE0000|- rs1_val == -257<br>                                                                                                                                                                                                  |[0x80000204]:slli a1, a0, 17<br> [0x80000208]:sw a1, 28(ra)<br>     |
|  26|[0x80002268]<br>0xFFDFC000|- rs1_val == -129<br>                                                                                                                                                                                                  |[0x80000210]:slli a1, a0, 14<br> [0x80000214]:sw a1, 32(ra)<br>     |
|  27|[0x8000226c]<br>0xFFEFC000|- rs1_val == -65<br>                                                                                                                                                                                                   |[0x8000021c]:slli a1, a0, 14<br> [0x80000220]:sw a1, 36(ra)<br>     |
|  28|[0x80002270]<br>0xFFFFDF00|- rs1_val == -33<br> - imm_val == 8<br>                                                                                                                                                                                |[0x80000228]:slli a1, a0, 8<br> [0x8000022c]:sw a1, 40(ra)<br>      |
|  29|[0x80002274]<br>0xFFFFFBC0|- rs1_val == -17<br>                                                                                                                                                                                                   |[0x80000234]:slli a1, a0, 6<br> [0x80000238]:sw a1, 44(ra)<br>      |
|  30|[0x80002278]<br>0xFFFFFF70|- rs1_val == -9<br> - imm_val == 4<br>                                                                                                                                                                                 |[0x80000240]:slli a1, a0, 4<br> [0x80000244]:sw a1, 48(ra)<br>      |
|  31|[0x8000227c]<br>0xFFFB0000|- rs1_val == -5<br>                                                                                                                                                                                                    |[0x8000024c]:slli a1, a0, 16<br> [0x80000250]:sw a1, 52(ra)<br>     |
|  32|[0x80002280]<br>0xFFFFFA00|- rs1_val == -3<br>                                                                                                                                                                                                    |[0x80000258]:slli a1, a0, 9<br> [0x8000025c]:sw a1, 56(ra)<br>      |
|  33|[0x80002284]<br>0xFFFFFF00|- rs1_val == -2<br>                                                                                                                                                                                                    |[0x80000264]:slli a1, a0, 7<br> [0x80000268]:sw a1, 60(ra)<br>      |
|  34|[0x80002288]<br>0x00000000|- imm_val == 30<br>                                                                                                                                                                                                    |[0x80000270]:slli a1, a0, 30<br> [0x80000274]:sw a1, 64(ra)<br>     |
|  35|[0x8000228c]<br>0x00000000|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br>                                                                                                                       |[0x8000027c]:slli a1, a0, 23<br> [0x80000280]:sw a1, 68(ra)<br>     |
|  36|[0x80002290]<br>0x00000000|- rs1_val == 1073741824<br> - imm_val == 21<br>                                                                                                                                                                        |[0x80000288]:slli a1, a0, 21<br> [0x8000028c]:sw a1, 72(ra)<br>     |
|  37|[0x80002294]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                                             |[0x80000294]:slli a1, a0, 16<br> [0x80000298]:sw a1, 76(ra)<br>     |
|  38|[0x80002298]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                                             |[0x800002a0]:slli a1, a0, 7<br> [0x800002a4]:sw a1, 80(ra)<br>      |
|  39|[0x8000229c]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                                                                             |[0x800002ac]:slli a1, a0, 30<br> [0x800002b0]:sw a1, 84(ra)<br>     |
|  40|[0x800022a0]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                              |[0x800002b8]:slli a1, a0, 15<br> [0x800002bc]:sw a1, 88(ra)<br>     |
|  41|[0x800022a4]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                                                              |[0x800002c4]:slli a1, a0, 30<br> [0x800002c8]:sw a1, 92(ra)<br>     |
|  42|[0x800022a8]<br>0x00000000|- rs1_val == 16777216<br> - rs1_val > 0 and imm_val == (xlen-1)<br>                                                                                                                                                    |[0x800002d0]:slli a1, a0, 31<br> [0x800002d4]:sw a1, 96(ra)<br>     |
|  43|[0x800022ac]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                                                                                                               |[0x800002dc]:slli a1, a0, 21<br> [0x800002e0]:sw a1, 100(ra)<br>    |
|  44|[0x800022b0]<br>0x00400000|- rs1_val == 4194304<br> - rs1_val > 0 and imm_val == 0<br>                                                                                                                                                            |[0x800002e8]:slli a1, a0, 0<br> [0x800002ec]:sw a1, 104(ra)<br>     |
|  45|[0x800022b4]<br>0x08000000|- rs1_val == 2097152<br>                                                                                                                                                                                               |[0x800002f4]:slli a1, a0, 6<br> [0x800002f8]:sw a1, 108(ra)<br>     |
|  46|[0x800022b8]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                                                                                                               |[0x80000300]:slli a1, a0, 17<br> [0x80000304]:sw a1, 112(ra)<br>    |
|  47|[0x800022bc]<br>0x00000000|- rs1_val == 524288<br>                                                                                                                                                                                                |[0x8000030c]:slli a1, a0, 30<br> [0x80000310]:sw a1, 116(ra)<br>    |
|  48|[0x800022c0]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                                                                                |[0x80000318]:slli a1, a0, 19<br> [0x8000031c]:sw a1, 120(ra)<br>    |
|  49|[0x800022c4]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                                                                                                |[0x80000324]:slli a1, a0, 15<br> [0x80000328]:sw a1, 124(ra)<br>    |
|  50|[0x800022c8]<br>0x40000000|- rs1_val == 65536<br>                                                                                                                                                                                                 |[0x80000330]:slli a1, a0, 14<br> [0x80000334]:sw a1, 128(ra)<br>    |
|  51|[0x800022cc]<br>0x08000000|- rs1_val == 32768<br>                                                                                                                                                                                                 |[0x8000033c]:slli a1, a0, 12<br> [0x80000340]:sw a1, 132(ra)<br>    |
|  52|[0x800022d0]<br>0x00004000|- rs1_val == 16384<br>                                                                                                                                                                                                 |[0x80000348]:slli a1, a0, 0<br> [0x8000034c]:sw a1, 136(ra)<br>     |
|  53|[0x800022d4]<br>0x00002000|- rs1_val == 8192<br>                                                                                                                                                                                                  |[0x80000354]:slli a1, a0, 0<br> [0x80000358]:sw a1, 140(ra)<br>     |
|  54|[0x800022d8]<br>0x00002000|- rs1_val == 4096<br>                                                                                                                                                                                                  |[0x80000360]:slli a1, a0, 1<br> [0x80000364]:sw a1, 144(ra)<br>     |
|  55|[0x800022dc]<br>0x00000000|- rs1_val == 2048<br>                                                                                                                                                                                                  |[0x80000370]:slli a1, a0, 21<br> [0x80000374]:sw a1, 148(ra)<br>    |
|  56|[0x800022e0]<br>0x00400000|- rs1_val == 1024<br>                                                                                                                                                                                                  |[0x8000037c]:slli a1, a0, 12<br> [0x80000380]:sw a1, 152(ra)<br>    |
|  57|[0x800022e4]<br>0x00001000|- rs1_val == 512<br>                                                                                                                                                                                                   |[0x80000388]:slli a1, a0, 3<br> [0x8000038c]:sw a1, 156(ra)<br>     |
|  58|[0x800022e8]<br>0x20000000|- rs1_val == 256<br>                                                                                                                                                                                                   |[0x80000394]:slli a1, a0, 21<br> [0x80000398]:sw a1, 160(ra)<br>    |
|  59|[0x800022ec]<br>0x00000000|- rs1_val == 128<br>                                                                                                                                                                                                   |[0x800003a0]:slli a1, a0, 29<br> [0x800003a4]:sw a1, 164(ra)<br>    |
|  60|[0x800022f0]<br>0x00001000|- rs1_val == 64<br>                                                                                                                                                                                                    |[0x800003ac]:slli a1, a0, 6<br> [0x800003b0]:sw a1, 168(ra)<br>     |
|  61|[0x800022f4]<br>0x00010000|- rs1_val == 32<br>                                                                                                                                                                                                    |[0x800003b8]:slli a1, a0, 11<br> [0x800003bc]:sw a1, 172(ra)<br>    |
|  62|[0x800022f8]<br>0x00000010|- rs1_val == 16<br>                                                                                                                                                                                                    |[0x800003c4]:slli a1, a0, 0<br> [0x800003c8]:sw a1, 176(ra)<br>     |
|  63|[0x800022fc]<br>0x00400000|- rs1_val == 8<br>                                                                                                                                                                                                     |[0x800003d0]:slli a1, a0, 19<br> [0x800003d4]:sw a1, 180(ra)<br>    |
|  64|[0x80002300]<br>0x00000040|- rs1_val == 4<br> - rs1_val==4<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br>                                                                                                                        |[0x800003dc]:slli a1, a0, 4<br> [0x800003e0]:sw a1, 184(ra)<br>     |
|  65|[0x80002304]<br>0x00001000|- rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                                                                    |[0x800003e8]:slli a1, a0, 11<br> [0x800003ec]:sw a1, 188(ra)<br>    |
|  66|[0x80002308]<br>0x00004000|- rs1_val == 1<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br>                                                                                                                                              |[0x800003f4]:slli a1, a0, 14<br> [0x800003f8]:sw a1, 192(ra)<br>    |
|  67|[0x8000230c]<br>0xFFFFFDFC|- imm_val == 2<br>                                                                                                                                                                                                     |[0x80000400]:slli a1, a0, 2<br> [0x80000404]:sw a1, 196(ra)<br>     |
|  68|[0x80002310]<br>0x5A828000|- rs1_val==46341<br>                                                                                                                                                                                                   |[0x80000410]:slli a1, a0, 15<br> [0x80000414]:sw a1, 200(ra)<br>    |
|  69|[0x80002314]<br>0x7E800000|- rs1_val==-46339<br>                                                                                                                                                                                                  |[0x80000420]:slli a1, a0, 23<br> [0x80000424]:sw a1, 204(ra)<br>    |
|  70|[0x80002318]<br>0x38000000|- rs1_val==1717986919<br>                                                                                                                                                                                              |[0x80000430]:slli a1, a0, 27<br> [0x80000434]:sw a1, 208(ra)<br>    |
|  71|[0x8000231c]<br>0x99A00000|- rs1_val==858993460<br>                                                                                                                                                                                               |[0x80000440]:slli a1, a0, 19<br> [0x80000444]:sw a1, 212(ra)<br>    |
|  72|[0x80002320]<br>0x00003000|- rs1_val==6<br>                                                                                                                                                                                                       |[0x8000044c]:slli a1, a0, 11<br> [0x80000450]:sw a1, 216(ra)<br>    |
|  73|[0x80002324]<br>0xAAAC0000|- rs1_val==-1431655765<br>                                                                                                                                                                                             |[0x8000045c]:slli a1, a0, 18<br> [0x80000460]:sw a1, 220(ra)<br>    |
|  74|[0x80002328]<br>0x80000000|- rs1_val==1431655766<br>                                                                                                                                                                                              |[0x8000046c]:slli a1, a0, 30<br> [0x80000470]:sw a1, 224(ra)<br>    |
|  75|[0x8000232c]<br>0x000C0000|- rs1_val==3<br>                                                                                                                                                                                                       |[0x80000478]:slli a1, a0, 18<br> [0x8000047c]:sw a1, 228(ra)<br>    |
|  76|[0x80002330]<br>0xAAAA0000|- rs1_val==-1431655766<br> - rs1_val == -1431655766<br>                                                                                                                                                                |[0x80000488]:slli a1, a0, 16<br> [0x8000048c]:sw a1, 232(ra)<br>    |
|  77|[0x80002334]<br>0xAAAAAA80|- rs1_val==1431655765<br> - rs1_val == 1431655765<br>                                                                                                                                                                  |[0x80000498]:slli a1, a0, 7<br> [0x8000049c]:sw a1, 236(ra)<br>     |
|  78|[0x80002338]<br>0xFFBFFC00|- imm_val == 10<br>                                                                                                                                                                                                    |[0x800004a8]:slli a1, a0, 10<br> [0x800004ac]:sw a1, 240(ra)<br>    |
|  79|[0x8000233c]<br>0x002D40C0|- rs1_val==46339<br>                                                                                                                                                                                                   |[0x800004b8]:slli a1, a0, 6<br> [0x800004bc]:sw a1, 244(ra)<br>     |
|  80|[0x80002340]<br>0xCCCCA000|- rs1_val==1717986917<br>                                                                                                                                                                                              |[0x800004c8]:slli a1, a0, 13<br> [0x800004cc]:sw a1, 248(ra)<br>    |
|  81|[0x80002344]<br>0x66666664|- rs1_val==858993458<br>                                                                                                                                                                                               |[0x800004d8]:slli a1, a0, 1<br> [0x800004dc]:sw a1, 252(ra)<br>     |
|  82|[0x80002348]<br>0x80000000|- rs1_val==1431655764<br>                                                                                                                                                                                              |[0x800004e8]:slli a1, a0, 29<br> [0x800004ec]:sw a1, 256(ra)<br>    |
|  83|[0x8000234c]<br>0x6A080000|- rs1_val==46340<br>                                                                                                                                                                                                   |[0x800004f8]:slli a1, a0, 17<br> [0x800004fc]:sw a1, 260(ra)<br>    |
|  84|[0x80002350]<br>0x57E00000|- rs1_val==-46340<br>                                                                                                                                                                                                  |[0x80000508]:slli a1, a0, 19<br> [0x8000050c]:sw a1, 264(ra)<br>    |
|  85|[0x80002354]<br>0xC0000000|- rs1_val==1717986918<br>                                                                                                                                                                                              |[0x80000518]:slli a1, a0, 29<br> [0x8000051c]:sw a1, 268(ra)<br>    |
|  86|[0x80002358]<br>0xCCCCCC00|- rs1_val==858993459<br>                                                                                                                                                                                               |[0x80000528]:slli a1, a0, 10<br> [0x8000052c]:sw a1, 272(ra)<br>    |
|  87|[0x8000235c]<br>0x28000000|- rs1_val==5<br>                                                                                                                                                                                                       |[0x80000534]:slli a1, a0, 27<br> [0x80000538]:sw a1, 276(ra)<br>    |
|  88|[0x80002360]<br>0xFFFFFF80|- rs1_val == -67108865<br>                                                                                                                                                                                             |[0x80000544]:slli a1, a0, 7<br> [0x80000548]:sw a1, 280(ra)<br>     |
