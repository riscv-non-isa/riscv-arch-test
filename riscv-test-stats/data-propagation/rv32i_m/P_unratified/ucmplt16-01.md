
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000810')]      |
| SIG_REGION                | [('0x80002210', '0x80002350', '80 words')]      |
| COV_LABELS                | ucmplt16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ucmplt16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 78      |
| STAT1                     | 73      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000528]:UCMPLT16 t6, t5, t4
      [0x8000052c]:sw t6, 104(a2)
 -- Signature Address: 0x800022c4 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c8]:UCMPLT16 t6, t5, t4
      [0x800005cc]:sw t6, 132(a2)
 -- Signature Address: 0x800022e0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h0_val == 0
      - rs1_h0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007dc]:UCMPLT16 t6, t5, t4
      [0x800007e0]:sw t6, 224(a2)
 -- Signature Address: 0x8000233c Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 63487
      - rs2_h0_val == 65531
      - rs1_h1_val == 63487




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f4]:UCMPLT16 t6, t5, t4
      [0x800007f8]:sw t6, 228(a2)
 -- Signature Address: 0x80002340 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 49151
      - rs2_h0_val == 2
      - rs1_h1_val == 49151




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000808]:UCMPLT16 t6, t5, t4
      [0x8000080c]:sw t6, 232(a2)
 -- Signature Address: 0x80002344 Data: 0xFFFF0000
 -- Redundant Coverpoints hit by the op
      - opcode : ucmplt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 65534
      - rs2_h0_val == 1024
      - rs1_h1_val == 65531
      - rs1_h0_val == 16384






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

|s.no|        signature         |                                                                                                                                                                coverpoints                                                                                                                                                                 |                                  code                                  |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ucmplt16<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 2048<br> |[0x8000010c]:UCMPLT16 t4, t4, t4<br> [0x80000110]:sw t4, 0(t0)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x30<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 65531<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 65531<br>                                                                                                                                                               |[0x80000124]:UCMPLT16 t5, s11, s11<br> [0x80000128]:sw t5, 4(t0)<br>    |
|   3|[0x80002218]<br>0x00000000|- rs1 : x15<br> - rs2 : x11<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h1_val == 1024<br>                                                                                                                                                  |[0x8000013c]:UCMPLT16 s11, a5, a1<br> [0x80000140]:sw s11, 8(t0)<br>    |
|   4|[0x8000221c]<br>0xFFFF0000|- rs1 : x21<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs1_h0_val == 49151<br>                                                                                                                                              |[0x80000154]:UCMPLT16 s3, s5, s3<br> [0x80000158]:sw s3, 12(t0)<br>     |
|   5|[0x80002220]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x10<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 8<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                 |[0x8000016c]:UCMPLT16 fp, fp, a0<br> [0x80000170]:sw fp, 16(t0)<br>     |
|   6|[0x80002224]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x21<br> - rd : x18<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                    |[0x80000184]:UCMPLT16 s2, s8, s5<br> [0x80000188]:sw s2, 20(t0)<br>     |
|   7|[0x80002228]<br>0x00000000|- rs1 : x12<br> - rs2 : x2<br> - rd : x0<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 2<br> - rs1_h1_val == 49151<br>                                                                                                                                                                                                                      |[0x8000019c]:UCMPLT16 zero, a2, sp<br> [0x800001a0]:sw zero, 24(t0)<br> |
|   8|[0x8000222c]<br>0xFFFF0000|- rs1 : x1<br> - rs2 : x31<br> - rd : x12<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 4<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                       |[0x800001b4]:UCMPLT16 a2, ra, t6<br> [0x800001b8]:sw a2, 28(t0)<br>     |
|   9|[0x80002230]<br>0x0000FFFF|- rs1 : x14<br> - rs2 : x12<br> - rd : x7<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 64511<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 16<br>                                                                                                                                                                                          |[0x800001cc]:UCMPLT16 t2, a4, a2<br> [0x800001d0]:sw t2, 32(t0)<br>     |
|  10|[0x80002234]<br>0xFFFF0000|- rs1 : x20<br> - rs2 : x15<br> - rd : x9<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 64<br> - rs1_h1_val == 8<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                              |[0x800001e4]:UCMPLT16 s1, s4, a5<br> [0x800001e8]:sw s1, 36(t0)<br>     |
|  11|[0x80002238]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x24<br> - rd : x28<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 32<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                    |[0x800001fc]:UCMPLT16 t3, t2, s8<br> [0x80000200]:sw t3, 40(t0)<br>     |
|  12|[0x8000223c]<br>0xFFFFFFFF|- rs1 : x30<br> - rs2 : x6<br> - rd : x14<br> - rs2_h1_val == 65279<br>                                                                                                                                                                                                                                                                     |[0x80000214]:UCMPLT16 a4, t5, t1<br> [0x80000218]:sw a4, 44(t0)<br>     |
|  13|[0x80002240]<br>0xFFFF0000|- rs1 : x2<br> - rs2 : x13<br> - rd : x10<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 256<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                   |[0x8000022c]:UCMPLT16 a0, sp, a3<br> [0x80000230]:sw a0, 48(t0)<br>     |
|  14|[0x80002244]<br>0xFFFF0000|- rs1 : x23<br> - rs2 : x4<br> - rd : x26<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 57343<br> - rs1_h1_val == 32<br> - rs1_h0_val == 65407<br>                                                                                                                                                                                          |[0x80000244]:UCMPLT16 s10, s7, tp<br> [0x80000248]:sw s10, 52(t0)<br>   |
|  15|[0x80002248]<br>0xFFFFFFFF|- rs1 : x4<br> - rs2 : x18<br> - rd : x31<br> - rs2_h1_val == 65503<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                               |[0x8000025c]:UCMPLT16 t6, tp, s2<br> [0x80000260]:sw t6, 56(t0)<br>     |
|  16|[0x8000224c]<br>0xFFFF0000|- rs1 : x11<br> - rs2 : x3<br> - rd : x15<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 65503<br> - rs1_h1_val == 512<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                         |[0x80000274]:UCMPLT16 a5, a1, gp<br> [0x80000278]:sw a5, 60(t0)<br>     |
|  17|[0x80002250]<br>0x0000FFFF|- rs1 : x19<br> - rs2 : x14<br> - rd : x23<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                       |[0x80000288]:UCMPLT16 s7, s3, a4<br> [0x8000028c]:sw s7, 64(t0)<br>     |
|  18|[0x80002254]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x23<br> - rd : x24<br> - rs2_h1_val == 65531<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                            |[0x800002a0]:UCMPLT16 s8, s10, s7<br> [0x800002a4]:sw s8, 68(t0)<br>    |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x30<br> - rd : x21<br> - rs2_h1_val == 65533<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                             |[0x800002b8]:UCMPLT16 s5, a7, t5<br> [0x800002bc]:sw s5, 72(t0)<br>     |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x5<br> - rs2 : x0<br> - rd : x20<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                          |[0x800002d4]:UCMPLT16 s4, t0, zero<br> [0x800002d8]:sw s4, 0(a2)<br>    |
|  21|[0x80002260]<br>0x00000000|- rs1 : x16<br> - rs2 : x9<br> - rd : x25<br> - rs2_h1_val == 32768<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                           |[0x800002ec]:UCMPLT16 s9, a6, s1<br> [0x800002f0]:sw s9, 4(a2)<br>      |
|  22|[0x80002264]<br>0xFFFF0000|- rs1 : x25<br> - rs2 : x1<br> - rd : x4<br> - rs2_h1_val == 16384<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                              |[0x80000304]:UCMPLT16 tp, s9, ra<br> [0x80000308]:sw tp, 8(a2)<br>      |
|  23|[0x80002268]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x16<br> - rd : x17<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                     |[0x8000031c]:UCMPLT16 a7, s2, a6<br> [0x80000320]:sw a7, 12(a2)<br>     |
|  24|[0x8000226c]<br>0x0000FFFF|- rs1 : x3<br> - rs2 : x5<br> - rd : x6<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 65471<br> - rs1_h1_val == 65471<br>                                                                                                                                                                                                                    |[0x80000334]:UCMPLT16 t1, gp, t0<br> [0x80000338]:sw t1, 16(a2)<br>     |
|  25|[0x80002270]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x7<br> - rd : x2<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 32768<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                       |[0x80000348]:UCMPLT16 sp, s6, t2<br> [0x8000034c]:sw sp, 20(a2)<br>     |
|  26|[0x80002274]<br>0x0000FFFF|- rs1 : x31<br> - rs2 : x17<br> - rd : x11<br> - rs2_h1_val == 512<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                     |[0x80000360]:UCMPLT16 a1, t6, a7<br> [0x80000364]:sw a1, 24(a2)<br>     |
|  27|[0x80002278]<br>0xFFFFFFFF|- rs1 : x10<br> - rs2 : x20<br> - rd : x5<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                       |[0x80000378]:UCMPLT16 t0, a0, s4<br> [0x8000037c]:sw t0, 28(a2)<br>     |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x13<br> - rs2 : x25<br> - rd : x3<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                       |[0x80000390]:UCMPLT16 gp, a3, s9<br> [0x80000394]:sw gp, 32(a2)<br>     |
|  29|[0x80002280]<br>0xFFFFFFFF|- rs1 : x0<br> - rs2 : x28<br> - rd : x1<br> - rs1_h0_val == 0<br> - rs2_h1_val == 64<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                             |[0x800003a8]:UCMPLT16 ra, zero, t3<br> [0x800003ac]:sw ra, 36(a2)<br>   |
|  30|[0x80002284]<br>0xFFFF0000|- rs1 : x6<br> - rs2 : x8<br> - rd : x16<br> - rs2_h1_val == 32<br> - rs2_h0_val == 512<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                       |[0x800003c0]:UCMPLT16 a6, t1, fp<br> [0x800003c4]:sw a6, 40(a2)<br>     |
|  31|[0x80002288]<br>0x00000000|- rs1 : x28<br> - rs2 : x26<br> - rd : x13<br> - rs2_h1_val == 16<br> - rs1_h1_val == 61439<br>                                                                                                                                                                                                                                             |[0x800003d8]:UCMPLT16 a3, t3, s10<br> [0x800003dc]:sw a3, 44(a2)<br>    |
|  32|[0x8000228c]<br>0x0000FFFF|- rs1 : x9<br> - rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                        |[0x800003ec]:UCMPLT16 a1, s1, t1<br> [0x800003f0]:sw a1, 48(a2)<br>     |
|  33|[0x80002290]<br>0xFFFF0000|- rs2 : x22<br> - rs2_h0_val == 65519<br>                                                                                                                                                                                                                                                                                                   |[0x80000404]:UCMPLT16 s4, s7, s6<br> [0x80000408]:sw s4, 52(a2)<br>     |
|  34|[0x80002294]<br>0xFFFF0000|- rd : x22<br> - rs2_h0_val == 21845<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                                                                          |[0x8000041c]:UCMPLT16 s6, s11, a4<br> [0x80000420]:sw s6, 56(a2)<br>    |
|  35|[0x80002298]<br>0x0000FFFF|- rs2_h0_val == 65527<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                                                                               |[0x80000430]:UCMPLT16 t6, t5, t4<br> [0x80000434]:sw t6, 60(a2)<br>     |
|  36|[0x8000229c]<br>0xFFFF0000|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                    |[0x80000444]:UCMPLT16 t6, t5, t4<br> [0x80000448]:sw t6, 64(a2)<br>     |
|  37|[0x800022a0]<br>0x0000FFFF|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                    |[0x80000458]:UCMPLT16 t6, t5, t4<br> [0x8000045c]:sw t6, 68(a2)<br>     |
|  38|[0x800022a4]<br>0x0000FFFF|- rs2_h0_val == 65407<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                          |[0x80000470]:UCMPLT16 t6, t5, t4<br> [0x80000474]:sw t6, 72(a2)<br>     |
|  39|[0x800022a8]<br>0x0000FFFF|- rs1_h1_val == 65279<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                           |[0x80000488]:UCMPLT16 t6, t5, t4<br> [0x8000048c]:sw t6, 76(a2)<br>     |
|  40|[0x800022ac]<br>0xFFFFFFFF|- rs1_h1_val == 2<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                 |[0x800004a0]:UCMPLT16 t6, t5, t4<br> [0x800004a4]:sw t6, 80(a2)<br>     |
|  41|[0x800022b0]<br>0xFFFFFFFF|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                       |[0x800004b8]:UCMPLT16 t6, t5, t4<br> [0x800004bc]:sw t6, 84(a2)<br>     |
|  42|[0x800022b4]<br>0x00000000|- rs2_h1_val == 4<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                    |[0x800004d0]:UCMPLT16 t6, t5, t4<br> [0x800004d4]:sw t6, 88(a2)<br>     |
|  43|[0x800022b8]<br>0x0000FFFF|- rs2_h1_val == 2<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                             |[0x800004e4]:UCMPLT16 t6, t5, t4<br> [0x800004e8]:sw t6, 92(a2)<br>     |
|  44|[0x800022bc]<br>0x00000000|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                       |[0x800004fc]:UCMPLT16 t6, t5, t4<br> [0x80000500]:sw t6, 96(a2)<br>     |
|  45|[0x800022c0]<br>0xFFFFFFFF|- rs2_h1_val == 65535<br> - rs2_h0_val == 16<br> - rs1_h1_val == 65527<br>                                                                                                                                                                                                                                                                  |[0x80000514]:UCMPLT16 t6, t5, t4<br> [0x80000518]:sw t6, 100(a2)<br>    |
|  46|[0x800022c8]<br>0xFFFFFFFF|- rs2_h0_val == 43690<br>                                                                                                                                                                                                                                                                                                                   |[0x80000540]:UCMPLT16 t6, t5, t4<br> [0x80000544]:sw t6, 108(a2)<br>    |
|  47|[0x800022cc]<br>0xFFFFFFFF|- rs2_h0_val == 49151<br> - rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                                                         |[0x80000558]:UCMPLT16 t6, t5, t4<br> [0x8000055c]:sw t6, 112(a2)<br>    |
|  48|[0x800022d0]<br>0x0000FFFF|- rs2_h0_val == 61439<br>                                                                                                                                                                                                                                                                                                                   |[0x8000056c]:UCMPLT16 t6, t5, t4<br> [0x80000570]:sw t6, 116(a2)<br>    |
|  49|[0x800022d4]<br>0x00000000|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                     |[0x80000584]:UCMPLT16 t6, t5, t4<br> [0x80000588]:sw t6, 120(a2)<br>    |
|  50|[0x800022d8]<br>0x00000000|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                       |[0x8000059c]:UCMPLT16 t6, t5, t4<br> [0x800005a0]:sw t6, 124(a2)<br>    |
|  51|[0x800022dc]<br>0x0000FFFF|- rs2_h0_val == 65535<br>                                                                                                                                                                                                                                                                                                                   |[0x800005b4]:UCMPLT16 t6, t5, t4<br> [0x800005b8]:sw t6, 128(a2)<br>    |
|  52|[0x800022e4]<br>0x00000000|- rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                                                                   |[0x800005e0]:UCMPLT16 t6, t5, t4<br> [0x800005e4]:sw t6, 136(a2)<br>    |
|  53|[0x800022e8]<br>0x00000000|- rs1_h1_val == 57343<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                         |[0x800005f8]:UCMPLT16 t6, t5, t4<br> [0x800005fc]:sw t6, 140(a2)<br>    |
|  54|[0x800022ec]<br>0xFFFF0000|- rs2_h0_val == 8192<br> - rs1_h1_val == 65023<br>                                                                                                                                                                                                                                                                                          |[0x8000060c]:UCMPLT16 t6, t5, t4<br> [0x80000610]:sw t6, 144(a2)<br>    |
|  55|[0x800022f0]<br>0x0000FFFF|- rs1_h1_val == 65503<br>                                                                                                                                                                                                                                                                                                                   |[0x80000624]:UCMPLT16 t6, t5, t4<br> [0x80000628]:sw t6, 148(a2)<br>    |
|  56|[0x800022f4]<br>0x00000000|- rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                                                                   |[0x8000063c]:UCMPLT16 t6, t5, t4<br> [0x80000640]:sw t6, 152(a2)<br>    |
|  57|[0x800022f8]<br>0x00000000|- rs1_h1_val == 65533<br>                                                                                                                                                                                                                                                                                                                   |[0x80000654]:UCMPLT16 t6, t5, t4<br> [0x80000658]:sw t6, 156(a2)<br>    |
|  58|[0x800022fc]<br>0x00000000|- rs1_h1_val == 32768<br>                                                                                                                                                                                                                                                                                                                   |[0x80000668]:UCMPLT16 t6, t5, t4<br> [0x8000066c]:sw t6, 160(a2)<br>    |
|  59|[0x80002300]<br>0xFFFFFFFF|- rs2_h0_val == 65533<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                             |[0x80000680]:UCMPLT16 t6, t5, t4<br> [0x80000684]:sw t6, 164(a2)<br>    |
|  60|[0x80002304]<br>0x00000000|- rs1_h1_val == 2048<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                                                          |[0x80000698]:UCMPLT16 t6, t5, t4<br> [0x8000069c]:sw t6, 168(a2)<br>    |
|  61|[0x80002308]<br>0x00000000|- rs2_h0_val == 16384<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                             |[0x800006ac]:UCMPLT16 t6, t5, t4<br> [0x800006b0]:sw t6, 172(a2)<br>    |
|  62|[0x8000230c]<br>0x00000000|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                      |[0x800006c4]:UCMPLT16 t6, t5, t4<br> [0x800006c8]:sw t6, 176(a2)<br>    |
|  63|[0x80002310]<br>0xFFFFFFFF|- rs2_h0_val == 63487<br>                                                                                                                                                                                                                                                                                                                   |[0x800006dc]:UCMPLT16 t6, t5, t4<br> [0x800006e0]:sw t6, 180(a2)<br>    |
|  64|[0x80002314]<br>0x00000000|- rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                                                                                   |[0x800006f0]:UCMPLT16 t6, t5, t4<br> [0x800006f4]:sw t6, 184(a2)<br>    |
|  65|[0x80002318]<br>0xFFFF0000|- rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                                                                                   |[0x80000708]:UCMPLT16 t6, t5, t4<br> [0x8000070c]:sw t6, 188(a2)<br>    |
|  66|[0x8000231c]<br>0xFFFFFFFF|- rs2_h1_val == 65534<br> - rs2_h0_val == 65023<br>                                                                                                                                                                                                                                                                                         |[0x80000720]:UCMPLT16 t6, t5, t4<br> [0x80000724]:sw t6, 192(a2)<br>    |
|  67|[0x80002320]<br>0xFFFFFFFF|- rs2_h0_val == 65279<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                                                                         |[0x80000738]:UCMPLT16 t6, t5, t4<br> [0x8000073c]:sw t6, 196(a2)<br>    |
|  68|[0x80002324]<br>0xFFFFFFFF|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                   |[0x80000750]:UCMPLT16 t6, t5, t4<br> [0x80000754]:sw t6, 200(a2)<br>    |
|  69|[0x80002328]<br>0xFFFF0000|- rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                                                   |[0x80000768]:UCMPLT16 t6, t5, t4<br> [0x8000076c]:sw t6, 204(a2)<br>    |
|  70|[0x8000232c]<br>0x00000000|- rs1_h0_val == 65471<br>                                                                                                                                                                                                                                                                                                                   |[0x80000780]:UCMPLT16 t6, t5, t4<br> [0x80000784]:sw t6, 208(a2)<br>    |
|  71|[0x80002330]<br>0xFFFF0000|- rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                                                   |[0x80000798]:UCMPLT16 t6, t5, t4<br> [0x8000079c]:sw t6, 212(a2)<br>    |
|  72|[0x80002334]<br>0x0000FFFF|- rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                                                   |[0x800007b0]:UCMPLT16 t6, t5, t4<br> [0x800007b4]:sw t6, 216(a2)<br>    |
|  73|[0x80002338]<br>0x0000FFFF|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                                                                                   |[0x800007c4]:UCMPLT16 t6, t5, t4<br> [0x800007c8]:sw t6, 220(a2)<br>    |
