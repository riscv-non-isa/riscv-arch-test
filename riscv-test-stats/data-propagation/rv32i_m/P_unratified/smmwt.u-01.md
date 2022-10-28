
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000860')]      |
| SIG_REGION                | [('0x80002210', '0x80002380', '92 words')]      |
| COV_LABELS                | smmwt.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smmwt.u-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 90      |
| STAT1                     | 87      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000082c]:SMMWT_U t6, t5, t4
      [0x80000830]:sw t6, 236(ra)
 -- Signature Address: 0x8000236c Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -8193
      - rs1_w0_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000840]:SMMWT_U t6, t5, t4
      [0x80000844]:sw t6, 240(ra)
 -- Signature Address: 0x80002370 Data: 0xFFFFFF7E
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -65
      - rs2_h0_val == -513
      - rs1_w0_val == 131072




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000854]:SMMWT_U t6, t5, t4
      [0x80000858]:sw t6, 244(ra)
 -- Signature Address: 0x80002374 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -5
      - rs2_h0_val == 16






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

|s.no|        signature         |                                                                                  coverpoints                                                                                  |                                 code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x01000000|- opcode : smmwt.u<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs2_h1_val == 4096<br>                                                          |[0x8000010c]:SMMWT_U s5, s5, s5<br> [0x80000110]:sw s5, 0(sp)<br>     |
|   2|[0x80002214]<br>0x1C72238F|- rs1 : x31<br> - rs2 : x31<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br>                                                                               |[0x80000120]:SMMWT_U s6, t6, t6<br> [0x80000124]:sw s6, 4(sp)<br>     |
|   3|[0x80002218]<br>0xFFAAAB00|- rs1 : x26<br> - rs2 : x24<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 16384<br> - rs1_w0_val == -16777217<br> |[0x80000134]:SMMWT_U a0, s10, s8<br> [0x80000138]:sw a0, 8(sp)<br>    |
|   4|[0x8000221c]<br>0x0FFFE000|- rs1 : x17<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 32767<br> - rs1_w0_val == 536870912<br>                          |[0x80000148]:SMMWT_U t2, a7, t2<br> [0x8000014c]:sw t2, 12(sp)<br>    |
|   5|[0x80002220]<br>0xFFFFFFFE|- rs1 : x14<br> - rs2 : x29<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 2<br> - rs1_w0_val == 8<br>                                   |[0x8000015c]:SMMWT_U a4, a4, t4<br> [0x80000160]:sw a4, 16(sp)<br>    |
|   6|[0x80002224]<br>0x00000000|- rs1 : x0<br> - rs2 : x9<br> - rd : x4<br> - rs2_h1_val == -8193<br> - rs1_w0_val == 0<br>                                                                                    |[0x80000174]:SMMWT_U tp, zero, s1<br> [0x80000178]:sw tp, 20(sp)<br>  |
|   7|[0x80002228]<br>0x0555AAAB|- rs1 : x15<br> - rs2 : x11<br> - rd : x6<br> - rs2_h1_val == -4097<br> - rs1_w0_val == -1431655766<br>                                                                        |[0x8000018c]:SMMWT_U t1, a5, a1<br> [0x80000190]:sw t1, 24(sp)<br>    |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x13<br> - rs2 : x22<br> - rd : x27<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -32768<br> - rs1_w0_val == -5<br>                                                     |[0x8000019c]:SMMWT_U s11, a3, s6<br> [0x800001a0]:sw s11, 28(sp)<br>  |
|   9|[0x80002230]<br>0x00000020|- rs1 : x10<br> - rs2 : x13<br> - rd : x17<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -129<br> - rs1_w0_val == -2049<br>                                                    |[0x800001b4]:SMMWT_U a7, a0, a3<br> [0x800001b8]:sw a7, 32(sp)<br>    |
|  10|[0x80002234]<br>0xFFFFDFF0|- rs1 : x24<br> - rs2 : x4<br> - rd : x11<br> - rs2_h1_val == -513<br> - rs2_h0_val == -2<br> - rs1_w0_val == 1048576<br>                                                      |[0x800001c8]:SMMWT_U a1, s8, tp<br> [0x800001cc]:sw a1, 36(sp)<br>    |
|  11|[0x80002238]<br>0xFFFFFFFC|- rs1 : x6<br> - rs2 : x25<br> - rd : x5<br> - rs2_h1_val == -257<br> - rs2_h0_val == 4096<br> - rs1_w0_val == 1024<br>                                                        |[0x800001d8]:SMMWT_U t0, t1, s9<br> [0x800001dc]:sw t0, 40(sp)<br>    |
|  12|[0x8000223c]<br>0x00000000|- rs1 : x4<br> - rs2 : x28<br> - rd : x19<br> - rs2_h1_val == -129<br> - rs2_h0_val == 32<br>                                                                                  |[0x800001ec]:SMMWT_U s3, tp, t3<br> [0x800001f0]:sw s3, 44(sp)<br>    |
|  13|[0x80002240]<br>0x00000000|- rs1 : x12<br> - rs2 : x0<br> - rd : x15<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w0_val == 131072<br>                                                           |[0x80000200]:SMMWT_U a5, a2, zero<br> [0x80000204]:sw a5, 48(sp)<br>  |
|  14|[0x80002244]<br>0x00004200|- rs1 : x1<br> - rs2 : x17<br> - rd : x16<br> - rs2_h1_val == -33<br> - rs1_w0_val == -33554433<br>                                                                            |[0x80000214]:SMMWT_U a6, ra, a7<br> [0x80000218]:sw a6, 52(sp)<br>    |
|  15|[0x80002248]<br>0xFFFFFFEF|- rs1 : x30<br> - rs2 : x8<br> - rd : x23<br> - rs2_h1_val == -17<br> - rs2_h0_val == -1<br> - rs1_w0_val == 65536<br>                                                         |[0x80000228]:SMMWT_U s7, t5, fp<br> [0x8000022c]:sw s7, 56(sp)<br>    |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x22<br> - rs2 : x18<br> - rd : x29<br> - rs2_h1_val == -9<br> - rs2_h0_val == -513<br>                                                                                 |[0x80000244]:SMMWT_U t4, s6, s2<br> [0x80000248]:sw t4, 0(tp)<br>     |
|  17|[0x80002250]<br>0x00000000|- rs1 : x16<br> - rs2 : x20<br> - rd : x0<br> - rs2_h1_val == -5<br> - rs2_h0_val == 16<br>                                                                                    |[0x80000258]:SMMWT_U zero, a6, s4<br> [0x8000025c]:sw zero, 4(tp)<br> |
|  18|[0x80002254]<br>0xFFFFE800|- rs1 : x23<br> - rs2 : x14<br> - rd : x28<br> - rs2_h1_val == -3<br> - rs2_h0_val == 256<br> - rs1_w0_val == 134217728<br>                                                    |[0x8000026c]:SMMWT_U t3, s7, a4<br> [0x80000270]:sw t3, 8(tp)<br>     |
|  19|[0x80002258]<br>0x00000000|- rs1 : x25<br> - rs2 : x6<br> - rd : x20<br> - rs2_h1_val == -2<br> - rs2_h0_val == 21845<br> - rs1_w0_val == -8193<br>                                                       |[0x80000284]:SMMWT_U s4, s9, t1<br> [0x80000288]:sw s4, 12(tp)<br>    |
|  20|[0x8000225c]<br>0x00080001|- rs1 : x7<br> - rs2 : x1<br> - rd : x2<br> - rs2_h1_val == -32768<br> - rs1_w0_val == -1048577<br>                                                                            |[0x80000298]:SMMWT_U sp, t2, ra<br> [0x8000029c]:sw sp, 16(tp)<br>    |
|  21|[0x80002260]<br>0xFFFC0000|- rs1 : x2<br> - rs2 : x30<br> - rd : x13<br> - rs2_h1_val == 16384<br>                                                                                                        |[0x800002ac]:SMMWT_U a3, sp, t5<br> [0x800002b0]:sw a3, 20(tp)<br>    |
|  22|[0x80002264]<br>0x00000080|- rs1 : x20<br> - rs2 : x12<br> - rd : x9<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -33<br>                                                                                 |[0x800002c0]:SMMWT_U s1, s4, a2<br> [0x800002c4]:sw s1, 24(tp)<br>    |
|  23|[0x80002268]<br>0x00400000|- rs1 : x9<br> - rs2 : x10<br> - rd : x18<br> - rs2_h1_val == 2048<br>                                                                                                         |[0x800002d4]:SMMWT_U s2, s1, a0<br> [0x800002d8]:sw s2, 28(tp)<br>    |
|  24|[0x8000226c]<br>0x00000004|- rs1 : x11<br> - rs2 : x2<br> - rd : x26<br> - rs2_h1_val == 1024<br> - rs1_w0_val == 256<br>                                                                                 |[0x800002e8]:SMMWT_U s10, a1, sp<br> [0x800002ec]:sw s10, 32(tp)<br>  |
|  25|[0x80002270]<br>0x00000100|- rs1 : x8<br> - rs2 : x27<br> - rd : x24<br> - rs2_h1_val == 512<br> - rs1_w0_val == 32768<br>                                                                                |[0x800002fc]:SMMWT_U s8, fp, s11<br> [0x80000300]:sw s8, 36(tp)<br>   |
|  26|[0x80002274]<br>0x00555555|- rs1 : x29<br> - rs2 : x19<br> - rd : x12<br> - rs2_h1_val == 256<br> - rs1_w0_val == 1431655765<br>                                                                          |[0x80000314]:SMMWT_U a2, t4, s3<br> [0x80000318]:sw a2, 40(tp)<br>    |
|  27|[0x80002278]<br>0xFFC00000|- rs1 : x27<br> - rs2 : x15<br> - rd : x1<br> - rs1_w0_val == -2147483648<br> - rs2_h1_val == 128<br>                                                                          |[0x80000324]:SMMWT_U ra, s11, a5<br> [0x80000328]:sw ra, 44(tp)<br>   |
|  28|[0x8000227c]<br>0xFFF80000|- rs1 : x3<br> - rs2 : x5<br> - rd : x25<br> - rs2_h1_val == 64<br> - rs1_w0_val == -536870913<br>                                                                             |[0x8000033c]:SMMWT_U s9, gp, t0<br> [0x80000340]:sw s9, 48(tp)<br>    |
|  29|[0x80002280]<br>0xFFFFFF00|- rs1 : x28<br> - rs2 : x23<br> - rd : x31<br> - rs2_h1_val == 32<br> - rs1_w0_val == -524289<br>                                                                              |[0x8000035c]:SMMWT_U t6, t3, s7<br> [0x80000360]:sw t6, 0(ra)<br>     |
|  30|[0x80002284]<br>0x00000000|- rs1 : x5<br> - rs2 : x26<br> - rd : x8<br> - rs2_h1_val == 16<br>                                                                                                            |[0x80000370]:SMMWT_U fp, t0, s10<br> [0x80000374]:sw fp, 4(ra)<br>    |
|  31|[0x80002288]<br>0x00000800|- rs1 : x19<br> - rs2 : x16<br> - rd : x3<br> - rs2_h1_val == 8<br> - rs2_h0_val == -5<br> - rs1_w0_val == 16777216<br>                                                        |[0x80000384]:SMMWT_U gp, s3, a6<br> [0x80000388]:sw gp, 8(ra)<br>     |
|  32|[0x8000228c]<br>0x00000001|- rs1 : x18<br> - rs2 : x3<br> - rd : x30<br> - rs2_h1_val == 4<br> - rs1_w0_val == 8192<br>                                                                                   |[0x80000398]:SMMWT_U t5, s2, gp<br> [0x8000039c]:sw t5, 12(ra)<br>    |
|  33|[0x80002290]<br>0x00000000|- rs2_h1_val == 2<br> - rs2_h0_val == -17<br> - rs1_w0_val == 64<br>                                                                                                           |[0x800003ac]:SMMWT_U t6, t5, t4<br> [0x800003b0]:sw t6, 16(ra)<br>    |
|  34|[0x80002294]<br>0x00000000|- rs2_h1_val == 1<br>                                                                                                                                                          |[0x800003c4]:SMMWT_U t6, t5, t4<br> [0x800003c8]:sw t6, 20(ra)<br>    |
|  35|[0x80002298]<br>0x00000000|- rs2_h0_val == 8192<br>                                                                                                                                                       |[0x800003d4]:SMMWT_U t6, t5, t4<br> [0x800003d8]:sw t6, 24(ra)<br>    |
|  36|[0x8000229c]<br>0xFFFFF000|- rs2_h1_val == -1<br> - rs1_w0_val == 268435456<br>                                                                                                                           |[0x800003e8]:SMMWT_U t6, t5, t4<br> [0x800003ec]:sw t6, 28(ra)<br>    |
|  37|[0x800022a0]<br>0x00000001|- rs1_w0_val == 512<br>                                                                                                                                                        |[0x800003fc]:SMMWT_U t6, t5, t4<br> [0x80000400]:sw t6, 32(ra)<br>    |
|  38|[0x800022a4]<br>0x00000001|- rs1_w0_val == 128<br>                                                                                                                                                        |[0x80000410]:SMMWT_U t6, t5, t4<br> [0x80000414]:sw t6, 36(ra)<br>    |
|  39|[0x800022a8]<br>0x00000000|- rs2_h0_val == -21846<br> - rs1_w0_val == 32<br>                                                                                                                              |[0x80000424]:SMMWT_U t6, t5, t4<br> [0x80000428]:sw t6, 40(ra)<br>    |
|  40|[0x800022ac]<br>0x00000000|- rs2_h0_val == -16385<br> - rs1_w0_val == 16<br>                                                                                                                              |[0x80000438]:SMMWT_U t6, t5, t4<br> [0x8000043c]:sw t6, 44(ra)<br>    |
|  41|[0x800022b0]<br>0x00000001|- rs1_w0_val == 4<br>                                                                                                                                                          |[0x8000044c]:SMMWT_U t6, t5, t4<br> [0x80000450]:sw t6, 48(ra)<br>    |
|  42|[0x800022b4]<br>0x00000000|- rs1_w0_val == 2<br>                                                                                                                                                          |[0x8000045c]:SMMWT_U t6, t5, t4<br> [0x80000460]:sw t6, 52(ra)<br>    |
|  43|[0x800022b8]<br>0x00000000|- rs1_w0_val == 1<br>                                                                                                                                                          |[0x8000046c]:SMMWT_U t6, t5, t4<br> [0x80000470]:sw t6, 56(ra)<br>    |
|  44|[0x800022bc]<br>0x00000000|- rs2_h0_val == -257<br>                                                                                                                                                       |[0x80000480]:SMMWT_U t6, t5, t4<br> [0x80000484]:sw t6, 60(ra)<br>    |
|  45|[0x800022c0]<br>0x00000000|- rs1_w0_val == -1<br>                                                                                                                                                         |[0x80000490]:SMMWT_U t6, t5, t4<br> [0x80000494]:sw t6, 64(ra)<br>    |
|  46|[0x800022c4]<br>0x00000010|- rs2_h0_val == -8193<br> - rs1_w0_val == 262144<br>                                                                                                                           |[0x800004a4]:SMMWT_U t6, t5, t4<br> [0x800004a8]:sw t6, 68(ra)<br>    |
|  47|[0x800022c8]<br>0x00000000|- rs2_h0_val == -4097<br>                                                                                                                                                      |[0x800004b8]:SMMWT_U t6, t5, t4<br> [0x800004bc]:sw t6, 72(ra)<br>    |
|  48|[0x800022cc]<br>0x00000800|- rs2_h0_val == -2049<br> - rs1_w0_val == 4096<br>                                                                                                                             |[0x800004cc]:SMMWT_U t6, t5, t4<br> [0x800004d0]:sw t6, 76(ra)<br>    |
|  49|[0x800022d0]<br>0x04000000|- rs2_h0_val == -1025<br> - rs1_w0_val == 2147483647<br>                                                                                                                       |[0x800004e4]:SMMWT_U t6, t5, t4<br> [0x800004e8]:sw t6, 80(ra)<br>    |
|  50|[0x800022d4]<br>0xFFFFE000|- rs2_h0_val == -65<br> - rs1_w0_val == -262145<br>                                                                                                                            |[0x800004fc]:SMMWT_U t6, t5, t4<br> [0x80000500]:sw t6, 84(ra)<br>    |
|  51|[0x800022d8]<br>0x00000000|- rs2_h0_val == -9<br>                                                                                                                                                         |[0x80000510]:SMMWT_U t6, t5, t4<br> [0x80000514]:sw t6, 88(ra)<br>    |
|  52|[0x800022dc]<br>0x00000002|- rs2_h0_val == -3<br> - rs1_w0_val == -4097<br>                                                                                                                               |[0x80000528]:SMMWT_U t6, t5, t4<br> [0x8000052c]:sw t6, 92(ra)<br>    |
|  53|[0x800022e0]<br>0x00000000|- rs2_h0_val == 2048<br>                                                                                                                                                       |[0x8000053c]:SMMWT_U t6, t5, t4<br> [0x80000540]:sw t6, 96(ra)<br>    |
|  54|[0x800022e4]<br>0x00000000|- rs2_h0_val == 1024<br>                                                                                                                                                       |[0x80000550]:SMMWT_U t6, t5, t4<br> [0x80000554]:sw t6, 100(ra)<br>   |
|  55|[0x800022e8]<br>0xFFFFE800|- rs2_h0_val == 512<br> - rs1_w0_val == 67108864<br>                                                                                                                           |[0x80000564]:SMMWT_U t6, t5, t4<br> [0x80000568]:sw t6, 104(ra)<br>   |
|  56|[0x800022ec]<br>0x00000000|- rs2_h0_val == 128<br> - rs1_w0_val == -3<br>                                                                                                                                 |[0x80000578]:SMMWT_U t6, t5, t4<br> [0x8000057c]:sw t6, 108(ra)<br>   |
|  57|[0x800022f0]<br>0x04004000|- rs2_h0_val == 64<br>                                                                                                                                                         |[0x8000058c]:SMMWT_U t6, t5, t4<br> [0x80000590]:sw t6, 112(ra)<br>   |
|  58|[0x800022f4]<br>0x00000000|- rs2_h0_val == 8<br>                                                                                                                                                          |[0x800005a0]:SMMWT_U t6, t5, t4<br> [0x800005a4]:sw t6, 116(ra)<br>   |
|  59|[0x800022f8]<br>0x00000056|- rs2_h0_val == 4<br> - rs1_w0_val == -257<br>                                                                                                                                 |[0x800005b4]:SMMWT_U t6, t5, t4<br> [0x800005b8]:sw t6, 120(ra)<br>   |
|  60|[0x800022fc]<br>0xFFFFFF00|- rs2_h0_val == 1<br>                                                                                                                                                          |[0x800005cc]:SMMWT_U t6, t5, t4<br> [0x800005d0]:sw t6, 124(ra)<br>   |
|  61|[0x80002300]<br>0x00018000|- rs1_w0_val == -1073741825<br>                                                                                                                                                |[0x800005e4]:SMMWT_U t6, t5, t4<br> [0x800005e8]:sw t6, 128(ra)<br>   |
|  62|[0x80002304]<br>0x01001000|- rs1_w0_val == -268435457<br>                                                                                                                                                 |[0x800005fc]:SMMWT_U t6, t5, t4<br> [0x80000600]:sw t6, 132(ra)<br>   |
|  63|[0x80002308]<br>0xFFF00000|- rs1_w0_val == -134217729<br>                                                                                                                                                 |[0x80000614]:SMMWT_U t6, t5, t4<br> [0x80000618]:sw t6, 136(ra)<br>   |
|  64|[0x8000230c]<br>0xFFC00000|- rs1_w0_val == -67108865<br>                                                                                                                                                  |[0x8000062c]:SMMWT_U t6, t5, t4<br> [0x80000630]:sw t6, 140(ra)<br>   |
|  65|[0x80002310]<br>0x00040080|- rs1_w0_val == -8388609<br>                                                                                                                                                   |[0x80000644]:SMMWT_U t6, t5, t4<br> [0x80000648]:sw t6, 144(ra)<br>   |
|  66|[0x80002314]<br>0x00040040|- rs1_w0_val == -4194305<br>                                                                                                                                                   |[0x8000065c]:SMMWT_U t6, t5, t4<br> [0x80000660]:sw t6, 148(ra)<br>   |
|  67|[0x80002318]<br>0x00000820|- rs2_h1_val == -65<br> - rs1_w0_val == -2097153<br>                                                                                                                           |[0x80000674]:SMMWT_U t6, t5, t4<br> [0x80000678]:sw t6, 152(ra)<br>   |
|  68|[0x8000231c]<br>0xFFFFFFE0|- rs1_w0_val == -131073<br>                                                                                                                                                    |[0x8000068c]:SMMWT_U t6, t5, t4<br> [0x80000690]:sw t6, 156(ra)<br>   |
|  69|[0x80002320]<br>0xFFFFF000|- rs1_w0_val == -65537<br>                                                                                                                                                     |[0x800006a4]:SMMWT_U t6, t5, t4<br> [0x800006a8]:sw t6, 160(ra)<br>   |
|  70|[0x80002324]<br>0x00000801|- rs1_w0_val == -32769<br>                                                                                                                                                     |[0x800006bc]:SMMWT_U t6, t5, t4<br> [0x800006c0]:sw t6, 164(ra)<br>   |
|  71|[0x80002328]<br>0xFFFFFF00|- rs1_w0_val == -16385<br>                                                                                                                                                     |[0x800006d4]:SMMWT_U t6, t5, t4<br> [0x800006d8]:sw t6, 168(ra)<br>   |
|  72|[0x8000232c]<br>0xFFFFFFE0|- rs1_w0_val == -1025<br>                                                                                                                                                      |[0x800006e8]:SMMWT_U t6, t5, t4<br> [0x800006ec]:sw t6, 172(ra)<br>   |
|  73|[0x80002330]<br>0xFFFFFFF0|- rs1_w0_val == -513<br>                                                                                                                                                       |[0x800006fc]:SMMWT_U t6, t5, t4<br> [0x80000700]:sw t6, 176(ra)<br>   |
|  74|[0x80002334]<br>0x00000000|- rs1_w0_val == -129<br>                                                                                                                                                       |[0x80000710]:SMMWT_U t6, t5, t4<br> [0x80000714]:sw t6, 180(ra)<br>   |
|  75|[0x80002338]<br>0x00000000|- rs1_w0_val == -65<br>                                                                                                                                                        |[0x80000720]:SMMWT_U t6, t5, t4<br> [0x80000724]:sw t6, 184(ra)<br>   |
|  76|[0x8000233c]<br>0xFFFFFFF0|- rs1_w0_val == -33<br>                                                                                                                                                        |[0x80000734]:SMMWT_U t6, t5, t4<br> [0x80000738]:sw t6, 188(ra)<br>   |
|  77|[0x80002340]<br>0x00000000|- rs1_w0_val == -17<br>                                                                                                                                                        |[0x80000748]:SMMWT_U t6, t5, t4<br> [0x8000074c]:sw t6, 192(ra)<br>   |
|  78|[0x80002344]<br>0x00000000|- rs1_w0_val == -9<br>                                                                                                                                                         |[0x8000075c]:SMMWT_U t6, t5, t4<br> [0x80000760]:sw t6, 196(ra)<br>   |
|  79|[0x80002348]<br>0x00000000|- rs1_w0_val == -2<br>                                                                                                                                                         |[0x80000770]:SMMWT_U t6, t5, t4<br> [0x80000774]:sw t6, 200(ra)<br>   |
|  80|[0x8000234c]<br>0xFDFFC000|- rs1_w0_val == 1073741824<br>                                                                                                                                                 |[0x80000784]:SMMWT_U t6, t5, t4<br> [0x80000788]:sw t6, 204(ra)<br>   |
|  81|[0x80002350]<br>0xFFFF7E00|- rs1_w0_val == 33554432<br>                                                                                                                                                   |[0x80000798]:SMMWT_U t6, t5, t4<br> [0x8000079c]:sw t6, 208(ra)<br>   |
|  82|[0x80002354]<br>0x00000080|- rs1_w0_val == 8388608<br>                                                                                                                                                    |[0x800007ac]:SMMWT_U t6, t5, t4<br> [0x800007b0]:sw t6, 212(ra)<br>   |
|  83|[0x80002358]<br>0xFFFFFFC0|- rs1_w0_val == 4194304<br>                                                                                                                                                    |[0x800007c0]:SMMWT_U t6, t5, t4<br> [0x800007c4]:sw t6, 216(ra)<br>   |
|  84|[0x8000235c]<br>0xFFFFFFFC|- rs1_w0_val == 2048<br>                                                                                                                                                       |[0x800007d8]:SMMWT_U t6, t5, t4<br> [0x800007dc]:sw t6, 220(ra)<br>   |
|  85|[0x80002360]<br>0x00000002|- rs1_w0_val == 16384<br>                                                                                                                                                      |[0x800007ec]:SMMWT_U t6, t5, t4<br> [0x800007f0]:sw t6, 224(ra)<br>   |
|  86|[0x80002364]<br>0xFFFFFFE0|- rs1_w0_val == 2097152<br>                                                                                                                                                    |[0x80000800]:SMMWT_U t6, t5, t4<br> [0x80000804]:sw t6, 228(ra)<br>   |
|  87|[0x80002368]<br>0x00004000|- rs1_w0_val == 524288<br>                                                                                                                                                     |[0x80000814]:SMMWT_U t6, t5, t4<br> [0x80000818]:sw t6, 232(ra)<br>   |
