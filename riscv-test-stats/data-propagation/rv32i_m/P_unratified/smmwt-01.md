
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
| SIG_REGION                | [('0x80002210', '0x80002370', '88 words')]      |
| COV_LABELS                | smmwt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smmwt-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 88      |
| STAT1                     | 85      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000598]:SMMWT t6, t5, t4
      [0x8000059c]:sw t6, 108(sp)
 -- Signature Address: 0x800022f0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h0_val == 0
      - rs1_w0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000081c]:SMMWT t6, t5, t4
      [0x80000820]:sw t6, 228(sp)
 -- Signature Address: 0x80002368 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -21846
      - rs2_h0_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:SMMWT t6, t5, t4
      [0x80000834]:sw t6, 232(sp)
 -- Signature Address: 0x8000236c Data: 0xFFFFA000
 -- Redundant Coverpoints hit by the op
      - opcode : smmwt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -3
      - rs2_h0_val == -2
      - rs1_w0_val == 536870912






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

|s.no|        signature         |                                                                              coverpoints                                                                               |                                 code                                 |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x3FFF8010|- opcode : smmwt<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -33<br>                              |[0x8000010c]:SMMWT fp, fp, fp<br> [0x80000110]:sw fp, 0(t0)<br>       |
|   2|[0x80002214]<br>0x1C71E38E|- rs1 : x24<br> - rs2 : x24<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -2<br>                                                 |[0x80000120]:SMMWT s10, s8, s8<br> [0x80000124]:sw s10, 4(t0)<br>     |
|   3|[0x80002218]<br>0xFFFFFFFF|- rs1 : x10<br> - rs2 : x27<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -1025<br> - rs1_w0_val == -2<br> |[0x80000134]:SMMWT s3, a0, s11<br> [0x80000138]:sw s3, 8(t0)<br>      |
|   4|[0x8000221c]<br>0xFFFFFBFF|- rs1 : x31<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 4<br> - rs1_w0_val == -2049<br>                           |[0x8000014c]:SMMWT tp, t6, tp<br> [0x80000150]:sw tp, 12(t0)<br>      |
|   5|[0x80002220]<br>0xFFFFFFFB|- rs1 : x6<br> - rs2 : x31<br> - rd : x6<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -513<br> - rs1_w0_val == 16<br>                          |[0x80000160]:SMMWT t1, t1, t6<br> [0x80000164]:sw t1, 16(t0)<br>      |
|   6|[0x80002224]<br>0x00080040|- rs1 : x26<br> - rs2 : x17<br> - rd : x3<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -257<br> - rs1_w0_val == -4194305<br>                                           |[0x80000178]:SMMWT gp, s10, a7<br> [0x8000017c]:sw gp, 20(t0)<br>     |
|   7|[0x80002228]<br>0x00000800|- rs1 : x18<br> - rs2 : x19<br> - rd : x14<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -17<br> - rs1_w0_val == -32769<br>                                             |[0x80000190]:SMMWT a4, s2, s3<br> [0x80000194]:sw a4, 24(t0)<br>      |
|   8|[0x8000222c]<br>0xFFFFDFFC|- rs1 : x4<br> - rs2 : x11<br> - rd : x12<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 2<br> - rs1_w0_val == 262144<br>                                                |[0x800001a4]:SMMWT a2, tp, a1<br> [0x800001a8]:sw a2, 28(t0)<br>      |
|   9|[0x80002230]<br>0xFFFFFEFF|- rs1 : x2<br> - rs2 : x29<br> - rd : x16<br> - rs2_h1_val == -1025<br> - rs1_w0_val == 16384<br>                                                                       |[0x800001b8]:SMMWT a6, sp, t4<br> [0x800001bc]:sw a6, 32(t0)<br>      |
|  10|[0x80002234]<br>0x00010080|- rs1 : x17<br> - rs2 : x9<br> - rd : x27<br> - rs2_h1_val == -513<br> - rs2_h0_val == 16<br> - rs1_w0_val == -8388609<br>                                              |[0x800001d0]:SMMWT s11, a7, s1<br> [0x800001d4]:sw s11, 36(t0)<br>    |
|  11|[0x80002238]<br>0xFFAA5555|- rs1 : x23<br> - rs2 : x15<br> - rd : x25<br> - rs2_h1_val == -257<br> - rs1_w0_val == 1431655765<br>                                                                  |[0x800001e8]:SMMWT s9, s7, a5<br> [0x800001ec]:sw s9, 40(t0)<br>      |
|  12|[0x8000223c]<br>0xFFFFFFF7|- rs1 : x1<br> - rs2 : x18<br> - rd : x13<br> - rs2_h1_val == -129<br> - rs1_w0_val == 4096<br>                                                                         |[0x800001fc]:SMMWT a3, ra, s2<br> [0x80000200]:sw a3, 44(t0)<br>      |
|  13|[0x80002240]<br>0xFFFFF7E0|- rs1 : x28<br> - rs2 : x30<br> - rd : x2<br> - rs2_h1_val == -65<br> - rs2_h0_val == 64<br> - rs1_w0_val == 2097152<br>                                                |[0x80000210]:SMMWT sp, t3, t5<br> [0x80000214]:sw sp, 48(t0)<br>      |
|  14|[0x80002244]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x22<br> - rd : x21<br> - rs2_h1_val == -33<br>                                                                                                  |[0x80000220]:SMMWT s5, a1, s6<br> [0x80000224]:sw s5, 52(t0)<br>      |
|  15|[0x80002248]<br>0x00000000|- rs1 : x3<br> - rs2 : x26<br> - rd : x5<br> - rs2_h1_val == -17<br> - rs2_h0_val == 128<br> - rs1_w0_val == -1<br>                                                     |[0x8000023c]:SMMWT t0, gp, s10<br> [0x80000240]:sw t0, 0(ra)<br>      |
|  16|[0x8000224c]<br>0x00000048|- rs1 : x29<br> - rs2 : x20<br> - rd : x30<br> - rs2_h1_val == -9<br> - rs2_h0_val == 512<br> - rs1_w0_val == -524289<br>                                               |[0x80000254]:SMMWT t5, t4, s4<br> [0x80000258]:sw t5, 4(ra)<br>       |
|  17|[0x80002250]<br>0x00000000|- rs1 : x15<br> - rs2 : x10<br> - rd : x11<br> - rs2_h1_val == -5<br> - rs1_w0_val == -129<br>                                                                          |[0x80000268]:SMMWT a1, a5, a0<br> [0x8000026c]:sw a1, 8(ra)<br>       |
|  18|[0x80002254]<br>0x00000000|- rs1 : x27<br> - rs2 : x21<br> - rd : x0<br> - rs2_h1_val == -3<br> - rs1_w0_val == 536870912<br>                                                                      |[0x8000027c]:SMMWT zero, s11, s5<br> [0x80000280]:sw zero, 12(ra)<br> |
|  19|[0x80002258]<br>0x00000080|- rs1 : x12<br> - rs2 : x7<br> - rd : x10<br> - rs2_h1_val == -2<br>                                                                                                    |[0x80000294]:SMMWT a0, a2, t2<br> [0x80000298]:sw a0, 16(ra)<br>      |
|  20|[0x8000225c]<br>0x00400000|- rs1 : x16<br> - rs2 : x6<br> - rd : x20<br> - rs2_h1_val == 16384<br> - rs1_w0_val == 16777216<br>                                                                    |[0x800002a8]:SMMWT s4, a6, t1<br> [0x800002ac]:sw s4, 20(ra)<br>      |
|  21|[0x80002260]<br>0x00001000|- rs1 : x5<br> - rs2 : x16<br> - rd : x24<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -1<br> - rs1_w0_val == 32768<br>                                                 |[0x800002bc]:SMMWT s8, t0, a6<br> [0x800002c0]:sw s8, 24(ra)<br>      |
|  22|[0x80002264]<br>0x00000000|- rs1 : x21<br> - rs2 : x0<br> - rd : x18<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w0_val == 8388608<br>                                                   |[0x800002d0]:SMMWT s2, s5, zero<br> [0x800002d4]:sw s2, 28(ra)<br>    |
|  23|[0x80002268]<br>0xFFFFFFBF|- rs1 : x25<br> - rs2 : x5<br> - rd : x22<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 21845<br>                                                                        |[0x800002e8]:SMMWT s6, s9, t0<br> [0x800002ec]:sw s6, 32(ra)<br>      |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x7<br> - rs2 : x14<br> - rd : x29<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -65<br>                                                                          |[0x800002fc]:SMMWT t4, t2, a4<br> [0x80000300]:sw t4, 36(ra)<br>      |
|  25|[0x80002270]<br>0x00400000|- rs1 : x30<br> - rs2 : x12<br> - rd : x28<br> - rs2_h1_val == 512<br>                                                                                                  |[0x80000310]:SMMWT t3, t5, a2<br> [0x80000314]:sw t3, 40(ra)<br>      |
|  26|[0x80002274]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x13<br> - rd : x17<br> - rs2_h1_val == 256<br> - rs2_h0_val == -5<br> - rs1_w0_val == -33<br>                                                   |[0x80000324]:SMMWT a7, s6, a3<br> [0x80000328]:sw a7, 44(ra)<br>      |
|  27|[0x80002278]<br>0x00000080|- rs1 : x14<br> - rs2 : x2<br> - rd : x23<br> - rs2_h1_val == 128<br> - rs2_h0_val == 8192<br> - rs1_w0_val == 65536<br>                                                |[0x80000334]:SMMWT s7, a4, sp<br> [0x80000338]:sw s7, 48(ra)<br>      |
|  28|[0x8000227c]<br>0xFFF00000|- rs1 : x19<br> - rs2 : x25<br> - rd : x15<br> - rs2_h1_val == 64<br> - rs2_h0_val == -129<br>                                                                          |[0x80000348]:SMMWT a5, s3, s9<br> [0x8000034c]:sw a5, 52(ra)<br>      |
|  29|[0x80002280]<br>0xFFFFFDFF|- rs1 : x9<br> - rs2 : x23<br> - rd : x31<br> - rs2_h1_val == 32<br> - rs1_w0_val == -1048577<br>                                                                       |[0x80000360]:SMMWT t6, s1, s7<br> [0x80000364]:sw t6, 56(ra)<br>      |
|  30|[0x80002284]<br>0x00040000|- rs1 : x13<br> - rs2 : x3<br> - rd : x1<br> - rs2_h1_val == 16<br> - rs2_h0_val == -3<br> - rs1_w0_val == 1073741824<br>                                               |[0x8000037c]:SMMWT ra, a3, gp<br> [0x80000380]:sw ra, 0(sp)<br>       |
|  31|[0x80002288]<br>0x00000000|- rs1 : x0<br> - rs2 : x1<br> - rd : x9<br> - rs2_h1_val == 8<br> - rs2_h0_val == -9<br> - rs1_w0_val == 0<br>                                                          |[0x80000394]:SMMWT s1, zero, ra<br> [0x80000398]:sw s1, 4(sp)<br>     |
|  32|[0x8000228c]<br>0x00001000|- rs1 : x20<br> - rs2 : x28<br> - rd : x7<br> - rs2_h1_val == 4<br> - rs2_h0_val == 16384<br> - rs1_w0_val == 67108864<br>                                              |[0x800003a4]:SMMWT t2, s4, t3<br> [0x800003a8]:sw t2, 8(sp)<br>       |
|  33|[0x80002290]<br>0xFFFFFFFF|- rs2_h1_val == 2<br> - rs1_w0_val == -3<br>                                                                                                                            |[0x800003b8]:SMMWT t6, t5, t4<br> [0x800003bc]:sw t6, 12(sp)<br>      |
|  34|[0x80002294]<br>0x00000040|- rs1_w0_val == 512<br>                                                                                                                                                 |[0x800003cc]:SMMWT t6, t5, t4<br> [0x800003d0]:sw t6, 16(sp)<br>      |
|  35|[0x80002298]<br>0x00000001|- rs1_w0_val == 256<br>                                                                                                                                                 |[0x800003e0]:SMMWT t6, t5, t4<br> [0x800003e4]:sw t6, 20(sp)<br>      |
|  36|[0x8000229c]<br>0x00000000|- rs2_h0_val == -4097<br> - rs1_w0_val == 128<br>                                                                                                                       |[0x800003f4]:SMMWT t6, t5, t4<br> [0x800003f8]:sw t6, 24(sp)<br>      |
|  37|[0x800022a0]<br>0xFFFFFFFB|- rs1_w0_val == 64<br>                                                                                                                                                  |[0x80000408]:SMMWT t6, t5, t4<br> [0x8000040c]:sw t6, 28(sp)<br>      |
|  38|[0x800022a4]<br>0xFFFFFFF7|- rs1_w0_val == 32<br>                                                                                                                                                  |[0x8000041c]:SMMWT t6, t5, t4<br> [0x80000420]:sw t6, 32(sp)<br>      |
|  39|[0x800022a8]<br>0x00000003|- rs2_h0_val == 2048<br> - rs1_w0_val == 8<br>                                                                                                                          |[0x80000430]:SMMWT t6, t5, t4<br> [0x80000434]:sw t6, 36(sp)<br>      |
|  40|[0x800022ac]<br>0x00000000|- rs1_w0_val == 4<br>                                                                                                                                                   |[0x80000444]:SMMWT t6, t5, t4<br> [0x80000448]:sw t6, 40(sp)<br>      |
|  41|[0x800022b0]<br>0xFFFFFFFF|- rs1_w0_val == 2<br>                                                                                                                                                   |[0x80000458]:SMMWT t6, t5, t4<br> [0x8000045c]:sw t6, 44(sp)<br>      |
|  42|[0x800022b4]<br>0xFFFFFFFF|- rs1_w0_val == 1<br>                                                                                                                                                   |[0x80000468]:SMMWT t6, t5, t4<br> [0x8000046c]:sw t6, 48(sp)<br>      |
|  43|[0x800022b8]<br>0x00000000|- rs2_h0_val == -21846<br>                                                                                                                                              |[0x8000047c]:SMMWT t6, t5, t4<br> [0x80000480]:sw t6, 52(sp)<br>      |
|  44|[0x800022bc]<br>0xFFFFFFEF|- rs2_h1_val == 1<br>                                                                                                                                                   |[0x80000494]:SMMWT t6, t5, t4<br> [0x80000498]:sw t6, 56(sp)<br>      |
|  45|[0x800022c0]<br>0x00000000|- rs2_h0_val == 1<br> - rs1_w0_val == -262145<br>                                                                                                                       |[0x800004a8]:SMMWT t6, t5, t4<br> [0x800004ac]:sw t6, 60(sp)<br>      |
|  46|[0x800022c4]<br>0x00000000|- rs2_h1_val == -1<br> - rs1_w0_val == -513<br>                                                                                                                         |[0x800004b8]:SMMWT t6, t5, t4<br> [0x800004bc]:sw t6, 64(sp)<br>      |
|  47|[0x800022c8]<br>0xFFFFFF80|- rs2_h0_val == 32767<br>                                                                                                                                               |[0x800004cc]:SMMWT t6, t5, t4<br> [0x800004d0]:sw t6, 68(sp)<br>      |
|  48|[0x800022cc]<br>0xFFFDFFFF|- rs2_h0_val == -16385<br>                                                                                                                                              |[0x800004e4]:SMMWT t6, t5, t4<br> [0x800004e8]:sw t6, 72(sp)<br>      |
|  49|[0x800022d0]<br>0xFFFFFF7F|- rs2_h0_val == -8193<br> - rs1_w0_val == -1025<br>                                                                                                                     |[0x800004f8]:SMMWT t6, t5, t4<br> [0x800004fc]:sw t6, 76(sp)<br>      |
|  50|[0x800022d4]<br>0x00000008|- rs2_h0_val == -2049<br> - rs1_w0_val == -131073<br>                                                                                                                   |[0x80000510]:SMMWT t6, t5, t4<br> [0x80000514]:sw t6, 80(sp)<br>      |
|  51|[0x800022d8]<br>0xFFFBFFFF|- rs2_h1_val == 4096<br> - rs2_h0_val == -32768<br>                                                                                                                     |[0x80000524]:SMMWT t6, t5, t4<br> [0x80000528]:sw t6, 84(sp)<br>      |
|  52|[0x800022dc]<br>0xFFFFAAAA|- rs2_h0_val == 4096<br>                                                                                                                                                |[0x80000538]:SMMWT t6, t5, t4<br> [0x8000053c]:sw t6, 88(sp)<br>      |
|  53|[0x800022e0]<br>0xFFFFFFFF|- rs2_h0_val == 1024<br>                                                                                                                                                |[0x8000054c]:SMMWT t6, t5, t4<br> [0x80000550]:sw t6, 92(sp)<br>      |
|  54|[0x800022e4]<br>0xFFFFFFFF|- rs2_h0_val == 256<br>                                                                                                                                                 |[0x80000560]:SMMWT t6, t5, t4<br> [0x80000564]:sw t6, 96(sp)<br>      |
|  55|[0x800022e8]<br>0x00000000|- rs2_h0_val == 32<br> - rs1_w0_val == -257<br>                                                                                                                         |[0x80000574]:SMMWT t6, t5, t4<br> [0x80000578]:sw t6, 100(sp)<br>     |
|  56|[0x800022ec]<br>0xFFFFFFFF|- rs2_h0_val == 8<br>                                                                                                                                                   |[0x80000588]:SMMWT t6, t5, t4<br> [0x8000058c]:sw t6, 104(sp)<br>     |
|  57|[0x800022f4]<br>0x002B0000|- rs1_w0_val == -1431655766<br>                                                                                                                                         |[0x800005b0]:SMMWT t6, t5, t4<br> [0x800005b4]:sw t6, 112(sp)<br>     |
|  58|[0x800022f8]<br>0x00000000|- rs1_w0_val == 2147483647<br>                                                                                                                                          |[0x800005c4]:SMMWT t6, t5, t4<br> [0x800005c8]:sw t6, 116(sp)<br>     |
|  59|[0x800022fc]<br>0xFFFDFFFF|- rs1_w0_val == -1073741825<br>                                                                                                                                         |[0x800005dc]:SMMWT t6, t5, t4<br> [0x800005e0]:sw t6, 120(sp)<br>     |
|  60|[0x80002300]<br>0xFF7FFFFF|- rs1_w0_val == -536870913<br>                                                                                                                                          |[0x800005f0]:SMMWT t6, t5, t4<br> [0x800005f4]:sw t6, 124(sp)<br>     |
|  61|[0x80002304]<br>0x00011000|- rs1_w0_val == -268435457<br>                                                                                                                                          |[0x80000604]:SMMWT t6, t5, t4<br> [0x80000608]:sw t6, 128(sp)<br>     |
|  62|[0x80002308]<br>0x00005000|- rs1_w0_val == -134217729<br>                                                                                                                                          |[0x80000618]:SMMWT t6, t5, t4<br> [0x8000061c]:sw t6, 132(sp)<br>     |
|  63|[0x8000230c]<br>0x00002000|- rs1_w0_val == -67108865<br>                                                                                                                                           |[0x80000630]:SMMWT t6, t5, t4<br> [0x80000634]:sw t6, 136(sp)<br>     |
|  64|[0x80002310]<br>0x00001200|- rs1_w0_val == -33554433<br>                                                                                                                                           |[0x80000648]:SMMWT t6, t5, t4<br> [0x8000064c]:sw t6, 140(sp)<br>     |
|  65|[0x80002314]<br>0x00555600|- rs1_w0_val == -16777217<br>                                                                                                                                           |[0x80000660]:SMMWT t6, t5, t4<br> [0x80000664]:sw t6, 144(sp)<br>     |
|  66|[0x80002318]<br>0xFFFBFFFF|- rs1_w0_val == -2097153<br>                                                                                                                                            |[0x80000678]:SMMWT t6, t5, t4<br> [0x8000067c]:sw t6, 148(sp)<br>     |
|  67|[0x8000231c]<br>0x00000009|- rs1_w0_val == -65537<br>                                                                                                                                              |[0x80000690]:SMMWT t6, t5, t4<br> [0x80000694]:sw t6, 152(sp)<br>     |
|  68|[0x80002320]<br>0xFFFFFFFE|- rs1_w0_val == -16385<br>                                                                                                                                              |[0x800006a8]:SMMWT t6, t5, t4<br> [0x800006ac]:sw t6, 156(sp)<br>     |
|  69|[0x80002324]<br>0x00000010|- rs1_w0_val == -8193<br>                                                                                                                                               |[0x800006c0]:SMMWT t6, t5, t4<br> [0x800006c4]:sw t6, 160(sp)<br>     |
|  70|[0x80002328]<br>0xFFFFFFFF|- rs1_w0_val == -65<br>                                                                                                                                                 |[0x800006d4]:SMMWT t6, t5, t4<br> [0x800006d8]:sw t6, 164(sp)<br>     |
|  71|[0x8000232c]<br>0x00000004|- rs1_w0_val == -17<br>                                                                                                                                                 |[0x800006e8]:SMMWT t6, t5, t4<br> [0x800006ec]:sw t6, 168(sp)<br>     |
|  72|[0x80002330]<br>0x00000000|- rs1_w0_val == -9<br>                                                                                                                                                  |[0x800006fc]:SMMWT t6, t5, t4<br> [0x80000700]:sw t6, 172(sp)<br>     |
|  73|[0x80002334]<br>0x00000000|- rs1_w0_val == -5<br>                                                                                                                                                  |[0x80000710]:SMMWT t6, t5, t4<br> [0x80000714]:sw t6, 176(sp)<br>     |
|  74|[0x80002338]<br>0xFFDFF000|- rs1_w0_val == 268435456<br>                                                                                                                                           |[0x80000724]:SMMWT t6, t5, t4<br> [0x80000728]:sw t6, 180(sp)<br>     |
|  75|[0x8000233c]<br>0x00080000|- rs1_w0_val == 134217728<br>                                                                                                                                           |[0x80000738]:SMMWT t6, t5, t4<br> [0x8000073c]:sw t6, 184(sp)<br>     |
|  76|[0x80002340]<br>0xFF7FFE00|- rs1_w0_val == 33554432<br>                                                                                                                                            |[0x8000074c]:SMMWT t6, t5, t4<br> [0x80000750]:sw t6, 188(sp)<br>     |
|  77|[0x80002344]<br>0xFFFDFFC0|- rs1_w0_val == 4194304<br>                                                                                                                                             |[0x80000760]:SMMWT t6, t5, t4<br> [0x80000764]:sw t6, 192(sp)<br>     |
|  78|[0x80002348]<br>0xFFFDFFF0|- rs1_w0_val == 1048576<br>                                                                                                                                             |[0x80000774]:SMMWT t6, t5, t4<br> [0x80000778]:sw t6, 196(sp)<br>     |
|  79|[0x8000234c]<br>0xFFFFFFC0|- rs1_w0_val == 524288<br>                                                                                                                                              |[0x80000788]:SMMWT t6, t5, t4<br> [0x8000078c]:sw t6, 200(sp)<br>     |
|  80|[0x80002350]<br>0x00004000|- rs1_w0_val == 131072<br>                                                                                                                                              |[0x8000079c]:SMMWT t6, t5, t4<br> [0x800007a0]:sw t6, 204(sp)<br>     |
|  81|[0x80002354]<br>0xFFFFFFBF|- rs1_w0_val == -4097<br>                                                                                                                                               |[0x800007b4]:SMMWT t6, t5, t4<br> [0x800007b8]:sw t6, 208(sp)<br>     |
|  82|[0x80002358]<br>0xFFFFFFBF|- rs1_w0_val == 8192<br>                                                                                                                                                |[0x800007c8]:SMMWT t6, t5, t4<br> [0x800007cc]:sw t6, 212(sp)<br>     |
|  83|[0x8000235c]<br>0xFFFFFFFF|- rs1_w0_val == 2048<br>                                                                                                                                                |[0x800007e0]:SMMWT t6, t5, t4<br> [0x800007e4]:sw t6, 216(sp)<br>     |
|  84|[0x80002360]<br>0xFFFFFFFF|- rs1_w0_val == 1024<br>                                                                                                                                                |[0x800007f4]:SMMWT t6, t5, t4<br> [0x800007f8]:sw t6, 220(sp)<br>     |
|  85|[0x80002364]<br>0x40000000|- rs1_w0_val == -2147483648<br>                                                                                                                                         |[0x80000808]:SMMWT t6, t5, t4<br> [0x8000080c]:sw t6, 224(sp)<br>     |
