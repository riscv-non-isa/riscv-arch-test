
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000820')]      |
| SIG_REGION                | [('0x80002210', '0x80002350', '80 words')]      |
| COV_LABELS                | urstsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/urstsa16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 78      |
| STAT1                     | 74      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000544]:URSTSA16 t6, t5, t4
      [0x80000548]:sw t6, 72(ra)
 -- Signature Address: 0x800022c8 Data: 0x0001000A
 -- Redundant Coverpoints hit by the op
      - opcode : urstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 2
      - rs1_h1_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000073c]:URSTSA16 t6, t5, t4
      [0x80000740]:sw t6, 160(ra)
 -- Signature Address: 0x80002320 Data: 0xFE007F81
 -- Redundant Coverpoints hit by the op
      - opcode : urstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 1024
      - rs1_h1_val == 0
      - rs1_h0_val == 65279




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f8]:URSTSA16 t6, t5, t4
      [0x800007fc]:sw t6, 192(ra)
 -- Signature Address: 0x80002340 Data: 0x0000FBDF
 -- Redundant Coverpoints hit by the op
      - opcode : urstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 256
      - rs2_h0_val == 63487
      - rs1_h1_val == 256
      - rs1_h0_val == 65471




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000810]:URSTSA16 t6, t5, t4
      [0x80000814]:sw t6, 196(ra)
 -- Signature Address: 0x80002344 Data: 0xFFF70005
 -- Redundant Coverpoints hit by the op
      - opcode : urstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 32






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

|s.no|        signature         |                                                                                                                                                     coverpoints                                                                                                                                                     |                                  code                                  |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000011|- opcode : urstsa16<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 65527<br> - rs1_h1_val == 65527<br>                          |[0x8000010c]:URSTSA16 s7, s7, s7<br> [0x80000110]:sw s7, 0(gp)<br>      |
|   2|[0x80002214]<br>0x0000F7FF|- rs1 : x30<br> - rs2 : x30<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 256<br> - rs2_h0_val == 63487<br> - rs1_h1_val == 256<br> - rs1_h0_val == 63487<br>                                                                                                                                            |[0x80000124]:URSTSA16 s3, t5, t5<br> [0x80000128]:sw s3, 4(gp)<br>      |
|   3|[0x80002218]<br>0x00017EFF|- rs1 : x21<br> - rs2 : x0<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 2<br> - rs1_h0_val == 65023<br>                                                                                                                              |[0x8000013c]:URSTSA16 s9, s5, zero<br> [0x80000140]:sw s9, 8(gp)<br>    |
|   4|[0x8000221c]<br>0xAABBFFFD|- rs1 : x17<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 32<br> - rs1_h0_val == 65533<br> |[0x80000154]:URSTSA16 a5, a7, a5<br> [0x80000158]:sw a5, 12(gp)<br>     |
|   5|[0x80002220]<br>0xD5950108|- rs1 : x27<br> - rs2 : x2<br> - rd : x27<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 16<br> - rs1_h1_val == 128<br> - rs1_h0_val == 512<br>                                                                                                                                                |[0x8000016c]:URSTSA16 s11, s11, sp<br> [0x80000170]:sw s11, 16(gp)<br>  |
|   6|[0x80002224]<br>0xC0018007|- rs1 : x11<br> - rs2 : x4<br> - rd : x18<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 32<br> - rs1_h1_val == 1<br> - rs1_h0_val == 65519<br>                                                                                                                                                                       |[0x80000184]:URSTSA16 s2, a1, tp<br> [0x80000188]:sw s2, 20(gp)<br>     |
|   7|[0x80002228]<br>0x1F800007|- rs1 : x12<br> - rs2 : x26<br> - rd : x16<br> - rs1_h0_val == 0<br> - rs2_h1_val == 49151<br> - rs1_h1_val == 65279<br>                                                                                                                                                                                             |[0x80000198]:URSTSA16 a6, a2, s10<br> [0x8000019c]:sw a6, 24(gp)<br>    |
|   8|[0x8000222c]<br>0xF0007FFF|- rs1 : x10<br> - rs2 : x24<br> - rd : x12<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 43690<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 21845<br>                                                                                                                                                               |[0x800001b0]:URSTSA16 a2, a0, s8<br> [0x800001b4]:sw a2, 28(gp)<br>     |
|   9|[0x80002230]<br>0x98007FFF|- rs1 : x25<br> - rs2 : x16<br> - rd : x28<br> - rs2_h1_val == 61439<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                    |[0x800001c8]:URSTSA16 t3, s9, a6<br> [0x800001cc]:sw t3, 32(gp)<br>     |
|  10|[0x80002234]<br>0x84024003|- rs1 : x31<br> - rs2 : x7<br> - rd : x21<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 4<br>                                                                                                                                                                                              |[0x800001e0]:URSTSA16 s5, t6, t2<br> [0x800001e4]:sw s5, 36(gp)<br>     |
|  11|[0x80002238]<br>0x8A00B7FF|- rs1 : x20<br> - rs2 : x8<br> - rd : x13<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 61439<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 32767<br>                                                                                                                                                                 |[0x800001f8]:URSTSA16 a3, s4, fp<br> [0x800001fc]:sw a3, 40(gp)<br>     |
|  12|[0x8000223c]<br>0x00F87FFF|- rs1 : x9<br> - rs2 : x19<br> - rd : x1<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 65471<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 64<br>                                                                                                                                                                    |[0x80000210]:URSTSA16 ra, s1, s3<br> [0x80000214]:sw ra, 44(gp)<br>     |
|  13|[0x80002240]<br>0x007C0500|- rs1 : x15<br> - rs2 : x20<br> - rd : x8<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                     |[0x80000228]:URSTSA16 fp, a5, s4<br> [0x8000022c]:sw fp, 48(gp)<br>     |
|  14|[0x80002244]<br>0x80470009|- rs1 : x4<br> - rs2 : x22<br> - rd : x24<br> - rs2_h1_val == 65407<br>                                                                                                                                                                                                                                              |[0x80000240]:URSTSA16 s8, tp, s6<br> [0x80000244]:sw s8, 52(gp)<br>     |
|  15|[0x80002248]<br>0x80290084|- rs1 : x14<br> - rs2 : x17<br> - rd : x5<br> - rs2_h1_val == 65471<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                      |[0x80000258]:URSTSA16 t0, a4, a7<br> [0x8000025c]:sw t0, 56(gp)<br>     |
|  16|[0x8000224c]<br>0x00000081|- rs1 : x22<br> - rs2 : x12<br> - rd : x4<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 2<br> - rs1_h1_val == 65503<br>                                                                                                                                                                                              |[0x80000278]:URSTSA16 tp, s6, a2<br> [0x8000027c]:sw tp, 0(a5)<br>      |
|  17|[0x80002250]<br>0x00080018|- rs1 : x28<br> - rs2 : x9<br> - rd : x17<br> - rs2_h1_val == 65519<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 32<br>                                                                                                                                                                                             |[0x80000290]:URSTSA16 a7, t3, s1<br> [0x80000294]:sw a7, 4(a5)<br>      |
|  18|[0x80002254]<br>0x80070240|- rs1 : x1<br> - rs2 : x5<br> - rd : x14<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 1024<br> - rs1_h0_val == 128<br>                                                                                                                                                                                              |[0x800002a8]:URSTSA16 a4, ra, t0<br> [0x800002ac]:sw a4, 8(a5)<br>      |
|  19|[0x80002258]<br>0x00000000|- rs1 : x19<br> - rs2 : x3<br> - rd : x0<br> - rs2_h1_val == 65533<br>                                                                                                                                                                                                                                               |[0x800002c0]:URSTSA16 zero, s3, gp<br> [0x800002c4]:sw zero, 12(a5)<br> |
|  20|[0x8000225c]<br>0x80020801|- rs1 : x6<br> - rs2 : x28<br> - rd : x7<br> - rs2_h1_val == 65534<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                      |[0x800002d4]:URSTSA16 t2, t1, t3<br> [0x800002d8]:sw t2, 16(a5)<br>     |
|  21|[0x80002260]<br>0x3FFF2AAB|- rs1 : x13<br> - rs2 : x25<br> - rd : x9<br> - rs2_h1_val == 32768<br> - rs1_h1_val == 65534<br>                                                                                                                                                                                                                    |[0x800002ec]:URSTSA16 s1, a3, s9<br> [0x800002f0]:sw s1, 20(a5)<br>     |
|  22|[0x80002264]<br>0xE0030011|- rs1 : x2<br> - rs2 : x10<br> - rd : x29<br> - rs2_h1_val == 16384<br>                                                                                                                                                                                                                                              |[0x80000304]:URSTSA16 t4, sp, a0<br> [0x80000308]:sw t4, 24(a5)<br>     |
|  23|[0x80002268]<br>0x30000005|- rs1 : x29<br> - rs2 : x1<br> - rd : x6<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 32768<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                |[0x8000031c]:URSTSA16 t1, t4, ra<br> [0x80000320]:sw t1, 28(a5)<br>     |
|  24|[0x8000226c]<br>0xF8077EFF|- rs1 : x8<br> - rs2 : x11<br> - rd : x10<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                                               |[0x80000330]:URSTSA16 a0, fp, a1<br> [0x80000334]:sw a0, 32(a5)<br>     |
|  25|[0x80002270]<br>0xFC01000D|- rs1 : x16<br> - rs2 : x14<br> - rd : x30<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                                                              |[0x80000348]:URSTSA16 t5, a6, a4<br> [0x8000034c]:sw t5, 36(a5)<br>     |
|  26|[0x80002274]<br>0x75FF4003|- rs1 : x5<br> - rs2 : x31<br> - rd : x11<br> - rs2_h1_val == 1024<br> - rs1_h1_val == 61439<br>                                                                                                                                                                                                                     |[0x80000360]:URSTSA16 a1, t0, t6<br> [0x80000364]:sw a1, 40(a5)<br>     |
|  27|[0x80002278]<br>0xFF04FF5F|- rs1 : x24<br> - rs2 : x29<br> - rd : x31<br> - rs2_h1_val == 512<br> - rs2_h0_val == 65279<br> - rs1_h1_val == 8<br> - rs1_h0_val == 65471<br>                                                                                                                                                                     |[0x80000378]:URSTSA16 t6, s8, t4<br> [0x8000037c]:sw t6, 44(a5)<br>     |
|  28|[0x8000227c]<br>0x7FBE7F82|- rs1 : x18<br> - rs2 : x21<br> - rd : x26<br> - rs2_h1_val == 128<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                           |[0x80000390]:URSTSA16 s10, s2, s5<br> [0x80000394]:sw s10, 48(a5)<br>   |
|  29|[0x80002280]<br>0xFFE60024|- rs1 : x26<br> - rs2 : x13<br> - rd : x20<br> - rs2_h1_val == 64<br> - rs2_h0_val == 64<br>                                                                                                                                                                                                                         |[0x800003b0]:URSTSA16 s4, s10, a3<br> [0x800003b4]:sw s4, 0(ra)<br>     |
|  30|[0x80002284]<br>0xFFF00003|- rs1 : x0<br> - rs2 : x27<br> - rd : x2<br> - rs2_h1_val == 32<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                            |[0x800003c8]:URSTSA16 sp, zero, s11<br> [0x800003cc]:sw sp, 4(ra)<br>   |
|  31|[0x80002288]<br>0xFFF9555A|- rs1 : x3<br> - rs2 : x6<br> - rd : x22<br> - rs2_h1_val == 16<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                        |[0x800003e0]:URSTSA16 s6, gp, t1<br> [0x800003e4]:sw s6, 8(ra)<br>      |
|  32|[0x8000228c]<br>0x00052002|- rs1 : x7<br> - rs2 : x18<br> - rd : x3<br> - rs2_h1_val == 8<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                                                         |[0x800003f4]:URSTSA16 gp, t2, s2<br> [0x800003f8]:sw gp, 12(ra)<br>     |
|  33|[0x80002290]<br>0x0005FDFD|- rs2_h1_val == 4<br> - rs2_h0_val == 64511<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                                                                            |[0x8000040c]:URSTSA16 t6, t5, t4<br> [0x80000410]:sw t6, 16(ra)<br>     |
|  34|[0x80002294]<br>0x7FDFFFFC|- rs2_h0_val == 65531<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                                                  |[0x80000424]:URSTSA16 t6, t5, t4<br> [0x80000428]:sw t6, 20(ra)<br>     |
|  35|[0x80002298]<br>0x00F0B7FF|- rs1_h0_val == 32768<br>                                                                                                                                                                                                                                                                                            |[0x80000438]:URSTSA16 t6, t5, t4<br> [0x8000043c]:sw t6, 24(ra)<br>     |
|  36|[0x8000229c]<br>0x7F792005|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                            |[0x8000044c]:URSTSA16 t6, t5, t4<br> [0x80000450]:sw t6, 28(ra)<br>     |
|  37|[0x800022a0]<br>0xF8083000|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                             |[0x8000045c]:URSTSA16 t6, t5, t4<br> [0x80000460]:sw t6, 32(ra)<br>     |
|  38|[0x800022a4]<br>0x6FDF0408|- rs1_h1_val == 65471<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                   |[0x80000474]:URSTSA16 t6, t5, t4<br> [0x80000478]:sw t6, 36(ra)<br>     |
|  39|[0x800022a8]<br>0x7F7B7DFF|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                             |[0x8000048c]:URSTSA16 t6, t5, t4<br> [0x80000490]:sw t6, 40(ra)<br>     |
|  40|[0x800022ac]<br>0xFA002AB2|- rs2_h0_val == 21845<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                            |[0x800004a4]:URSTSA16 t6, t5, t4<br> [0x800004a8]:sw t6, 44(ra)<br>     |
|  41|[0x800022b0]<br>0x88017F03|- rs2_h0_val == 65023<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                      |[0x800004bc]:URSTSA16 t6, t5, t4<br> [0x800004c0]:sw t6, 48(ra)<br>     |
|  42|[0x800022b4]<br>0x00037000|- rs2_h1_val == 1<br> - rs2_h0_val == 57343<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                |[0x800004d4]:URSTSA16 t6, t5, t4<br> [0x800004d8]:sw t6, 52(ra)<br>     |
|  43|[0x800022b8]<br>0xC00A7000|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                |[0x800004ec]:URSTSA16 t6, t5, t4<br> [0x800004f0]:sw t6, 56(ra)<br>     |
|  44|[0x800022bc]<br>0xC0028001|- rs2_h0_val == 4<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                            |[0x80000504]:URSTSA16 t6, t5, t4<br> [0x80000508]:sw t6, 60(ra)<br>     |
|  45|[0x800022c0]<br>0x00052AB0|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                |[0x8000051c]:URSTSA16 t6, t5, t4<br> [0x80000520]:sw t6, 64(ra)<br>     |
|  46|[0x800022c4]<br>0x80047E01|- rs2_h1_val == 65535<br>                                                                                                                                                                                                                                                                                            |[0x80000530]:URSTSA16 t6, t5, t4<br> [0x80000534]:sw t6, 68(ra)<br>     |
|  47|[0x800022cc]<br>0x001C600F|- rs2_h0_val == 49151<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                     |[0x8000055c]:URSTSA16 t6, t5, t4<br> [0x80000560]:sw t6, 76(ra)<br>     |
|  48|[0x800022d0]<br>0x2AA6D514|- rs2_h0_val == 65407<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                  |[0x80000574]:URSTSA16 t6, t5, t4<br> [0x80000578]:sw t6, 80(ra)<br>     |
|  49|[0x800022d4]<br>0x90028FEF|- rs2_h0_val == 65503<br>                                                                                                                                                                                                                                                                                            |[0x80000588]:URSTSA16 t6, t5, t4<br> [0x8000058c]:sw t6, 84(ra)<br>     |
|  50|[0x800022d8]<br>0xD559BFF7|- rs2_h0_val == 65519<br>                                                                                                                                                                                                                                                                                            |[0x800005a0]:URSTSA16 t6, t5, t4<br> [0x800005a4]:sw t6, 88(ra)<br>     |
|  51|[0x800022dc]<br>0x07F81100|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                              |[0x800005b4]:URSTSA16 t6, t5, t4<br> [0x800005b8]:sw t6, 92(ra)<br>     |
|  52|[0x800022e0]<br>0x00000084|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                              |[0x800005cc]:URSTSA16 t6, t5, t4<br> [0x800005d0]:sw t6, 96(ra)<br>     |
|  53|[0x800022e4]<br>0x5FFD0046|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                              |[0x800005e4]:URSTSA16 t6, t5, t4<br> [0x800005e8]:sw t6, 100(ra)<br>    |
|  54|[0x800022e8]<br>0x7DFB0005|- rs2_h0_val == 8<br> - rs1_h1_val == 64511<br>                                                                                                                                                                                                                                                                      |[0x800005fc]:URSTSA16 t6, t5, t4<br> [0x80000600]:sw t6, 104(ra)<br>    |
|  55|[0x800022ec]<br>0xFFFC7FFF|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                |[0x80000614]:URSTSA16 t6, t5, t4<br> [0x80000618]:sw t6, 108(ra)<br>    |
|  56|[0x800022f0]<br>0x1FF787FF|- rs2_h0_val == 65535<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                  |[0x80000628]:URSTSA16 t6, t5, t4<br> [0x8000062c]:sw t6, 112(ra)<br>    |
|  57|[0x800022f4]<br>0x55507FE2|- rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                                            |[0x80000640]:URSTSA16 t6, t5, t4<br> [0x80000644]:sw t6, 116(ra)<br>    |
|  58|[0x800022f8]<br>0x6FF87F04|- rs1_h1_val == 57343<br>                                                                                                                                                                                                                                                                                            |[0x80000658]:URSTSA16 t6, t5, t4<br> [0x8000065c]:sw t6, 120(ra)<br>    |
|  59|[0x800022fc]<br>0x7BDF0801|- rs2_h0_val == 4096<br> - rs1_h1_val == 63487<br>                                                                                                                                                                                                                                                                   |[0x8000066c]:URSTSA16 t6, t5, t4<br> [0x80000670]:sw t6, 124(ra)<br>    |
|  60|[0x80002300]<br>0x6EFF0087|- rs1_h1_val == 65023<br>                                                                                                                                                                                                                                                                                            |[0x80000684]:URSTSA16 t6, t5, t4<br> [0x80000688]:sw t6, 128(ra)<br>    |
|  61|[0x80002304]<br>0x7FBABBFF|- rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                                                            |[0x8000069c]:URSTSA16 t6, t5, t4<br> [0x800006a0]:sw t6, 132(ra)<br>    |
|  62|[0x80002308]<br>0x0000FFDB|- rs2_h0_val == 65527<br>                                                                                                                                                                                                                                                                                            |[0x800006b4]:URSTSA16 t6, t5, t4<br> [0x800006b8]:sw t6, 136(ra)<br>    |
|  63|[0x8000230c]<br>0x007E2AAF|- rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                                                            |[0x800006cc]:URSTSA16 t6, t5, t4<br> [0x800006d0]:sw t6, 140(ra)<br>    |
|  64|[0x80002310]<br>0x04007C01|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                             |[0x800006e0]:URSTSA16 t6, t5, t4<br> [0x800006e4]:sw t6, 144(ra)<br>    |
|  65|[0x80002314]<br>0xC100DFBF|- rs1_h1_val == 512<br> - rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                    |[0x800006f8]:URSTSA16 t6, t5, t4<br> [0x800006fc]:sw t6, 148(ra)<br>    |
|  66|[0x80002318]<br>0x8014BBFF|- rs2_h0_val == 32768<br>                                                                                                                                                                                                                                                                                            |[0x8000070c]:URSTSA16 t6, t5, t4<br> [0x80000710]:sw t6, 152(ra)<br>    |
|  67|[0x8000231c]<br>0xC0080220|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                               |[0x80000724]:URSTSA16 t6, t5, t4<br> [0x80000728]:sw t6, 156(ra)<br>    |
|  68|[0x80002324]<br>0xF804DFFE|- rs2_h0_val == 65533<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                  |[0x80000754]:URSTSA16 t6, t5, t4<br> [0x80000758]:sw t6, 164(ra)<br>    |
|  69|[0x80002328]<br>0x80448BFF|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                             |[0x80000768]:URSTSA16 t6, t5, t4<br> [0x8000076c]:sw t6, 168(ra)<br>    |
|  70|[0x8000232c]<br>0x82807002|- rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                                                            |[0x80000780]:URSTSA16 t6, t5, t4<br> [0x80000784]:sw t6, 172(ra)<br>    |
|  71|[0x80002330]<br>0x0003D354|- rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                                                            |[0x80000798]:URSTSA16 t6, t5, t4<br> [0x8000079c]:sw t6, 176(ra)<br>    |
|  72|[0x80002334]<br>0x2AA87FF6|- rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                            |[0x800007b0]:URSTSA16 t6, t5, t4<br> [0x800007b4]:sw t6, 180(ra)<br>    |
|  73|[0x80002338]<br>0x8082F3FF|- rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                            |[0x800007c8]:URSTSA16 t6, t5, t4<br> [0x800007cc]:sw t6, 184(ra)<br>    |
|  74|[0x8000233c]<br>0x8106FF7B|- rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                                                            |[0x800007e0]:URSTSA16 t6, t5, t4<br> [0x800007e4]:sw t6, 188(ra)<br>    |
