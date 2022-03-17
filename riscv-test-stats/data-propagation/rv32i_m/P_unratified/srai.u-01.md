
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004c0')]      |
| SIG_REGION                | [('0x80002210', '0x80002330', '72 words')]      |
| COV_LABELS                | srai.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srai.u-01.S    |
| Total Number of coverpoints| 150     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 70      |
| STAT1                     | 69      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a0]:SRAI_U t6, t5, 30
      [0x800004a4]:sw t6, 188(gp)
 -- Signature Address: 0x80002320 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val == -262145
      - imm_val == 30






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

|s.no|        signature         |                                                    coverpoints                                                     |                                 code                                 |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFE0|- opcode : srai.u<br> - rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - imm_val == 21<br> - rs1_val == -67108865<br> |[0x80000108]:SRAI_U t4, t4, 21<br> [0x8000010c]:sw t4, 0(a4)<br>      |
|   2|[0x80002214]<br>0x00040000|- rs1 : x23<br> - rd : x25<br> - rs1 != rd<br> - rs1_val == 2147483647<br>                                          |[0x80000118]:SRAI_U s9, s7, 13<br> [0x8000011c]:sw s9, 4(a4)<br>      |
|   3|[0x80002218]<br>0xFFFFFC00|- rs1 : x7<br> - rd : x22<br> - rs1_val == -1073741825<br>                                                          |[0x80000128]:SRAI_U s6, t2, 20<br> [0x8000012c]:sw s6, 8(a4)<br>      |
|   4|[0x8000221c]<br>0xFFFFFF80|- rs1 : x3<br> - rd : x12<br> - rs1_val == -536870913<br>                                                           |[0x80000138]:SRAI_U a2, gp, 22<br> [0x8000013c]:sw a2, 12(a4)<br>     |
|   5|[0x80002220]<br>0xFFFFFF80|- rs1 : x21<br> - rd : x15<br> - rs1_val == -268435457<br>                                                          |[0x80000148]:SRAI_U a5, s5, 21<br> [0x8000014c]:sw a5, 16(a4)<br>     |
|   6|[0x80002224]<br>0xFFFFFFE0|- rs1 : x9<br> - rd : x4<br> - rs1_val == -134217729<br>                                                            |[0x80000158]:SRAI_U tp, s1, 22<br> [0x8000015c]:sw tp, 20(a4)<br>     |
|   7|[0x80002228]<br>0xFFFFFFF8|- rs1 : x5<br> - rd : x27<br> - rs1_val == -33554433<br>                                                            |[0x80000168]:SRAI_U s11, t0, 22<br> [0x8000016c]:sw s11, 24(a4)<br>   |
|   8|[0x8000222c]<br>0xFFC00000|- rs1 : x13<br> - rd : x9<br> - rs1_val == -16777217<br> - imm_val == 2<br>                                         |[0x80000178]:SRAI_U s1, a3, 2<br> [0x8000017c]:sw s1, 28(a4)<br>      |
|   9|[0x80002230]<br>0x00000000|- rs1 : x11<br> - rd : x6<br> - rs1_val == -8388609<br>                                                             |[0x80000188]:SRAI_U t1, a1, 28<br> [0x8000018c]:sw t1, 32(a4)<br>     |
|  10|[0x80002234]<br>0xFFF80000|- rs1 : x31<br> - rd : x26<br> - rs1_val == -4194305<br>                                                            |[0x80000198]:SRAI_U s10, t6, 3<br> [0x8000019c]:sw s10, 36(a4)<br>    |
|  11|[0x80002238]<br>0xFFFC0000|- rs1 : x20<br> - rd : x10<br> - rs1_val == -2097153<br>                                                            |[0x800001a8]:SRAI_U a0, s4, 3<br> [0x800001ac]:sw a0, 40(a4)<br>      |
|  12|[0x8000223c]<br>0xFFFFFFFE|- rs1 : x30<br> - rd : x20<br> - rs1_val == -1048577<br>                                                            |[0x800001b8]:SRAI_U s4, t5, 19<br> [0x800001bc]:sw s4, 44(a4)<br>     |
|  13|[0x80002240]<br>0xFFFFC000|- rs1 : x4<br> - rd : x16<br> - rs1_val == -524289<br>                                                              |[0x800001c8]:SRAI_U a6, tp, 5<br> [0x800001cc]:sw a6, 48(a4)<br>      |
|  14|[0x80002244]<br>0x00000000|- rs1 : x6<br> - rd : x0<br> - rs1_val == -262145<br> - imm_val == 30<br>                                           |[0x800001d8]:SRAI_U zero, t1, 30<br> [0x800001dc]:sw zero, 52(a4)<br> |
|  15|[0x80002248]<br>0xFFFFFFFE|- rs1 : x15<br> - rd : x21<br> - rs1_val == -131073<br> - imm_val == 16<br>                                         |[0x800001e8]:SRAI_U s5, a5, 16<br> [0x800001ec]:sw s5, 56(a4)<br>     |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x17<br> - rd : x28<br> - rs1_val == -65537<br> - imm_val == 23<br>                                          |[0x800001f8]:SRAI_U t3, a7, 23<br> [0x800001fc]:sw t3, 60(a4)<br>     |
|  17|[0x80002250]<br>0xFFFFE000|- rs1 : x19<br> - rd : x13<br> - rs1_val == -32769<br>                                                              |[0x80000208]:SRAI_U a3, s3, 2<br> [0x8000020c]:sw a3, 64(a4)<br>      |
|  18|[0x80002254]<br>0xFFFFFFFF|- rs1 : x22<br> - rd : x1<br> - rs1_val == -16385<br> - imm_val == 15<br>                                           |[0x80000218]:SRAI_U ra, s6, 15<br> [0x8000021c]:sw ra, 68(a4)<br>     |
|  19|[0x80002258]<br>0x00000000|- rs1 : x2<br> - rd : x5<br> - rs1_val == -8193<br>                                                                 |[0x80000228]:SRAI_U t0, sp, 30<br> [0x8000022c]:sw t0, 72(a4)<br>     |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x26<br> - rd : x3<br> - rs1_val == -4097<br>                                                                |[0x80000238]:SRAI_U gp, s10, 19<br> [0x8000023c]:sw gp, 76(a4)<br>    |
|  21|[0x80002260]<br>0xFFFFFFFF|- rs1 : x16<br> - rd : x8<br> - rs1_val == -2049<br>                                                                |[0x80000248]:SRAI_U fp, a6, 11<br> [0x8000024c]:sw fp, 80(a4)<br>     |
|  22|[0x80002264]<br>0xFFFFFF80|- rs1 : x24<br> - rd : x11<br> - rs1_val == -1025<br>                                                               |[0x8000025c]:SRAI_U a1, s8, 3<br> [0x80000260]:sw a1, 0(gp)<br>       |
|  23|[0x80002268]<br>0x00000000|- rs1 : x18<br> - rd : x2<br> - rs1_val == -513<br>                                                                 |[0x80000268]:SRAI_U sp, s2, 17<br> [0x8000026c]:sw sp, 4(gp)<br>      |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x25<br> - rd : x23<br> - rs1_val == -257<br>                                                                |[0x80000274]:SRAI_U s7, s9, 14<br> [0x80000278]:sw s7, 8(gp)<br>      |
|  25|[0x80002270]<br>0x00000000|- rs1 : x12<br> - rd : x14<br> - rs1_val == -129<br>                                                                |[0x80000280]:SRAI_U a4, a2, 16<br> [0x80000284]:sw a4, 12(gp)<br>     |
|  26|[0x80002274]<br>0x00000000|- rs1 : x0<br> - rd : x31<br>                                                                                       |[0x8000028c]:SRAI_U t6, zero, 2<br> [0x80000290]:sw t6, 16(gp)<br>    |
|  27|[0x80002278]<br>0x00000000|- rs1 : x8<br> - rd : x17<br> - rs1_val == -33<br>                                                                  |[0x80000298]:SRAI_U a7, fp, 13<br> [0x8000029c]:sw a7, 20(gp)<br>     |
|  28|[0x8000227c]<br>0xFFFFFFFF|- rs1 : x10<br> - rd : x18<br> - rs1_val == -17<br>                                                                 |[0x800002a4]:SRAI_U s2, a0, 5<br> [0x800002a8]:sw s2, 24(gp)<br>      |
|  29|[0x80002280]<br>0x00000000|- rs1 : x27<br> - rd : x19<br> - rs1_val == -9<br>                                                                  |[0x800002b0]:SRAI_U s3, s11, 16<br> [0x800002b4]:sw s3, 28(gp)<br>    |
|  30|[0x80002284]<br>0x00000000|- rs1 : x28<br> - rd : x24<br> - rs1_val == -5<br>                                                                  |[0x800002bc]:SRAI_U s8, t3, 18<br> [0x800002c0]:sw s8, 32(gp)<br>     |
|  31|[0x80002288]<br>0x00000000|- rs1 : x14<br> - rd : x7<br> - rs1_val == -3<br>                                                                   |[0x800002c8]:SRAI_U t2, a4, 11<br> [0x800002cc]:sw t2, 36(gp)<br>     |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x1<br> - rd : x30<br> - rs1_val == -2<br> - imm_val == 29<br>                                               |[0x800002d4]:SRAI_U t5, ra, 29<br> [0x800002d8]:sw t5, 40(gp)<br>     |
|  33|[0x80002290]<br>0x00000000|- imm_val == 27<br> - rs1_val == 256<br>                                                                            |[0x800002e0]:SRAI_U t6, t5, 27<br> [0x800002e4]:sw t6, 44(gp)<br>     |
|  34|[0x80002294]<br>0xFFFFFF80|- rs1_val == -2147483648<br>                                                                                        |[0x800002ec]:SRAI_U t6, t5, 24<br> [0x800002f0]:sw t6, 48(gp)<br>     |
|  35|[0x80002298]<br>0x00000100|- rs1_val == 1073741824<br>                                                                                         |[0x800002f8]:SRAI_U t6, t5, 22<br> [0x800002fc]:sw t6, 52(gp)<br>     |
|  36|[0x8000229c]<br>0x00000400|- rs1_val == 536870912<br>                                                                                          |[0x80000304]:SRAI_U t6, t5, 19<br> [0x80000308]:sw t6, 56(gp)<br>     |
|  37|[0x800022a0]<br>0x00000000|- rs1_val == 268435456<br>                                                                                          |[0x80000310]:SRAI_U t6, t5, 30<br> [0x80000314]:sw t6, 60(gp)<br>     |
|  38|[0x800022a4]<br>0x04000000|- rs1_val == 134217728<br> - imm_val == 1<br>                                                                       |[0x8000031c]:SRAI_U t6, t5, 1<br> [0x80000320]:sw t6, 64(gp)<br>      |
|  39|[0x800022a8]<br>0x00800000|- rs1_val == 67108864<br>                                                                                           |[0x80000328]:SRAI_U t6, t5, 3<br> [0x8000032c]:sw t6, 68(gp)<br>      |
|  40|[0x800022ac]<br>0x00000000|- rs1_val == 32<br>                                                                                                 |[0x80000334]:SRAI_U t6, t5, 12<br> [0x80000338]:sw t6, 72(gp)<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs1_val == 16<br>                                                                                                 |[0x80000340]:SRAI_U t6, t5, 27<br> [0x80000344]:sw t6, 76(gp)<br>     |
|  42|[0x800022b4]<br>0x00000004|- rs1_val == 8<br>                                                                                                  |[0x8000034c]:SRAI_U t6, t5, 1<br> [0x80000350]:sw t6, 80(gp)<br>      |
|  43|[0x800022b8]<br>0x00000002|- rs1_val == 4<br>                                                                                                  |[0x80000358]:SRAI_U t6, t5, 1<br> [0x8000035c]:sw t6, 84(gp)<br>      |
|  44|[0x800022bc]<br>0x00000000|- rs1_val == 2<br>                                                                                                  |[0x80000364]:SRAI_U t6, t5, 20<br> [0x80000368]:sw t6, 88(gp)<br>     |
|  45|[0x800022c0]<br>0x00000000|- rs1_val == 1<br>                                                                                                  |[0x80000370]:SRAI_U t6, t5, 17<br> [0x80000374]:sw t6, 92(gp)<br>     |
|  46|[0x800022c4]<br>0x00000001|- imm_val == 8<br>                                                                                                  |[0x8000037c]:SRAI_U t6, t5, 8<br> [0x80000380]:sw t6, 96(gp)<br>      |
|  47|[0x800022c8]<br>0x00000004|- rs1_val == 64<br> - imm_val == 4<br>                                                                              |[0x80000388]:SRAI_U t6, t5, 4<br> [0x8000038c]:sw t6, 100(gp)<br>     |
|  48|[0x800022cc]<br>0xFFFFFFD5|- rs1_val == -1431655766<br>                                                                                        |[0x80000398]:SRAI_U t6, t5, 25<br> [0x8000039c]:sw t6, 104(gp)<br>    |
|  49|[0x800022d0]<br>0x2AAAAAAB|- rs1_val == 1431655765<br>                                                                                         |[0x800003a8]:SRAI_U t6, t5, 1<br> [0x800003ac]:sw t6, 108(gp)<br>     |
|  50|[0x800022d4]<br>0x00000000|- imm_val == 10<br>                                                                                                 |[0x800003b4]:SRAI_U t6, t5, 10<br> [0x800003b8]:sw t6, 112(gp)<br>    |
|  51|[0x800022d8]<br>0x00004000|- rs1_val == 33554432<br>                                                                                           |[0x800003c0]:SRAI_U t6, t5, 11<br> [0x800003c4]:sw t6, 116(gp)<br>    |
|  52|[0x800022dc]<br>0x00100000|- rs1_val == 16777216<br>                                                                                           |[0x800003cc]:SRAI_U t6, t5, 4<br> [0x800003d0]:sw t6, 120(gp)<br>     |
|  53|[0x800022e0]<br>0x00100000|- rs1_val == 8388608<br>                                                                                            |[0x800003d8]:SRAI_U t6, t5, 3<br> [0x800003dc]:sw t6, 124(gp)<br>     |
|  54|[0x800022e4]<br>0x00000000|- rs1_val == 4194304<br>                                                                                            |[0x800003e4]:SRAI_U t6, t5, 30<br> [0x800003e8]:sw t6, 128(gp)<br>    |
|  55|[0x800022e8]<br>0x00000010|- rs1_val == 2097152<br>                                                                                            |[0x800003f0]:SRAI_U t6, t5, 17<br> [0x800003f4]:sw t6, 132(gp)<br>    |
|  56|[0x800022ec]<br>0x00000000|- rs1_val == 1048576<br>                                                                                            |[0x800003fc]:SRAI_U t6, t5, 25<br> [0x80000400]:sw t6, 136(gp)<br>    |
|  57|[0x800022f0]<br>0x00000100|- rs1_val == 524288<br>                                                                                             |[0x80000408]:SRAI_U t6, t5, 11<br> [0x8000040c]:sw t6, 140(gp)<br>    |
|  58|[0x800022f4]<br>0x00040000|- rs1_val == 262144<br>                                                                                             |[0x80000414]:SRAI_U t6, t5, 0<br> [0x80000418]:sw t6, 144(gp)<br>     |
|  59|[0x800022f8]<br>0x00000040|- rs1_val == 131072<br>                                                                                             |[0x80000420]:SRAI_U t6, t5, 11<br> [0x80000424]:sw t6, 148(gp)<br>    |
|  60|[0x800022fc]<br>0x00000001|- rs1_val == 65536<br>                                                                                              |[0x8000042c]:SRAI_U t6, t5, 16<br> [0x80000430]:sw t6, 152(gp)<br>    |
|  61|[0x80002300]<br>0x00001000|- rs1_val == 32768<br>                                                                                              |[0x80000438]:SRAI_U t6, t5, 3<br> [0x8000043c]:sw t6, 156(gp)<br>     |
|  62|[0x80002304]<br>0x00002000|- rs1_val == 16384<br>                                                                                              |[0x80000444]:SRAI_U t6, t5, 1<br> [0x80000448]:sw t6, 160(gp)<br>     |
|  63|[0x80002308]<br>0x00000000|- rs1_val == 8192<br>                                                                                               |[0x80000450]:SRAI_U t6, t5, 16<br> [0x80000454]:sw t6, 164(gp)<br>    |
|  64|[0x8000230c]<br>0x00000004|- rs1_val == 4096<br>                                                                                               |[0x8000045c]:SRAI_U t6, t5, 10<br> [0x80000460]:sw t6, 168(gp)<br>    |
|  65|[0x80002310]<br>0x00000000|- rs1_val == 2048<br>                                                                                               |[0x8000046c]:SRAI_U t6, t5, 25<br> [0x80000470]:sw t6, 172(gp)<br>    |
|  66|[0x80002314]<br>0x00000000|- rs1_val == 1024<br>                                                                                               |[0x80000478]:SRAI_U t6, t5, 13<br> [0x8000047c]:sw t6, 176(gp)<br>    |
|  67|[0x80002318]<br>0x00000000|- rs1_val == 512<br>                                                                                                |[0x80000484]:SRAI_U t6, t5, 13<br> [0x80000488]:sw t6, 180(gp)<br>    |
|  68|[0x8000231c]<br>0x00000000|- rs1_val == 128<br>                                                                                                |[0x80000490]:SRAI_U t6, t5, 25<br> [0x80000494]:sw t6, 184(gp)<br>    |
|  69|[0x80002324]<br>0xFFFFFFF0|- rs1_val == -65<br>                                                                                                |[0x800004ac]:SRAI_U t6, t5, 2<br> [0x800004b0]:sw t6, 192(gp)<br>     |
