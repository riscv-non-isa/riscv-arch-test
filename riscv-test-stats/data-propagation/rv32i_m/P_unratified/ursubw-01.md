
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000870')]      |
| SIG_REGION                | [('0x80002210', '0x800023a0', '100 words')]      |
| COV_LABELS                | ursubw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ursubw-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 100      |
| STAT1                     | 97      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000658]:URSUBW t6, t5, t4
      [0x8000065c]:sw t6, 164(ra)
 -- Signature Address: 0x80002330 Data: 0x7FFBFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ursubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == 4294443007




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:URSUBW t6, t5, t4
      [0x80000848]:sw t6, 268(ra)
 -- Signature Address: 0x80002398 Data: 0xD0000000
 -- Redundant Coverpoints hit by the op
      - opcode : ursubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 3758096383
      - rs1_w0_val == 2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000085c]:URSUBW t6, t5, t4
      [0x80000860]:sw t6, 272(ra)
 -- Signature Address: 0x8000239c Data: 0xDD555555
 -- Redundant Coverpoints hit by the op
      - opcode : ursubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 4026531839
      - rs1_w0_val == 2863311530






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

|s.no|        signature         |                                                                   coverpoints                                                                    |                                 code                                 |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ursubw<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br>                                                       |[0x80000108]:URSUBW t3, t3, t3<br> [0x8000010c]:sw t3, 0(a0)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x13<br> - rs2 : x13<br> - rd : x8<br> - rs1 == rs2 != rd<br> - rs2_w0_val == 2863311530<br> - rs1_w0_val == 2863311530<br>                |[0x8000011c]:URSUBW fp, a3, a3<br> [0x80000120]:sw fp, 4(a0)<br>      |
|   3|[0x80002218]<br>0xD5555575|- rs1 : x5<br> - rs2 : x29<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 64<br> |[0x80000130]:URSUBW a3, t0, t4<br> [0x80000134]:sw a3, 8(a0)<br>      |
|   4|[0x8000221c]<br>0x3FFC0000|- rs1 : x7<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 4294443007<br>                  |[0x80000148]:URSUBW t1, t2, t1<br> [0x8000014c]:sw t1, 12(a0)<br>     |
|   5|[0x80002220]<br>0x18000000|- rs1 : x12<br> - rs2 : x21<br> - rd : x12<br> - rs1 == rd != rs2<br> - rs2_w0_val == 3221225471<br> - rs1_w0_val == 4026531839<br>               |[0x80000160]:URSUBW a2, a2, s5<br> [0x80000164]:sw a2, 16(a0)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x20<br> - rs2 : x4<br> - rd : x0<br> - rs2_w0_val == 3758096383<br> - rs1_w0_val == 2147483648<br>                                        |[0x80000174]:URSUBW zero, s4, tp<br> [0x80000178]:sw zero, 20(a0)<br> |
|   7|[0x80002228]<br>0x88000000|- rs1 : x0<br> - rs2 : x3<br> - rd : x2<br> - rs1_w0_val == 0<br> - rs2_w0_val == 4026531839<br>                                                  |[0x8000018c]:URSUBW sp, zero, gp<br> [0x80000190]:sw sp, 24(a0)<br>   |
|   8|[0x8000222c]<br>0x84000001|- rs1 : x21<br> - rs2 : x9<br> - rd : x4<br> - rs2_w0_val == 4160749567<br> - rs1_w0_val == 1<br>                                                 |[0x800001a0]:URSUBW tp, s5, s1<br> [0x800001a4]:sw tp, 28(a0)<br>     |
|   9|[0x80002230]<br>0x84000000|- rs1 : x6<br> - rs2 : x27<br> - rd : x7<br> - rs2_w0_val == 4227858431<br> - rs1_w0_val == 67108864<br>                                          |[0x800001b4]:URSUBW t2, t1, s11<br> [0x800001b8]:sw t2, 32(a0)<br>    |
|  10|[0x80002234]<br>0x81000007|- rs1 : x15<br> - rs2 : x22<br> - rd : x29<br> - rs2_w0_val == 4261412863<br>                                                                     |[0x800001c8]:URSUBW t4, a5, s6<br> [0x800001cc]:sw t4, 36(a0)<br>     |
|  11|[0x80002238]<br>0x00700000|- rs1 : x29<br> - rs2 : x16<br> - rd : x26<br> - rs2_w0_val == 4278190079<br> - rs1_w0_val == 4292870143<br>                                      |[0x800001e0]:URSUBW s10, t4, a6<br> [0x800001e4]:sw s10, 40(a0)<br>   |
|  12|[0x8000223c]<br>0x80400040|- rs1 : x14<br> - rs2 : x25<br> - rd : x31<br> - rs2_w0_val == 4286578687<br> - rs1_w0_val == 128<br>                                             |[0x800001f4]:URSUBW t6, a4, s9<br> [0x800001f8]:sw t6, 44(a0)<br>     |
|  13|[0x80002240]<br>0x80220000|- rs1 : x11<br> - rs2 : x15<br> - rd : x23<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 262144<br>                                          |[0x80000208]:URSUBW s7, a1, a5<br> [0x8000020c]:sw s7, 48(a0)<br>     |
|  14|[0x80002244]<br>0xC0100000|- rs1 : x22<br> - rs2 : x26<br> - rd : x11<br> - rs2_w0_val == 4292870143<br> - rs1_w0_val == 2147483647<br>                                      |[0x80000220]:URSUBW a1, s6, s10<br> [0x80000224]:sw a1, 52(a0)<br>    |
|  15|[0x80002248]<br>0x00002000|- rs1 : x1<br> - rs2 : x0<br> - rd : x24<br> - rs2_w0_val == 0<br> - rs1_w0_val == 16384<br>                                                      |[0x80000234]:URSUBW s8, ra, zero<br> [0x80000238]:sw s8, 56(a0)<br>   |
|  16|[0x8000224c]<br>0x80060000|- rs1 : x23<br> - rs2 : x17<br> - rd : x30<br> - rs2_w0_val == 4294443007<br>                                                                     |[0x80000248]:URSUBW t5, s7, a7<br> [0x8000024c]:sw t5, 60(a0)<br>     |
|  17|[0x80002250]<br>0x80020400|- rs1 : x16<br> - rs2 : x11<br> - rd : x17<br> - rs2_w0_val == 4294705151<br> - rs1_w0_val == 2048<br>                                            |[0x80000268]:URSUBW a7, a6, a1<br> [0x8000026c]:sw a7, 0(t1)<br>      |
|  18|[0x80002254]<br>0x0000FFF8|- rs1 : x4<br> - rs2 : x2<br> - rd : x5<br> - rs2_w0_val == 4294836223<br> - rs1_w0_val == 4294967279<br>                                         |[0x8000027c]:URSUBW t0, tp, sp<br> [0x80000280]:sw t0, 4(t1)<br>      |
|  19|[0x80002258]<br>0x80008100|- rs1 : x26<br> - rs2 : x10<br> - rd : x9<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 512<br>                                              |[0x80000290]:URSUBW s1, s10, a0<br> [0x80000294]:sw s1, 8(t1)<br>     |
|  20|[0x8000225c]<br>0x00003FFF|- rs1 : x8<br> - rs2 : x5<br> - rd : x19<br> - rs2_w0_val == 4294934527<br> - rs1_w0_val == 4294967293<br>                                        |[0x800002a4]:URSUBW s3, fp, t0<br> [0x800002a8]:sw s3, 12(t1)<br>     |
|  21|[0x80002260]<br>0x80002008|- rs1 : x19<br> - rs2 : x20<br> - rd : x27<br> - rs2_w0_val == 4294950911<br> - rs1_w0_val == 16<br>                                              |[0x800002b8]:URSUBW s11, s3, s4<br> [0x800002bc]:sw s11, 16(t1)<br>   |
|  22|[0x80002264]<br>0xFFFFF000|- rs1 : x9<br> - rs2 : x24<br> - rd : x20<br> - rs2_w0_val == 4294959103<br> - rs1_w0_val == 4294950911<br>                                       |[0x800002d0]:URSUBW s4, s1, s8<br> [0x800002d4]:sw s4, 20(t1)<br>     |
|  23|[0x80002268]<br>0x80000808|- rs1 : x30<br> - rs2 : x23<br> - rd : x1<br> - rs2_w0_val == 4294963199<br>                                                                      |[0x800002e4]:URSUBW ra, t5, s7<br> [0x800002e8]:sw ra, 24(t1)<br>     |
|  24|[0x8000226c]<br>0x80000C00|- rs1 : x18<br> - rs2 : x7<br> - rd : x10<br> - rs2_w0_val == 4294965247<br> - rs1_w0_val == 4096<br>                                             |[0x800002f8]:URSUBW a0, s2, t2<br> [0x800002fc]:sw a0, 28(t1)<br>     |
|  25|[0x80002270]<br>0x80000210|- rs1 : x3<br> - rs2 : x30<br> - rd : x14<br> - rs2_w0_val == 4294966271<br> - rs1_w0_val == 32<br>                                               |[0x80000308]:URSUBW a4, gp, t5<br> [0x8000030c]:sw a4, 32(t1)<br>     |
|  26|[0x80002274]<br>0x80000109|- rs1 : x25<br> - rs2 : x1<br> - rd : x16<br> - rs2_w0_val == 4294966783<br>                                                                      |[0x80000318]:URSUBW a6, s9, ra<br> [0x8000031c]:sw a6, 36(t1)<br>     |
|  27|[0x80002278]<br>0x80001080|- rs1 : x24<br> - rs2 : x8<br> - rd : x15<br> - rs2_w0_val == 4294967039<br> - rs1_w0_val == 8192<br>                                             |[0x80000328]:URSUBW a5, s8, fp<br> [0x8000032c]:sw a5, 40(t1)<br>     |
|  28|[0x8000227c]<br>0x80000046|- rs1 : x27<br> - rs2 : x12<br> - rd : x18<br> - rs2_w0_val == 4294967167<br>                                                                     |[0x80000338]:URSUBW s2, s11, a2<br> [0x8000033c]:sw s2, 44(t1)<br>    |
|  29|[0x80002280]<br>0xFFFF0020|- rs1 : x31<br> - rs2 : x14<br> - rd : x3<br> - rs2_w0_val == 4294967231<br> - rs1_w0_val == 4294836223<br>                                       |[0x8000034c]:URSUBW gp, t6, a4<br> [0x80000350]:sw gp, 48(t1)<br>     |
|  30|[0x80002284]<br>0xC0000010|- rs1 : x2<br> - rs2 : x18<br> - rd : x21<br> - rs2_w0_val == 4294967263<br>                                                                      |[0x8000035c]:URSUBW s5, sp, s2<br> [0x80000360]:sw s5, 52(t1)<br>     |
|  31|[0x80002288]<br>0x80000018|- rs1 : x10<br> - rs2 : x31<br> - rd : x22<br> - rs2_w0_val == 4294967279<br>                                                                     |[0x8000036c]:URSUBW s6, a0, t6<br> [0x80000370]:sw s6, 56(t1)<br>     |
|  32|[0x8000228c]<br>0x80000104|- rs1 : x17<br> - rs2 : x19<br> - rd : x25<br> - rs2_w0_val == 4294967287<br>                                                                     |[0x80000384]:URSUBW s9, a7, s3<br> [0x80000388]:sw s9, 0(ra)<br>      |
|  33|[0x80002290]<br>0xFFF80002|- rs2_w0_val == 4294967291<br> - rs1_w0_val == 4293918719<br>                                                                                     |[0x80000398]:URSUBW t6, t5, t4<br> [0x8000039c]:sw t6, 4(ra)<br>      |
|  34|[0x80002294]<br>0x80000009|- rs2_w0_val == 4294967293<br>                                                                                                                    |[0x800003a8]:URSUBW t6, t5, t4<br> [0x800003ac]:sw t6, 8(ra)<br>      |
|  35|[0x80002298]<br>0xFFFFFFFE|- rs2_w0_val == 4294967294<br> - rs1_w0_val == 4294967291<br>                                                                                     |[0x800003b8]:URSUBW t6, t5, t4<br> [0x800003bc]:sw t6, 12(ra)<br>     |
|  36|[0x8000229c]<br>0xC4000000|- rs2_w0_val == 2147483648<br> - rs1_w0_val == 134217728<br>                                                                                      |[0x800003c8]:URSUBW t6, t5, t4<br> [0x800003cc]:sw t6, 16(ra)<br>     |
|  37|[0x800022a0]<br>0x5BFFFFFF|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 4160749567<br>                                                                                     |[0x800003dc]:URSUBW t6, t5, t4<br> [0x800003e0]:sw t6, 20(ra)<br>     |
|  38|[0x800022a4]<br>0x6FFDFFFF|- rs2_w0_val == 536870912<br> - rs1_w0_val == 4294705151<br>                                                                                      |[0x800003f0]:URSUBW t6, t5, t4<br> [0x800003f4]:sw t6, 24(ra)<br>     |
|  39|[0x800022a8]<br>0xF8000100|- rs2_w0_val == 268435456<br>                                                                                                                     |[0x80000400]:URSUBW t6, t5, t4<br> [0x80000404]:sw t6, 28(ra)<br>     |
|  40|[0x800022ac]<br>0x0C000000|- rs2_w0_val == 134217728<br> - rs1_w0_val == 536870912<br>                                                                                       |[0x80000410]:URSUBW t6, t5, t4<br> [0x80000414]:sw t6, 32(ra)<br>     |
|  41|[0x800022b0]<br>0x79FFFFFF|- rs2_w0_val == 67108864<br>                                                                                                                      |[0x80000424]:URSUBW t6, t5, t4<br> [0x80000428]:sw t6, 36(ra)<br>     |
|  42|[0x800022b4]<br>0xFF000002|- rs2_w0_val == 33554432<br>                                                                                                                      |[0x80000434]:URSUBW t6, t5, t4<br> [0x80000438]:sw t6, 40(ra)<br>     |
|  43|[0x800022b8]<br>0xFF880000|- rs2_w0_val == 16777216<br> - rs1_w0_val == 1048576<br>                                                                                          |[0x80000444]:URSUBW t6, t5, t4<br> [0x80000448]:sw t6, 44(ra)<br>     |
|  44|[0x800022bc]<br>0x01C00000|- rs2_w0_val == 8388608<br>                                                                                                                       |[0x80000454]:URSUBW t6, t5, t4<br> [0x80000458]:sw t6, 48(ra)<br>     |
|  45|[0x800022c0]<br>0x80002004|- rs1_w0_val == 8<br>                                                                                                                             |[0x80000468]:URSUBW t6, t5, t4<br> [0x8000046c]:sw t6, 52(ra)<br>     |
|  46|[0x800022c4]<br>0xFE000002|- rs1_w0_val == 4<br>                                                                                                                             |[0x80000478]:URSUBW t6, t5, t4<br> [0x8000047c]:sw t6, 56(ra)<br>     |
|  47|[0x800022c8]<br>0xFE000001|- rs1_w0_val == 2<br>                                                                                                                             |[0x80000488]:URSUBW t6, t5, t4<br> [0x8000048c]:sw t6, 60(ra)<br>     |
|  48|[0x800022cc]<br>0x5FFFFFFF|- rs1_w0_val == 4294967295<br>                                                                                                                    |[0x80000498]:URSUBW t6, t5, t4<br> [0x8000049c]:sw t6, 64(ra)<br>     |
|  49|[0x800022d0]<br>0x03E00000|- rs2_w0_val == 4194304<br>                                                                                                                       |[0x800004a8]:URSUBW t6, t5, t4<br> [0x800004ac]:sw t6, 68(ra)<br>     |
|  50|[0x800022d4]<br>0x7FEFFFEF|- rs2_w0_val == 2097152<br> - rs1_w0_val == 4294967263<br>                                                                                        |[0x800004b8]:URSUBW t6, t5, t4<br> [0x800004bc]:sw t6, 72(ra)<br>     |
|  51|[0x800022d8]<br>0x7FF7EFFF|- rs2_w0_val == 1048576<br> - rs1_w0_val == 4294959103<br>                                                                                        |[0x800004cc]:URSUBW t6, t5, t4<br> [0x800004d0]:sw t6, 76(ra)<br>     |
|  52|[0x800022dc]<br>0xFFFC0002|- rs2_w0_val == 524288<br>                                                                                                                        |[0x800004dc]:URSUBW t6, t5, t4<br> [0x800004e0]:sw t6, 80(ra)<br>     |
|  53|[0x800022e0]<br>0xFFFE0000|- rs2_w0_val == 262144<br>                                                                                                                        |[0x800004ec]:URSUBW t6, t5, t4<br> [0x800004f0]:sw t6, 84(ra)<br>     |
|  54|[0x800022e4]<br>0x2AA9AAAA|- rs2_w0_val == 131072<br> - rs1_w0_val == 1431655765<br>                                                                                         |[0x80000500]:URSUBW t6, t5, t4<br> [0x80000504]:sw t6, 88(ra)<br>     |
|  55|[0x800022e8]<br>0xFFFF8007|- rs2_w0_val == 65536<br>                                                                                                                         |[0x80000510]:URSUBW t6, t5, t4<br> [0x80000514]:sw t6, 92(ra)<br>     |
|  56|[0x800022ec]<br>0x7FFF3FFF|- rs2_w0_val == 32768<br> - rs1_w0_val == 4294901759<br>                                                                                          |[0x80000524]:URSUBW t6, t5, t4<br> [0x80000528]:sw t6, 96(ra)<br>     |
|  57|[0x800022f0]<br>0xFFFFE005|- rs2_w0_val == 16384<br>                                                                                                                         |[0x80000534]:URSUBW t6, t5, t4<br> [0x80000538]:sw t6, 100(ra)<br>    |
|  58|[0x800022f4]<br>0x7FFEEFFF|- rs2_w0_val == 8192<br>                                                                                                                          |[0x80000548]:URSUBW t6, t5, t4<br> [0x8000054c]:sw t6, 104(ra)<br>    |
|  59|[0x800022f8]<br>0xFFFFFC00|- rs2_w0_val == 4096<br>                                                                                                                          |[0x8000055c]:URSUBW t6, t5, t4<br> [0x80000560]:sw t6, 108(ra)<br>    |
|  60|[0x800022fc]<br>0x55555155|- rs2_w0_val == 2048<br>                                                                                                                          |[0x80000574]:URSUBW t6, t5, t4<br> [0x80000578]:sw t6, 112(ra)<br>    |
|  61|[0x80002300]<br>0x7F7FFDFF|- rs2_w0_val == 1024<br> - rs1_w0_val == 4278190079<br>                                                                                           |[0x80000588]:URSUBW t6, t5, t4<br> [0x8000058c]:sw t6, 116(ra)<br>    |
|  62|[0x80002304]<br>0x7EFFFEFF|- rs2_w0_val == 512<br> - rs1_w0_val == 4261412863<br>                                                                                            |[0x8000059c]:URSUBW t6, t5, t4<br> [0x800005a0]:sw t6, 120(ra)<br>    |
|  63|[0x80002308]<br>0x00001F80|- rs2_w0_val == 256<br>                                                                                                                           |[0x800005ac]:URSUBW t6, t5, t4<br> [0x800005b0]:sw t6, 124(ra)<br>    |
|  64|[0x8000230c]<br>0x7FFDFFBF|- rs2_w0_val == 128<br>                                                                                                                           |[0x800005c0]:URSUBW t6, t5, t4<br> [0x800005c4]:sw t6, 128(ra)<br>    |
|  65|[0x80002310]<br>0xFFFFFFE4|- rs2_w0_val == 64<br>                                                                                                                            |[0x800005d0]:URSUBW t6, t5, t4<br> [0x800005d4]:sw t6, 132(ra)<br>    |
|  66|[0x80002314]<br>0x001FFFF0|- rs2_w0_val == 32<br> - rs1_w0_val == 4194304<br>                                                                                                |[0x800005e0]:URSUBW t6, t5, t4<br> [0x800005e4]:sw t6, 136(ra)<br>    |
|  67|[0x80002318]<br>0xFFFFFFFB|- rs2_w0_val == 16<br>                                                                                                                            |[0x800005f0]:URSUBW t6, t5, t4<br> [0x800005f4]:sw t6, 140(ra)<br>    |
|  68|[0x8000231c]<br>0x7FFFFFBB|- rs2_w0_val == 8<br> - rs1_w0_val == 4294967167<br>                                                                                              |[0x80000600]:URSUBW t6, t5, t4<br> [0x80000604]:sw t6, 144(ra)<br>    |
|  69|[0x80002320]<br>0x3FFFFFFD|- rs2_w0_val == 4<br>                                                                                                                             |[0x80000614]:URSUBW t6, t5, t4<br> [0x80000618]:sw t6, 148(ra)<br>    |
|  70|[0x80002324]<br>0x0000001F|- rs2_w0_val == 2<br>                                                                                                                             |[0x80000624]:URSUBW t6, t5, t4<br> [0x80000628]:sw t6, 152(ra)<br>    |
|  71|[0x80002328]<br>0x000FFFFF|- rs2_w0_val == 1<br> - rs1_w0_val == 2097152<br>                                                                                                 |[0x80000634]:URSUBW t6, t5, t4<br> [0x80000638]:sw t6, 156(ra)<br>    |
|  72|[0x8000232c]<br>0x80080000|- rs2_w0_val == 4294967295<br>                                                                                                                    |[0x80000644]:URSUBW t6, t5, t4<br> [0x80000648]:sw t6, 160(ra)<br>    |
|  73|[0x80002334]<br>0x5FFFFFFF|- rs1_w0_val == 3221225471<br>                                                                                                                    |[0x8000066c]:URSUBW t6, t5, t4<br> [0x80000670]:sw t6, 168(ra)<br>    |
|  74|[0x80002338]<br>0x10000000|- rs1_w0_val == 3758096383<br>                                                                                                                    |[0x80000684]:URSUBW t6, t5, t4<br> [0x80000688]:sw t6, 172(ra)<br>    |
|  75|[0x8000233c]<br>0xFE000100|- rs1_w0_val == 4227858431<br>                                                                                                                    |[0x80000698]:URSUBW t6, t5, t4<br> [0x8000069c]:sw t6, 176(ra)<br>    |
|  76|[0x80002340]<br>0xFFC80000|- rs2_w0_val == 4293918719<br> - rs1_w0_val == 4286578687<br>                                                                                     |[0x800006b0]:URSUBW t6, t5, t4<br> [0x800006b4]:sw t6, 180(ra)<br>    |
|  77|[0x80002344]<br>0xFFE00800|- rs1_w0_val == 4290772991<br>                                                                                                                    |[0x800006c8]:URSUBW t6, t5, t4<br> [0x800006cc]:sw t6, 184(ra)<br>    |
|  78|[0x80002348]<br>0x7FFFBFFF|- rs1_w0_val == 4294934527<br>                                                                                                                    |[0x800006dc]:URSUBW t6, t5, t4<br> [0x800006e0]:sw t6, 188(ra)<br>    |
|  79|[0x8000234c]<br>0x7FFFF7FE|- rs1_w0_val == 4294963199<br>                                                                                                                    |[0x800006f0]:URSUBW t6, t5, t4<br> [0x800006f4]:sw t6, 192(ra)<br>    |
|  80|[0x80002350]<br>0x00FFFC00|- rs1_w0_val == 4294965247<br>                                                                                                                    |[0x80000708]:URSUBW t6, t5, t4<br> [0x8000070c]:sw t6, 196(ra)<br>    |
|  81|[0x80002354]<br>0x00000E00|- rs1_w0_val == 4294966271<br>                                                                                                                    |[0x8000071c]:URSUBW t6, t5, t4<br> [0x80000720]:sw t6, 200(ra)<br>    |
|  82|[0x80002358]<br>0x2AAAA9AA|- rs1_w0_val == 4294966783<br>                                                                                                                    |[0x80000730]:URSUBW t6, t5, t4<br> [0x80000734]:sw t6, 204(ra)<br>    |
|  83|[0x8000235c]<br>0x00000FE0|- rs1_w0_val == 4294967231<br>                                                                                                                    |[0x80000744]:URSUBW t6, t5, t4<br> [0x80000748]:sw t6, 208(ra)<br>    |
|  84|[0x80002360]<br>0x7FFFFFF5|- rs1_w0_val == 4294967287<br>                                                                                                                    |[0x80000754]:URSUBW t6, t5, t4<br> [0x80000758]:sw t6, 212(ra)<br>    |
|  85|[0x80002364]<br>0x00003FFF|- rs1_w0_val == 4294967294<br>                                                                                                                    |[0x80000768]:URSUBW t6, t5, t4<br> [0x8000076c]:sw t6, 216(ra)<br>    |
|  86|[0x80002368]<br>0x1FFFFFF8|- rs1_w0_val == 1073741824<br>                                                                                                                    |[0x80000778]:URSUBW t6, t5, t4<br> [0x8000077c]:sw t6, 220(ra)<br>    |
|  87|[0x8000236c]<br>0x88000004|- rs1_w0_val == 268435456<br>                                                                                                                     |[0x80000788]:URSUBW t6, t5, t4<br> [0x8000078c]:sw t6, 224(ra)<br>    |
|  88|[0x80002370]<br>0xABAAAAAB|- rs1_w0_val == 33554432<br>                                                                                                                      |[0x8000079c]:URSUBW t6, t5, t4<br> [0x800007a0]:sw t6, 228(ra)<br>    |
|  89|[0x80002374]<br>0x007E0000|- rs1_w0_val == 16777216<br>                                                                                                                      |[0x800007ac]:URSUBW t6, t5, t4<br> [0x800007b0]:sw t6, 232(ra)<br>    |
|  90|[0x80002378]<br>0x80400080|- rs1_w0_val == 8388608<br>                                                                                                                       |[0x800007bc]:URSUBW t6, t5, t4<br> [0x800007c0]:sw t6, 236(ra)<br>    |
|  91|[0x8000237c]<br>0x0003FFFC|- rs1_w0_val == 524288<br>                                                                                                                        |[0x800007cc]:URSUBW t6, t5, t4<br> [0x800007d0]:sw t6, 240(ra)<br>    |
|  92|[0x80002380]<br>0xF8010000|- rs1_w0_val == 131072<br>                                                                                                                        |[0x800007dc]:URSUBW t6, t5, t4<br> [0x800007e0]:sw t6, 244(ra)<br>    |
|  93|[0x80002384]<br>0x00007FF8|- rs1_w0_val == 65536<br>                                                                                                                         |[0x800007ec]:URSUBW t6, t5, t4<br> [0x800007f0]:sw t6, 248(ra)<br>    |
|  94|[0x80002388]<br>0x001FFF80|- rs1_w0_val == 4294967039<br>                                                                                                                    |[0x80000800]:URSUBW t6, t5, t4<br> [0x80000804]:sw t6, 252(ra)<br>    |
|  95|[0x8000238c]<br>0x000001FA|- rs1_w0_val == 1024<br>                                                                                                                          |[0x80000810]:URSUBW t6, t5, t4<br> [0x80000814]:sw t6, 256(ra)<br>    |
|  96|[0x80002390]<br>0x0000007E|- rs1_w0_val == 256<br>                                                                                                                           |[0x80000820]:URSUBW t6, t5, t4<br> [0x80000824]:sw t6, 260(ra)<br>    |
|  97|[0x80002394]<br>0x00002000|- rs1_w0_val == 32768<br>                                                                                                                         |[0x80000830]:URSUBW t6, t5, t4<br> [0x80000834]:sw t6, 264(ra)<br>    |
