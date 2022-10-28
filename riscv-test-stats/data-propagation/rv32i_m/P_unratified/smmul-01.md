
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000850')]      |
| SIG_REGION                | [('0x80002210', '0x800023a0', '100 words')]      |
| COV_LABELS                | smmul      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smmul-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 99      |
| STAT1                     | 96      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000468]:SMMUL t6, t5, t4
      [0x8000046c]:sw t6, 48(ra)
 -- Signature Address: 0x800022c0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -129
      - rs1_w0_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000610]:SMMUL t6, t5, t4
      [0x80000614]:sw t6, 148(ra)
 -- Signature Address: 0x80002324 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == -129




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:SMMUL t6, t5, t4
      [0x80000834]:sw t6, 260(ra)
 -- Signature Address: 0x80002394 Data: 0xFFFFFFF0
 -- Redundant Coverpoints hit by the op
      - opcode : smmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w0_val == 32






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

|s.no|        signature         |                                                                        coverpoints                                                                         |                                code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : smmul<br> - rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br> - rs2_w0_val == 32<br> - rs1_w0_val == 32<br>                    |[0x80000108]:SMMUL a0, a0, a0<br> [0x8000010c]:sw a0, 0(s1)<br>     |
|   2|[0x80002214]<br>0x00000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                          |[0x8000011c]:SMMUL zero, gp, gp<br> [0x80000120]:sw zero, 4(s1)<br> |
|   3|[0x80002218]<br>0xD5555555|- rs1 : x28<br> - rs2 : x19<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w0_val == -2147483648<br> - rs2_w0_val == 1431655765<br> |[0x80000130]:SMMUL t6, t3, s3<br> [0x80000134]:sw t6, 8(s1)<br>     |
|   4|[0x8000221c]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == -2<br>                                 |[0x80000144]:SMMUL a2, s10, a2<br> [0x80000148]:sw a2, 12(s1)<br>   |
|   5|[0x80002220]<br>0xFFFDFFFF|- rs1 : x22<br> - rs2 : x4<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 524288<br>                             |[0x80000158]:SMMUL s6, s6, tp<br> [0x8000015c]:sw s6, 16(s1)<br>    |
|   6|[0x80002224]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x22<br> - rd : x16<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 1<br>                                                          |[0x8000016c]:SMMUL a6, t2, s6<br> [0x80000170]:sw a6, 20(s1)<br>    |
|   7|[0x80002228]<br>0x00000004|- rs1 : x12<br> - rs2 : x25<br> - rd : x4<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -65<br>                                                        |[0x80000180]:SMMUL tp, a2, s9<br> [0x80000184]:sw tp, 24(s1)<br>    |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x25<br> - rs2 : x15<br> - rd : x13<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 0<br>                                                         |[0x80000194]:SMMUL a3, s9, a5<br> [0x80000198]:sw a3, 28(s1)<br>    |
|   9|[0x80002230]<br>0xFFFFFFDF|- rs1 : x14<br> - rs2 : x20<br> - rd : x15<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 2048<br>                                                       |[0x800001ac]:SMMUL a5, a4, s4<br> [0x800001b0]:sw a5, 32(s1)<br>    |
|  10|[0x80002234]<br>0x00040000|- rs1 : x31<br> - rs2 : x7<br> - rd : x25<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == -33554433<br>                                                   |[0x800001c4]:SMMUL s9, t6, t2<br> [0x800001c8]:sw s9, 36(s1)<br>    |
|  11|[0x80002238]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x30<br> - rd : x17<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == 128<br>                                                        |[0x800001d8]:SMMUL a7, a6, t5<br> [0x800001dc]:sw a7, 40(s1)<br>    |
|  12|[0x8000223c]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x6<br> - rd : x23<br> - rs2_w0_val == -8388609<br>                                                                                   |[0x800001ec]:SMMUL s7, sp, t1<br> [0x800001f0]:sw s7, 44(s1)<br>    |
|  13|[0x80002240]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x18<br> - rd : x6<br> - rs2_w0_val == -4194305<br>                                                                                  |[0x80000200]:SMMUL t1, a3, s2<br> [0x80000204]:sw t1, 48(s1)<br>    |
|  14|[0x80002244]<br>0x00004000|- rs1 : x24<br> - rs2 : x28<br> - rd : x1<br> - rs2_w0_val == -2097153<br>                                                                                  |[0x80000218]:SMMUL ra, s8, t3<br> [0x8000021c]:sw ra, 52(s1)<br>    |
|  15|[0x80002248]<br>0xFFFFFFF7|- rs1 : x30<br> - rs2 : x11<br> - rd : x2<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == 32768<br>                                                        |[0x8000022c]:SMMUL sp, t5, a1<br> [0x80000230]:sw sp, 56(s1)<br>    |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x11<br> - rs2 : x5<br> - rd : x24<br> - rs2_w0_val == -524289<br> - rs1_w0_val == -5<br>                                                            |[0x80000240]:SMMUL s8, a1, t0<br> [0x80000244]:sw s8, 60(s1)<br>    |
|  17|[0x80002250]<br>0x00000000|- rs1 : x29<br> - rs2 : x26<br> - rd : x8<br> - rs2_w0_val == -262145<br> - rs1_w0_val == -8193<br>                                                         |[0x80000258]:SMMUL fp, t4, s10<br> [0x8000025c]:sw fp, 64(s1)<br>   |
|  18|[0x80002254]<br>0x00000001|- rs1 : x4<br> - rs2 : x8<br> - rd : x30<br> - rs2_w0_val == -131073<br> - rs1_w0_val == -32769<br>                                                         |[0x80000278]:SMMUL t5, tp, fp<br> [0x8000027c]:sw t5, 0(a0)<br>     |
|  19|[0x80002258]<br>0xFFFFFFBF|- rs1 : x9<br> - rs2 : x29<br> - rd : x14<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 4194304<br>                                                        |[0x8000028c]:SMMUL a4, s1, t4<br> [0x80000290]:sw a4, 4(a0)<br>     |
|  20|[0x8000225c]<br>0x00000200|- rs1 : x1<br> - rs2 : x9<br> - rd : x29<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -67108865<br>                                                       |[0x800002a4]:SMMUL t4, ra, s1<br> [0x800002a8]:sw t4, 8(a0)<br>     |
|  21|[0x80002260]<br>0xFFFFFEFF|- rs1 : x23<br> - rs2 : x21<br> - rd : x5<br> - rs2_w0_val == -16385<br> - rs1_w0_val == 67108864<br>                                                       |[0x800002b8]:SMMUL t0, s7, s5<br> [0x800002bc]:sw t0, 12(a0)<br>    |
|  22|[0x80002264]<br>0x00000080|- rs1 : x8<br> - rs2 : x27<br> - rd : x3<br> - rs2_w0_val == -8193<br>                                                                                      |[0x800002d0]:SMMUL gp, fp, s11<br> [0x800002d4]:sw gp, 16(a0)<br>   |
|  23|[0x80002268]<br>0xFFFFFDFF|- rs1 : x20<br> - rs2 : x1<br> - rd : x21<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 536870912<br>                                                       |[0x800002e4]:SMMUL s5, s4, ra<br> [0x800002e8]:sw s5, 20(a0)<br>    |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x19<br> - rs2 : x14<br> - rd : x27<br> - rs2_w0_val == -2049<br> - rs1_w0_val == -33<br>                                                            |[0x800002f8]:SMMUL s11, s3, a4<br> [0x800002fc]:sw s11, 24(a0)<br>  |
|  25|[0x80002270]<br>0xFFFFFEAA|- rs1 : x5<br> - rs2 : x2<br> - rd : x7<br> - rs2_w0_val == -1025<br> - rs1_w0_val == 1431655765<br>                                                        |[0x8000030c]:SMMUL t2, t0, sp<br> [0x80000310]:sw t2, 28(a0)<br>    |
|  26|[0x80002274]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x23<br> - rd : x26<br> - rs2_w0_val == -513<br> - rs1_w0_val == 4096<br>                                                            |[0x8000031c]:SMMUL s10, s2, s7<br> [0x80000320]:sw s10, 32(a0)<br>  |
|  27|[0x80002278]<br>0x00000000|- rs1 : x27<br> - rs2 : x0<br> - rd : x28<br> - rs2_w0_val == 0<br>                                                                                         |[0x8000032c]:SMMUL t3, s11, zero<br> [0x80000330]:sw t3, 36(a0)<br> |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x0<br> - rs2 : x16<br> - rd : x18<br> - rs2_w0_val == -129<br>                                                                                      |[0x8000033c]:SMMUL s2, zero, a6<br> [0x80000340]:sw s2, 40(a0)<br>  |
|  29|[0x80002280]<br>0xFFFFFFEF|- rs1 : x21<br> - rs2 : x31<br> - rd : x9<br> - rs2_w0_val == -65<br> - rs1_w0_val == 1073741824<br>                                                        |[0x8000034c]:SMMUL s1, s5, t6<br> [0x80000350]:sw s1, 44(a0)<br>    |
|  30|[0x80002284]<br>0x00000000|- rs1 : x6<br> - rs2 : x17<br> - rd : x20<br> - rs2_w0_val == -33<br> - rs1_w0_val == -131073<br>                                                           |[0x80000360]:SMMUL s4, t1, a7<br> [0x80000364]:sw s4, 48(a0)<br>    |
|  31|[0x80002288]<br>0x00000000|- rs1 : x17<br> - rs2 : x13<br> - rd : x11<br> - rs2_w0_val == -17<br> - rs1_w0_val == -1025<br>                                                            |[0x80000370]:SMMUL a1, a7, a3<br> [0x80000374]:sw a1, 52(a0)<br>    |
|  32|[0x8000228c]<br>0x00000003|- rs1 : x15<br> - rs2 : x24<br> - rd : x19<br> - rs2_w0_val == -9<br>                                                                                       |[0x80000384]:SMMUL s3, a5, s8<br> [0x80000388]:sw s3, 56(a0)<br>    |
|  33|[0x80002290]<br>0xFFFFFFFF|- rs2_w0_val == -5<br>                                                                                                                                      |[0x8000039c]:SMMUL t6, t5, t4<br> [0x800003a0]:sw t6, 0(ra)<br>     |
|  34|[0x80002294]<br>0xFFFFFFFF|- rs2_w0_val == -3<br> - rs1_w0_val == 256<br>                                                                                                              |[0x800003ac]:SMMUL t6, t5, t4<br> [0x800003b0]:sw t6, 4(ra)<br>     |
|  35|[0x80002298]<br>0xFFFFFFFF|- rs2_w0_val == -2<br>                                                                                                                                      |[0x800003bc]:SMMUL t6, t5, t4<br> [0x800003c0]:sw t6, 8(ra)<br>     |
|  36|[0x8000229c]<br>0xFFFFF000|- rs2_w0_val == -2147483648<br> - rs1_w0_val == 8192<br>                                                                                                    |[0x800003cc]:SMMUL t6, t5, t4<br> [0x800003d0]:sw t6, 12(ra)<br>    |
|  37|[0x800022a0]<br>0xFFFFDFFF|- rs2_w0_val == 1073741824<br>                                                                                                                              |[0x800003e0]:SMMUL t6, t5, t4<br> [0x800003e4]:sw t6, 16(ra)<br>    |
|  38|[0x800022a4]<br>0x0FFFFFFF|- rs2_w0_val == 536870912<br> - rs1_w0_val == 2147483647<br>                                                                                                |[0x800003f4]:SMMUL t6, t5, t4<br> [0x800003f8]:sw t6, 20(ra)<br>    |
|  39|[0x800022a8]<br>0x07FFFFFF|- rs2_w0_val == 268435456<br>                                                                                                                               |[0x80000408]:SMMUL t6, t5, t4<br> [0x8000040c]:sw t6, 24(ra)<br>    |
|  40|[0x800022ac]<br>0x00000400|- rs2_w0_val == 134217728<br>                                                                                                                               |[0x80000418]:SMMUL t6, t5, t4<br> [0x8000041c]:sw t6, 28(ra)<br>    |
|  41|[0x800022b0]<br>0x00000000|- rs2_w0_val == 67108864<br>                                                                                                                                |[0x80000428]:SMMUL t6, t5, t4<br> [0x8000042c]:sw t6, 32(ra)<br>    |
|  42|[0x800022b4]<br>0x00002000|- rs2_w0_val == 33554432<br> - rs1_w0_val == 1048576<br>                                                                                                    |[0x80000438]:SMMUL t6, t5, t4<br> [0x8000043c]:sw t6, 36(ra)<br>    |
|  43|[0x800022b8]<br>0x00100000|- rs2_w0_val == 16777216<br> - rs1_w0_val == 268435456<br>                                                                                                  |[0x80000448]:SMMUL t6, t5, t4<br> [0x8000044c]:sw t6, 40(ra)<br>    |
|  44|[0x800022bc]<br>0xFFFFFFFF|- rs2_w0_val == 8388608<br>                                                                                                                                 |[0x80000458]:SMMUL t6, t5, t4<br> [0x8000045c]:sw t6, 44(ra)<br>    |
|  45|[0x800022c4]<br>0x00000000|- rs2_w0_val == 1048576<br> - rs1_w0_val == 16<br>                                                                                                          |[0x80000478]:SMMUL t6, t5, t4<br> [0x8000047c]:sw t6, 52(ra)<br>    |
|  46|[0x800022c8]<br>0x00000000|- rs2_w0_val == 262144<br> - rs1_w0_val == 8<br>                                                                                                            |[0x80000488]:SMMUL t6, t5, t4<br> [0x8000048c]:sw t6, 56(ra)<br>    |
|  47|[0x800022cc]<br>0xFFFFFFFF|- rs1_w0_val == 4<br>                                                                                                                                       |[0x80000498]:SMMUL t6, t5, t4<br> [0x8000049c]:sw t6, 60(ra)<br>    |
|  48|[0x800022d0]<br>0x00000000|- rs2_w0_val == 4194304<br> - rs1_w0_val == 2<br>                                                                                                           |[0x800004a8]:SMMUL t6, t5, t4<br> [0x800004ac]:sw t6, 64(ra)<br>    |
|  49|[0x800022d4]<br>0x00000000|- rs1_w0_val == -1<br>                                                                                                                                      |[0x800004b8]:SMMUL t6, t5, t4<br> [0x800004bc]:sw t6, 68(ra)<br>    |
|  50|[0x800022d8]<br>0xFFFFFFFF|- rs2_w0_val == 2097152<br>                                                                                                                                 |[0x800004c8]:SMMUL t6, t5, t4<br> [0x800004cc]:sw t6, 72(ra)<br>    |
|  51|[0x800022dc]<br>0xFFFFFFBF|- rs2_w0_val == 524288<br> - rs1_w0_val == -524289<br>                                                                                                      |[0x800004dc]:SMMUL t6, t5, t4<br> [0x800004e0]:sw t6, 76(ra)<br>    |
|  52|[0x800022e0]<br>0x00000000|- rs2_w0_val == 131072<br>                                                                                                                                  |[0x800004ec]:SMMUL t6, t5, t4<br> [0x800004f0]:sw t6, 80(ra)<br>    |
|  53|[0x800022e4]<br>0x00000000|- rs2_w0_val == 65536<br> - rs1_w0_val == 16384<br>                                                                                                         |[0x800004fc]:SMMUL t6, t5, t4<br> [0x80000500]:sw t6, 84(ra)<br>    |
|  54|[0x800022e8]<br>0xFFFFFFFF|- rs2_w0_val == 32768<br> - rs1_w0_val == -16385<br>                                                                                                        |[0x80000510]:SMMUL t6, t5, t4<br> [0x80000514]:sw t6, 88(ra)<br>    |
|  55|[0x800022ec]<br>0xFFFFFFF7|- rs2_w0_val == 16384<br> - rs1_w0_val == -2097153<br>                                                                                                      |[0x80000524]:SMMUL t6, t5, t4<br> [0x80000528]:sw t6, 92(ra)<br>    |
|  56|[0x800022f0]<br>0x00000000|- rs2_w0_val == 8192<br>                                                                                                                                    |[0x80000534]:SMMUL t6, t5, t4<br> [0x80000538]:sw t6, 96(ra)<br>    |
|  57|[0x800022f4]<br>0xFFFFFFFD|- rs2_w0_val == 4096<br>                                                                                                                                    |[0x80000548]:SMMUL t6, t5, t4<br> [0x8000054c]:sw t6, 100(ra)<br>   |
|  58|[0x800022f8]<br>0xFFFFFFFF|- rs2_w0_val == 2048<br>                                                                                                                                    |[0x8000055c]:SMMUL t6, t5, t4<br> [0x80000560]:sw t6, 104(ra)<br>   |
|  59|[0x800022fc]<br>0xFFFFFFFF|- rs2_w0_val == 1024<br>                                                                                                                                    |[0x8000056c]:SMMUL t6, t5, t4<br> [0x80000570]:sw t6, 108(ra)<br>   |
|  60|[0x80002300]<br>0xFFFFFFFF|- rs2_w0_val == 512<br> - rs1_w0_val == -129<br>                                                                                                            |[0x8000057c]:SMMUL t6, t5, t4<br> [0x80000580]:sw t6, 112(ra)<br>   |
|  61|[0x80002304]<br>0xFFFFFFFF|- rs2_w0_val == 256<br>                                                                                                                                     |[0x8000058c]:SMMUL t6, t5, t4<br> [0x80000590]:sw t6, 116(ra)<br>   |
|  62|[0x80002308]<br>0x00000000|- rs2_w0_val == 128<br> - rs1_w0_val == 8388608<br>                                                                                                         |[0x8000059c]:SMMUL t6, t5, t4<br> [0x800005a0]:sw t6, 120(ra)<br>   |
|  63|[0x8000230c]<br>0xFFFFFFFF|- rs2_w0_val == 64<br>                                                                                                                                      |[0x800005ac]:SMMUL t6, t5, t4<br> [0x800005b0]:sw t6, 124(ra)<br>   |
|  64|[0x80002310]<br>0xFFFFFFFF|- rs2_w0_val == 16<br> - rs1_w0_val == -17<br>                                                                                                              |[0x800005bc]:SMMUL t6, t5, t4<br> [0x800005c0]:sw t6, 128(ra)<br>   |
|  65|[0x80002314]<br>0x00000000|- rs2_w0_val == 8<br>                                                                                                                                       |[0x800005cc]:SMMUL t6, t5, t4<br> [0x800005d0]:sw t6, 132(ra)<br>   |
|  66|[0x80002318]<br>0x00000000|- rs2_w0_val == 4<br>                                                                                                                                       |[0x800005dc]:SMMUL t6, t5, t4<br> [0x800005e0]:sw t6, 136(ra)<br>   |
|  67|[0x8000231c]<br>0xFFFFFFFF|- rs2_w0_val == 2<br>                                                                                                                                       |[0x800005f0]:SMMUL t6, t5, t4<br> [0x800005f4]:sw t6, 140(ra)<br>   |
|  68|[0x80002320]<br>0xFFFFFFFF|- rs2_w0_val == 1<br>                                                                                                                                       |[0x80000600]:SMMUL t6, t5, t4<br> [0x80000604]:sw t6, 144(ra)<br>   |
|  69|[0x80002328]<br>0xFFFFFFFF|- rs2_w0_val == -1<br>                                                                                                                                      |[0x80000624]:SMMUL t6, t5, t4<br> [0x80000628]:sw t6, 152(ra)<br>   |
|  70|[0x8000232c]<br>0x00020000|- rs1_w0_val == -1073741825<br>                                                                                                                             |[0x8000063c]:SMMUL t6, t5, t4<br> [0x80000640]:sw t6, 156(ra)<br>   |
|  71|[0x80002330]<br>0xFFFFFFF7|- rs1_w0_val == -536870913<br>                                                                                                                              |[0x80000650]:SMMUL t6, t5, t4<br> [0x80000654]:sw t6, 160(ra)<br>   |
|  72|[0x80002334]<br>0x00000001|- rs1_w0_val == -268435457<br>                                                                                                                              |[0x80000664]:SMMUL t6, t5, t4<br> [0x80000668]:sw t6, 164(ra)<br>   |
|  73|[0x80002338]<br>0xFFEFFFFF|- rs1_w0_val == -134217729<br>                                                                                                                              |[0x80000678]:SMMUL t6, t5, t4<br> [0x8000067c]:sw t6, 168(ra)<br>   |
|  74|[0x8000233c]<br>0x00000000|- rs1_w0_val == -16777217<br>                                                                                                                               |[0x8000068c]:SMMUL t6, t5, t4<br> [0x80000690]:sw t6, 172(ra)<br>   |
|  75|[0x80002340]<br>0x00100000|- rs1_w0_val == -8388609<br>                                                                                                                                |[0x800006a4]:SMMUL t6, t5, t4<br> [0x800006a8]:sw t6, 176(ra)<br>   |
|  76|[0x80002344]<br>0x00004000|- rs1_w0_val == -4194305<br>                                                                                                                                |[0x800006bc]:SMMUL t6, t5, t4<br> [0x800006c0]:sw t6, 180(ra)<br>   |
|  77|[0x80002348]<br>0xFFFFFFFF|- rs1_w0_val == -1048577<br>                                                                                                                                |[0x800006d0]:SMMUL t6, t5, t4<br> [0x800006d4]:sw t6, 184(ra)<br>   |
|  78|[0x8000234c]<br>0x00010000|- rs1_w0_val == -262145<br>                                                                                                                                 |[0x800006e4]:SMMUL t6, t5, t4<br> [0x800006e8]:sw t6, 188(ra)<br>   |
|  79|[0x80002350]<br>0xFFFFFFFF|- rs1_w0_val == -65537<br>                                                                                                                                  |[0x800006f8]:SMMUL t6, t5, t4<br> [0x800006fc]:sw t6, 192(ra)<br>   |
|  80|[0x80002354]<br>0x00000000|- rs1_w0_val == -4097<br>                                                                                                                                   |[0x8000070c]:SMMUL t6, t5, t4<br> [0x80000710]:sw t6, 196(ra)<br>   |
|  81|[0x80002358]<br>0xFFFFFFFF|- rs1_w0_val == -9<br>                                                                                                                                      |[0x8000071c]:SMMUL t6, t5, t4<br> [0x80000720]:sw t6, 200(ra)<br>   |
|  82|[0x8000235c]<br>0xFFFFFFFF|- rs1_w0_val == -3<br>                                                                                                                                      |[0x80000730]:SMMUL t6, t5, t4<br> [0x80000734]:sw t6, 204(ra)<br>   |
|  83|[0x80002360]<br>0xFFF7FFFF|- rs1_w0_val == 134217728<br>                                                                                                                               |[0x80000744]:SMMUL t6, t5, t4<br> [0x80000748]:sw t6, 208(ra)<br>   |
|  84|[0x80002364]<br>0x00000001|- rs1_w0_val == -2049<br>                                                                                                                                   |[0x8000075c]:SMMUL t6, t5, t4<br> [0x80000760]:sw t6, 212(ra)<br>   |
|  85|[0x80002368]<br>0xFF555555|- rs1_w0_val == 33554432<br>                                                                                                                                |[0x80000770]:SMMUL t6, t5, t4<br> [0x80000774]:sw t6, 216(ra)<br>   |
|  86|[0x8000236c]<br>0x00004000|- rs1_w0_val == 16777216<br>                                                                                                                                |[0x80000780]:SMMUL t6, t5, t4<br> [0x80000784]:sw t6, 220(ra)<br>   |
|  87|[0x80002370]<br>0x00000000|- rs1_w0_val == 2097152<br>                                                                                                                                 |[0x80000790]:SMMUL t6, t5, t4<br> [0x80000794]:sw t6, 224(ra)<br>   |
|  88|[0x80002374]<br>0xFFFFFDFF|- rs1_w0_val == 262144<br>                                                                                                                                  |[0x800007a4]:SMMUL t6, t5, t4<br> [0x800007a8]:sw t6, 228(ra)<br>   |
|  89|[0x80002378]<br>0xFFFF5555|- rs1_w0_val == 131072<br>                                                                                                                                  |[0x800007b8]:SMMUL t6, t5, t4<br> [0x800007bc]:sw t6, 232(ra)<br>   |
|  90|[0x8000237c]<br>0xFFFFFFFF|- rs1_w0_val == 65536<br>                                                                                                                                   |[0x800007c8]:SMMUL t6, t5, t4<br> [0x800007cc]:sw t6, 236(ra)<br>   |
|  91|[0x80002380]<br>0x00000155|- rs1_w0_val == 1024<br>                                                                                                                                    |[0x800007dc]:SMMUL t6, t5, t4<br> [0x800007e0]:sw t6, 240(ra)<br>   |
|  92|[0x80002384]<br>0xFFFFFFFF|- rs1_w0_val == 512<br>                                                                                                                                     |[0x800007f0]:SMMUL t6, t5, t4<br> [0x800007f4]:sw t6, 244(ra)<br>   |
|  93|[0x80002388]<br>0xFFFFFFFF|- rs1_w0_val == -513<br>                                                                                                                                    |[0x80000800]:SMMUL t6, t5, t4<br> [0x80000804]:sw t6, 248(ra)<br>   |
|  94|[0x8000238c]<br>0xFFFFFFFF|- rs1_w0_val == -257<br>                                                                                                                                    |[0x80000810]:SMMUL t6, t5, t4<br> [0x80000814]:sw t6, 252(ra)<br>   |
|  95|[0x80002390]<br>0x00000000|- rs1_w0_val == 64<br>                                                                                                                                      |[0x80000820]:SMMUL t6, t5, t4<br> [0x80000824]:sw t6, 256(ra)<br>   |
|  96|[0x80002398]<br>0xFFFFFFFF|- rs2_w0_val == -257<br>                                                                                                                                    |[0x80000840]:SMMUL t6, t5, t4<br> [0x80000844]:sw t6, 264(ra)<br>   |
