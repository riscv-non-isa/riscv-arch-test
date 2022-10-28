
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000830')]      |
| SIG_REGION                | [('0x80002210', '0x80002350', '80 words')]      |
| COV_LABELS                | ucmple16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ucmple16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 79      |
| STAT1                     | 75      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000520]:UCMPLE16 t6, t5, t4
      [0x80000524]:sw t6, 112(t0)
 -- Signature Address: 0x800022c4 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ucmple16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs1_h1_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000654]:UCMPLE16 t6, t5, t4
      [0x80000658]:sw t6, 164(t0)
 -- Signature Address: 0x800022f8 Data: 0xFFFF0000
 -- Redundant Coverpoints hit by the op
      - opcode : ucmple16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 63487
      - rs1_h1_val == 8
      - rs1_h0_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007dc]:UCMPLE16 t6, t5, t4
      [0x800007e0]:sw t6, 232(t0)
 -- Signature Address: 0x8000233c Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ucmple16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000808]:UCMPLE16 t6, t5, t4
      [0x8000080c]:sw t6, 240(t0)
 -- Signature Address: 0x80002344 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ucmple16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 49151
      - rs2_h0_val == 64
      - rs1_h0_val == 64






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

|s.no|        signature         |                                                                                                               coverpoints                                                                                                               |                                  code                                  |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : ucmple16<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br>  |[0x8000010c]:UCMPLE16 s5, s5, s5<br> [0x80000110]:sw s5, 0(sp)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x13<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 8<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 8<br> - rs1_h0_val == 4096<br>                                                                      |[0x80000120]:UCMPLE16 s7, a3, a3<br> [0x80000124]:sw s7, 4(sp)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x27<br> - rs2 : x18<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 64<br> - rs1_h0_val == 64<br> |[0x80000138]:UCMPLE16 zero, s11, s2<br> [0x8000013c]:sw zero, 8(sp)<br> |
|   4|[0x8000221c]<br>0xFFFF0000|- rs1 : x9<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs1_h1_val == 256<br>                                                |[0x80000150]:UCMPLE16 t0, s1, t0<br> [0x80000154]:sw t0, 12(sp)<br>     |
|   5|[0x80002220]<br>0xFFFF0000|- rs1 : x15<br> - rs2 : x22<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 32<br> - rs1_h1_val == 4<br> - rs1_h0_val == 65407<br>                                                                   |[0x80000168]:UCMPLE16 a5, a5, s6<br> [0x8000016c]:sw a5, 16(sp)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x10<br> - rs2 : x25<br> - rd : x14<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 32768<br>                                                                                                                                       |[0x80000180]:UCMPLE16 a4, a0, s9<br> [0x80000184]:sw a4, 20(sp)<br>     |
|   7|[0x80002228]<br>0x0000FFFF|- rs1 : x25<br> - rs2 : x28<br> - rd : x20<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 256<br>                                                                                     |[0x80000198]:UCMPLE16 s4, s9, t3<br> [0x8000019c]:sw s4, 24(sp)<br>     |
|   8|[0x8000222c]<br>0xFFFF0000|- rs1 : x5<br> - rs2 : x15<br> - rd : x22<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 65471<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 65503<br>                                                                                    |[0x800001b0]:UCMPLE16 s6, t0, a5<br> [0x800001b4]:sw s6, 28(sp)<br>     |
|   9|[0x80002230]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x3<br> - rd : x6<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 65533<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 32768<br>                                                                                     |[0x800001c4]:UCMPLE16 t1, a7, gp<br> [0x800001c8]:sw t1, 32(sp)<br>     |
|  10|[0x80002234]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x16<br> - rd : x1<br> - rs2_h1_val == 64511<br> - rs1_h1_val == 0<br> - rs1_h0_val == 32<br>                                                                                                                     |[0x800001d8]:UCMPLE16 ra, s8, a6<br> [0x800001dc]:sw ra, 36(sp)<br>     |
|  11|[0x80002238]<br>0xFFFF0000|- rs1 : x7<br> - rs2 : x23<br> - rd : x30<br> - rs2_h1_val == 65023<br> - rs1_h0_val == 65531<br>                                                                                                                                        |[0x800001f0]:UCMPLE16 t5, t2, s7<br> [0x800001f4]:sw t5, 40(sp)<br>     |
|  12|[0x8000223c]<br>0xFFFF0000|- rs1 : x16<br> - rs2 : x12<br> - rd : x13<br> - rs2_h1_val == 65279<br> - rs1_h0_val == 1024<br>                                                                                                                                        |[0x80000208]:UCMPLE16 a3, a6, a2<br> [0x8000020c]:sw a3, 44(sp)<br>     |
|  13|[0x80002240]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x10<br> - rd : x25<br> - rs2_h1_val == 65407<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 512<br>                                                                                                                |[0x80000220]:UCMPLE16 s9, a4, a0<br> [0x80000224]:sw s9, 48(sp)<br>     |
|  14|[0x80002244]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x11<br> - rd : x19<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 65531<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 63487<br>                                                                                   |[0x80000238]:UCMPLE16 s3, s10, a1<br> [0x8000023c]:sw s3, 52(sp)<br>    |
|  15|[0x80002248]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x19<br> - rd : x7<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 65535<br>                                                                                                                                        |[0x80000250]:UCMPLE16 t2, a2, s3<br> [0x80000254]:sw t2, 56(sp)<br>     |
|  16|[0x8000224c]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x6<br> - rd : x12<br> - rs2_h1_val == 65519<br> - rs1_h1_val == 65503<br>                                                                                                                                        |[0x80000268]:UCMPLE16 a2, s7, t1<br> [0x8000026c]:sw a2, 60(sp)<br>     |
|  17|[0x80002250]<br>0xFFFFFFFF|- rs1 : x3<br> - rs2 : x27<br> - rd : x4<br> - rs2_h1_val == 65527<br>                                                                                                                                                                   |[0x80000280]:UCMPLE16 tp, gp, s11<br> [0x80000284]:sw tp, 64(sp)<br>    |
|  18|[0x80002254]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x2<br> - rd : x8<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 65519<br> - rs1_h1_val == 128<br>                                                                                                                  |[0x800002a0]:UCMPLE16 fp, ra, sp<br> [0x800002a4]:sw fp, 0(t0)<br>      |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x19<br> - rs2 : x26<br> - rd : x28<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 21845<br>                                                                                                              |[0x800002b8]:UCMPLE16 t3, s3, s10<br> [0x800002bc]:sw t3, 4(t0)<br>     |
|  20|[0x8000225c]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x24<br> - rd : x17<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 8<br>                                                                                        |[0x800002d0]:UCMPLE16 a7, t4, s8<br> [0x800002d4]:sw a7, 8(t0)<br>      |
|  21|[0x80002260]<br>0xFFFF0000|- rs1 : x6<br> - rs2 : x31<br> - rd : x16<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 512<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 32767<br>                                                                                       |[0x800002e8]:UCMPLE16 a6, t1, t6<br> [0x800002ec]:sw a6, 12(t0)<br>     |
|  22|[0x80002264]<br>0xFFFF0000|- rs1 : x22<br> - rs2 : x4<br> - rd : x2<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 2<br>                                                                                                                                             |[0x80000300]:UCMPLE16 sp, s6, tp<br> [0x80000304]:sw sp, 16(t0)<br>     |
|  23|[0x80002268]<br>0xFFFF0000|- rs1 : x28<br> - rs2 : x7<br> - rd : x9<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 2<br>                                                                                                                                              |[0x80000314]:UCMPLE16 s1, t3, t2<br> [0x80000318]:sw s1, 20(t0)<br>     |
|  24|[0x8000226c]<br>0x0000FFFF|- rs1 : x4<br> - rs2 : x30<br> - rd : x27<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 16<br>                                                                                        |[0x8000032c]:UCMPLE16 s11, tp, t5<br> [0x80000330]:sw s11, 24(t0)<br>   |
|  25|[0x80002270]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x9<br> - rd : x11<br> - rs2_h1_val == 2048<br>                                                                                                                                                                    |[0x80000344]:UCMPLE16 a1, fp, s1<br> [0x80000348]:sw a1, 28(t0)<br>     |
|  26|[0x80002274]<br>0xFFFFFFFF|- rs1 : x30<br> - rs2 : x1<br> - rd : x10<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 65023<br> - rs1_h0_val == 8192<br>                                                                                                                |[0x80000358]:UCMPLE16 a0, t5, ra<br> [0x8000035c]:sw a0, 32(t0)<br>     |
|  27|[0x80002278]<br>0xFFFF0000|- rs1 : x2<br> - rs2 : x0<br> - rd : x31<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 65533<br>                                                                                                                       |[0x80000370]:UCMPLE16 t6, sp, zero<br> [0x80000374]:sw t6, 36(t0)<br>   |
|  28|[0x8000227c]<br>0xFFFF0000|- rs1 : x18<br> - rs2 : x20<br> - rd : x3<br> - rs2_h1_val == 256<br> - rs1_h0_val == 65279<br>                                                                                                                                          |[0x80000384]:UCMPLE16 gp, s2, s4<br> [0x80000388]:sw gp, 40(t0)<br>     |
|  29|[0x80002280]<br>0xFFFF0000|- rs1 : x31<br> - rs2 : x8<br> - rd : x18<br> - rs2_h1_val == 128<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 64<br> - rs1_h0_val == 61439<br>                                                                                          |[0x80000398]:UCMPLE16 s2, t6, fp<br> [0x8000039c]:sw s2, 44(t0)<br>     |
|  30|[0x80002284]<br>0x00000000|- rs1 : x20<br> - rs2 : x17<br> - rd : x24<br> - rs2_h1_val == 64<br>                                                                                                                                                                    |[0x800003b0]:UCMPLE16 s8, s4, a7<br> [0x800003b4]:sw s8, 48(t0)<br>     |
|  31|[0x80002288]<br>0x00000000|- rs1 : x11<br> - rs2 : x29<br> - rd : x26<br> - rs2_h0_val == 8<br> - rs1_h1_val == 32<br> - rs1_h0_val == 65534<br>                                                                                                                    |[0x800003c8]:UCMPLE16 s10, a1, t4<br> [0x800003cc]:sw s10, 52(t0)<br>   |
|  32|[0x8000228c]<br>0xFFFFFFFF|- rs1 : x0<br> - rs2 : x14<br> - rd : x29<br> - rs1_h0_val == 0<br>                                                                                                                                                                      |[0x800003e0]:UCMPLE16 t4, zero, a4<br> [0x800003e4]:sw t4, 56(t0)<br>   |
|  33|[0x80002290]<br>0xFFFFFFFF|- rs1_h1_val == 57343<br>                                                                                                                                                                                                                |[0x800003f4]:UCMPLE16 t6, t5, t4<br> [0x800003f8]:sw t6, 60(t0)<br>     |
|  34|[0x80002294]<br>0xFFFF0000|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                 |[0x80000408]:UCMPLE16 t6, t5, t4<br> [0x8000040c]:sw t6, 64(t0)<br>     |
|  35|[0x80002298]<br>0xFFFFFFFF|- rs2_h0_val == 32767<br> - rs1_h0_val == 128<br>                                                                                                                                                                                        |[0x80000420]:UCMPLE16 t6, t5, t4<br> [0x80000424]:sw t6, 68(t0)<br>     |
|  36|[0x8000229c]<br>0x00000000|- rs1_h1_val == 65531<br> - rs1_h0_val == 4<br>                                                                                                                                                                                          |[0x80000438]:UCMPLE16 t6, t5, t4<br> [0x8000043c]:sw t6, 72(t0)<br>     |
|  37|[0x800022a0]<br>0xFFFFFFFF|- rs1_h0_val == 2<br>                                                                                                                                                                                                                    |[0x80000450]:UCMPLE16 t6, t5, t4<br> [0x80000454]:sw t6, 76(t0)<br>     |
|  38|[0x800022a4]<br>0xFFFFFFFF|- rs1_h1_val == 4096<br> - rs1_h0_val == 1<br>                                                                                                                                                                                           |[0x80000468]:UCMPLE16 t6, t5, t4<br> [0x8000046c]:sw t6, 80(t0)<br>     |
|  39|[0x800022a8]<br>0x00000000|- rs2_h0_val == 1<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 65535<br>                                                                                                                                                                |[0x80000480]:UCMPLE16 t6, t5, t4<br> [0x80000484]:sw t6, 84(t0)<br>     |
|  40|[0x800022ac]<br>0x00000000|- rs2_h1_val == 32<br> - rs2_h0_val == 256<br>                                                                                                                                                                                           |[0x80000498]:UCMPLE16 t6, t5, t4<br> [0x8000049c]:sw t6, 88(t0)<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs2_h1_val == 16<br>                                                                                                                                                                                                                   |[0x800004ac]:UCMPLE16 t6, t5, t4<br> [0x800004b0]:sw t6, 92(t0)<br>     |
|  42|[0x800022b4]<br>0x0000FFFF|- rs2_h1_val == 4<br> - rs2_h0_val == 65279<br>                                                                                                                                                                                          |[0x800004c4]:UCMPLE16 t6, t5, t4<br> [0x800004c8]:sw t6, 96(t0)<br>     |
|  43|[0x800022b8]<br>0x00000000|- rs2_h1_val == 2<br> - rs1_h1_val == 65407<br>                                                                                                                                                                                          |[0x800004dc]:UCMPLE16 t6, t5, t4<br> [0x800004e0]:sw t6, 100(t0)<br>    |
|  44|[0x800022bc]<br>0x0000FFFF|- rs2_h1_val == 1<br> - rs1_h1_val == 65471<br>                                                                                                                                                                                          |[0x800004f4]:UCMPLE16 t6, t5, t4<br> [0x800004f8]:sw t6, 104(t0)<br>    |
|  45|[0x800022c0]<br>0xFFFF0000|- rs2_h1_val == 65535<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                      |[0x8000050c]:UCMPLE16 t6, t5, t4<br> [0x80000510]:sw t6, 108(t0)<br>    |
|  46|[0x800022c8]<br>0xFFFFFFFF|- rs2_h0_val == 43690<br>                                                                                                                                                                                                                |[0x80000538]:UCMPLE16 t6, t5, t4<br> [0x8000053c]:sw t6, 116(t0)<br>    |
|  47|[0x800022cc]<br>0xFFFFFFFF|- rs2_h0_val == 49151<br>                                                                                                                                                                                                                |[0x80000550]:UCMPLE16 t6, t5, t4<br> [0x80000554]:sw t6, 120(t0)<br>    |
|  48|[0x800022d0]<br>0xFFFF0000|- rs2_h0_val == 128<br>                                                                                                                                                                                                                  |[0x80000568]:UCMPLE16 t6, t5, t4<br> [0x8000056c]:sw t6, 124(t0)<br>    |
|  49|[0x800022d4]<br>0x00000000|- rs2_h0_val == 16<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                         |[0x80000580]:UCMPLE16 t6, t5, t4<br> [0x80000584]:sw t6, 128(t0)<br>    |
|  50|[0x800022d8]<br>0xFFFF0000|- rs2_h0_val == 4<br>                                                                                                                                                                                                                    |[0x80000598]:UCMPLE16 t6, t5, t4<br> [0x8000059c]:sw t6, 132(t0)<br>    |
|  51|[0x800022dc]<br>0x00000000|- rs1_h1_val == 61439<br>                                                                                                                                                                                                                |[0x800005b0]:UCMPLE16 t6, t5, t4<br> [0x800005b4]:sw t6, 136(t0)<br>    |
|  52|[0x800022e0]<br>0x0000FFFF|- rs1_h1_val == 65527<br>                                                                                                                                                                                                                |[0x800005c8]:UCMPLE16 t6, t5, t4<br> [0x800005cc]:sw t6, 140(t0)<br>    |
|  53|[0x800022e4]<br>0x0000FFFF|- rs1_h1_val == 65533<br>                                                                                                                                                                                                                |[0x800005e0]:UCMPLE16 t6, t5, t4<br> [0x800005e4]:sw t6, 144(t0)<br>    |
|  54|[0x800022e8]<br>0x0000FFFF|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                |[0x800005f8]:UCMPLE16 t6, t5, t4<br> [0x800005fc]:sw t6, 148(t0)<br>    |
|  55|[0x800022ec]<br>0xFFFFFFFF|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                |[0x80000610]:UCMPLE16 t6, t5, t4<br> [0x80000614]:sw t6, 152(t0)<br>    |
|  56|[0x800022f0]<br>0x0000FFFF|- rs2_h0_val == 65503<br> - rs1_h1_val == 512<br> - rs1_h0_val == 21845<br>                                                                                                                                                              |[0x80000628]:UCMPLE16 t6, t5, t4<br> [0x8000062c]:sw t6, 156(t0)<br>    |
|  57|[0x800022f4]<br>0xFFFF0000|- rs1_h1_val == 16<br>                                                                                                                                                                                                                   |[0x80000640]:UCMPLE16 t6, t5, t4<br> [0x80000644]:sw t6, 160(t0)<br>    |
|  58|[0x800022fc]<br>0x0000FFFF|- rs2_h0_val == 57343<br>                                                                                                                                                                                                                |[0x80000668]:UCMPLE16 t6, t5, t4<br> [0x8000066c]:sw t6, 168(t0)<br>    |
|  59|[0x80002300]<br>0x0000FFFF|- rs2_h0_val == 61439<br>                                                                                                                                                                                                                |[0x80000680]:UCMPLE16 t6, t5, t4<br> [0x80000684]:sw t6, 172(t0)<br>    |
|  60|[0x80002304]<br>0xFFFFFFFF|- rs1_h1_val == 1<br>                                                                                                                                                                                                                    |[0x80000698]:UCMPLE16 t6, t5, t4<br> [0x8000069c]:sw t6, 176(t0)<br>    |
|  61|[0x80002308]<br>0xFFFFFFFF|- rs2_h0_val == 63487<br>                                                                                                                                                                                                                |[0x800006b0]:UCMPLE16 t6, t5, t4<br> [0x800006b4]:sw t6, 180(t0)<br>    |
|  62|[0x8000230c]<br>0xFFFF0000|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                |[0x800006c4]:UCMPLE16 t6, t5, t4<br> [0x800006c8]:sw t6, 184(t0)<br>    |
|  63|[0x80002310]<br>0x0000FFFF|- rs1_h1_val == 65535<br>                                                                                                                                                                                                                |[0x800006dc]:UCMPLE16 t6, t5, t4<br> [0x800006e0]:sw t6, 188(t0)<br>    |
|  64|[0x80002314]<br>0x00000000|- rs2_h0_val == 64511<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                      |[0x800006f4]:UCMPLE16 t6, t5, t4<br> [0x800006f8]:sw t6, 192(t0)<br>    |
|  65|[0x80002318]<br>0x00000000|- rs1_h0_val == 43690<br>                                                                                                                                                                                                                |[0x8000070c]:UCMPLE16 t6, t5, t4<br> [0x80000710]:sw t6, 196(t0)<br>    |
|  66|[0x8000231c]<br>0x0000FFFF|- rs2_h0_val == 65407<br>                                                                                                                                                                                                                |[0x80000724]:UCMPLE16 t6, t5, t4<br> [0x80000728]:sw t6, 200(t0)<br>    |
|  67|[0x80002320]<br>0xFFFF0000|- rs1_h0_val == 57343<br>                                                                                                                                                                                                                |[0x8000073c]:UCMPLE16 t6, t5, t4<br> [0x80000740]:sw t6, 204(t0)<br>    |
|  68|[0x80002324]<br>0x0000FFFF|- rs2_h0_val == 65527<br>                                                                                                                                                                                                                |[0x80000754]:UCMPLE16 t6, t5, t4<br> [0x80000758]:sw t6, 208(t0)<br>    |
|  69|[0x80002328]<br>0x00000000|- rs1_h0_val == 64511<br>                                                                                                                                                                                                                |[0x8000076c]:UCMPLE16 t6, t5, t4<br> [0x80000770]:sw t6, 212(t0)<br>    |
|  70|[0x8000232c]<br>0xFFFFFFFF|- rs1_h0_val == 65023<br>                                                                                                                                                                                                                |[0x80000784]:UCMPLE16 t6, t5, t4<br> [0x80000788]:sw t6, 216(t0)<br>    |
|  71|[0x80002330]<br>0xFFFF0000|- rs2_h0_val == 32768<br>                                                                                                                                                                                                                |[0x80000798]:UCMPLE16 t6, t5, t4<br> [0x8000079c]:sw t6, 220(t0)<br>    |
|  72|[0x80002334]<br>0xFFFF0000|- rs2_h1_val == 512<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                        |[0x800007b0]:UCMPLE16 t6, t5, t4<br> [0x800007b4]:sw t6, 224(t0)<br>    |
|  73|[0x80002338]<br>0x00000000|- rs1_h0_val == 65527<br>                                                                                                                                                                                                                |[0x800007c8]:UCMPLE16 t6, t5, t4<br> [0x800007cc]:sw t6, 228(t0)<br>    |
|  74|[0x80002340]<br>0x0000FFFF|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                 |[0x800007f0]:UCMPLE16 t6, t5, t4<br> [0x800007f4]:sw t6, 236(t0)<br>    |
|  75|[0x80002348]<br>0x00000000|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                |[0x8000081c]:UCMPLE16 t6, t5, t4<br> [0x80000820]:sw t6, 244(t0)<br>    |
