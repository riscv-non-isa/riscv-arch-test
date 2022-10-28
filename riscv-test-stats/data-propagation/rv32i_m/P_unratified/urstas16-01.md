
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000840')]      |
| SIG_REGION                | [('0x80002210', '0x80002350', '80 words')]      |
| COV_LABELS                | urstas16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/urstas16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 80      |
| STAT1                     | 75      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000534]:URSTAS16 t6, t5, t4
      [0x80000538]:sw t6, 108(ra)
 -- Signature Address: 0x800022c8 Data: 0x10000002
 -- Redundant Coverpoints hit by the op
      - opcode : urstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 4
      - rs1_h1_val == 8192
      - rs1_h0_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000620]:URSTAS16 t6, t5, t4
      [0x80000624]:sw t6, 148(ra)
 -- Signature Address: 0x800022f0 Data: 0x000777FF
 -- Redundant Coverpoints hit by the op
      - opcode : urstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h1_val == 1
      - rs2_h0_val == 0
      - rs1_h0_val == 61439




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000724]:URSTAS16 t6, t5, t4
      [0x80000728]:sw t6, 192(ra)
 -- Signature Address: 0x8000231c Data: 0x0007FFC4
 -- Redundant Coverpoints hit by the op
      - opcode : urstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h0_val == 128
      - rs1_h1_val == 0
      - rs1_h0_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:URSTAS16 t6, t5, t4
      [0x80000810]:sw t6, 232(ra)
 -- Signature Address: 0x80002344 Data: 0xEFFFFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : urstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 61439
      - rs1_h1_val == 61439




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000824]:URSTAS16 t6, t5, t4
      [0x80000828]:sw t6, 236(ra)
 -- Signature Address: 0x80002348 Data: 0x2AB2A009
 -- Redundant Coverpoints hit by the op
      - opcode : urstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 21845
      - rs2_h0_val == 49151






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

|s.no|        signature         |                                                                                                                                      coverpoints                                                                                                                                       |                                   code                                   |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000F0000|- opcode : urstas16<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 128<br> - rs1_h0_val == 128<br> |[0x8000010c]:URSTAS16 s11, s11, s11<br> [0x80000110]:sw s11, 0(t1)<br>    |
|   2|[0x80002214]<br>0xEFFF0000|- rs1 : x15<br> - rs2 : x15<br> - rd : x9<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 61439<br> - rs1_h1_val == 61439<br>                                                                                                                                                                |[0x80000124]:URSTAS16 s1, a5, a5<br> [0x80000128]:sw s1, 4(t1)<br>        |
|   3|[0x80002218]<br>0x8FFF0000|- rs1 : x1<br> - rs2 : x12<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 65534<br>                                                                     |[0x8000013c]:URSTAS16 a4, ra, a2<br> [0x80000140]:sw a4, 8(t1)<br>        |
|   4|[0x8000221c]<br>0xCD54FF84|- rs1 : x19<br> - rs2 : x18<br> - rd : x18<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 65527<br> - rs1_h0_val == 65279<br>                                                                |[0x80000154]:URSTAS16 s2, s3, s2<br> [0x80000158]:sw s2, 12(t1)<br>       |
|   5|[0x80002220]<br>0x00000000|- rs1 : x0<br> - rs2 : x10<br> - rd : x0<br> - rs1 == rd != rs2<br> - rs1_h0_val == 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 49151<br> - rs1_h1_val == 0<br>                                                                                                                     |[0x8000016c]:URSTAS16 zero, zero, a0<br> [0x80000170]:sw zero, 16(t1)<br> |
|   6|[0x80002224]<br>0x400F8809|- rs1 : x14<br> - rs2 : x3<br> - rd : x28<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 61439<br> - rs1_h1_val == 32<br>                                                                                                                                                                |[0x80000184]:URSTAS16 t3, a4, gp<br> [0x80000188]:sw t3, 20(t1)<br>       |
|   7|[0x80002228]<br>0xDBFF1FFA|- rs1 : x23<br> - rs2 : x4<br> - rd : x10<br> - rs2_h1_val == 49151<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 16384<br>                                                                                                                                                             |[0x80000198]:URSTAS16 a0, s7, tp<br> [0x8000019c]:sw a0, 24(t1)<br>       |
|   8|[0x8000222c]<br>0x7006FFFE|- rs1 : x4<br> - rs2 : x29<br> - rd : x3<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 4<br> - rs1_h0_val == 1<br>                                                                                                                                                                      |[0x800001b0]:URSTAS16 gp, tp, t4<br> [0x800001b4]:sw gp, 28(t1)<br>       |
|   9|[0x80002230]<br>0xBBFFFA00|- rs1 : x26<br> - rs2 : x11<br> - rd : x20<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 32768<br> - rs1_h0_val == 1024<br>                                                                                                                                    |[0x800001c4]:URSTAS16 s4, s10, a1<br> [0x800001c8]:sw s4, 32(t1)<br>      |
|  10|[0x80002234]<br>0xFDEFFF81|- rs1 : x10<br> - rs2 : x1<br> - rd : x5<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 256<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 2<br>                                                                                                                                          |[0x800001dc]:URSTAS16 t0, a0, ra<br> [0x800001e0]:sw t0, 36(t1)<br>       |
|  11|[0x80002238]<br>0x7F005545|- rs1 : x21<br> - rs2 : x22<br> - rd : x19<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 2<br> - rs1_h0_val == 65503<br>                                                                                                                                      |[0x800001f4]:URSTAS16 s3, s5, s6<br> [0x800001f8]:sw s3, 40(t1)<br>       |
|  12|[0x8000223c]<br>0xFF7EF001|- rs1 : x24<br> - rs2 : x23<br> - rd : x21<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 65533<br>                                                                                                                                                             |[0x80000208]:URSTAS16 s5, s8, s7<br> [0x8000020c]:sw s5, 44(t1)<br>       |
|  13|[0x80002240]<br>0x7FC33FEF|- rs1 : x16<br> - rs2 : x9<br> - rd : x12<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 32768<br> - rs1_h1_val == 8<br>                                                                                                                                                                 |[0x8000021c]:URSTAS16 a2, a6, s1<br> [0x80000220]:sw a2, 48(t1)<br>       |
|  14|[0x80002244]<br>0xFDDFE555|- rs1 : x30<br> - rs2 : x2<br> - rd : x22<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 57343<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 43690<br>                                                                                                                                   |[0x80000234]:URSTAS16 s6, t5, sp<br> [0x80000238]:sw s6, 52(t1)<br>       |
|  15|[0x80002248]<br>0xDFEF0001|- rs1 : x13<br> - rs2 : x24<br> - rd : x11<br> - rs2_h1_val == 65503<br> - rs1_h1_val == 49151<br>                                                                                                                                                                                      |[0x8000024c]:URSTAS16 a1, a3, s8<br> [0x80000250]:sw a1, 56(t1)<br>       |
|  16|[0x8000224c]<br>0x40000800|- rs1 : x20<br> - rs2 : x0<br> - rd : x17<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 4096<br>                                                                                                                                                                      |[0x80000260]:URSTAS16 a7, s4, zero<br> [0x80000264]:sw a7, 60(t1)<br>     |
|  17|[0x80002250]<br>0xFFBBF810|- rs1 : x22<br> - rs2 : x30<br> - rd : x1<br> - rs2_h1_val == 65527<br> - rs1_h1_val == 65407<br> - rs1_h0_val == 32<br>                                                                                                                                                                |[0x80000274]:URSTAS16 ra, s6, t5<br> [0x80000278]:sw ra, 64(t1)<br>       |
|  18|[0x80002254]<br>0xFFF98404|- rs1 : x3<br> - rs2 : x16<br> - rd : x2<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 63487<br> - rs1_h1_val == 65527<br>                                                                                                                                                              |[0x8000028c]:URSTAS16 sp, gp, a6<br> [0x80000290]:sw sp, 68(t1)<br>       |
|  19|[0x80002258]<br>0x83FE07F7|- rs1 : x5<br> - rs2 : x31<br> - rd : x8<br> - rs2_h1_val == 65533<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                         |[0x800002a0]:URSTAS16 fp, t0, t6<br> [0x800002a4]:sw fp, 72(t1)<br>       |
|  20|[0x8000225c]<br>0x7FFF8004|- rs1 : x31<br> - rs2 : x8<br> - rd : x15<br> - rs2_h1_val == 65534<br> - rs1_h1_val == 1<br>                                                                                                                                                                                           |[0x800002bc]:URSTAS16 a5, t6, fp<br> [0x800002c0]:sw a5, 0(ra)<br>        |
|  21|[0x80002260]<br>0x40020003|- rs1 : x25<br> - rs2 : x13<br> - rd : x30<br> - rs2_h1_val == 32768<br>                                                                                                                                                                                                                |[0x800002d4]:URSTAS16 t5, s9, a3<br> [0x800002d8]:sw t5, 4(ra)<br>        |
|  22|[0x80002264]<br>0x2002E000|- rs1 : x9<br> - rs2 : x28<br> - rd : x13<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 4<br>                                                                                                                                                                 |[0x800002e8]:URSTAS16 a3, s1, t3<br> [0x800002ec]:sw a3, 8(ra)<br>        |
|  23|[0x80002268]<br>0x08408006|- rs1 : x2<br> - rs2 : x7<br> - rd : x29<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 128<br>                                                                                                                                                                 |[0x80000300]:URSTAS16 t4, sp, t2<br> [0x80000304]:sw t4, 12(ra)<br>       |
|  24|[0x8000226c]<br>0x83FDF801|- rs1 : x29<br> - rs2 : x19<br> - rd : x7<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 65533<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 61439<br>                                                                                                                                    |[0x80000318]:URSTAS16 t2, t4, s3<br> [0x8000031c]:sw t2, 16(ra)<br>       |
|  25|[0x80002270]<br>0x0204003E|- rs1 : x8<br> - rs2 : x5<br> - rd : x23<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 65407<br> - rs1_h0_val == 65531<br>                                                                                                                                                               |[0x80000330]:URSTAS16 s7, fp, t0<br> [0x80000334]:sw s7, 20(ra)<br>       |
|  26|[0x80002274]<br>0x0101FFFE|- rs1 : x11<br> - rs2 : x6<br> - rd : x4<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                    |[0x80000348]:URSTAS16 tp, a1, t1<br> [0x8000034c]:sw tp, 24(ra)<br>       |
|  27|[0x80002278]<br>0x807F8023|- rs1 : x17<br> - rs2 : x25<br> - rd : x31<br> - rs2_h1_val == 256<br> - rs2_h0_val == 65471<br>                                                                                                                                                                                        |[0x80000360]:URSTAS16 t6, a7, s9<br> [0x80000364]:sw t6, 28(ra)<br>       |
|  28|[0x8000227c]<br>0x0048FFFD|- rs1 : x7<br> - rs2 : x26<br> - rd : x24<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                   |[0x80000378]:URSTAS16 s8, t2, s10<br> [0x8000037c]:sw s8, 32(ra)<br>      |
|  29|[0x80002280]<br>0x701F00FE|- rs1 : x6<br> - rs2 : x17<br> - rd : x26<br> - rs2_h1_val == 64<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 512<br>                                                                                                                                                                  |[0x80000390]:URSTAS16 s10, t1, a7<br> [0x80000394]:sw s10, 36(ra)<br>     |
|  30|[0x80002284]<br>0x00208420|- rs1 : x18<br> - rs2 : x14<br> - rd : x6<br> - rs2_h1_val == 32<br> - rs1_h0_val == 64<br>                                                                                                                                                                                             |[0x800003a8]:URSTAS16 t1, s2, a4<br> [0x800003ac]:sw t1, 40(ra)<br>       |
|  31|[0x80002288]<br>0x0009800C|- rs1 : x12<br> - rs2 : x20<br> - rd : x16<br> - rs2_h1_val == 16<br> - rs2_h0_val == 65531<br>                                                                                                                                                                                         |[0x800003c0]:URSTAS16 a6, a2, s4<br> [0x800003c4]:sw a6, 44(ra)<br>       |
|  32|[0x8000228c]<br>0x7FE70FFF|- rs1 : x28<br> - rs2 : x21<br> - rd : x25<br> - rs1_h1_val == 65471<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                      |[0x800003d8]:URSTAS16 s9, t3, s5<br> [0x800003dc]:sw s9, 48(ra)<br>       |
|  33|[0x80002290]<br>0x10027FDF|- rs2_h0_val == 64<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                               |[0x800003f0]:URSTAS16 t6, t5, t4<br> [0x800003f4]:sw t6, 52(ra)<br>       |
|  34|[0x80002294]<br>0x7EFF3E00|- rs2_h0_val == 1024<br> - rs1_h1_val == 512<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                              |[0x80000404]:URSTAS16 t6, t5, t4<br> [0x80000408]:sw t6, 56(ra)<br>       |
|  35|[0x80002298]<br>0xFF7E0FFC|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                |[0x80000418]:URSTAS16 t6, t5, t4<br> [0x8000041c]:sw t6, 60(ra)<br>       |
|  36|[0x8000229c]<br>0x000D8402|- rs2_h1_val == 8<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                          |[0x80000430]:URSTAS16 t6, t5, t4<br> [0x80000434]:sw t6, 64(ra)<br>       |
|  37|[0x800022a0]<br>0x80028088|- rs2_h0_val == 65519<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                       |[0x80000448]:URSTAS16 t6, t5, t4<br> [0x8000044c]:sw t6, 68(ra)<br>       |
|  38|[0x800022a4]<br>0x8006003C|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                   |[0x80000460]:URSTAS16 t6, t5, t4<br> [0x80000464]:sw t6, 72(ra)<br>       |
|  39|[0x800022a8]<br>0x8002FFFF|- rs1_h1_val == 65535<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                        |[0x80000478]:URSTAS16 t6, t5, t4<br> [0x8000047c]:sw t6, 76(ra)<br>       |
|  40|[0x800022ac]<br>0xD550FFFE|- rs1_h1_val == 43690<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                         |[0x80000490]:URSTAS16 t6, t5, t4<br> [0x80000494]:sw t6, 80(ra)<br>       |
|  41|[0x800022b0]<br>0x04028004|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                   |[0x800004a8]:URSTAS16 t6, t5, t4<br> [0x800004ac]:sw t6, 84(ra)<br>       |
|  42|[0x800022b4]<br>0x00087FFC|- rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                               |[0x800004c0]:URSTAS16 t6, t5, t4<br> [0x800004c4]:sw t6, 88(ra)<br>       |
|  43|[0x800022b8]<br>0x00043FFC|- rs2_h1_val == 4<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                         |[0x800004d8]:URSTAS16 t6, t5, t4<br> [0x800004dc]:sw t6, 92(ra)<br>       |
|  44|[0x800022bc]<br>0x0101000C|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                   |[0x800004f0]:URSTAS16 t6, t5, t4<br> [0x800004f4]:sw t6, 96(ra)<br>       |
|  45|[0x800022c0]<br>0x200003FF|- rs2_h1_val == 1<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                         |[0x80000508]:URSTAS16 t6, t5, t4<br> [0x8000050c]:sw t6, 100(ra)<br>      |
|  46|[0x800022c4]<br>0x800F0FF0|- rs2_h1_val == 65535<br>                                                                                                                                                                                                                                                               |[0x80000520]:URSTAS16 t6, t5, t4<br> [0x80000524]:sw t6, 104(ra)<br>      |
|  47|[0x800022cc]<br>0x0408AAB4|- rs2_h0_val == 43690<br>                                                                                                                                                                                                                                                               |[0x8000054c]:URSTAS16 t6, t5, t4<br> [0x80000550]:sw t6, 112(ra)<br>      |
|  48|[0x800022d0]<br>0x7C05C100|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                               |[0x80000564]:URSTAS16 t6, t5, t4<br> [0x80000568]:sw t6, 116(ra)<br>      |
|  49|[0x800022d4]<br>0x7FF38205|- rs2_h0_val == 64511<br>                                                                                                                                                                                                                                                               |[0x8000057c]:URSTAS16 t6, t5, t4<br> [0x80000580]:sw t6, 120(ra)<br>      |
|  50|[0x800022d8]<br>0xEFFBFF07|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                 |[0x80000594]:URSTAS16 t6, t5, t4<br> [0x80000598]:sw t6, 124(ra)<br>      |
|  51|[0x800022dc]<br>0x7FE503F0|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                  |[0x800005ac]:URSTAS16 t6, t5, t4<br> [0x800005b0]:sw t6, 128(ra)<br>      |
|  52|[0x800022e0]<br>0x800201F8|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                  |[0x800005c4]:URSTAS16 t6, t5, t4<br> [0x800005c8]:sw t6, 132(ra)<br>      |
|  53|[0x800022e4]<br>0x000C0006|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                   |[0x800005dc]:URSTAS16 t6, t5, t4<br> [0x800005e0]:sw t6, 136(ra)<br>      |
|  54|[0x800022e8]<br>0x000E0001|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                   |[0x800005f4]:URSTAS16 t6, t5, t4<br> [0x800005f8]:sw t6, 140(ra)<br>      |
|  55|[0x800022ec]<br>0x1003FFE0|- rs2_h0_val == 65535<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                     |[0x8000060c]:URSTAS16 t6, t5, t4<br> [0x80000610]:sw t6, 144(ra)<br>      |
|  56|[0x800022f4]<br>0xA8AA9002|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                               |[0x80000638]:URSTAS16 t6, t5, t4<br> [0x8000063c]:sw t6, 152(ra)<br>      |
|  57|[0x800022f8]<br>0x40019400|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                               |[0x80000650]:URSTAS16 t6, t5, t4<br> [0x80000654]:sw t6, 156(ra)<br>      |
|  58|[0x800022fc]<br>0x9EFFF000|- rs1_h1_val == 65023<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                     |[0x80000668]:URSTAS16 t6, t5, t4<br> [0x8000066c]:sw t6, 160(ra)<br>      |
|  59|[0x80002300]<br>0x7F870002|- rs1_h1_val == 65279<br>                                                                                                                                                                                                                                                               |[0x80000680]:URSTAS16 t6, t5, t4<br> [0x80000684]:sw t6, 164(ra)<br>      |
|  60|[0x80002304]<br>0xD54C0001|- rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                               |[0x80000698]:URSTAS16 t6, t5, t4<br> [0x8000069c]:sw t6, 168(ra)<br>      |
|  61|[0x80002308]<br>0x08060004|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                |[0x800006b0]:URSTAS16 t6, t5, t4<br> [0x800006b4]:sw t6, 172(ra)<br>      |
|  62|[0x8000230c]<br>0x2CAAFC02|- rs2_h0_val == 2048<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                       |[0x800006c8]:URSTAS16 t6, t5, t4<br> [0x800006cc]:sw t6, 176(ra)<br>      |
|  63|[0x80002310]<br>0x807FFF80|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                 |[0x800006e0]:URSTAS16 t6, t5, t4<br> [0x800006e4]:sw t6, 180(ra)<br>      |
|  64|[0x80002314]<br>0x00257F3F|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                  |[0x800006f8]:URSTAS16 t6, t5, t4<br> [0x800006fc]:sw t6, 184(ra)<br>      |
|  65|[0x80002318]<br>0x60070008|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                  |[0x80000710]:URSTAS16 t6, t5, t4<br> [0x80000714]:sw t6, 188(ra)<br>      |
|  66|[0x80002320]<br>0xFFFD8082|- rs2_h0_val == 65279<br>                                                                                                                                                                                                                                                               |[0x8000073c]:URSTAS16 t6, t5, t4<br> [0x80000740]:sw t6, 196(ra)<br>      |
|  67|[0x80002324]<br>0x7C0026AA|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                               |[0x80000754]:URSTAS16 t6, t5, t4<br> [0x80000758]:sw t6, 200(ra)<br>      |
|  68|[0x80002328]<br>0x7FC25FFA|- rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                               |[0x8000076c]:URSTAS16 t6, t5, t4<br> [0x80000770]:sw t6, 204(ra)<br>      |
|  69|[0x8000232c]<br>0x97FFFE10|- rs2_h0_val == 65503<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                                                     |[0x80000784]:URSTAS16 t6, t5, t4<br> [0x80000788]:sw t6, 208(ra)<br>      |
|  70|[0x80002330]<br>0x7FFC7BEF|- rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                               |[0x8000079c]:URSTAS16 t6, t5, t4<br> [0x800007a0]:sw t6, 212(ra)<br>      |
|  71|[0x80002334]<br>0x70097CFF|- rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                               |[0x800007b4]:URSTAS16 t6, t5, t4<br> [0x800007b8]:sw t6, 216(ra)<br>      |
|  72|[0x80002338]<br>0x40025FBF|- rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                               |[0x800007c8]:URSTAS16 t6, t5, t4<br> [0x800007cc]:sw t6, 220(ra)<br>      |
|  73|[0x8000233c]<br>0x83FF7BF7|- rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                               |[0x800007e0]:URSTAS16 t6, t5, t4<br> [0x800007e4]:sw t6, 224(ra)<br>      |
|  74|[0x80002340]<br>0x7FFB7FF4|- rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                               |[0x800007f4]:URSTAS16 t6, t5, t4<br> [0x800007f8]:sw t6, 228(ra)<br>      |
|  75|[0x8000234c]<br>0xBFF78900|- rs2_h1_val == 65519<br> - rs2_h0_val == 65023<br>                                                                                                                                                                                                                                     |[0x80000838]:URSTAS16 t6, t5, t4<br> [0x8000083c]:sw t6, 240(ra)<br>      |
