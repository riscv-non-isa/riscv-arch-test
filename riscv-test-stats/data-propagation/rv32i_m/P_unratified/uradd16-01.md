
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000800')]      |
| SIG_REGION                | [('0x80002210', '0x80002350', '80 words')]      |
| COV_LABELS                | uradd16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uradd16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 77      |
| STAT1                     | 72      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f0]:URADD16 t6, t5, t4
      [0x800004f4]:sw t6, 52(ra)
 -- Signature Address: 0x800022bc Data: 0x7DFF0206
 -- Redundant Coverpoints hit by the op
      - opcode : uradd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs1_h1_val == 64511
      - rs1_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006f8]:URADD16 t6, t5, t4
      [0x800006fc]:sw t6, 140(ra)
 -- Signature Address: 0x80002314 Data: 0x00017DFF
 -- Redundant Coverpoints hit by the op
      - opcode : uradd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0
      - rs2_h0_val == 64511
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000710]:URADD16 t6, t5, t4
      [0x80000714]:sw t6, 144(ra)
 -- Signature Address: 0x80002318 Data: 0x8FFF7FFF
 -- Redundant Coverpoints hit by the op
      - opcode : uradd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 16384
      - rs2_h0_val == 43690
      - rs1_h1_val == 57343
      - rs1_h0_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c8]:URADD16 t6, t5, t4
      [0x800007cc]:sw t6, 176(ra)
 -- Signature Address: 0x80002338 Data: 0x000A2AAA
 -- Redundant Coverpoints hit by the op
      - opcode : uradd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h1_val == 16
      - rs2_h0_val == 21845
      - rs1_h1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f0]:URADD16 t6, t5, t4
      [0x800007f4]:sw t6, 184(ra)
 -- Signature Address: 0x80002340 Data: 0x0042BBFF
 -- Redundant Coverpoints hit by the op
      - opcode : uradd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 128
      - rs2_h0_val == 32768
      - rs1_h0_val == 63487






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

|s.no|        signature         |                                                                                                                                                               coverpoints                                                                                                                                                               |                                 code                                  |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00105555|- opcode : uradd16<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 16<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 16<br> - rs1_h0_val == 21845<br> |[0x8000010c]:URADD16 t3, t3, t3<br> [0x80000110]:sw t3, 0(sp)<br>      |
|   2|[0x80002214]<br>0xFFFEAAAA|- rs1 : x13<br> - rs2 : x13<br> - rd : x11<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 43690<br> - rs1_h1_val == 65534<br> - rs1_h0_val == 43690<br>                                                                                                                                                            |[0x80000124]:URADD16 a1, a3, a3<br> [0x80000128]:sw a1, 4(sp)<br>      |
|   3|[0x80002218]<br>0x04060007|- rs1 : x29<br> - rs2 : x22<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h1_val == 2048<br>                                                                                                                                               |[0x8000013c]:URADD16 a0, t4, s6<br> [0x80000140]:sw a0, 8(sp)<br>      |
|   4|[0x8000221c]<br>0x555A0022|- rs1 : x12<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs1_h0_val == 64<br>                                                                                                                                              |[0x80000154]:URADD16 s11, a2, s11<br> [0x80000158]:sw s11, 12(sp)<br>  |
|   5|[0x80002220]<br>0x2BAAFF7F|- rs1 : x20<br> - rs2 : x31<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 65535<br> - rs1_h1_val == 512<br> - rs1_h0_val == 65279<br>                                                                                                                                                              |[0x8000016c]:URADD16 s4, s4, t6<br> [0x80000170]:sw s4, 16(sp)<br>     |
|   6|[0x80002224]<br>0x40080080|- rs1 : x1<br> - rs2 : x14<br> - rd : x17<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 0<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                    |[0x80000180]:URADD16 a7, ra, a4<br> [0x80000184]:sw a7, 20(sp)<br>     |
|   7|[0x80002228]<br>0xDDFFEFFE|- rs1 : x11<br> - rs2 : x20<br> - rd : x5<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                    |[0x80000198]:URADD16 t0, a1, s4<br> [0x8000019c]:sw t0, 24(sp)<br>     |
|   8|[0x8000222c]<br>0x7009800E|- rs1 : x19<br> - rs2 : x3<br> - rd : x14<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 32<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                 |[0x800001b0]:URADD16 a4, s3, gp<br> [0x800001b4]:sw a4, 28(sp)<br>     |
|   9|[0x80002230]<br>0x77FF2000|- rs1 : x0<br> - rs2 : x6<br> - rd : x24<br> - rs1_h0_val == 0<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 0<br>                                                                                                                                                                                             |[0x800001c4]:URADD16 s8, zero, t1<br> [0x800001c8]:sw s8, 32(sp)<br>   |
|  10|[0x80002234]<br>0x7C057FFD|- rs1 : x24<br> - rs2 : x9<br> - rd : x6<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 65531<br>                                                                                                                                                                                                                                         |[0x800001d8]:URADD16 t1, s8, s1<br> [0x800001dc]:sw t1, 36(sp)<br>     |
|  11|[0x80002238]<br>0xF9FF7FFE|- rs1 : x22<br> - rs2 : x11<br> - rd : x12<br> - rs2_h1_val == 64511<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                 |[0x800001f0]:URADD16 a2, s6, a1<br> [0x800001f4]:sw a2, 40(sp)<br>     |
|  12|[0x8000223c]<br>0x7F050007|- rs1 : x21<br> - rs2 : x30<br> - rd : x23<br> - rs2_h1_val == 65023<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                           |[0x80000208]:URADD16 s7, s5, t5<br> [0x8000020c]:sw s7, 44(sp)<br>     |
|  13|[0x80002240]<br>0xFEFF6FFF|- rs1 : x9<br> - rs2 : x26<br> - rd : x18<br> - rs2_h1_val == 65279<br> - rs1_h1_val == 65279<br>                                                                                                                                                                                                                                        |[0x8000021c]:URADD16 s2, s1, s10<br> [0x80000220]:sw s2, 48(sp)<br>    |
|  14|[0x80002244]<br>0x7FBF0020|- rs1 : x18<br> - rs2 : x0<br> - rd : x3<br> - rs2_h1_val == 0<br> - rs1_h1_val == 65407<br>                                                                                                                                                                                                                                             |[0x80000234]:URADD16 gp, s2, zero<br> [0x80000238]:sw gp, 52(sp)<br>   |
|  15|[0x80002248]<br>0x805FFEFF|- rs1 : x10<br> - rs2 : x19<br> - rd : x15<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 65023<br> - rs1_h1_val == 256<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                     |[0x8000024c]:URADD16 a5, a0, s3<br> [0x80000250]:sw a5, 56(sp)<br>     |
|  16|[0x8000224c]<br>0x7FF2FFBD|- rs1 : x17<br> - rs2 : x29<br> - rd : x30<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 65407<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                                             |[0x80000264]:URADD16 t5, a7, t4<br> [0x80000268]:sw t5, 60(sp)<br>     |
|  17|[0x80002250]<br>0x80178007|- rs1 : x16<br> - rs2 : x21<br> - rd : x25<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 65533<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                |[0x8000027c]:URADD16 s9, a6, s5<br> [0x80000280]:sw s9, 64(sp)<br>     |
|  18|[0x80002254]<br>0x8002555B|- rs1 : x27<br> - rs2 : x23<br> - rd : x26<br> - rs2_h1_val == 65527<br>                                                                                                                                                                                                                                                                 |[0x8000029c]:URADD16 s10, s11, s7<br> [0x800002a0]:sw s10, 0(a1)<br>   |
|  19|[0x80002258]<br>0x801D7FE2|- rs1 : x25<br> - rs2 : x17<br> - rd : x16<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 65471<br>                                                                                                                                                                                                                                       |[0x800002b4]:URADD16 a6, s9, a7<br> [0x800002b8]:sw a6, 4(a1)<br>      |
|  20|[0x8000225c]<br>0xFFEE000B|- rs1 : x8<br> - rs2 : x5<br> - rd : x19<br> - rs2_h1_val == 65533<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                  |[0x800002cc]:URADD16 s3, fp, t0<br> [0x800002d0]:sw s3, 8(a1)<br>      |
|  21|[0x80002260]<br>0x40038FF7|- rs1 : x4<br> - rs2 : x8<br> - rd : x1<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 65519<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                 |[0x800002e0]:URADD16 ra, tp, fp<br> [0x800002e4]:sw ra, 12(a1)<br>     |
|  22|[0x80002264]<br>0x97FF7E03|- rs1 : x6<br> - rs2 : x15<br> - rd : x2<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                               |[0x800002f8]:URADD16 sp, t1, a5<br> [0x800002fc]:sw sp, 16(a1)<br>     |
|  23|[0x80002268]<br>0x10037FDF|- rs1 : x23<br> - rs2 : x7<br> - rd : x21<br> - rs2_h1_val == 8192<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                         |[0x8000030c]:URADD16 s5, s7, t2<br> [0x80000310]:sw s5, 20(a1)<br>     |
|  24|[0x8000226c]<br>0x08026555|- rs1 : x5<br> - rs2 : x12<br> - rd : x29<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                    |[0x80000320]:URADD16 t4, t0, a2<br> [0x80000324]:sw t4, 24(a1)<br>     |
|  25|[0x80002270]<br>0x0C009FFF|- rs1 : x15<br> - rs2 : x1<br> - rd : x7<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                           |[0x80000334]:URADD16 t2, a5, ra<br> [0x80000338]:sw t2, 28(a1)<br>     |
|  26|[0x80002274]<br>0x02060801|- rs1 : x26<br> - rs2 : x4<br> - rd : x31<br> - rs2_h1_val == 1024<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                          |[0x80000348]:URADD16 t6, s10, tp<br> [0x8000034c]:sw t6, 32(a1)<br>    |
|  27|[0x80002278]<br>0x01054008|- rs1 : x31<br> - rs2 : x10<br> - rd : x9<br> - rs2_h1_val == 512<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                                          |[0x80000360]:URADD16 s1, t6, a0<br> [0x80000364]:sw s1, 36(a1)<br>     |
|  28|[0x8000227c]<br>0x00A04009|- rs1 : x14<br> - rs2 : x24<br> - rd : x4<br> - rs2_h1_val == 256<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                                                          |[0x80000374]:URADD16 tp, a4, s8<br> [0x80000378]:sw tp, 40(a1)<br>     |
|  29|[0x80002280]<br>0x00000000|- rs1 : x30<br> - rs2 : x25<br> - rd : x0<br> - rs2_h1_val == 128<br> - rs2_h0_val == 32768<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                |[0x80000388]:URADD16 zero, t5, s9<br> [0x8000038c]:sw zero, 44(a1)<br> |
|  30|[0x80002284]<br>0x801F0047|- rs1 : x3<br> - rs2 : x18<br> - rd : x22<br> - rs2_h1_val == 64<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                             |[0x800003a0]:URADD16 s6, gp, s2<br> [0x800003a4]:sw s6, 48(a1)<br>     |
|  31|[0x80002288]<br>0x041081DF|- rs1 : x2<br> - rs2 : x16<br> - rd : x13<br> - rs2_h1_val == 32<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                            |[0x800003c0]:URADD16 a3, sp, a6<br> [0x800003c4]:sw a3, 0(ra)<br>      |
|  32|[0x8000228c]<br>0x78018000|- rs1 : x7<br> - rs2 : x2<br> - rd : x8<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                                                    |[0x800003d8]:URADD16 fp, t2, sp<br> [0x800003dc]:sw fp, 4(ra)<br>      |
|  33|[0x80002290]<br>0x00092009|- rs2_h1_val == 4<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                          |[0x800003ec]:URADD16 t6, t5, t4<br> [0x800003f0]:sw t6, 8(ra)<br>      |
|  34|[0x80002294]<br>0x000B0408|- rs2_h0_val == 16<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                          |[0x80000404]:URADD16 t6, t5, t4<br> [0x80000408]:sw t6, 12(ra)<br>     |
|  35|[0x80002298]<br>0x010681DF|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                 |[0x8000041c]:URADD16 t6, t5, t4<br> [0x80000420]:sw t6, 16(ra)<br>     |
|  36|[0x8000229c]<br>0x9FFE80BF|- rs1_h1_val == 16384<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                        |[0x80000434]:URADD16 t6, t5, t4<br> [0x80000438]:sw t6, 20(ra)<br>     |
|  37|[0x800022a0]<br>0x000A603F|- rs2_h0_val == 49151<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                        |[0x8000044c]:URADD16 t6, t5, t4<br> [0x80000450]:sw t6, 24(ra)<br>     |
|  38|[0x800022a4]<br>0x55950110|- rs2_h0_val == 512<br> - rs1_h1_val == 128<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                   |[0x80000464]:URADD16 t6, t5, t4<br> [0x80000468]:sw t6, 28(ra)<br>     |
|  39|[0x800022a8]<br>0x80000014|- rs2_h1_val == 2<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                              |[0x8000047c]:URADD16 t6, t5, t4<br> [0x80000480]:sw t6, 32(ra)<br>     |
|  40|[0x800022ac]<br>0xB7FF0009|- rs1_h1_val == 32768<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                          |[0x80000494]:URADD16 t6, t5, t4<br> [0x80000498]:sw t6, 36(ra)<br>     |
|  41|[0x800022b0]<br>0x7E032AB3|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                    |[0x800004ac]:URADD16 t6, t5, t4<br> [0x800004b0]:sw t6, 40(ra)<br>     |
|  42|[0x800022b4]<br>0x7FF07E01|- rs2_h1_val == 1<br> - rs2_h0_val == 64511<br>                                                                                                                                                                                                                                                                                          |[0x800004c4]:URADD16 t6, t5, t4<br> [0x800004c8]:sw t6, 44(ra)<br>     |
|  43|[0x800022b8]<br>0x8000F5FF|- rs2_h1_val == 65535<br> - rs2_h0_val == 61439<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                |[0x800004dc]:URADD16 t6, t5, t4<br> [0x800004e0]:sw t6, 48(ra)<br>     |
|  44|[0x800022c0]<br>0x60007005|- rs2_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                |[0x80000508]:URADD16 t6, t5, t4<br> [0x8000050c]:sw t6, 56(ra)<br>     |
|  45|[0x800022c4]<br>0x555C7C7F|- rs2_h0_val == 63487<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                                      |[0x80000520]:URADD16 t6, t5, t4<br> [0x80000524]:sw t6, 60(ra)<br>     |
|  46|[0x800022c8]<br>0x0805DF7F|- rs2_h0_val == 65279<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                                      |[0x80000538]:URADD16 t6, t5, t4<br> [0x8000053c]:sw t6, 64(ra)<br>     |
|  47|[0x800022cc]<br>0x7FF07FF3|- rs2_h0_val == 65503<br>                                                                                                                                                                                                                                                                                                                |[0x80000550]:URADD16 t6, t5, t4<br> [0x80000554]:sw t6, 68(ra)<br>     |
|  48|[0x800022d0]<br>0xF5FF7FFB|- rs2_h0_val == 65527<br>                                                                                                                                                                                                                                                                                                                |[0x80000564]:URADD16 t6, t5, t4<br> [0x80000568]:sw t6, 72(ra)<br>     |
|  49|[0x800022d4]<br>0x8FFF0081|- rs2_h0_val == 256<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                         |[0x8000057c]:URADD16 t6, t5, t4<br> [0x80000580]:sw t6, 76(ra)<br>     |
|  50|[0x800022d8]<br>0x7FF70030|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                   |[0x80000594]:URADD16 t6, t5, t4<br> [0x80000598]:sw t6, 80(ra)<br>     |
|  51|[0x800022dc]<br>0x00040005|- rs2_h0_val == 8<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x800005ac]:URADD16 t6, t5, t4<br> [0x800005b0]:sw t6, 84(ra)<br>     |
|  52|[0x800022e0]<br>0xCFFF0003|- rs2_h0_val == 4<br> - rs1_h1_val == 57343<br>                                                                                                                                                                                                                                                                                          |[0x800005c4]:URADD16 t6, t5, t4<br> [0x800005c8]:sw t6, 88(ra)<br>     |
|  53|[0x800022e4]<br>0x00037F00|- rs2_h0_val == 1<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                                                          |[0x800005dc]:URADD16 t6, t5, t4<br> [0x800005e0]:sw t6, 92(ra)<br>     |
|  54|[0x800022e8]<br>0xA9AA000D|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                |[0x800005f4]:URADD16 t6, t5, t4<br> [0x800005f8]:sw t6, 96(ra)<br>     |
|  55|[0x800022ec]<br>0x40058004|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                |[0x8000060c]:URADD16 t6, t5, t4<br> [0x80000610]:sw t6, 100(ra)<br>    |
|  56|[0x800022f0]<br>0xBEFF7FF3|- rs1_h1_val == 65023<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                      |[0x80000624]:URADD16 t6, t5, t4<br> [0x80000628]:sw t6, 104(ra)<br>    |
|  57|[0x800022f4]<br>0xFFDEFFCF|- rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                                                                                |[0x8000063c]:URADD16 t6, t5, t4<br> [0x80000640]:sw t6, 108(ra)<br>    |
|  58|[0x800022f8]<br>0x9FF77F07|- rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                                                                |[0x80000654]:URADD16 t6, t5, t4<br> [0x80000658]:sw t6, 112(ra)<br>    |
|  59|[0x800022fc]<br>0x7FFF78FF|- rs1_h1_val == 65527<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                      |[0x8000066c]:URADD16 t6, t5, t4<br> [0x80000670]:sw t6, 116(ra)<br>    |
|  60|[0x80002300]<br>0x02010018|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                 |[0x80000684]:URADD16 t6, t5, t4<br> [0x80000688]:sw t6, 120(ra)<br>    |
|  61|[0x80002304]<br>0x00907C00|- rs2_h0_val == 2<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                             |[0x8000069c]:URADD16 t6, t5, t4<br> [0x800006a0]:sw t6, 124(ra)<br>    |
|  62|[0x80002308]<br>0x80037F87|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                    |[0x800006b4]:URADD16 t6, t5, t4<br> [0x800006b8]:sw t6, 128(ra)<br>    |
|  63|[0x8000230c]<br>0x83BF7FFF|- rs2_h1_val == 65407<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                                                      |[0x800006cc]:URADD16 t6, t5, t4<br> [0x800006d0]:sw t6, 132(ra)<br>    |
|  64|[0x80002310]<br>0x8008000A|- rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                                                                                |[0x800006e4]:URADD16 t6, t5, t4<br> [0x800006e8]:sw t6, 136(ra)<br>    |
|  65|[0x8000231c]<br>0xFBFEB7FF|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                |[0x80000728]:URADD16 t6, t5, t4<br> [0x8000072c]:sw t6, 148(ra)<br>    |
|  66|[0x80002320]<br>0x05000806|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                 |[0x8000073c]:URADD16 t6, t5, t4<br> [0x80000740]:sw t6, 152(ra)<br>    |
|  67|[0x80002324]<br>0x000D7FC1|- rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                                                                |[0x80000754]:URADD16 t6, t5, t4<br> [0x80000758]:sw t6, 156(ra)<br>    |
|  68|[0x80002328]<br>0x8002603F|- rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                                                                                |[0x8000076c]:URADD16 t6, t5, t4<br> [0x80000770]:sw t6, 160(ra)<br>    |
|  69|[0x8000232c]<br>0x7FFF7FF0|- rs1_h1_val == 65533<br>                                                                                                                                                                                                                                                                                                                |[0x80000784]:URADD16 t6, t5, t4<br> [0x80000788]:sw t6, 164(ra)<br>    |
|  70|[0x80002330]<br>0x80007FFF|- rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                                                |[0x8000079c]:URADD16 t6, t5, t4<br> [0x800007a0]:sw t6, 168(ra)<br>    |
|  71|[0x80002334]<br>0x7FC00402|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                 |[0x800007b4]:URADD16 t6, t5, t4<br> [0x800007b8]:sw t6, 172(ra)<br>    |
|  72|[0x8000233c]<br>0xD7FF2006|- rs1_h1_val == 49151<br>                                                                                                                                                                                                                                                                                                                |[0x800007dc]:URADD16 t6, t5, t4<br> [0x800007e0]:sw t6, 180(ra)<br>    |
