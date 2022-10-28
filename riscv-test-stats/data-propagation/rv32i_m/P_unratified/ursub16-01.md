
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
| COV_LABELS                | ursub16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ursub16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 79      |
| STAT1                     | 76      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000678]:URSUB16 t6, t5, t4
      [0x8000067c]:sw t6, 180(sp)
 -- Signature Address: 0x80002300 Data: 0xFFE80001
 -- Redundant Coverpoints hit by the op
      - opcode : ursub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 65519
      - rs1_h1_val == 65471




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007e8]:URSUB16 t6, t5, t4
      [0x800007ec]:sw t6, 244(sp)
 -- Signature Address: 0x80002340 Data: 0x0000C009
 -- Redundant Coverpoints hit by the op
      - opcode : ursub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 64511
      - rs2_h0_val == 32768
      - rs1_h1_val == 64511




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000800]:URSUB16 t6, t5, t4
      [0x80000804]:sw t6, 248(sp)
 -- Signature Address: 0x80002344 Data: 0xAAABAAAC
 -- Redundant Coverpoints hit by the op
      - opcode : ursub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 43690
      - rs2_h0_val == 65533
      - rs1_h1_val == 0
      - rs1_h0_val == 21845






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

|s.no|        signature         |                                                                                                                                      coverpoints                                                                                                                                       |                                  code                                  |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ursub16<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 65471<br> - rs1_h1_val == 65471<br> |[0x8000010c]:URSUB16 sp, sp, sp<br> [0x80000110]:sw sp, 0(t2)<br>       |
|   2|[0x80002214]<br>0x00000000|- rs1 : x11<br> - rs2 : x11<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 32768<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 32768<br>                                                                                                           |[0x80000120]:URSUB16 a6, a1, a1<br> [0x80000124]:sw a6, 4(t2)<br>       |
|   3|[0x80002218]<br>0x3FFE0000|- rs1 : x9<br> - rs2 : x19<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 4<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 32768<br> - rs1_h0_val == 1024<br>                       |[0x80000138]:URSUB16 fp, s1, s3<br> [0x8000013c]:sw fp, 8(t2)<br>       |
|   4|[0x8000221c]<br>0xAAAB8001|- rs1 : x0<br> - rs2 : x9<br> - rd : x9<br> - rs2 == rd != rs1<br> - rs1_h0_val == 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 65533<br> - rs1_h1_val == 0<br>                                                                                                                      |[0x80000150]:URSUB16 s1, zero, s1<br> [0x80000154]:sw s1, 12(t2)<br>    |
|   5|[0x80002220]<br>0xD557FE80|- rs1 : x10<br> - rs2 : x29<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 65279<br> - rs1_h0_val == 64511<br>                                                                |[0x80000168]:URSUB16 a0, a0, t4<br> [0x8000016c]:sw a0, 16(t2)<br>      |
|   6|[0x80002224]<br>0xC009FFC8|- rs1 : x5<br> - rs2 : x10<br> - rd : x6<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 65519<br> - rs1_h0_val == 65407<br>                                                                                                                                                              |[0x80000180]:URSUB16 t1, t0, a0<br> [0x80000184]:sw t1, 20(t2)<br>      |
|   7|[0x80002228]<br>0x00000000|- rs1 : x27<br> - rs2 : x1<br> - rd : x0<br> - rs2_h1_val == 49151<br> - rs1_h1_val == 1<br> - rs1_h0_val == 128<br>                                                                                                                                                                    |[0x80000194]:URSUB16 zero, s11, ra<br> [0x80000198]:sw zero, 24(t2)<br> |
|   8|[0x8000222c]<br>0x9004E004|- rs1 : x8<br> - rs2 : x15<br> - rd : x11<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 8<br>                                                                                                                                                                 |[0x800001a8]:URSUB16 a1, fp, a5<br> [0x800001ac]:sw a1, 28(t2)<br>      |
|   9|[0x80002230]<br>0x8801000F|- rs1 : x19<br> - rs2 : x17<br> - rd : x5<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 65503<br> - rs1_h0_val == 65533<br>                                                                                                                                                             |[0x800001c0]:URSUB16 t0, s3, a7<br> [0x800001c4]:sw t0, 32(t2)<br>      |
|  10|[0x80002234]<br>0x84097FE6|- rs1 : x31<br> - rs2 : x4<br> - rd : x24<br> - rs2_h1_val == 63487<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                       |[0x800001d8]:URSUB16 s8, t6, tp<br> [0x800001dc]:sw s8, 36(t2)<br>      |
|  11|[0x80002238]<br>0xABAB8011|- rs1 : x15<br> - rs2 : x12<br> - rd : x4<br> - rs2_h1_val == 65023<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 1<br>                                                                                                                                                                 |[0x800001f0]:URSUB16 tp, a5, a2<br> [0x800001f4]:sw tp, 40(t2)<br>      |
|  12|[0x8000223c]<br>0x84808101|- rs1 : x3<br> - rs2 : x26<br> - rd : x14<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 512<br>                                                                                                                                      |[0x80000208]:URSUB16 a4, gp, s10<br> [0x8000020c]:sw a4, 44(t2)<br>     |
|  13|[0x80002240]<br>0x80418108|- rs1 : x23<br> - rs2 : x21<br> - rd : x15<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 65023<br> - rs1_h0_val == 16<br>                                                                                                                                                               |[0x80000220]:URSUB16 a5, s7, s5<br> [0x80000224]:sw a5, 48(t2)<br>      |
|  14|[0x80002244]<br>0x8012F003|- rs1 : x30<br> - rs2 : x5<br> - rd : x28<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                        |[0x80000234]:URSUB16 t3, t5, t0<br> [0x80000238]:sw t3, 52(t2)<br>      |
|  15|[0x80002248]<br>0x81086FFC|- rs1 : x12<br> - rs2 : x25<br> - rd : x13<br> - rs2_h1_val == 65519<br> - rs1_h1_val == 512<br> - rs1_h0_val == 57343<br>                                                                                                                                                              |[0x8000024c]:URSUB16 a3, a2, s9<br> [0x80000250]:sw a3, 56(t2)<br>      |
|  16|[0x8000224c]<br>0x80086FBF|- rs1 : x7<br> - rs2 : x22<br> - rd : x12<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 128<br>                                                                                                                                                                                         |[0x8000026c]:URSUB16 a2, t2, s6<br> [0x80000270]:sw a2, 0(sp)<br>       |
|  17|[0x80002250]<br>0xF8026FFC|- rs1 : x20<br> - rs2 : x14<br> - rd : x26<br> - rs2_h1_val == 65531<br> - rs1_h1_val == 61439<br>                                                                                                                                                                                      |[0x80000284]:URSUB16 s10, s4, a4<br> [0x80000288]:sw s10, 4(sp)<br>     |
|  18|[0x80002254]<br>0xFE010001|- rs1 : x4<br> - rs2 : x24<br> - rd : x22<br> - rs2_h1_val == 65533<br>                                                                                                                                                                                                                 |[0x8000029c]:URSUB16 s6, tp, s8<br> [0x800002a0]:sw s6, 8(sp)<br>       |
|  19|[0x80002258]<br>0x80098008|- rs1 : x16<br> - rs2 : x7<br> - rd : x29<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 65531<br>                                                                                                                                                                                       |[0x800002b4]:URSUB16 t4, a6, t2<br> [0x800002b8]:sw t4, 12(sp)<br>      |
|  20|[0x8000225c]<br>0xEAAA8600|- rs1 : x14<br> - rs2 : x23<br> - rd : x1<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 63487<br>                                                                                                                                                                                       |[0x800002cc]:URSUB16 ra, a4, s7<br> [0x800002d0]:sw ra, 16(sp)<br>      |
|  21|[0x80002260]<br>0xE005D55E|- rs1 : x6<br> - rs2 : x18<br> - rd : x7<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                        |[0x800002e4]:URSUB16 t2, t1, s2<br> [0x800002e8]:sw t2, 20(sp)<br>      |
|  22|[0x80002264]<br>0x6F7F8103|- rs1 : x17<br> - rs2 : x8<br> - rd : x21<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 65279<br>                                                                                                                                                                                        |[0x800002fc]:URSUB16 s5, a7, fp<br> [0x80000300]:sw s5, 24(sp)<br>      |
|  23|[0x80002268]<br>0x77FE07FD|- rs1 : x24<br> - rs2 : x13<br> - rd : x27<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 4096<br>                                                                                                                                                              |[0x80000310]:URSUB16 s11, s8, a3<br> [0x80000314]:sw s11, 28(sp)<br>    |
|  24|[0x8000226c]<br>0x51553FFD|- rs1 : x28<br> - rs2 : x3<br> - rd : x19<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                        |[0x80000324]:URSUB16 s3, t3, gp<br> [0x80000328]:sw s3, 32(sp)<br>      |
|  25|[0x80002270]<br>0x0200F001|- rs1 : x1<br> - rs2 : x28<br> - rd : x25<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                  |[0x80000338]:URSUB16 s9, ra, t3<br> [0x8000033c]:sw s9, 36(sp)<br>      |
|  26|[0x80002274]<br>0xFF02A800|- rs1 : x22<br> - rs2 : x6<br> - rd : x30<br> - rs2_h1_val == 512<br> - rs2_h0_val == 49151<br>                                                                                                                                                                                         |[0x8000034c]:URSUB16 t5, s6, t1<br> [0x80000350]:sw t5, 40(sp)<br>      |
|  27|[0x80002278]<br>0xFF82F080|- rs1 : x13<br> - rs2 : x31<br> - rd : x18<br> - rs2_h1_val == 256<br> - rs1_h1_val == 4<br> - rs1_h0_val == 256<br>                                                                                                                                                                    |[0x80000360]:URSUB16 s2, a3, t6<br> [0x80000364]:sw s2, 44(sp)<br>      |
|  28|[0x8000227c]<br>0x7FFE2AAA|- rs1 : x26<br> - rs2 : x0<br> - rd : x23<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 21845<br>                                                                                                                                                                     |[0x80000378]:URSUB16 s7, s10, zero<br> [0x8000037c]:sw s7, 48(sp)<br>   |
|  29|[0x80002280]<br>0x1FE05FEF|- rs1 : x21<br> - rs2 : x16<br> - rd : x20<br> - rs2_h1_val == 64<br> - rs2_h0_val == 32<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 49151<br>                                                                                                                                        |[0x80000390]:URSUB16 s4, s5, a6<br> [0x80000394]:sw s4, 52(sp)<br>      |
|  30|[0x80002284]<br>0x01F07FDF|- rs1 : x29<br> - rs2 : x27<br> - rd : x17<br> - rs2_h1_val == 32<br> - rs2_h0_val == 64<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 65534<br>                                                                                                                                         |[0x800003a8]:URSUB16 a7, t4, s11<br> [0x800003ac]:sw a7, 56(sp)<br>     |
|  31|[0x80002288]<br>0x3FF8FFF9|- rs1 : x18<br> - rs2 : x20<br> - rd : x31<br> - rs2_h1_val == 16<br> - rs1_h0_val == 2<br>                                                                                                                                                                                             |[0x800003c0]:URSUB16 t6, s2, s4<br> [0x800003c4]:sw t6, 60(sp)<br>      |
|  32|[0x8000228c]<br>0xFFFC0FF0|- rs1 : x25<br> - rs2 : x30<br> - rd : x3<br> - rs2_h1_val == 8<br> - rs2_h0_val == 57343<br>                                                                                                                                                                                           |[0x800003d8]:URSUB16 gp, s9, t5<br> [0x800003dc]:sw gp, 64(sp)<br>      |
|  33|[0x80002290]<br>0x6FFE7FF7|- rs1_h0_val == 65531<br>                                                                                                                                                                                                                                                               |[0x800003f0]:URSUB16 t6, t5, t4<br> [0x800003f4]:sw t6, 68(sp)<br>      |
|  34|[0x80002294]<br>0x7F7DA004|- rs2_h0_val == 65527<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                     |[0x80000404]:URSUB16 t6, t5, t4<br> [0x80000408]:sw t6, 72(sp)<br>      |
|  35|[0x80002298]<br>0x80890FF8|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                |[0x80000418]:URSUB16 t6, t5, t4<br> [0x8000041c]:sw t6, 76(sp)<br>      |
|  36|[0x8000229c]<br>0xF0100000|- rs2_h0_val == 2048<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                             |[0x80000430]:URSUB16 t6, t5, t4<br> [0x80000434]:sw t6, 80(sp)<br>      |
|  37|[0x800022a0]<br>0x00070018|- rs2_h1_val == 2<br> - rs2_h0_val == 16<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                     |[0x80000448]:URSUB16 t6, t5, t4<br> [0x8000044c]:sw t6, 84(sp)<br>      |
|  38|[0x800022a4]<br>0x77F8000A|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                  |[0x80000460]:URSUB16 t6, t5, t4<br> [0x80000464]:sw t6, 88(sp)<br>      |
|  39|[0x800022a8]<br>0xD7558404|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                   |[0x80000478]:URSUB16 t6, t5, t4<br> [0x8000047c]:sw t6, 92(sp)<br>      |
|  40|[0x800022ac]<br>0x7FF78042|- rs2_h0_val == 65407<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                               |[0x80000490]:URSUB16 t6, t5, t4<br> [0x80000494]:sw t6, 96(sp)<br>      |
|  41|[0x800022b0]<br>0x79FF7FFF|- rs2_h0_val == 1<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                               |[0x800004a8]:URSUB16 t6, t5, t4<br> [0x800004ac]:sw t6, 100(sp)<br>     |
|  42|[0x800022b4]<br>0x7BFFFF80|- rs2_h1_val == 1<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                                         |[0x800004c0]:URSUB16 t6, t5, t4<br> [0x800004c4]:sw t6, 104(sp)<br>     |
|  43|[0x800022b8]<br>0x80050002|- rs2_h1_val == 65535<br>                                                                                                                                                                                                                                                               |[0x800004d8]:URSUB16 t6, t5, t4<br> [0x800004dc]:sw t6, 108(sp)<br>     |
|  44|[0x800022bc]<br>0xFC02ABAB|- rs2_h0_val == 43690<br>                                                                                                                                                                                                                                                               |[0x800004f0]:URSUB16 t6, t5, t4<br> [0x800004f4]:sw t6, 112(sp)<br>     |
|  45|[0x800022c0]<br>0x55532000|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                               |[0x80000508]:URSUB16 t6, t5, t4<br> [0x8000050c]:sw t6, 116(sp)<br>     |
|  46|[0x800022c4]<br>0xFF048803|- rs2_h0_val == 61439<br>                                                                                                                                                                                                                                                               |[0x80000520]:URSUB16 t6, t5, t4<br> [0x80000524]:sw t6, 120(sp)<br>     |
|  47|[0x800022c8]<br>0x03FAC200|- rs2_h0_val == 64511<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                     |[0x80000538]:URSUB16 t6, t5, t4<br> [0x8000053c]:sw t6, 124(sp)<br>     |
|  48|[0x800022cc]<br>0xAAAB8029|- rs2_h0_val == 65471<br>                                                                                                                                                                                                                                                               |[0x80000550]:URSUB16 t6, t5, t4<br> [0x80000554]:sw t6, 128(sp)<br>     |
|  49|[0x800022d0]<br>0x7FF522AA|- rs2_h0_val == 4096<br> - rs1_h1_val == 65527<br>                                                                                                                                                                                                                                      |[0x80000564]:URSUB16 t6, t5, t4<br> [0x80000568]:sw t6, 132(sp)<br>     |
|  50|[0x800022d4]<br>0x8008FF20|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                 |[0x8000057c]:URSUB16 t6, t5, t4<br> [0x80000580]:sw t6, 136(sp)<br>     |
|  51|[0x800022d8]<br>0xA002FF86|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                 |[0x80000594]:URSUB16 t6, t5, t4<br> [0x80000598]:sw t6, 140(sp)<br>     |
|  52|[0x800022dc]<br>0x9007FFFC|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                   |[0x800005a8]:URSUB16 t6, t5, t4<br> [0x800005ac]:sw t6, 144(sp)<br>     |
|  53|[0x800022e0]<br>0xF8030006|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                   |[0x800005c0]:URSUB16 t6, t5, t4<br> [0x800005c4]:sw t6, 148(sp)<br>     |
|  54|[0x800022e4]<br>0xF003007F|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                   |[0x800005d8]:URSUB16 t6, t5, t4<br> [0x800005dc]:sw t6, 152(sp)<br>     |
|  55|[0x800022e8]<br>0x07808004|- rs2_h0_val == 65535<br>                                                                                                                                                                                                                                                               |[0x800005f0]:URSUB16 t6, t5, t4<br> [0x800005f4]:sw t6, 156(sp)<br>     |
|  56|[0x800022ec]<br>0x77FF0080|- rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                               |[0x80000604]:URSUB16 t6, t5, t4<br> [0x80000608]:sw t6, 160(sp)<br>     |
|  57|[0x800022f0]<br>0xFFFFFFE2|- rs1_h1_val == 32767<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                     |[0x8000061c]:URSUB16 t6, t5, t4<br> [0x80000620]:sw t6, 164(sp)<br>     |
|  58|[0x800022f4]<br>0x5FFE7F3F|- rs1_h1_val == 49151<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                     |[0x80000634]:URSUB16 t6, t5, t4<br> [0x80000638]:sw t6, 168(sp)<br>     |
|  59|[0x800022f8]<br>0xFF20C800|- rs1_h1_val == 65023<br>                                                                                                                                                                                                                                                               |[0x80000648]:URSUB16 t6, t5, t4<br> [0x8000064c]:sw t6, 172(sp)<br>     |
|  60|[0x800022fc]<br>0x7FB68021|- rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                               |[0x80000660]:URSUB16 t6, t5, t4<br> [0x80000664]:sw t6, 176(sp)<br>     |
|  61|[0x80002304]<br>0x7FEE4D55|- rs1_h1_val == 65503<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                     |[0x8000068c]:URSUB16 t6, t5, t4<br> [0x80000690]:sw t6, 184(sp)<br>     |
|  62|[0x80002308]<br>0x0FF9E004|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                |[0x800006a4]:URSUB16 t6, t5, t4<br> [0x800006a8]:sw t6, 188(sp)<br>     |
|  63|[0x8000230c]<br>0x07FE07F7|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                |[0x800006b8]:URSUB16 t6, t5, t4<br> [0x800006bc]:sw t6, 192(sp)<br>     |
|  64|[0x80002310]<br>0x00785FFD|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                 |[0x800006d0]:URSUB16 t6, t5, t4<br> [0x800006d4]:sw t6, 196(sp)<br>     |
|  65|[0x80002314]<br>0x003700E0|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                 |[0x800006e8]:URSUB16 t6, t5, t4<br> [0x800006ec]:sw t6, 200(sp)<br>     |
|  66|[0x80002318]<br>0xE0207FFB|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                  |[0x80000700]:URSUB16 t6, t5, t4<br> [0x80000704]:sw t6, 204(sp)<br>     |
|  67|[0x8000231c]<br>0x0008A003|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                  |[0x80000718]:URSUB16 t6, t5, t4<br> [0x8000071c]:sw t6, 208(sp)<br>     |
|  68|[0x80002320]<br>0xAAB3A001|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                  |[0x80000730]:URSUB16 t6, t5, t4<br> [0x80000734]:sw t6, 212(sp)<br>     |
|  69|[0x80002324]<br>0xE008F802|- rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                               |[0x80000748]:URSUB16 t6, t5, t4<br> [0x8000074c]:sw t6, 216(sp)<br>     |
|  70|[0x80002328]<br>0x6FF77BF8|- rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                               |[0x80000760]:URSUB16 t6, t5, t4<br> [0x80000764]:sw t6, 220(sp)<br>     |
|  71|[0x8000232c]<br>0xFFFF80C0|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                               |[0x80000774]:URSUB16 t6, t5, t4<br> [0x80000778]:sw t6, 224(sp)<br>     |
|  72|[0x80002330]<br>0x5FFD554C|- rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                               |[0x8000078c]:URSUB16 t6, t5, t4<br> [0x80000790]:sw t6, 228(sp)<br>     |
|  73|[0x80002334]<br>0xFFF9FFFC|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                   |[0x800007a4]:URSUB16 t6, t5, t4<br> [0x800007a8]:sw t6, 232(sp)<br>     |
|  74|[0x80002338]<br>0xC0027FEF|- rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                               |[0x800007bc]:URSUB16 t6, t5, t4<br> [0x800007c0]:sw t6, 236(sp)<br>     |
|  75|[0x8000233c]<br>0xFF10001C|- rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                               |[0x800007d4]:URSUB16 t6, t5, t4<br> [0x800007d8]:sw t6, 240(sp)<br>     |
|  76|[0x80002348]<br>0x7FBE2AA4|- rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                 |[0x80000818]:URSUB16 t6, t5, t4<br> [0x8000081c]:sw t6, 252(sp)<br>     |
