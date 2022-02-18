
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000f90')]      |
| SIG_REGION                | [('0x80002210', '0x80002530', '200 words')]      |
| COV_LABELS                | sh1add      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial14/32/riscof_work/sh1add-01.S/ref.S    |
| Total Number of coverpoints| 316     |
| Total Coverpoints Hit     | 310      |
| Total Signature Updates   | 197      |
| STAT1                     | 194      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a60]:sh1add t6, t5, t4
      [0x80000a64]:sw t6, 440(t1)
 -- Signature Address: 0x80002434 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sh1add
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val==0 and rs2_val==0
      - rs1_val == 0
      - rs1_val == rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f70]:sh1add t6, t5, t4
      [0x80000f74]:sw t6, 672(t1)
 -- Signature Address: 0x8000251c Data: 0xFFFFFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : sh1add
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -5
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f80]:sh1add t6, t5, t4
      [0x80000f84]:sw t6, 676(t1)
 -- Signature Address: 0x80002520 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - opcode : sh1add
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -3
      - rs1_val == 0






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

|s.no|        signature         |                                                                        coverpoints                                                                        |                                 code                                 |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : sh1add<br> - rs1 : x30<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs2_val == 1<br> - rs1_val == 0<br> |[0x80000108]:sh1add t6, t5, t6<br> [0x8000010c]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_val==0 and rs2_val==0<br> - rs1_val == rs2_val<br> - rs2_val == 0<br>          |[0x80000118]:sh1add t4, t4, t4<br> [0x8000011c]:sw t4, 4(ra)<br>      |
|   3|[0x80002218]<br>0xBFFFFFFF|- rs1 : x28<br> - rs2 : x30<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == -1073741825<br>                                                         |[0x8000012c]:sh1add t3, t3, t5<br> [0x80000130]:sw t3, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x30<br> - rs1 == rs2 != rd<br>                                                                                      |[0x8000013c]:sh1add t5, s11, s11<br> [0x80000140]:sw t5, 12(ra)<br>   |
|   5|[0x80002220]<br>0xEFFFFFFF|- rs1 : x31<br> - rs2 : x28<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -268435457<br>                                   |[0x80000150]:sh1add s11, t6, t3<br> [0x80000154]:sw s11, 16(ra)<br>   |
|   6|[0x80002224]<br>0xF7FFFFFF|- rs1 : x25<br> - rs2 : x24<br> - rd : x26<br> - rs2_val == -134217729<br>                                                                                 |[0x80000164]:sh1add s10, s9, s8<br> [0x80000168]:sw s10, 20(ra)<br>   |
|   7|[0x80002228]<br>0xFBFFFFFF|- rs1 : x24<br> - rs2 : x26<br> - rd : x25<br> - rs2_val == -67108865<br>                                                                                  |[0x80000178]:sh1add s9, s8, s10<br> [0x8000017c]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0xFDFFFFFF|- rs1 : x26<br> - rs2 : x25<br> - rd : x24<br> - rs2_val == -33554433<br>                                                                                  |[0x8000018c]:sh1add s8, s10, s9<br> [0x80000190]:sw s8, 28(ra)<br>    |
|   9|[0x80002230]<br>0xFEFFFFFF|- rs1 : x22<br> - rs2 : x21<br> - rd : x23<br> - rs2_val == -16777217<br>                                                                                  |[0x800001a0]:sh1add s7, s6, s5<br> [0x800001a4]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0xFF7FFFFF|- rs1 : x21<br> - rs2 : x23<br> - rd : x22<br> - rs2_val == -8388609<br>                                                                                   |[0x800001b4]:sh1add s6, s5, s7<br> [0x800001b8]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0xFFBFFFFF|- rs1 : x23<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == -4194305<br>                                                                                   |[0x800001c8]:sh1add s5, s7, s6<br> [0x800001cc]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0xFFDFFFFF|- rs1 : x19<br> - rs2 : x18<br> - rd : x20<br> - rs2_val == -2097153<br>                                                                                   |[0x800001dc]:sh1add s4, s3, s2<br> [0x800001e0]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0xFFEFFFFF|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == -1048577<br>                                                                                   |[0x800001f0]:sh1add s3, s2, s4<br> [0x800001f4]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0xFFF7FFFF|- rs1 : x20<br> - rs2 : x19<br> - rd : x18<br> - rs2_val == -524289<br>                                                                                    |[0x80000204]:sh1add s2, s4, s3<br> [0x80000208]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0xFFFBFFFF|- rs1 : x16<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == -262145<br>                                                                                    |[0x80000218]:sh1add a7, a6, a5<br> [0x8000021c]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0xFFFDFFFF|- rs1 : x15<br> - rs2 : x17<br> - rd : x16<br> - rs2_val == -131073<br>                                                                                    |[0x8000022c]:sh1add a6, a5, a7<br> [0x80000230]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0xFFFEFFFF|- rs1 : x17<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == -65537<br>                                                                                     |[0x80000240]:sh1add a5, a7, a6<br> [0x80000244]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0xFFFF7FFF|- rs1 : x13<br> - rs2 : x12<br> - rd : x14<br> - rs2_val == -32769<br>                                                                                     |[0x80000254]:sh1add a4, a3, a2<br> [0x80000258]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0xFFFFBFFF|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == -16385<br>                                                                                     |[0x80000268]:sh1add a3, a2, a4<br> [0x8000026c]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0xFFFFDFFF|- rs1 : x14<br> - rs2 : x13<br> - rd : x12<br> - rs2_val == -8193<br>                                                                                      |[0x8000027c]:sh1add a2, a4, a3<br> [0x80000280]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0xFFFFEFFF|- rs1 : x10<br> - rs2 : x9<br> - rd : x11<br> - rs2_val == -4097<br>                                                                                       |[0x80000290]:sh1add a1, a0, s1<br> [0x80000294]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0xFFFFF7FF|- rs1 : x9<br> - rs2 : x11<br> - rd : x10<br> - rs2_val == -2049<br>                                                                                       |[0x800002a4]:sh1add a0, s1, a1<br> [0x800002a8]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0xFFFFFBFF|- rs1 : x11<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == -1025<br>                                                                                       |[0x800002b4]:sh1add s1, a1, a0<br> [0x800002b8]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0xFFFFFDFF|- rs1 : x7<br> - rs2 : x6<br> - rd : x8<br> - rs2_val == -513<br>                                                                                          |[0x800002c4]:sh1add fp, t2, t1<br> [0x800002c8]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0xFFFFFEFF|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == -257<br>                                                                                          |[0x800002d4]:sh1add t2, t1, fp<br> [0x800002d8]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0xFFFFFF7F|- rs1 : x8<br> - rs2 : x7<br> - rd : x6<br> - rs2_val == -129<br>                                                                                          |[0x800002e4]:sh1add t1, fp, t2<br> [0x800002e8]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0xFFFFFFBF|- rs1 : x4<br> - rs2 : x3<br> - rd : x5<br> - rs2_val == -65<br>                                                                                           |[0x800002f4]:sh1add t0, tp, gp<br> [0x800002f8]:sw t0, 104(ra)<br>    |
|  28|[0x8000227c]<br>0xFFFFFFDF|- rs1 : x3<br> - rs2 : x5<br> - rd : x4<br> - rs2_val == -33<br>                                                                                           |[0x8000030c]:sh1add tp, gp, t0<br> [0x80000310]:sw tp, 0(t1)<br>      |
|  29|[0x80002280]<br>0xFFFFFFEF|- rs1 : x5<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == -17<br>                                                                                           |[0x8000031c]:sh1add gp, t0, tp<br> [0x80000320]:sw gp, 4(t1)<br>      |
|  30|[0x80002284]<br>0x00000000|- rs1 : x1<br> - rs2 : x0<br> - rd : x2<br>                                                                                                                |[0x8000032c]:sh1add sp, ra, zero<br> [0x80000330]:sw sp, 8(t1)<br>    |
|  31|[0x80002288]<br>0xFFFFFFFB|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == -5<br>                                                                                            |[0x8000033c]:sh1add ra, zero, sp<br> [0x80000340]:sw ra, 12(t1)<br>   |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x2<br> - rs2 : x1<br> - rd : x0<br> - rs2_val == -3<br>                                                                                            |[0x8000034c]:sh1add zero, sp, ra<br> [0x80000350]:sw zero, 16(t1)<br> |
|  33|[0x80002290]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                        |[0x8000035c]:sh1add t6, t5, t4<br> [0x80000360]:sw t6, 20(t1)<br>     |
|  34|[0x80002294]<br>0xFFFFFFFE|- rs1_val == 2147483647<br> - rs1_val == (2**(xlen-1)-1)<br>                                                                                               |[0x80000370]:sh1add t6, t5, t4<br> [0x80000374]:sw t6, 24(t1)<br>     |
|  35|[0x80002298]<br>0x7FFFFFFE|- rs1_val == -1073741825<br>                                                                                                                               |[0x80000384]:sh1add t6, t5, t4<br> [0x80000388]:sw t6, 28(t1)<br>     |
|  36|[0x8000229c]<br>0xBFFFFFFE|- rs1_val == -536870913<br>                                                                                                                                |[0x80000398]:sh1add t6, t5, t4<br> [0x8000039c]:sw t6, 32(t1)<br>     |
|  37|[0x800022a0]<br>0xDFFFFFFE|- rs1_val == -268435457<br>                                                                                                                                |[0x800003ac]:sh1add t6, t5, t4<br> [0x800003b0]:sw t6, 36(t1)<br>     |
|  38|[0x800022a4]<br>0xEFFFFFFE|- rs1_val == -134217729<br>                                                                                                                                |[0x800003c0]:sh1add t6, t5, t4<br> [0x800003c4]:sw t6, 40(t1)<br>     |
|  39|[0x800022a8]<br>0xF7FFFFFE|- rs1_val == -67108865<br>                                                                                                                                 |[0x800003d4]:sh1add t6, t5, t4<br> [0x800003d8]:sw t6, 44(t1)<br>     |
|  40|[0x800022ac]<br>0xFBFFFFFE|- rs1_val == -33554433<br>                                                                                                                                 |[0x800003e8]:sh1add t6, t5, t4<br> [0x800003ec]:sw t6, 48(t1)<br>     |
|  41|[0x800022b0]<br>0xFDFFFFFE|- rs1_val == -16777217<br>                                                                                                                                 |[0x800003fc]:sh1add t6, t5, t4<br> [0x80000400]:sw t6, 52(t1)<br>     |
|  42|[0x800022b4]<br>0xFEFFFFFE|- rs1_val == -8388609<br>                                                                                                                                  |[0x80000410]:sh1add t6, t5, t4<br> [0x80000414]:sw t6, 56(t1)<br>     |
|  43|[0x800022b8]<br>0xFF7FFFFE|- rs1_val == -4194305<br>                                                                                                                                  |[0x80000424]:sh1add t6, t5, t4<br> [0x80000428]:sw t6, 60(t1)<br>     |
|  44|[0x800022bc]<br>0xFFBFFFFE|- rs1_val == -2097153<br>                                                                                                                                  |[0x80000438]:sh1add t6, t5, t4<br> [0x8000043c]:sw t6, 64(t1)<br>     |
|  45|[0x800022c0]<br>0xFFDFFFFE|- rs1_val == -1048577<br>                                                                                                                                  |[0x8000044c]:sh1add t6, t5, t4<br> [0x80000450]:sw t6, 68(t1)<br>     |
|  46|[0x800022c4]<br>0xFFEFFFFE|- rs1_val == -524289<br>                                                                                                                                   |[0x80000460]:sh1add t6, t5, t4<br> [0x80000464]:sw t6, 72(t1)<br>     |
|  47|[0x800022c8]<br>0xFFF7FFFE|- rs1_val == -262145<br>                                                                                                                                   |[0x80000474]:sh1add t6, t5, t4<br> [0x80000478]:sw t6, 76(t1)<br>     |
|  48|[0x800022cc]<br>0xFFFBFFFE|- rs1_val == -131073<br>                                                                                                                                   |[0x80000488]:sh1add t6, t5, t4<br> [0x8000048c]:sw t6, 80(t1)<br>     |
|  49|[0x800022d0]<br>0xFFFDFFFE|- rs1_val == -65537<br>                                                                                                                                    |[0x8000049c]:sh1add t6, t5, t4<br> [0x800004a0]:sw t6, 84(t1)<br>     |
|  50|[0x800022d4]<br>0xFFFEFFFE|- rs1_val == -32769<br>                                                                                                                                    |[0x800004b0]:sh1add t6, t5, t4<br> [0x800004b4]:sw t6, 88(t1)<br>     |
|  51|[0x800022d8]<br>0xFFFF7FFE|- rs1_val == -16385<br>                                                                                                                                    |[0x800004c4]:sh1add t6, t5, t4<br> [0x800004c8]:sw t6, 92(t1)<br>     |
|  52|[0x800022dc]<br>0xFFFFBFFE|- rs1_val == -8193<br>                                                                                                                                     |[0x800004d8]:sh1add t6, t5, t4<br> [0x800004dc]:sw t6, 96(t1)<br>     |
|  53|[0x800022e0]<br>0xFFFFDFFE|- rs1_val == -4097<br>                                                                                                                                     |[0x800004ec]:sh1add t6, t5, t4<br> [0x800004f0]:sw t6, 100(t1)<br>    |
|  54|[0x800022e4]<br>0xFFFFEFFE|- rs1_val == -2049<br>                                                                                                                                     |[0x80000500]:sh1add t6, t5, t4<br> [0x80000504]:sw t6, 104(t1)<br>    |
|  55|[0x800022e8]<br>0xFFFFF7FE|- rs1_val == -1025<br>                                                                                                                                     |[0x80000510]:sh1add t6, t5, t4<br> [0x80000514]:sw t6, 108(t1)<br>    |
|  56|[0x800022ec]<br>0xFFFFFBFE|- rs1_val == -513<br>                                                                                                                                      |[0x80000520]:sh1add t6, t5, t4<br> [0x80000524]:sw t6, 112(t1)<br>    |
|  57|[0x800022f0]<br>0xFFFFFDFE|- rs1_val == -257<br>                                                                                                                                      |[0x80000530]:sh1add t6, t5, t4<br> [0x80000534]:sw t6, 116(t1)<br>    |
|  58|[0x800022f4]<br>0xFFFFFEFE|- rs1_val == -129<br>                                                                                                                                      |[0x80000540]:sh1add t6, t5, t4<br> [0x80000544]:sw t6, 120(t1)<br>    |
|  59|[0x800022f8]<br>0xFFFFFF7E|- rs1_val == -65<br>                                                                                                                                       |[0x80000550]:sh1add t6, t5, t4<br> [0x80000554]:sw t6, 124(t1)<br>    |
|  60|[0x800022fc]<br>0xFFFFFFBE|- rs1_val == -33<br>                                                                                                                                       |[0x80000560]:sh1add t6, t5, t4<br> [0x80000564]:sw t6, 128(t1)<br>    |
|  61|[0x80002300]<br>0xFFFFFFDE|- rs1_val == -17<br>                                                                                                                                       |[0x80000570]:sh1add t6, t5, t4<br> [0x80000574]:sw t6, 132(t1)<br>    |
|  62|[0x80002304]<br>0xFFFFFFEE|- rs1_val == -9<br>                                                                                                                                        |[0x80000580]:sh1add t6, t5, t4<br> [0x80000584]:sw t6, 136(t1)<br>    |
|  63|[0x80002308]<br>0xFFFFFFF6|- rs1_val == -5<br>                                                                                                                                        |[0x80000590]:sh1add t6, t5, t4<br> [0x80000594]:sw t6, 140(t1)<br>    |
|  64|[0x8000230c]<br>0xFFFFFFFA|- rs1_val == -3<br>                                                                                                                                        |[0x800005a0]:sh1add t6, t5, t4<br> [0x800005a4]:sw t6, 144(t1)<br>    |
|  65|[0x80002310]<br>0xFFFFFFFC|- rs1_val == -2<br>                                                                                                                                        |[0x800005b0]:sh1add t6, t5, t4<br> [0x800005b4]:sw t6, 148(t1)<br>    |
|  66|[0x80002314]<br>0x80000000|- rs2_val == -2147483648<br> - rs2_val == (-2**(xlen-1))<br>                                                                                               |[0x800005c0]:sh1add t6, t5, t4<br> [0x800005c4]:sw t6, 152(t1)<br>    |
|  67|[0x80002318]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                                |[0x800005d0]:sh1add t6, t5, t4<br> [0x800005d4]:sw t6, 156(t1)<br>    |
|  68|[0x8000231c]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                                 |[0x800005e0]:sh1add t6, t5, t4<br> [0x800005e4]:sw t6, 160(t1)<br>    |
|  69|[0x80002320]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                                 |[0x800005f0]:sh1add t6, t5, t4<br> [0x800005f4]:sw t6, 164(t1)<br>    |
|  70|[0x80002324]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                                 |[0x80000600]:sh1add t6, t5, t4<br> [0x80000604]:sw t6, 168(t1)<br>    |
|  71|[0x80002328]<br>0x04000000|- rs2_val == 67108864<br>                                                                                                                                  |[0x80000610]:sh1add t6, t5, t4<br> [0x80000614]:sw t6, 172(t1)<br>    |
|  72|[0x8000232c]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                                  |[0x80000620]:sh1add t6, t5, t4<br> [0x80000624]:sw t6, 176(t1)<br>    |
|  73|[0x80002330]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                                  |[0x80000630]:sh1add t6, t5, t4<br> [0x80000634]:sw t6, 180(t1)<br>    |
|  74|[0x80002334]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                                   |[0x80000640]:sh1add t6, t5, t4<br> [0x80000644]:sw t6, 184(t1)<br>    |
|  75|[0x80002338]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                                   |[0x80000650]:sh1add t6, t5, t4<br> [0x80000654]:sw t6, 188(t1)<br>    |
|  76|[0x8000233c]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                                   |[0x80000660]:sh1add t6, t5, t4<br> [0x80000664]:sw t6, 192(t1)<br>    |
|  77|[0x80002340]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                                   |[0x80000670]:sh1add t6, t5, t4<br> [0x80000674]:sw t6, 196(t1)<br>    |
|  78|[0x80002344]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                                    |[0x80000680]:sh1add t6, t5, t4<br> [0x80000684]:sw t6, 200(t1)<br>    |
|  79|[0x80002348]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                                    |[0x80000690]:sh1add t6, t5, t4<br> [0x80000694]:sw t6, 204(t1)<br>    |
|  80|[0x8000234c]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                                    |[0x800006a0]:sh1add t6, t5, t4<br> [0x800006a4]:sw t6, 208(t1)<br>    |
|  81|[0x80002350]<br>0x00010000|- rs2_val == 65536<br>                                                                                                                                     |[0x800006b0]:sh1add t6, t5, t4<br> [0x800006b4]:sw t6, 212(t1)<br>    |
|  82|[0x80002354]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                                     |[0x800006c0]:sh1add t6, t5, t4<br> [0x800006c4]:sw t6, 216(t1)<br>    |
|  83|[0x80002358]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                                     |[0x800006d0]:sh1add t6, t5, t4<br> [0x800006d4]:sw t6, 220(t1)<br>    |
|  84|[0x8000235c]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                                      |[0x800006e0]:sh1add t6, t5, t4<br> [0x800006e4]:sw t6, 224(t1)<br>    |
|  85|[0x80002360]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                                      |[0x800006f0]:sh1add t6, t5, t4<br> [0x800006f4]:sw t6, 228(t1)<br>    |
|  86|[0x80002364]<br>0x00000800|- rs2_val == 2048<br>                                                                                                                                      |[0x80000704]:sh1add t6, t5, t4<br> [0x80000708]:sw t6, 232(t1)<br>    |
|  87|[0x80002368]<br>0x00000400|- rs2_val == 1024<br>                                                                                                                                      |[0x80000714]:sh1add t6, t5, t4<br> [0x80000718]:sw t6, 236(t1)<br>    |
|  88|[0x8000236c]<br>0x00000200|- rs2_val == 512<br>                                                                                                                                       |[0x80000724]:sh1add t6, t5, t4<br> [0x80000728]:sw t6, 240(t1)<br>    |
|  89|[0x80002370]<br>0x00000100|- rs2_val == 256<br>                                                                                                                                       |[0x80000734]:sh1add t6, t5, t4<br> [0x80000738]:sw t6, 244(t1)<br>    |
|  90|[0x80002374]<br>0x00000080|- rs2_val == 128<br>                                                                                                                                       |[0x80000744]:sh1add t6, t5, t4<br> [0x80000748]:sw t6, 248(t1)<br>    |
|  91|[0x80002378]<br>0x00000040|- rs2_val == 64<br>                                                                                                                                        |[0x80000754]:sh1add t6, t5, t4<br> [0x80000758]:sw t6, 252(t1)<br>    |
|  92|[0x8000237c]<br>0x00000020|- rs2_val == 32<br>                                                                                                                                        |[0x80000764]:sh1add t6, t5, t4<br> [0x80000768]:sw t6, 256(t1)<br>    |
|  93|[0x80002380]<br>0x00000010|- rs2_val == 16<br>                                                                                                                                        |[0x80000774]:sh1add t6, t5, t4<br> [0x80000778]:sw t6, 260(t1)<br>    |
|  94|[0x80002384]<br>0x00000008|- rs2_val == 8<br>                                                                                                                                         |[0x80000784]:sh1add t6, t5, t4<br> [0x80000788]:sw t6, 264(t1)<br>    |
|  95|[0x80002388]<br>0x00000004|- rs2_val == 4<br>                                                                                                                                         |[0x80000794]:sh1add t6, t5, t4<br> [0x80000798]:sw t6, 268(t1)<br>    |
|  96|[0x8000238c]<br>0x00000002|- rs2_val == 2<br>                                                                                                                                         |[0x800007a4]:sh1add t6, t5, t4<br> [0x800007a8]:sw t6, 272(t1)<br>    |
|  97|[0x80002390]<br>0x00000000|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1))<br>                                                                                               |[0x800007b4]:sh1add t6, t5, t4<br> [0x800007b8]:sw t6, 276(t1)<br>    |
|  98|[0x80002394]<br>0x80000000|- rs1_val == 1073741824<br>                                                                                                                                |[0x800007c4]:sh1add t6, t5, t4<br> [0x800007c8]:sw t6, 280(t1)<br>    |
|  99|[0x80002398]<br>0x40000000|- rs1_val == 536870912<br>                                                                                                                                 |[0x800007d4]:sh1add t6, t5, t4<br> [0x800007d8]:sw t6, 284(t1)<br>    |
| 100|[0x8000239c]<br>0x20000000|- rs1_val == 268435456<br>                                                                                                                                 |[0x800007e4]:sh1add t6, t5, t4<br> [0x800007e8]:sw t6, 288(t1)<br>    |
| 101|[0x800023a0]<br>0x10000000|- rs1_val == 134217728<br>                                                                                                                                 |[0x800007f4]:sh1add t6, t5, t4<br> [0x800007f8]:sw t6, 292(t1)<br>    |
| 102|[0x800023a4]<br>0x08000000|- rs1_val == 67108864<br>                                                                                                                                  |[0x80000804]:sh1add t6, t5, t4<br> [0x80000808]:sw t6, 296(t1)<br>    |
| 103|[0x800023a8]<br>0x04000000|- rs1_val == 33554432<br>                                                                                                                                  |[0x80000814]:sh1add t6, t5, t4<br> [0x80000818]:sw t6, 300(t1)<br>    |
| 104|[0x800023ac]<br>0x02000000|- rs1_val == 16777216<br>                                                                                                                                  |[0x80000824]:sh1add t6, t5, t4<br> [0x80000828]:sw t6, 304(t1)<br>    |
| 105|[0x800023b0]<br>0x01000000|- rs1_val == 8388608<br>                                                                                                                                   |[0x80000834]:sh1add t6, t5, t4<br> [0x80000838]:sw t6, 308(t1)<br>    |
| 106|[0x800023b4]<br>0x00800000|- rs1_val == 4194304<br>                                                                                                                                   |[0x80000844]:sh1add t6, t5, t4<br> [0x80000848]:sw t6, 312(t1)<br>    |
| 107|[0x800023b8]<br>0x00400000|- rs1_val == 2097152<br>                                                                                                                                   |[0x80000854]:sh1add t6, t5, t4<br> [0x80000858]:sw t6, 316(t1)<br>    |
| 108|[0x800023bc]<br>0x00200000|- rs1_val == 1048576<br>                                                                                                                                   |[0x80000864]:sh1add t6, t5, t4<br> [0x80000868]:sw t6, 320(t1)<br>    |
| 109|[0x800023c0]<br>0x00100000|- rs1_val == 524288<br>                                                                                                                                    |[0x80000874]:sh1add t6, t5, t4<br> [0x80000878]:sw t6, 324(t1)<br>    |
| 110|[0x800023c4]<br>0x00080000|- rs1_val == 262144<br>                                                                                                                                    |[0x80000884]:sh1add t6, t5, t4<br> [0x80000888]:sw t6, 328(t1)<br>    |
| 111|[0x800023c8]<br>0x00040000|- rs1_val == 131072<br>                                                                                                                                    |[0x80000894]:sh1add t6, t5, t4<br> [0x80000898]:sw t6, 332(t1)<br>    |
| 112|[0x800023cc]<br>0x00020000|- rs1_val == 65536<br>                                                                                                                                     |[0x800008a4]:sh1add t6, t5, t4<br> [0x800008a8]:sw t6, 336(t1)<br>    |
| 113|[0x800023d0]<br>0x00010000|- rs1_val == 32768<br>                                                                                                                                     |[0x800008b4]:sh1add t6, t5, t4<br> [0x800008b8]:sw t6, 340(t1)<br>    |
| 114|[0x800023d4]<br>0x00008000|- rs1_val == 16384<br>                                                                                                                                     |[0x800008c4]:sh1add t6, t5, t4<br> [0x800008c8]:sw t6, 344(t1)<br>    |
| 115|[0x800023d8]<br>0x00004000|- rs1_val == 8192<br>                                                                                                                                      |[0x800008d4]:sh1add t6, t5, t4<br> [0x800008d8]:sw t6, 348(t1)<br>    |
| 116|[0x800023dc]<br>0x00002000|- rs1_val == 4096<br>                                                                                                                                      |[0x800008e4]:sh1add t6, t5, t4<br> [0x800008e8]:sw t6, 352(t1)<br>    |
| 117|[0x800023e0]<br>0x00001000|- rs1_val == 2048<br>                                                                                                                                      |[0x800008f8]:sh1add t6, t5, t4<br> [0x800008fc]:sw t6, 356(t1)<br>    |
| 118|[0x800023e4]<br>0x00000800|- rs1_val == 1024<br>                                                                                                                                      |[0x80000908]:sh1add t6, t5, t4<br> [0x8000090c]:sw t6, 360(t1)<br>    |
| 119|[0x800023e8]<br>0x00000400|- rs1_val == 512<br>                                                                                                                                       |[0x80000918]:sh1add t6, t5, t4<br> [0x8000091c]:sw t6, 364(t1)<br>    |
| 120|[0x800023ec]<br>0x00000200|- rs1_val == 256<br>                                                                                                                                       |[0x80000928]:sh1add t6, t5, t4<br> [0x8000092c]:sw t6, 368(t1)<br>    |
| 121|[0x800023f0]<br>0x00000100|- rs1_val == 128<br>                                                                                                                                       |[0x80000938]:sh1add t6, t5, t4<br> [0x8000093c]:sw t6, 372(t1)<br>    |
| 122|[0x800023f4]<br>0x00000080|- rs1_val == 64<br>                                                                                                                                        |[0x80000948]:sh1add t6, t5, t4<br> [0x8000094c]:sw t6, 376(t1)<br>    |
| 123|[0x800023f8]<br>0x00000040|- rs1_val == 32<br>                                                                                                                                        |[0x80000958]:sh1add t6, t5, t4<br> [0x8000095c]:sw t6, 380(t1)<br>    |
| 124|[0x800023fc]<br>0x00000020|- rs1_val == 16<br>                                                                                                                                        |[0x80000968]:sh1add t6, t5, t4<br> [0x8000096c]:sw t6, 384(t1)<br>    |
| 125|[0x80002400]<br>0x00000010|- rs1_val == 8<br>                                                                                                                                         |[0x80000978]:sh1add t6, t5, t4<br> [0x8000097c]:sw t6, 388(t1)<br>    |
| 126|[0x80002404]<br>0x00000008|- rs1_val == 4<br>                                                                                                                                         |[0x80000988]:sh1add t6, t5, t4<br> [0x8000098c]:sw t6, 392(t1)<br>    |
| 127|[0x80002408]<br>0x00000004|- rs1_val == 2<br>                                                                                                                                         |[0x80000998]:sh1add t6, t5, t4<br> [0x8000099c]:sw t6, 396(t1)<br>    |
| 128|[0x8000240c]<br>0x00000002|- rs1_val == 1<br>                                                                                                                                         |[0x800009a8]:sh1add t6, t5, t4<br> [0x800009ac]:sw t6, 400(t1)<br>    |
| 129|[0x80002410]<br>0xFFFFFFFD|- rs1_val==-1 and rs2_val==-1<br> - rs1_val < 0 and rs2_val < 0<br>                                                                                        |[0x800009b8]:sh1add t6, t5, t4<br> [0x800009bc]:sw t6, 404(t1)<br>    |
| 130|[0x80002414]<br>0xFFFFFFFE|- rs1_val==-1 and rs2_val==0<br>                                                                                                                           |[0x800009c8]:sh1add t6, t5, t4<br> [0x800009cc]:sw t6, 408(t1)<br>    |
| 131|[0x80002418]<br>0xCCCCCCCA|- rs1_val==-1 and rs2_val==-858993460<br>                                                                                                                  |[0x800009dc]:sh1add t6, t5, t4<br> [0x800009e0]:sw t6, 412(t1)<br>    |
| 132|[0x8000241c]<br>0x99999997|- rs1_val==-1 and rs2_val==-1717986919<br>                                                                                                                 |[0x800009f0]:sh1add t6, t5, t4<br> [0x800009f4]:sw t6, 416(t1)<br>    |
| 133|[0x80002420]<br>0x66666664|- rs1_val==-1 and rs2_val==1717986918<br> - rs1_val < 0 and rs2_val > 0<br>                                                                                |[0x80000a04]:sh1add t6, t5, t4<br> [0x80000a08]:sw t6, 420(t1)<br>    |
| 134|[0x80002424]<br>0x33333331|- rs1_val==-1 and rs2_val==858993459<br>                                                                                                                   |[0x80000a18]:sh1add t6, t5, t4<br> [0x80000a1c]:sw t6, 424(t1)<br>    |
| 135|[0x80002428]<br>0xAAAAAAA8|- rs1_val==-1 and rs2_val==-1431655766<br> - rs2_val == -1431655766<br>                                                                                    |[0x80000a2c]:sh1add t6, t5, t4<br> [0x80000a30]:sw t6, 428(t1)<br>    |
| 136|[0x8000242c]<br>0x55555553|- rs1_val==-1 and rs2_val==1431655765<br> - rs2_val == 1431655765<br>                                                                                      |[0x80000a40]:sh1add t6, t5, t4<br> [0x80000a44]:sw t6, 432(t1)<br>    |
| 137|[0x80002430]<br>0xFFFFFFFF|- rs1_val==0 and rs2_val==-1<br>                                                                                                                           |[0x80000a50]:sh1add t6, t5, t4<br> [0x80000a54]:sw t6, 436(t1)<br>    |
| 138|[0x80002438]<br>0xCCCCCCCC|- rs1_val==0 and rs2_val==-858993460<br>                                                                                                                   |[0x80000a74]:sh1add t6, t5, t4<br> [0x80000a78]:sw t6, 444(t1)<br>    |
| 139|[0x8000243c]<br>0x99999999|- rs1_val==0 and rs2_val==-1717986919<br>                                                                                                                  |[0x80000a88]:sh1add t6, t5, t4<br> [0x80000a8c]:sw t6, 448(t1)<br>    |
| 140|[0x80002440]<br>0x66666666|- rs1_val==0 and rs2_val==1717986918<br>                                                                                                                   |[0x80000a9c]:sh1add t6, t5, t4<br> [0x80000aa0]:sw t6, 452(t1)<br>    |
| 141|[0x80002444]<br>0x33333333|- rs1_val==0 and rs2_val==858993459<br>                                                                                                                    |[0x80000ab0]:sh1add t6, t5, t4<br> [0x80000ab4]:sw t6, 456(t1)<br>    |
| 142|[0x80002448]<br>0xAAAAAAAA|- rs1_val==0 and rs2_val==-1431655766<br>                                                                                                                  |[0x80000ac4]:sh1add t6, t5, t4<br> [0x80000ac8]:sw t6, 460(t1)<br>    |
| 143|[0x8000244c]<br>0x55555555|- rs1_val==0 and rs2_val==1431655765<br>                                                                                                                   |[0x80000ad8]:sh1add t6, t5, t4<br> [0x80000adc]:sw t6, 464(t1)<br>    |
| 144|[0x80002450]<br>0x99999997|- rs1_val==-858993460 and rs2_val==-1<br>                                                                                                                  |[0x80000aec]:sh1add t6, t5, t4<br> [0x80000af0]:sw t6, 468(t1)<br>    |
| 145|[0x80002454]<br>0x99999998|- rs1_val==-858993460 and rs2_val==0<br>                                                                                                                   |[0x80000b00]:sh1add t6, t5, t4<br> [0x80000b04]:sw t6, 472(t1)<br>    |
| 146|[0x80002458]<br>0x66666664|- rs1_val==-858993460 and rs2_val==-858993460<br>                                                                                                          |[0x80000b18]:sh1add t6, t5, t4<br> [0x80000b1c]:sw t6, 476(t1)<br>    |
| 147|[0x8000245c]<br>0x33333331|- rs1_val==-858993460 and rs2_val==-1717986919<br>                                                                                                         |[0x80000b30]:sh1add t6, t5, t4<br> [0x80000b34]:sw t6, 480(t1)<br>    |
| 148|[0x80002460]<br>0xFFFFFFFE|- rs1_val==-858993460 and rs2_val==1717986918<br>                                                                                                          |[0x80000b48]:sh1add t6, t5, t4<br> [0x80000b4c]:sw t6, 484(t1)<br>    |
| 149|[0x80002464]<br>0xCCCCCCCB|- rs1_val==-858993460 and rs2_val==858993459<br>                                                                                                           |[0x80000b60]:sh1add t6, t5, t4<br> [0x80000b64]:sw t6, 488(t1)<br>    |
| 150|[0x80002468]<br>0x44444442|- rs1_val==-858993460 and rs2_val==-1431655766<br>                                                                                                         |[0x80000b78]:sh1add t6, t5, t4<br> [0x80000b7c]:sw t6, 492(t1)<br>    |
| 151|[0x8000246c]<br>0xEEEEEEED|- rs1_val==-858993460 and rs2_val==1431655765<br>                                                                                                          |[0x80000b90]:sh1add t6, t5, t4<br> [0x80000b94]:sw t6, 496(t1)<br>    |
| 152|[0x80002470]<br>0x33333331|- rs1_val==-1717986919 and rs2_val==-1<br>                                                                                                                 |[0x80000ba4]:sh1add t6, t5, t4<br> [0x80000ba8]:sw t6, 500(t1)<br>    |
| 153|[0x80002474]<br>0x33333332|- rs1_val==-1717986919 and rs2_val==0<br>                                                                                                                  |[0x80000bb8]:sh1add t6, t5, t4<br> [0x80000bbc]:sw t6, 504(t1)<br>    |
| 154|[0x80002478]<br>0xFFFFFFFE|- rs1_val==-1717986919 and rs2_val==-858993460<br>                                                                                                         |[0x80000bd0]:sh1add t6, t5, t4<br> [0x80000bd4]:sw t6, 508(t1)<br>    |
| 155|[0x8000247c]<br>0xCCCCCCCB|- rs1_val==-1717986919 and rs2_val==-1717986919<br>                                                                                                        |[0x80000be8]:sh1add t6, t5, t4<br> [0x80000bec]:sw t6, 512(t1)<br>    |
| 156|[0x80002480]<br>0x99999998|- rs1_val==-1717986919 and rs2_val==1717986918<br>                                                                                                         |[0x80000c00]:sh1add t6, t5, t4<br> [0x80000c04]:sw t6, 516(t1)<br>    |
| 157|[0x80002484]<br>0x66666665|- rs1_val==-1717986919 and rs2_val==858993459<br>                                                                                                          |[0x80000c18]:sh1add t6, t5, t4<br> [0x80000c1c]:sw t6, 520(t1)<br>    |
| 158|[0x80002488]<br>0xDDDDDDDC|- rs1_val==-1717986919 and rs2_val==-1431655766<br>                                                                                                        |[0x80000c30]:sh1add t6, t5, t4<br> [0x80000c34]:sw t6, 524(t1)<br>    |
| 159|[0x8000248c]<br>0x88888887|- rs1_val==-1717986919 and rs2_val==1431655765<br>                                                                                                         |[0x80000c48]:sh1add t6, t5, t4<br> [0x80000c4c]:sw t6, 528(t1)<br>    |
| 160|[0x80002490]<br>0xCCCCCCCB|- rs1_val==1717986918 and rs2_val==-1<br> - rs1_val > 0 and rs2_val < 0<br>                                                                                |[0x80000c5c]:sh1add t6, t5, t4<br> [0x80000c60]:sw t6, 532(t1)<br>    |
| 161|[0x80002494]<br>0xCCCCCCCC|- rs1_val==1717986918 and rs2_val==0<br>                                                                                                                   |[0x80000c70]:sh1add t6, t5, t4<br> [0x80000c74]:sw t6, 536(t1)<br>    |
| 162|[0x80002498]<br>0x99999998|- rs1_val==1717986918 and rs2_val==-858993460<br>                                                                                                          |[0x80000c88]:sh1add t6, t5, t4<br> [0x80000c8c]:sw t6, 540(t1)<br>    |
| 163|[0x8000249c]<br>0x66666665|- rs1_val==1717986918 and rs2_val==-1717986919<br>                                                                                                         |[0x80000ca0]:sh1add t6, t5, t4<br> [0x80000ca4]:sw t6, 544(t1)<br>    |
| 164|[0x800024a0]<br>0xFFFFFFFF|- rs1_val==1431655765 and rs2_val==1431655765<br> - rs1_val == 1431655765<br> - rs1_val > 0 and rs2_val > 0<br>                                            |[0x80000cb8]:sh1add t6, t5, t4<br> [0x80000cbc]:sw t6, 548(t1)<br>    |
| 165|[0x800024a4]<br>0x55555554|- rs1_val==-1431655766 and rs2_val==0<br> - rs1_val == -1431655766<br>                                                                                     |[0x80000ccc]:sh1add t6, t5, t4<br> [0x80000cd0]:sw t6, 552(t1)<br>    |
| 166|[0x800024a8]<br>0x33333332|- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                          |[0x80000ce4]:sh1add t6, t5, t4<br> [0x80000ce8]:sw t6, 556(t1)<br>    |
| 167|[0x800024ac]<br>0xFFFFFFFF|- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                           |[0x80000cfc]:sh1add t6, t5, t4<br> [0x80000d00]:sw t6, 560(t1)<br>    |
| 168|[0x800024b0]<br>0x77777776|- rs1_val==1717986918 and rs2_val==-1431655766<br>                                                                                                         |[0x80000d14]:sh1add t6, t5, t4<br> [0x80000d18]:sw t6, 564(t1)<br>    |
| 169|[0x800024b4]<br>0x22222221|- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                          |[0x80000d2c]:sh1add t6, t5, t4<br> [0x80000d30]:sw t6, 568(t1)<br>    |
| 170|[0x800024b8]<br>0x66666665|- rs1_val==858993459 and rs2_val==-1<br>                                                                                                                   |[0x80000d40]:sh1add t6, t5, t4<br> [0x80000d44]:sw t6, 572(t1)<br>    |
| 171|[0x800024bc]<br>0x66666666|- rs1_val==858993459 and rs2_val==0<br>                                                                                                                    |[0x80000d54]:sh1add t6, t5, t4<br> [0x80000d58]:sw t6, 576(t1)<br>    |
| 172|[0x800024c0]<br>0x33333332|- rs1_val==858993459 and rs2_val==-858993460<br>                                                                                                           |[0x80000d6c]:sh1add t6, t5, t4<br> [0x80000d70]:sw t6, 580(t1)<br>    |
| 173|[0x800024c4]<br>0xFFFFFFFF|- rs1_val==858993459 and rs2_val==-1717986919<br>                                                                                                          |[0x80000d84]:sh1add t6, t5, t4<br> [0x80000d88]:sw t6, 584(t1)<br>    |
| 174|[0x800024c8]<br>0xCCCCCCCC|- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                           |[0x80000d9c]:sh1add t6, t5, t4<br> [0x80000da0]:sw t6, 588(t1)<br>    |
| 175|[0x800024cc]<br>0x99999999|- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                            |[0x80000db4]:sh1add t6, t5, t4<br> [0x80000db8]:sw t6, 592(t1)<br>    |
| 176|[0x800024d0]<br>0x11111110|- rs1_val==858993459 and rs2_val==-1431655766<br>                                                                                                          |[0x80000dcc]:sh1add t6, t5, t4<br> [0x80000dd0]:sw t6, 596(t1)<br>    |
| 177|[0x800024d4]<br>0xBBBBBBBB|- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                           |[0x80000de4]:sh1add t6, t5, t4<br> [0x80000de8]:sw t6, 600(t1)<br>    |
| 178|[0x800024d8]<br>0x55555553|- rs1_val==-1431655766 and rs2_val==-1<br>                                                                                                                 |[0x80000df8]:sh1add t6, t5, t4<br> [0x80000dfc]:sw t6, 604(t1)<br>    |
| 179|[0x800024dc]<br>0x22222220|- rs1_val==-1431655766 and rs2_val==-858993460<br>                                                                                                         |[0x80000e10]:sh1add t6, t5, t4<br> [0x80000e14]:sw t6, 608(t1)<br>    |
| 180|[0x800024e0]<br>0xEEEEEEED|- rs1_val==-1431655766 and rs2_val==-1717986919<br>                                                                                                        |[0x80000e28]:sh1add t6, t5, t4<br> [0x80000e2c]:sw t6, 612(t1)<br>    |
| 181|[0x800024e4]<br>0xBBBBBBBA|- rs1_val==-1431655766 and rs2_val==1717986918<br>                                                                                                         |[0x80000e40]:sh1add t6, t5, t4<br> [0x80000e44]:sw t6, 616(t1)<br>    |
| 182|[0x800024e8]<br>0x88888887|- rs1_val==-1431655766 and rs2_val==858993459<br>                                                                                                          |[0x80000e58]:sh1add t6, t5, t4<br> [0x80000e5c]:sw t6, 620(t1)<br>    |
| 183|[0x800024ec]<br>0xFFFFFFFE|- rs1_val==-1431655766 and rs2_val==-1431655766<br>                                                                                                        |[0x80000e70]:sh1add t6, t5, t4<br> [0x80000e74]:sw t6, 624(t1)<br>    |
| 184|[0x800024f0]<br>0xAAAAAAA9|- rs1_val==-1431655766 and rs2_val==1431655765<br>                                                                                                         |[0x80000e88]:sh1add t6, t5, t4<br> [0x80000e8c]:sw t6, 628(t1)<br>    |
| 185|[0x800024f4]<br>0xAAAAAAA9|- rs1_val==1431655765 and rs2_val==-1<br>                                                                                                                  |[0x80000e9c]:sh1add t6, t5, t4<br> [0x80000ea0]:sw t6, 632(t1)<br>    |
| 186|[0x800024f8]<br>0xAAAAAAAA|- rs1_val==1431655765 and rs2_val==0<br>                                                                                                                   |[0x80000eb0]:sh1add t6, t5, t4<br> [0x80000eb4]:sw t6, 636(t1)<br>    |
| 187|[0x800024fc]<br>0x77777776|- rs1_val==1431655765 and rs2_val==-858993460<br>                                                                                                          |[0x80000ec8]:sh1add t6, t5, t4<br> [0x80000ecc]:sw t6, 640(t1)<br>    |
| 188|[0x80002500]<br>0x44444443|- rs1_val==1431655765 and rs2_val==-1717986919<br>                                                                                                         |[0x80000ee0]:sh1add t6, t5, t4<br> [0x80000ee4]:sw t6, 644(t1)<br>    |
| 189|[0x80002504]<br>0x11111110|- rs1_val==1431655765 and rs2_val==1717986918<br>                                                                                                          |[0x80000ef8]:sh1add t6, t5, t4<br> [0x80000efc]:sw t6, 648(t1)<br>    |
| 190|[0x80002508]<br>0xDDDDDDDD|- rs1_val==1431655765 and rs2_val==858993459<br>                                                                                                           |[0x80000f10]:sh1add t6, t5, t4<br> [0x80000f14]:sw t6, 652(t1)<br>    |
| 191|[0x8000250c]<br>0x55555554|- rs1_val==1431655765 and rs2_val==-1431655766<br>                                                                                                         |[0x80000f28]:sh1add t6, t5, t4<br> [0x80000f2c]:sw t6, 656(t1)<br>    |
| 192|[0x80002510]<br>0x7FFFFFFF|- rs2_val == 2147483647<br> - rs2_val == (2**(xlen-1)-1)<br>                                                                                               |[0x80000f3c]:sh1add t6, t5, t4<br> [0x80000f40]:sw t6, 660(t1)<br>    |
| 193|[0x80002514]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                                |[0x80000f50]:sh1add t6, t5, t4<br> [0x80000f54]:sw t6, 664(t1)<br>    |
| 194|[0x80002518]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                                        |[0x80000f60]:sh1add t6, t5, t4<br> [0x80000f64]:sw t6, 668(t1)<br>    |
