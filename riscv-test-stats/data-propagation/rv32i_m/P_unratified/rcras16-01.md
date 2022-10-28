
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
| COV_LABELS                | rcras16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/rcras16-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
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
      [0x80000504]:RCRAS16 t6, t5, t4
      [0x80000508]:sw t6, 108(t0)
 -- Signature Address: 0x800022c0 Data: 0x02030010
 -- Redundant Coverpoints hit by the op
      - opcode : rcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -33
      - rs1_h1_val == 1024
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000065c]:RCRAS16 t6, t5, t4
      [0x80000660]:sw t6, 168(t0)
 -- Signature Address: 0x800022fc Data: 0x00A0D355
 -- Redundant Coverpoints hit by the op
      - opcode : rcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 1024
      - rs2_h0_val == 64
      - rs1_h1_val == 256
      - rs1_h0_val == -21846




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a0]:RCRAS16 t6, t5, t4
      [0x800007a4]:sw t6, 224(t0)
 -- Signature Address: 0x80002334 Data: 0xCD549555
 -- Redundant Coverpoints hit by the op
      - opcode : rcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 21845
      - rs2_h0_val == -21846
      - rs1_h1_val == -4097




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007d0]:RCRAS16 t6, t5, t4
      [0x800007d4]:sw t6, 232(t0)
 -- Signature Address: 0x8000233c Data: 0xFFFF0013
 -- Redundant Coverpoints hit by the op
      - opcode : rcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs1_h0_val == 32






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

|s.no|        signature         |                                                                                                                                                                   coverpoints                                                                                                                                                                    |                                 code                                  |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFAAAA|- opcode : rcras16<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x5<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -21846<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -21846<br> |[0x8000010c]:RCRAS16 t0, t0, t0<br> [0x80000110]:sw t0, 0(s1)<br>      |
|   2|[0x80002214]<br>0xF7FD07FE|- rs1 : x29<br> - rs2 : x29<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -5<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -5<br>                                                                                                                                   |[0x80000124]:RCRAS16 t3, t4, t4<br> [0x80000128]:sw t3, 4(s1)<br>      |
|   3|[0x80002218]<br>0xFFF4001C|- rs1 : x31<br> - rs2 : x3<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == -65<br> - rs2_h0_val == -33<br>                                                                                                 |[0x8000013c]:RCRAS16 t5, t6, gp<br> [0x80000140]:sw t5, 8(s1)<br>      |
|   4|[0x8000221c]<br>0x4004F77F|- rs1 : x13<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -257<br>                                                                                                                                                         |[0x80000154]:RCRAS16 a6, a3, a6<br> [0x80000158]:sw a6, 12(s1)<br>     |
|   5|[0x80002220]<br>0x010000C0|- rs1 : x23<br> - rs2 : x12<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 128<br> - rs2_h0_val == 512<br> - rs1_h1_val == 0<br> - rs1_h0_val == 512<br>                                                                                                                                       |[0x80000168]:RCRAS16 s7, s7, a2<br> [0x8000016c]:sw s7, 16(s1)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x6<br> - rs2 : x8<br> - rd : x0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                        |[0x80000180]:RCRAS16 zero, t1, fp<br> [0x80000184]:sw zero, 20(s1)<br> |
|   7|[0x80002228]<br>0x01BF4AAB|- rs1 : x28<br> - rs2 : x22<br> - rd : x2<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -129<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                              |[0x80000194]:RCRAS16 sp, t3, s6<br> [0x80000198]:sw sp, 24(s1)<br>     |
|   8|[0x8000222c]<br>0x0300C001|- rs1 : x1<br> - rs2 : x7<br> - rd : x14<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 512<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                     |[0x800001ac]:RCRAS16 a4, ra, t2<br> [0x800001b0]:sw a4, 28(s1)<br>     |
|   9|[0x80002230]<br>0xFFE22020|- rs1 : x24<br> - rs2 : x13<br> - rd : x21<br> - rs2_h1_val == -16385<br> - rs1_h1_val == -65<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                          |[0x800001c4]:RCRAS16 s5, s8, a3<br> [0x800001c8]:sw s5, 32(s1)<br>     |
|  10|[0x80002234]<br>0xE0030FFF|- rs1 : x16<br> - rs2 : x25<br> - rd : x13<br> - rs2_h1_val == -8193<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                   |[0x800001dc]:RCRAS16 a3, a6, s9<br> [0x800001e0]:sw a3, 36(s1)<br>     |
|  11|[0x80002238]<br>0xFFFE0405|- rs1 : x25<br> - rs2 : x23<br> - rd : x19<br> - rs2_h1_val == -2049<br>                                                                                                                                                                                                                                                                          |[0x800001f4]:RCRAS16 s3, s9, s7<br> [0x800001f8]:sw s3, 40(s1)<br>     |
|  12|[0x8000223c]<br>0x000B0201|- rs1 : x4<br> - rs2 : x17<br> - rd : x25<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -9<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                             |[0x8000020c]:RCRAS16 s9, tp, a7<br> [0x80000210]:sw s9, 44(s1)<br>     |
|  13|[0x80002240]<br>0xFFEB1100|- rs1 : x7<br> - rs2 : x21<br> - rd : x26<br> - rs2_h1_val == -513<br> - rs1_h1_val == -33<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                           |[0x80000220]:RCRAS16 s10, t2, s5<br> [0x80000224]:sw s10, 48(s1)<br>   |
|  14|[0x80002244]<br>0x02100081|- rs1 : x22<br> - rs2 : x6<br> - rd : x12<br> - rs2_h1_val == -257<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                     |[0x80000238]:RCRAS16 a2, s6, t1<br> [0x8000023c]:sw a2, 52(s1)<br>     |
|  15|[0x80002248]<br>0x3FFFFFFC|- rs1 : x17<br> - rs2 : x0<br> - rd : x10<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                                                                                                                                                                                                         |[0x80000250]:RCRAS16 a0, a7, zero<br> [0x80000254]:sw a0, 56(s1)<br>   |
|  16|[0x8000224c]<br>0xFFF9FF90|- rs1 : x14<br> - rs2 : x11<br> - rd : x1<br> - rs2_h1_val == -33<br> - rs2_h0_val == -17<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                               |[0x80000268]:RCRAS16 ra, a4, a1<br> [0x8000026c]:sw ra, 60(s1)<br>     |
|  17|[0x80002250]<br>0x00840009|- rs1 : x18<br> - rs2 : x19<br> - rd : x17<br> - rs2_h1_val == -17<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                    |[0x80000280]:RCRAS16 a7, s2, s3<br> [0x80000284]:sw a7, 64(s1)<br>     |
|  18|[0x80002254]<br>0x3FBF0204|- rs1 : x2<br> - rs2 : x24<br> - rd : x9<br> - rs2_h1_val == -9<br> - rs2_h0_val == 32767<br> - rs1_h1_val == -129<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                   |[0x800002a0]:RCRAS16 s1, sp, s8<br> [0x800002a4]:sw s1, 0(t0)<br>      |
|  19|[0x80002258]<br>0x2AADFC02|- rs1 : x11<br> - rs2 : x4<br> - rd : x6<br> - rs2_h1_val == -5<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                     |[0x800002b8]:RCRAS16 t1, a1, tp<br> [0x800002bc]:sw t1, 4(t0)<br>      |
|  20|[0x8000225c]<br>0xFF9F0002|- rs1 : x8<br> - rs2 : x15<br> - rd : x27<br> - rs2_h1_val == -3<br> - rs2_h0_val == -257<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                              |[0x800002d0]:RCRAS16 s11, fp, a5<br> [0x800002d4]:sw s11, 8(t0)<br>    |
|  21|[0x80002260]<br>0x10000005|- rs1 : x26<br> - rs2 : x10<br> - rd : x15<br> - rs2_h1_val == -2<br> - rs2_h0_val == 1<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                              |[0x800002e8]:RCRAS16 a5, s10, a0<br> [0x800002ec]:sw a5, 12(t0)<br>    |
|  22|[0x80002264]<br>0x32AA6AAA|- rs1 : x19<br> - rs2 : x26<br> - rd : x8<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                       |[0x800002fc]:RCRAS16 fp, s3, s10<br> [0x80000300]:sw fp, 16(t0)<br>    |
|  23|[0x80002268]<br>0x0000E000|- rs1 : x0<br> - rs2 : x27<br> - rd : x24<br> - rs2_h1_val == 16384<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                     |[0x80000314]:RCRAS16 s8, zero, s11<br> [0x80000318]:sw s8, 20(t0)<br>  |
|  24|[0x8000226c]<br>0xFE00F000|- rs1 : x27<br> - rs2 : x30<br> - rd : x29<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 2<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 1<br>                                                                                                                                                             |[0x8000032c]:RCRAS16 t4, s11, t5<br> [0x80000330]:sw t4, 24(t0)<br>    |
|  25|[0x80002270]<br>0xFFE1F9FF|- rs1 : x20<br> - rs2 : x9<br> - rd : x22<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 4<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                            |[0x80000344]:RCRAS16 s6, s4, s1<br> [0x80000348]:sw s6, 28(t0)<br>     |
|  26|[0x80002274]<br>0xBFFEBE00|- rs1 : x21<br> - rs2 : x20<br> - rd : x4<br> - rs1_h0_val == -32768<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -32768<br> - rs1_h1_val == -3<br>                                                                                                                                                                                               |[0x80000354]:RCRAS16 tp, s5, s4<br> [0x80000358]:sw tp, 32(t0)<br>     |
|  27|[0x80002278]<br>0x0000FF04|- rs1 : x9<br> - rs2 : x31<br> - rd : x7<br> - rs2_h1_val == 512<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                       |[0x8000036c]:RCRAS16 t2, s1, t6<br> [0x80000370]:sw t2, 36(t0)<br>     |
|  28|[0x8000227c]<br>0xC4002A2A|- rs1 : x15<br> - rs2 : x1<br> - rd : x3<br> - rs2_h1_val == 256<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                     |[0x80000380]:RCRAS16 gp, a5, ra<br> [0x80000384]:sw gp, 40(t0)<br>     |
|  29|[0x80002280]<br>0xD5522A8A|- rs1 : x30<br> - rs2 : x28<br> - rd : x11<br> - rs2_h1_val == 64<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                  |[0x80000398]:RCRAS16 a1, t5, t3<br> [0x8000039c]:sw a1, 44(t0)<br>     |
|  30|[0x80002284]<br>0xFE1F1FEF|- rs1 : x10<br> - rs2 : x2<br> - rd : x18<br> - rs2_h1_val == 32<br> - rs2_h0_val == 64<br>                                                                                                                                                                                                                                                       |[0x800003b0]:RCRAS16 s2, a0, sp<br> [0x800003b4]:sw s2, 48(t0)<br>     |
|  31|[0x80002288]<br>0x1FF7FFFA|- rs1 : x12<br> - rs2 : x18<br> - rd : x20<br> - rs2_h1_val == 16<br> - rs1_h1_val == -17<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                               |[0x800003c8]:RCRAS16 s4, a2, s2<br> [0x800003cc]:sw s4, 52(t0)<br>     |
|  32|[0x8000228c]<br>0x1FFFFF01|- rs1 : x3<br> - rs2 : x14<br> - rd : x31<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                            |[0x800003e0]:RCRAS16 t6, gp, a4<br> [0x800003e4]:sw t6, 56(t0)<br>     |
|  33|[0x80002290]<br>0xD55DFFBE|- rs2_h1_val == 2<br> - rs1_h1_val == 16<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                             |[0x800003f8]:RCRAS16 t6, t5, t4<br> [0x800003fc]:sw t6, 60(t0)<br>     |
|  34|[0x80002294]<br>0x2100FFDE|- rs2_h0_val == 16384<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                 |[0x8000040c]:RCRAS16 t6, t5, t4<br> [0x80000410]:sw t6, 64(t0)<br>     |
|  35|[0x80002298]<br>0x003F1FEF|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                           |[0x80000424]:RCRAS16 t6, t5, t4<br> [0x80000428]:sw t6, 68(t0)<br>     |
|  36|[0x8000229c]<br>0xCD54001C|- rs2_h0_val == -4097<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                  |[0x8000043c]:RCRAS16 t6, t5, t4<br> [0x80000440]:sw t6, 72(t0)<br>     |
|  37|[0x800022a0]<br>0xFC00FFFE|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                         |[0x80000454]:RCRAS16 t6, t5, t4<br> [0x80000458]:sw t6, 76(t0)<br>     |
|  38|[0x800022a4]<br>0x10200FFF|- rs2_h0_val == 8192<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                   |[0x80000468]:RCRAS16 t6, t5, t4<br> [0x8000046c]:sw t6, 80(t0)<br>     |
|  39|[0x800022a8]<br>0x01FD32AB|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                          |[0x8000047c]:RCRAS16 t6, t5, t4<br> [0x80000480]:sw t6, 84(t0)<br>     |
|  40|[0x800022ac]<br>0x02400000|- rs2_h0_val == 128<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                  |[0x80000494]:RCRAS16 t6, t5, t4<br> [0x80000498]:sw t6, 88(t0)<br>     |
|  41|[0x800022b0]<br>0x07FD0081|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                           |[0x800004a8]:RCRAS16 t6, t5, t4<br> [0x800004ac]:sw t6, 92(t0)<br>     |
|  42|[0x800022b4]<br>0xBFF70041|- rs1_h1_val == -32768<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                |[0x800004c0]:RCRAS16 t6, t5, t4<br> [0x800004c4]:sw t6, 96(t0)<br>     |
|  43|[0x800022b8]<br>0x0013F808|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                            |[0x800004d8]:RCRAS16 t6, t5, t4<br> [0x800004dc]:sw t6, 100(t0)<br>    |
|  44|[0x800022bc]<br>0x0041FFFC|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                             |[0x800004f0]:RCRAS16 t6, t5, t4<br> [0x800004f4]:sw t6, 104(t0)<br>    |
|  45|[0x800022c4]<br>0xF007FFFF|- rs2_h0_val == 16<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                           |[0x80000518]:RCRAS16 t6, t5, t4<br> [0x8000051c]:sw t6, 112(t0)<br>    |
|  46|[0x800022c8]<br>0x3FFD0000|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                             |[0x80000530]:RCRAS16 t6, t5, t4<br> [0x80000534]:sw t6, 116(t0)<br>    |
|  47|[0x800022cc]<br>0xFFF8FFFA|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                             |[0x80000548]:RCRAS16 t6, t5, t4<br> [0x8000054c]:sw t6, 120(t0)<br>    |
|  48|[0x800022d0]<br>0xFFFF0001|- rs2_h1_val == 1<br> - rs2_h0_val == -2<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                |[0x80000560]:RCRAS16 t6, t5, t4<br> [0x80000564]:sw t6, 124(t0)<br>    |
|  49|[0x800022d4]<br>0x01FEFFE4|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                            |[0x80000578]:RCRAS16 t6, t5, t4<br> [0x8000057c]:sw t6, 128(t0)<br>    |
|  50|[0x800022d8]<br>0x2EAA0040|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                          |[0x80000590]:RCRAS16 t6, t5, t4<br> [0x80000594]:sw t6, 132(t0)<br>    |
|  51|[0x800022dc]<br>0x0084F004|- rs2_h0_val == 256<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                 |[0x800005a8]:RCRAS16 t6, t5, t4<br> [0x800005ac]:sw t6, 136(t0)<br>    |
|  52|[0x800022e0]<br>0x0000FFF8|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                             |[0x800005c0]:RCRAS16 t6, t5, t4<br> [0x800005c4]:sw t6, 140(t0)<br>    |
|  53|[0x800022e4]<br>0xEFFF3FFB|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                         |[0x800005d4]:RCRAS16 t6, t5, t4<br> [0x800005d8]:sw t6, 144(t0)<br>    |
|  54|[0x800022e8]<br>0xFFFEF7DF|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                            |[0x800005ec]:RCRAS16 t6, t5, t4<br> [0x800005f0]:sw t6, 148(t0)<br>    |
|  55|[0x800022ec]<br>0xDFEF4003|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                        |[0x80000604]:RCRAS16 t6, t5, t4<br> [0x80000608]:sw t6, 152(t0)<br>    |
|  56|[0x800022f0]<br>0xEDFF2000|- rs2_h1_val == -1<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                  |[0x80000614]:RCRAS16 t6, t5, t4<br> [0x80000618]:sw t6, 156(t0)<br>    |
|  57|[0x800022f4]<br>0xFEFEE002|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                          |[0x8000062c]:RCRAS16 t6, t5, t4<br> [0x80000630]:sw t6, 160(t0)<br>    |
|  58|[0x800022f8]<br>0xFF7EFF6F|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                          |[0x80000644]:RCRAS16 t6, t5, t4<br> [0x80000648]:sw t6, 164(t0)<br>    |
|  59|[0x80002300]<br>0xFFFEC000|- rs1_h1_val == -9<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                 |[0x80000674]:RCRAS16 t6, t5, t4<br> [0x80000678]:sw t6, 172(t0)<br>    |
|  60|[0x80002304]<br>0x1FFDC001|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                            |[0x80000688]:RCRAS16 t6, t5, t4<br> [0x8000068c]:sw t6, 176(t0)<br>    |
|  61|[0x80002308]<br>0xFFFF03FD|- rs2_h0_val == -16385<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                              |[0x800006a0]:RCRAS16 t6, t5, t4<br> [0x800006a4]:sw t6, 180(t0)<br>    |
|  62|[0x8000230c]<br>0xDD553FFE|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                          |[0x800006b8]:RCRAS16 t6, t5, t4<br> [0x800006bc]:sw t6, 184(t0)<br>    |
|  63|[0x80002310]<br>0x003C2004|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                           |[0x800006d0]:RCRAS16 t6, t5, t4<br> [0x800006d4]:sw t6, 188(t0)<br>    |
|  64|[0x80002314]<br>0x4AAAFF5F|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                         |[0x800006e8]:RCRAS16 t6, t5, t4<br> [0x800006ec]:sw t6, 192(t0)<br>    |
|  65|[0x80002318]<br>0x0001FFF1|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                             |[0x80000700]:RCRAS16 t6, t5, t4<br> [0x80000704]:sw t6, 196(t0)<br>    |
|  66|[0x8000231c]<br>0xF00F01FC|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                         |[0x80000718]:RCRAS16 t6, t5, t4<br> [0x8000071c]:sw t6, 200(t0)<br>    |
|  67|[0x80002320]<br>0xF000FFFE|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                             |[0x80000730]:RCRAS16 t6, t5, t4<br> [0x80000734]:sw t6, 204(t0)<br>    |
|  68|[0x80002324]<br>0xFFFC0002|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                            |[0x80000744]:RCRAS16 t6, t5, t4<br> [0x80000748]:sw t6, 208(t0)<br>    |
|  69|[0x80002328]<br>0xFDFFD755|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                          |[0x8000075c]:RCRAS16 t6, t5, t4<br> [0x80000760]:sw t6, 212(t0)<br>    |
|  70|[0x8000232c]<br>0xFFDFD7FF|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                           |[0x80000774]:RCRAS16 t6, t5, t4<br> [0x80000778]:sw t6, 216(t0)<br>    |
|  71|[0x80002330]<br>0xDBFFDFC0|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                         |[0x8000078c]:RCRAS16 t6, t5, t4<br> [0x80000790]:sw t6, 220(t0)<br>    |
|  72|[0x80002338]<br>0xF7FD07F8|- rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                           |[0x800007b8]:RCRAS16 t6, t5, t4<br> [0x800007bc]:sw t6, 228(t0)<br>    |
|  73|[0x80002340]<br>0x4000003C|- rs2_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                          |[0x800007e8]:RCRAS16 t6, t5, t4<br> [0x800007ec]:sw t6, 236(t0)<br>    |
|  74|[0x80002344]<br>0x2AABD7FF|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                         |[0x80000800]:RCRAS16 t6, t5, t4<br> [0x80000804]:sw t6, 240(t0)<br>    |
