
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
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | kcras16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kcras16-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 77      |
| STAT1                     | 75      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000052c]:KCRAS16 t6, t5, t4
      [0x80000530]:sw t6, 216(ra)
 -- Signature Address: 0x80002378 Data: 0xFFFDF800
 -- Redundant Coverpoints hit by the op
      - opcode : kcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 2048
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000794]:KCRAS16 t6, t5, t4
      [0x80000798]:sw t6, 432(ra)
 -- Signature Address: 0x80002450 Data: 0xFFF31556
 -- Redundant Coverpoints hit by the op
      - opcode : kcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs1_h1_val == -9
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

|s.no|        signature         |                                                                                                                                                             coverpoints                                                                                                                                                              |                                   code                                   |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kcras16<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h0_val == rs2_h0_val<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                       |[0x8000011c]:KCRAS16 zero, zero, zero<br> [0x80000120]:sw zero, 0(sp)<br> |
|   2|[0x80002218]<br>0x54545656|- rs1 : x1<br> - rs2 : x1<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -257<br> - rs2_h0_val == 21845<br> - rs1_h1_val == -257<br> - rs1_h0_val == 21845<br>                                                                             |[0x80000134]:KCRAS16 s2, ra, ra<br> [0x80000138]:sw s2, 8(sp)<br>         |
|   3|[0x80002220]<br>0xFFFA1FFC|- rs1 : x10<br> - rs2 : x6<br> - rd : x1<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 4<br> - rs2_h0_val == -3<br> - rs1_h1_val == -3<br> - rs1_h0_val == 8192<br> |[0x80000148]:KCRAS16 ra, a0, t1<br> [0x8000014c]:sw ra, 16(sp)<br>        |
|   4|[0x80002228]<br>0x00003FFC|- rs1 : x19<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -2<br> - rs1_h1_val == 2<br>                                                                                                                                    |[0x80000160]:KCRAS16 s9, s3, s9<br> [0x80000164]:sw s9, 24(sp)<br>        |
|   5|[0x80002230]<br>0x5454FF05|- rs1 : x20<br> - rs2 : x14<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs2_h0_val == -257<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -257<br>                                                                                                                                                                                     |[0x80000178]:KCRAS16 s4, s4, a4<br> [0x8000017c]:sw s4, 32(sp)<br>        |
|   6|[0x80002238]<br>0x00032006|- rs1 : x25<br> - rs2 : x18<br> - rd : x17<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 2<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                  |[0x80000190]:KCRAS16 a7, s9, s2<br> [0x80000194]:sw a7, 40(sp)<br>        |
|   7|[0x80002240]<br>0x3FFA7FFF|- rs1 : x24<br> - rs2 : x15<br> - rd : x22<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                                                                   |[0x800001a4]:KCRAS16 s6, s8, a5<br> [0x800001a8]:sw s6, 48(sp)<br>        |
|   8|[0x80002248]<br>0x8007AAAF|- rs1 : x18<br> - rs2 : x13<br> - rd : x21<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -32768<br> - rs1_h0_val == 4<br>                                                                                                                                                                     |[0x800001b8]:KCRAS16 s5, s2, a3<br> [0x800001bc]:sw s5, 56(sp)<br>        |
|   9|[0x80002250]<br>0xFF5E8000|- rs1 : x3<br> - rs2 : x28<br> - rd : x5<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -33<br> - rs1_h1_val == -129<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                    |[0x800001d0]:KCRAS16 t0, gp, t3<br> [0x800001d4]:sw t0, 64(sp)<br>        |
|  10|[0x80002258]<br>0x40804003|- rs1 : x6<br> - rs2 : x19<br> - rd : x26<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 128<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                |[0x800001e4]:KCRAS16 s10, t1, s3<br> [0x800001e8]:sw s10, 72(sp)<br>      |
|  11|[0x80002260]<br>0xFFEE0C00|- rs1 : x29<br> - rs2 : x23<br> - rd : x7<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -1<br> - rs1_h1_val == -17<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                      |[0x800001fc]:KCRAS16 t2, t4, s7<br> [0x80000200]:sw t2, 80(sp)<br>        |
|  12|[0x80002268]<br>0x00010806|- rs1 : x11<br> - rs2 : x5<br> - rd : x14<br> - rs2_h1_val == -2049<br>                                                                                                                                                                                                                                                               |[0x80000214]:KCRAS16 a4, a1, t0<br> [0x80000218]:sw a4, 88(sp)<br>        |
|  13|[0x80002270]<br>0x0030AEAB|- rs1 : x7<br> - rs2 : x12<br> - rd : x15<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 16<br> - rs1_h1_val == 32<br> - rs1_h0_val == -21846<br>                                                                                                                                              |[0x8000022c]:KCRAS16 a5, t2, a2<br> [0x80000230]:sw a5, 96(sp)<br>        |
|  14|[0x80002278]<br>0x0FF901FE|- rs1 : x13<br> - rs2 : x8<br> - rd : x4<br> - rs2_h1_val == -513<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                 |[0x80000244]:KCRAS16 tp, a3, fp<br> [0x80000248]:sw tp, 104(sp)<br>       |
|  15|[0x80002280]<br>0x7FFF0281|- rs1 : x26<br> - rs2 : x4<br> - rd : x11<br> - rs2_h1_val == -129<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                              |[0x8000025c]:KCRAS16 a1, s10, tp<br> [0x80000260]:sw a1, 112(sp)<br>      |
|  16|[0x80002288]<br>0xFFBF0841|- rs1 : x8<br> - rs2 : x27<br> - rd : x24<br> - rs2_h1_val == -65<br> - rs2_h0_val == -129<br> - rs1_h1_val == 64<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                        |[0x80000274]:KCRAS16 s8, fp, s11<br> [0x80000278]:sw s8, 120(sp)<br>      |
|  17|[0x80002290]<br>0xF9FF001D|- rs1 : x21<br> - rs2 : x10<br> - rd : x28<br> - rs2_h1_val == -33<br> - rs2_h0_val == -2049<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                              |[0x8000028c]:KCRAS16 t3, s5, a0<br> [0x80000290]:sw t3, 128(sp)<br>       |
|  18|[0x80002298]<br>0xBFFAF810|- rs1 : x15<br> - rs2 : x7<br> - rd : x16<br> - rs2_h1_val == -17<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                       |[0x800002a4]:KCRAS16 a6, a5, t2<br> [0x800002a8]:sw a6, 136(sp)<br>       |
|  19|[0x800022a0]<br>0xFEF60011|- rs1 : x23<br> - rs2 : x16<br> - rd : x6<br> - rs2_h1_val == -9<br> - rs1_h1_val == -9<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                     |[0x800002c4]:KCRAS16 t1, s7, a6<br> [0x800002c8]:sw t1, 0(ra)<br>         |
|  20|[0x800022a8]<br>0x0007FFFC|- rs1 : x14<br> - rs2 : x2<br> - rd : x19<br> - rs2_h1_val == -5<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                           |[0x800002dc]:KCRAS16 s3, a4, sp<br> [0x800002e0]:sw s3, 8(ra)<br>         |
|  21|[0x800022b0]<br>0x01FEFFC2|- rs1 : x31<br> - rs2 : x22<br> - rd : x10<br> - rs2_h1_val == -3<br> - rs2_h0_val == 512<br> - rs1_h1_val == -2<br> - rs1_h0_val == -65<br>                                                                                                                                                                                          |[0x800002f4]:KCRAS16 a0, t6, s6<br> [0x800002f8]:sw a0, 16(ra)<br>        |
|  22|[0x800022b8]<br>0x037FFFF9|- rs1 : x17<br> - rs2 : x21<br> - rd : x3<br> - rs2_h1_val == -2<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                         |[0x8000030c]:KCRAS16 gp, a7, s5<br> [0x80000310]:sw gp, 24(ra)<br>        |
|  23|[0x800022c0]<br>0xFC067FFF|- rs1 : x2<br> - rs2 : x26<br> - rd : x29<br> - rs2_h1_val == -32768<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                    |[0x80000324]:KCRAS16 t4, sp, s10<br> [0x80000328]:sw t4, 32(ra)<br>       |
|  24|[0x800022c8]<br>0xFFFCC003|- rs1 : x4<br> - rs2 : x3<br> - rd : x30<br> - rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                |[0x8000033c]:KCRAS16 t5, tp, gp<br> [0x80000340]:sw t5, 40(ra)<br>        |
|  25|[0x800022d0]<br>0xFFBCDF7F|- rs1 : x22<br> - rs2 : x31<br> - rd : x12<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -65<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                              |[0x80000354]:KCRAS16 a2, s6, t6<br> [0x80000358]:sw a2, 48(ra)<br>        |
|  26|[0x800022d8]<br>0xFFFEF005|- rs1 : x30<br> - rs2 : x17<br> - rd : x13<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                        |[0x8000036c]:KCRAS16 a3, t5, a7<br> [0x80000370]:sw a3, 56(ra)<br>        |
|  27|[0x800022e0]<br>0xFFC41800|- rs1 : x9<br> - rs2 : x29<br> - rd : x8<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                 |[0x80000380]:KCRAS16 fp, s1, t4<br> [0x80000384]:sw fp, 64(ra)<br>        |
|  28|[0x800022e8]<br>0x4004FC08|- rs1 : x27<br> - rs2 : x30<br> - rd : x9<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 4<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                |[0x80000398]:KCRAS16 s1, s11, t5<br> [0x8000039c]:sw s1, 72(ra)<br>       |
|  29|[0x800022f0]<br>0x4002DDFF|- rs1 : x28<br> - rs2 : x24<br> - rd : x2<br> - rs2_h1_val == 512<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                       |[0x800003b0]:KCRAS16 sp, t3, s8<br> [0x800003b4]:sw sp, 80(ra)<br>        |
|  30|[0x800022f8]<br>0xFFC4FF07|- rs1 : x16<br> - rs2 : x11<br> - rd : x27<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                |[0x800003c8]:KCRAS16 s11, a6, a1<br> [0x800003cc]:sw s11, 88(ra)<br>      |
|  31|[0x80002300]<br>0x0008FF7B|- rs1 : x5<br> - rs2 : x20<br> - rd : x31<br> - rs2_h1_val == 128<br> - rs1_h1_val == 16<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                   |[0x800003e0]:KCRAS16 t6, t0, s4<br> [0x800003e4]:sw t6, 96(ra)<br>        |
|  32|[0x80002308]<br>0x7FFFFFB6|- rs1 : x12<br> - rs2 : x9<br> - rd : x23<br> - rs2_h1_val == 64<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                                                                         |[0x800003f4]:KCRAS16 s7, a2, s1<br> [0x800003f8]:sw s7, 104(ra)<br>       |
|  33|[0x80002310]<br>0xF7FF1E00|- rs1_h1_val == -2049<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                    |[0x80000408]:KCRAS16 t6, t5, t4<br> [0x8000040c]:sw t6, 112(ra)<br>       |
|  34|[0x80002318]<br>0x00040FE0|- rs1_h1_val == -5<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                        |[0x80000420]:KCRAS16 t6, t5, t4<br> [0x80000424]:sw t6, 120(ra)<br>       |
|  35|[0x80002320]<br>0x007FFDEF|- rs2_h0_val == 128<br> - rs1_h1_val == -1<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                |[0x80000434]:KCRAS16 t6, t5, t4<br> [0x80000438]:sw t6, 128(ra)<br>       |
|  36|[0x80002328]<br>0xFF7F00FF|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                |[0x80000448]:KCRAS16 t6, t5, t4<br> [0x8000044c]:sw t6, 136(ra)<br>       |
|  37|[0x80002330]<br>0x03FF4081|- rs1_h1_val == 1024<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                    |[0x8000045c]:KCRAS16 t6, t5, t4<br> [0x80000460]:sw t6, 144(ra)<br>       |
|  38|[0x80002338]<br>0xBFFB1000|- rs2_h0_val == -16385<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                   |[0x80000470]:KCRAS16 t6, t5, t4<br> [0x80000474]:sw t6, 152(ra)<br>       |
|  39|[0x80002340]<br>0x0207040A|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                              |[0x80000488]:KCRAS16 t6, t5, t4<br> [0x8000048c]:sw t6, 160(ra)<br>       |
|  40|[0x80002348]<br>0xC03F0121|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                               |[0x800004a0]:KCRAS16 t6, t5, t4<br> [0x800004a4]:sw t6, 168(ra)<br>       |
|  41|[0x80002350]<br>0xFF7D0086|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                               |[0x800004b8]:KCRAS16 t6, t5, t4<br> [0x800004bc]:sw t6, 176(ra)<br>       |
|  42|[0x80002358]<br>0xFFB5003A|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                |[0x800004d0]:KCRAS16 t6, t5, t4<br> [0x800004d4]:sw t6, 184(ra)<br>       |
|  43|[0x80002360]<br>0x007A4021|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                |[0x800004e8]:KCRAS16 t6, t5, t4<br> [0x800004ec]:sw t6, 192(ra)<br>       |
|  44|[0x80002368]<br>0xFFBE000A|- rs1_h1_val == -65<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                        |[0x80000500]:KCRAS16 t6, t5, t4<br> [0x80000504]:sw t6, 200(ra)<br>       |
|  45|[0x80002370]<br>0x45540042|- rs2_h0_val == -4097<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                       |[0x80000518]:KCRAS16 t6, t5, t4<br> [0x8000051c]:sw t6, 208(ra)<br>       |
|  46|[0x80002380]<br>0xAACA0009|- rs2_h0_val == 32<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                              |[0x80000544]:KCRAS16 t6, t5, t4<br> [0x80000548]:sw t6, 224(ra)<br>       |
|  47|[0x80002388]<br>0x008001E0|- rs2_h1_val == 32<br> - rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                         |[0x8000055c]:KCRAS16 t6, t5, t4<br> [0x80000560]:sw t6, 232(ra)<br>       |
|  48|[0x80002390]<br>0xF80F0000|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                |[0x80000574]:KCRAS16 t6, t5, t4<br> [0x80000578]:sw t6, 240(ra)<br>       |
|  49|[0x80002398]<br>0x10070019|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                              |[0x80000588]:KCRAS16 t6, t5, t4<br> [0x8000058c]:sw t6, 248(ra)<br>       |
|  50|[0x800023a0]<br>0x07FC1003|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                              |[0x8000059c]:KCRAS16 t6, t5, t4<br> [0x800005a0]:sw t6, 256(ra)<br>       |
|  51|[0x800023a8]<br>0xFFFFC005|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                               |[0x800005b4]:KCRAS16 t6, t5, t4<br> [0x800005b8]:sw t6, 264(ra)<br>       |
|  52|[0x800023b0]<br>0x000D0000|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                 |[0x800005cc]:KCRAS16 t6, t5, t4<br> [0x800005d0]:sw t6, 272(ra)<br>       |
|  53|[0x800023b8]<br>0x0001FFD0|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                 |[0x800005e0]:KCRAS16 t6, t5, t4<br> [0x800005e4]:sw t6, 280(ra)<br>       |
|  54|[0x800023c0]<br>0xAFFEDFFA|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                            |[0x800005f8]:KCRAS16 t6, t5, t4<br> [0x800005fc]:sw t6, 288(ra)<br>       |
|  55|[0x800023c8]<br>0xDFFCF801|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                             |[0x80000610]:KCRAS16 t6, t5, t4<br> [0x80000614]:sw t6, 296(ra)<br>       |
|  56|[0x800023d0]<br>0xFFF00028|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                               |[0x80000628]:KCRAS16 t6, t5, t4<br> [0x8000062c]:sw t6, 304(ra)<br>       |
|  57|[0x800023d8]<br>0xEFFEFFC4|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                             |[0x80000640]:KCRAS16 t6, t5, t4<br> [0x80000644]:sw t6, 312(ra)<br>       |
|  58|[0x800023e0]<br>0x01FF000A|- rs2_h1_val == -1<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                       |[0x80000658]:KCRAS16 t6, t5, t4<br> [0x8000065c]:sw t6, 320(ra)<br>       |
|  59|[0x800023e8]<br>0xEFDEE000|- rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                               |[0x80000670]:KCRAS16 t6, t5, t4<br> [0x80000674]:sw t6, 328(ra)<br>       |
|  60|[0x800023f0]<br>0x8000BFFE|- rs2_h1_val == 1<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                      |[0x80000688]:KCRAS16 t6, t5, t4<br> [0x8000068c]:sw t6, 336(ra)<br>       |
|  61|[0x800023f8]<br>0x75550FF7|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                              |[0x800006a0]:KCRAS16 t6, t5, t4<br> [0x800006a4]:sw t6, 344(ra)<br>       |
|  62|[0x80002400]<br>0x08090008|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                 |[0x800006b8]:KCRAS16 t6, t5, t4<br> [0x800006bc]:sw t6, 352(ra)<br>       |
|  63|[0x80002408]<br>0x07BF0105|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                              |[0x800006d0]:KCRAS16 t6, t5, t4<br> [0x800006d4]:sw t6, 360(ra)<br>       |
|  64|[0x80002410]<br>0x1080FFBD|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                 |[0x800006e4]:KCRAS16 t6, t5, t4<br> [0x800006e8]:sw t6, 368(ra)<br>       |
|  65|[0x80002418]<br>0x00DF4000|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                               |[0x800006f8]:KCRAS16 t6, t5, t4<br> [0x800006fc]:sw t6, 376(ra)<br>       |
|  66|[0x80002420]<br>0xACAA6001|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                            |[0x8000070c]:KCRAS16 t6, t5, t4<br> [0x80000710]:sw t6, 384(ra)<br>       |
|  67|[0x80002428]<br>0x7FF90049|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                             |[0x80000724]:KCRAS16 t6, t5, t4<br> [0x80000728]:sw t6, 392(ra)<br>       |
|  68|[0x80002430]<br>0x00013FF0|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                 |[0x80000738]:KCRAS16 t6, t5, t4<br> [0x8000073c]:sw t6, 400(ra)<br>       |
|  69|[0x80002438]<br>0xDFFF001E|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                             |[0x8000074c]:KCRAS16 t6, t5, t4<br> [0x80000750]:sw t6, 408(ra)<br>       |
|  70|[0x80002440]<br>0xFC014003|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                             |[0x80000764]:KCRAS16 t6, t5, t4<br> [0x80000768]:sw t6, 416(ra)<br>       |
|  71|[0x80002448]<br>0xFE1F03FD|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                              |[0x8000077c]:KCRAS16 t6, t5, t4<br> [0x80000780]:sw t6, 424(ra)<br>       |
|  72|[0x80002458]<br>0x003F0000|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                             |[0x800007ac]:KCRAS16 t6, t5, t4<br> [0x800007b0]:sw t6, 440(ra)<br>       |
|  73|[0x80002460]<br>0x037FE7FF|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                             |[0x800007c4]:KCRAS16 t6, t5, t4<br> [0x800007c8]:sw t6, 448(ra)<br>       |
|  74|[0x80002468]<br>0x3FF7008A|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                |[0x800007dc]:KCRAS16 t6, t5, t4<br> [0x800007e0]:sw t6, 456(ra)<br>       |
|  75|[0x80002470]<br>0x000B8000|- rs1_h0_val == -32768<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                      |[0x800007f0]:KCRAS16 t6, t5, t4<br> [0x800007f4]:sw t6, 464(ra)<br>       |
