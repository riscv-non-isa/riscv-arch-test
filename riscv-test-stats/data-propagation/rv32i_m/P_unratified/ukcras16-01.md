
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
| SIG_REGION                | [('0x80002210', '0x80002470', '152 words')]      |
| COV_LABELS                | ukcras16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukcras16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 76      |
| STAT1                     | 73      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000720]:UKCRAS16 t6, t5, t4
      [0x80000724]:sw t6, 296(ra)
 -- Signature Address: 0x80002420 Data: 0x80000000
 -- Redundant Coverpoints hit by the op
      - opcode : ukcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 65519
      - rs2_h0_val == 32768
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007b0]:UKCRAS16 t6, t5, t4
      [0x800007b4]:sw t6, 344(ra)
 -- Signature Address: 0x80002450 Data: 0xFE0EDFF4
 -- Redundant Coverpoints hit by the op
      - opcode : ukcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h0_val == 65023
      - rs1_h0_val == 57343




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f4]:UKCRAS16 t6, t5, t4
      [0x800007f8]:sw t6, 368(ra)
 -- Signature Address: 0x80002468 Data: 0xFFFF0000
 -- Redundant Coverpoints hit by the op
      - opcode : ukcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 65535
      - rs2_h0_val == 57343
      - rs1_h1_val == 65535






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

|s.no|        signature         |                                                                                                                                                      coverpoints                                                                                                                                                      |                                   code                                    |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ukcras16<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs1_h0_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                     |[0x8000011c]:UKCRAS16 zero, zero, zero<br> [0x80000120]:sw zero, 0(tp)<br> |
|   2|[0x80002218]<br>0xFFFF0000|- rs1 : x17<br> - rs2 : x17<br> - rd : x3<br> - rs1 == rs2 != rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 65535<br> - rs2_h0_val == 57343<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 57343<br> |[0x80000134]:UKCRAS16 gp, a7, a7<br> [0x80000138]:sw gp, 8(tp)<br>         |
|   3|[0x80002220]<br>0xFFF1AA9A|- rs1 : x20<br> - rs2 : x24<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 65519<br> - rs1_h1_val == 2<br> - rs1_h0_val == 65519<br>                                                  |[0x8000014c]:UKCRAS16 t4, s4, s8<br> [0x80000150]:sw t4, 16(tp)<br>        |
|   4|[0x80002228]<br>0xFFFF0000|- rs1 : x10<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 32768<br>                                                                       |[0x80000160]:UKCRAS16 fp, a0, fp<br> [0x80000164]:sw fp, 24(tp)<br>        |
|   5|[0x80002230]<br>0x00040000|- rs1 : x18<br> - rs2 : x30<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 4<br> - rs1_h0_val == 128<br>                                                                                                                                                                          |[0x80000174]:UKCRAS16 s2, s2, t5<br> [0x80000178]:sw s2, 32(tp)<br>        |
|   6|[0x80002238]<br>0x10113FFF|- rs1 : x26<br> - rs2 : x9<br> - rd : x12<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                             |[0x80000188]:UKCRAS16 a2, s10, s1<br> [0x8000018c]:sw a2, 40(tp)<br>       |
|   7|[0x80002240]<br>0xFFFF0000|- rs1 : x1<br> - rs2 : x16<br> - rd : x25<br> - rs2_h1_val == 57343<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                        |[0x800001a0]:UKCRAS16 s9, ra, a6<br> [0x800001a4]:sw s9, 48(tp)<br>        |
|   8|[0x80002248]<br>0xFFFF0000|- rs1 : x28<br> - rs2 : x23<br> - rd : x11<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 65533<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                           |[0x800001b8]:UKCRAS16 a1, t3, s7<br> [0x800001bc]:sw a1, 56(tp)<br>        |
|   9|[0x80002250]<br>0x000D07F8|- rs1 : x2<br> - rs2 : x10<br> - rd : x26<br> - rs2_h1_val == 63487<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                                                      |[0x800001d0]:UKCRAS16 s10, sp, a0<br> [0x800001d4]:sw s10, 64(tp)<br>      |
|  10|[0x80002258]<br>0x02090000|- rs1 : x16<br> - rs2 : x6<br> - rd : x24<br> - rs2_h1_val == 64511<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                        |[0x800001e8]:UKCRAS16 s8, a6, t1<br> [0x800001ec]:sw s8, 72(tp)<br>        |
|  11|[0x80002260]<br>0x00190000|- rs1 : x23<br> - rs2 : x19<br> - rd : x1<br> - rs2_h1_val == 65023<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                      |[0x80000200]:UKCRAS16 ra, s7, s3<br> [0x80000204]:sw ra, 80(tp)<br>        |
|  12|[0x80002268]<br>0xFFFF0000|- rs1 : x21<br> - rs2 : x2<br> - rd : x7<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 61439<br>                                                                                                                                                                    |[0x80000218]:UKCRAS16 t2, s5, sp<br> [0x8000021c]:sw t2, 88(tp)<br>        |
|  13|[0x80002270]<br>0x00480000|- rs1 : x30<br> - rs2 : x27<br> - rd : x16<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 8<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                  |[0x80000230]:UKCRAS16 a6, t5, s11<br> [0x80000234]:sw a6, 96(tp)<br>       |
|  14|[0x80002278]<br>0x400D0000|- rs1 : x3<br> - rs2 : x15<br> - rd : x31<br> - rs2_h1_val == 65471<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                      |[0x80000248]:UKCRAS16 t6, gp, a5<br> [0x8000024c]:sw t6, 104(tp)<br>       |
|  15|[0x80002280]<br>0xFFFF0000|- rs1 : x6<br> - rs2 : x13<br> - rd : x2<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 65535<br>                                                                                                                                                                                                                       |[0x80000260]:UKCRAS16 sp, t1, a3<br> [0x80000264]:sw sp, 112(tp)<br>       |
|  16|[0x80002288]<br>0x000B0000|- rs1 : x14<br> - rs2 : x26<br> - rd : x27<br> - rs2_h1_val == 65519<br>                                                                                                                                                                                                                                               |[0x80000280]:UKCRAS16 s11, a4, s10<br> [0x80000284]:sw s11, 0(sp)<br>      |
|  17|[0x80002290]<br>0xFFFF0000|- rs1 : x19<br> - rs2 : x28<br> - rd : x20<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 65531<br> - rs1_h1_val == 65471<br> - rs1_h0_val == 63487<br>                                                                                                                                                                 |[0x80000298]:UKCRAS16 s4, s3, t3<br> [0x8000029c]:sw s4, 8(sp)<br>         |
|  18|[0x80002298]<br>0x001C0000|- rs1 : x5<br> - rs2 : x7<br> - rd : x19<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 16<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                |[0x800002ac]:UKCRAS16 s3, t0, t2<br> [0x800002b0]:sw s3, 16(sp)<br>        |
|  19|[0x800022a0]<br>0xFFFF0000|- rs1 : x15<br> - rs2 : x31<br> - rd : x9<br> - rs2_h1_val == 65533<br> - rs1_h1_val == 43690<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                            |[0x800002c4]:UKCRAS16 s1, a5, t6<br> [0x800002c8]:sw s1, 24(sp)<br>        |
|  20|[0x800022a8]<br>0xFFFF0000|- rs1 : x11<br> - rs2 : x3<br> - rd : x14<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 65527<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 64511<br>                                                                                                                                                                  |[0x800002dc]:UKCRAS16 a4, a1, gp<br> [0x800002e0]:sw a4, 32(sp)<br>        |
|  21|[0x800022b0]<br>0xC0060000|- rs1 : x24<br> - rs2 : x22<br> - rd : x23<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 49151<br>                                                                                                                                                                                                                     |[0x800002f4]:UKCRAS16 s7, s8, s6<br> [0x800002f8]:sw s7, 40(sp)<br>        |
|  22|[0x800022b8]<br>0xFFFF0000|- rs1 : x12<br> - rs2 : x25<br> - rd : x21<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 16<br>                                                                                                                                                                    |[0x80000308]:UKCRAS16 s5, a2, s9<br> [0x8000030c]:sw s5, 48(sp)<br>        |
|  23|[0x800022c0]<br>0xFFFFDFFD|- rs1 : x13<br> - rs2 : x14<br> - rd : x15<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 65534<br>                                                                                                                                                                                                                      |[0x80000320]:UKCRAS16 a5, a3, a4<br> [0x80000324]:sw a5, 56(sp)<br>        |
|  24|[0x800022c8]<br>0xF80E0000|- rs1 : x7<br> - rs2 : x29<br> - rd : x6<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 63487<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                  |[0x80000338]:UKCRAS16 t1, t2, t4<br> [0x8000033c]:sw t1, 64(sp)<br>        |
|  25|[0x800022d0]<br>0xFFFFF7FB|- rs1 : x22<br> - rs2 : x1<br> - rd : x17<br> - rs2_h1_val == 2048<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                                                       |[0x80000350]:UKCRAS16 a7, s6, ra<br> [0x80000354]:sw a7, 72(sp)<br>        |
|  26|[0x800022d8]<br>0xFFFFFBFD|- rs1 : x27<br> - rs2 : x20<br> - rd : x5<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 65503<br>                                                                                                                                                                                              |[0x80000364]:UKCRAS16 t0, s11, s4<br> [0x80000368]:sw t0, 80(sp)<br>       |
|  27|[0x800022e0]<br>0x00130000|- rs1 : x8<br> - rs2 : x21<br> - rd : x10<br> - rs2_h1_val == 512<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                                            |[0x8000037c]:UKCRAS16 a0, fp, s5<br> [0x80000380]:sw a0, 88(sp)<br>        |
|  28|[0x800022e8]<br>0x0010EEFF|- rs1 : x31<br> - rs2 : x5<br> - rd : x13<br> - rs2_h1_val == 256<br> - rs2_h0_val == 1<br>                                                                                                                                                                                                                            |[0x80000394]:UKCRAS16 a3, t6, t0<br> [0x80000398]:sw a3, 96(sp)<br>        |
|  29|[0x800022f0]<br>0xFFFFFB7F|- rs1 : x29<br> - rs2 : x11<br> - rd : x30<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                                 |[0x800003ac]:UKCRAS16 t5, t4, a1<br> [0x800003b0]:sw t5, 104(sp)<br>       |
|  30|[0x800022f8]<br>0x001500E0|- rs1 : x25<br> - rs2 : x18<br> - rd : x28<br> - rs2_h1_val == 32<br>                                                                                                                                                                                                                                                  |[0x800003cc]:UKCRAS16 t3, s9, s2<br> [0x800003d0]:sw t3, 0(ra)<br>         |
|  31|[0x80002300]<br>0xFFFF0000|- rs1 : x4<br> - rs2 : x12<br> - rd : x22<br> - rs2_h1_val == 16<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                   |[0x800003e4]:UKCRAS16 s6, tp, a2<br> [0x800003e8]:sw s6, 8(ra)<br>         |
|  32|[0x80002308]<br>0xFF040000|- rs1 : x9<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                |[0x800003f8]:UKCRAS16 a4, s1, s5<br> [0x800003fc]:sw a4, 16(ra)<br>        |
|  33|[0x80002310]<br>0x08010FFC|- rs2 : x4<br> - rs2_h1_val == 4<br> - rs1_h1_val == 1<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                    |[0x8000040c]:UKCRAS16 s7, t6, tp<br> [0x80000410]:sw s7, 24(ra)<br>        |
|  34|[0x80002318]<br>0x001A0780|- rd : x4<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                 |[0x80000424]:UKCRAS16 tp, s11, fp<br> [0x80000428]:sw tp, 32(ra)<br>       |
|  35|[0x80002320]<br>0x001103E0|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                               |[0x80000438]:UKCRAS16 t6, t5, t4<br> [0x8000043c]:sw t6, 40(ra)<br>        |
|  36|[0x80002328]<br>0xE0020000|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                |[0x80000450]:UKCRAS16 t6, t5, t4<br> [0x80000454]:sw t6, 48(ra)<br>        |
|  37|[0x80002330]<br>0xFFFF0000|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                 |[0x80000468]:UKCRAS16 t6, t5, t4<br> [0x8000046c]:sw t6, 56(ra)<br>        |
|  38|[0x80002338]<br>0x8008001C|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                 |[0x80000480]:UKCRAS16 t6, t5, t4<br> [0x80000484]:sw t6, 64(ra)<br>        |
|  39|[0x80002340]<br>0xC0120000|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                  |[0x80000498]:UKCRAS16 t6, t5, t4<br> [0x8000049c]:sw t6, 72(ra)<br>        |
|  40|[0x80002348]<br>0x80110000|- rs2_h0_val == 32768<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                        |[0x800004ac]:UKCRAS16 t6, t5, t4<br> [0x800004b0]:sw t6, 80(ra)<br>        |
|  41|[0x80002350]<br>0xF07FFFFC|- rs2_h0_val == 128<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                            |[0x800004c4]:UKCRAS16 t6, t5, t4<br> [0x800004c8]:sw t6, 88(ra)<br>        |
|  42|[0x80002358]<br>0xFF8FFFF7|- rs2_h1_val == 8<br> - rs2_h0_val == 65407<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                 |[0x800004dc]:UKCRAS16 t6, t5, t4<br> [0x800004e0]:sw t6, 96(ra)<br>        |
|  43|[0x80002360]<br>0xFFFFFFFB|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                  |[0x800004f4]:UKCRAS16 t6, t5, t4<br> [0x800004f8]:sw t6, 104(ra)<br>       |
|  44|[0x80002368]<br>0xFFFFFFFA|- rs2_h1_val == 1<br> - rs2_h0_val == 65503<br> - rs1_h1_val == 65407<br>                                                                                                                                                                                                                                              |[0x8000050c]:UKCRAS16 t6, t5, t4<br> [0x80000510]:sw t6, 112(ra)<br>       |
|  45|[0x80002370]<br>0xF7FFFFFE|- rs2_h0_val == 61439<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                     |[0x80000524]:UKCRAS16 t6, t5, t4<br> [0x80000528]:sw t6, 120(ra)<br>       |
|  46|[0x80002378]<br>0xFFFF0000|- rs2_h0_val == 43690<br>                                                                                                                                                                                                                                                                                              |[0x8000053c]:UKCRAS16 t6, t5, t4<br> [0x80000540]:sw t6, 128(ra)<br>       |
|  47|[0x80002380]<br>0x80FF0000|- rs2_h0_val == 32767<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                      |[0x80000554]:UKCRAS16 t6, t5, t4<br> [0x80000558]:sw t6, 136(ra)<br>       |
|  48|[0x80002388]<br>0xFC7F0000|- rs2_h0_val == 64511<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                      |[0x80000568]:UKCRAS16 t6, t5, t4<br> [0x8000056c]:sw t6, 144(ra)<br>       |
|  49|[0x80002390]<br>0xFFFF7800|- rs2_h0_val == 65023<br>                                                                                                                                                                                                                                                                                              |[0x80000580]:UKCRAS16 t6, t5, t4<br> [0x80000584]:sw t6, 152(ra)<br>       |
|  50|[0x80002398]<br>0x84000000|- rs2_h0_val == 1024<br> - rs1_h1_val == 32768<br>                                                                                                                                                                                                                                                                     |[0x80000598]:UKCRAS16 t6, t5, t4<br> [0x8000059c]:sw t6, 160(ra)<br>       |
|  51|[0x800023a0]<br>0x020FFFE4|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                |[0x800005b0]:UKCRAS16 t6, t5, t4<br> [0x800005b4]:sw t6, 168(ra)<br>       |
|  52|[0x800023a8]<br>0x01040000|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                |[0x800005c8]:UKCRAS16 t6, t5, t4<br> [0x800005cc]:sw t6, 176(ra)<br>       |
|  53|[0x800023b0]<br>0x00500000|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                 |[0x800005e0]:UKCRAS16 t6, t5, t4<br> [0x800005e4]:sw t6, 184(ra)<br>       |
|  54|[0x800023b8]<br>0x0009FFFC|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                  |[0x800005f8]:UKCRAS16 t6, t5, t4<br> [0x800005fc]:sw t6, 192(ra)<br>       |
|  55|[0x800023c0]<br>0x55650000|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                              |[0x80000610]:UKCRAS16 t6, t5, t4<br> [0x80000614]:sw t6, 200(ra)<br>       |
|  56|[0x800023c8]<br>0xC003AAA9|- rs1_h1_val == 49151<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                                                    |[0x80000628]:UKCRAS16 t6, t5, t4<br> [0x8000062c]:sw t6, 208(ra)<br>       |
|  57|[0x800023d0]<br>0xFFFFA9AA|- rs2_h0_val == 65471<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                          |[0x80000640]:UKCRAS16 t6, t5, t4<br> [0x80000644]:sw t6, 216(ra)<br>       |
|  58|[0x800023d8]<br>0xFBFFFF7F|- rs1_h1_val == 64511<br>                                                                                                                                                                                                                                                                                              |[0x80000654]:UKCRAS16 t6, t5, t4<br> [0x80000658]:sw t6, 224(ra)<br>       |
|  59|[0x800023e0]<br>0xFFFF7FFF|- rs1_h1_val == 65023<br>                                                                                                                                                                                                                                                                                              |[0x8000066c]:UKCRAS16 t6, t5, t4<br> [0x80000670]:sw t6, 232(ra)<br>       |
|  60|[0x800023e8]<br>0xFFF80000|- rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                                              |[0x80000684]:UKCRAS16 t6, t5, t4<br> [0x80000688]:sw t6, 240(ra)<br>       |
|  61|[0x800023f0]<br>0x4000FFEA|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                               |[0x80000698]:UKCRAS16 t6, t5, t4<br> [0x8000069c]:sw t6, 248(ra)<br>       |
|  62|[0x800023f8]<br>0x1040FDFF|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                               |[0x800006b0]:UKCRAS16 t6, t5, t4<br> [0x800006b4]:sw t6, 256(ra)<br>       |
|  63|[0x80002400]<br>0x04040018|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                               |[0x800006c8]:UKCRAS16 t6, t5, t4<br> [0x800006cc]:sw t6, 264(ra)<br>       |
|  64|[0x80002408]<br>0xFFFFBFFE|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                 |[0x800006e0]:UKCRAS16 t6, t5, t4<br> [0x800006e4]:sw t6, 272(ra)<br>       |
|  65|[0x80002410]<br>0xFFFFFBF1|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                  |[0x800006f8]:UKCRAS16 t6, t5, t4<br> [0x800006fc]:sw t6, 280(ra)<br>       |
|  66|[0x80002418]<br>0xFFFB7FFE|- rs1_h1_val == 65527<br>                                                                                                                                                                                                                                                                                              |[0x80000710]:UKCRAS16 t6, t5, t4<br> [0x80000714]:sw t6, 288(ra)<br>       |
|  67|[0x80002428]<br>0xFFFF0000|- rs2_h0_val == 65279<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                    |[0x80000738]:UKCRAS16 t6, t5, t4<br> [0x8000073c]:sw t6, 304(ra)<br>       |
|  68|[0x80002430]<br>0x05005545|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                              |[0x80000750]:UKCRAS16 t6, t5, t4<br> [0x80000754]:sw t6, 312(ra)<br>       |
|  69|[0x80002438]<br>0xFF857FF0|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                              |[0x80000768]:UKCRAS16 t6, t5, t4<br> [0x8000076c]:sw t6, 320(ra)<br>       |
|  70|[0x80002440]<br>0x000DFF76|- rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                                              |[0x80000780]:UKCRAS16 t6, t5, t4<br> [0x80000784]:sw t6, 328(ra)<br>       |
|  71|[0x80002448]<br>0xFFFFFFB0|- rs1_h0_val == 65471<br>                                                                                                                                                                                                                                                                                              |[0x80000798]:UKCRAS16 t6, t5, t4<br> [0x8000079c]:sw t6, 336(ra)<br>       |
|  72|[0x80002458]<br>0xFFFF0000|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                                                              |[0x800007c8]:UKCRAS16 t6, t5, t4<br> [0x800007cc]:sw t6, 352(ra)<br>       |
|  73|[0x80002460]<br>0x00270000|- rs2_h1_val == 64<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                          |[0x800007dc]:UKCRAS16 t6, t5, t4<br> [0x800007e0]:sw t6, 360(ra)<br>       |
