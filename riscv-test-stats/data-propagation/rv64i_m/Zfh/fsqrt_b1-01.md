
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80002204', '0x80002404', '64 dwords')]      |
| COV_LABELS                | fsqrt_b1      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/fsqrt_b1-01.S/ref.S    |
| Total Number of coverpoints| 96     |
| Total Coverpoints Hit     | 91      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                                 coverpoints                                                                  |                                                                       code                                                                        |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002206]<br>0x0000000000000000|- opcode : fsqrt.h<br> - rs1 : f16<br> - rd : f16<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat<br> |[0x80000120]:fsqrt.h fa6, fa6, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsh fa6, 0(a5)<br> [0x8000012c]:sh a7, 2(a5)<br>       |
|   2|[0x80002210]<br>0x0000000000000010|- rs1 : f11<br> - rd : f29<br> - rs1 != rd<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat<br>                        |[0x80000138]:fsqrt.h ft9, fa1, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsh ft9, 10(a5)<br> [0x80000144]:sh a7, 12(a5)<br>     |
|   3|[0x8000221a]<br>0x0000000000000010|- rs1 : f29<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat<br>                                         |[0x80000150]:fsqrt.h ft5, ft9, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:fsh ft5, 20(a5)<br> [0x8000015c]:sh a7, 22(a5)<br>     |
|   4|[0x80002224]<br>0x0000000000000010|- rs1 : f15<br> - rd : f8<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 0  #nosat<br>                                         |[0x80000168]:fsqrt.h fs0, fa5, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsh fs0, 30(a5)<br> [0x80000174]:sh a7, 32(a5)<br>     |
|   5|[0x8000222e]<br>0x0000000000000010|- rs1 : f30<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 0  #nosat<br>                                         |[0x80000180]:fsqrt.h ft6, ft10, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsh ft6, 40(a5)<br> [0x8000018c]:sh a7, 42(a5)<br>    |
|   6|[0x80002238]<br>0x0000000000000010|- rs1 : f6<br> - rd : f30<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 0  #nosat<br>                                         |[0x80000198]:fsqrt.h ft10, ft6, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsh ft10, 50(a5)<br> [0x800001a4]:sh a7, 52(a5)<br>   |
|   7|[0x80002242]<br>0x0000000000000010|- rs1 : f20<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 0  #nosat<br>                                         |[0x800001b0]:fsqrt.h ft0, fs4, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsh ft0, 60(a5)<br> [0x800001bc]:sh a7, 62(a5)<br>     |
|   8|[0x8000224c]<br>0x0000000000000010|- rs1 : f17<br> - rd : f14<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat<br>                                        |[0x800001c8]:fsqrt.h fa4, fa7, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsh fa4, 70(a5)<br> [0x800001d4]:sh a7, 72(a5)<br>     |
|   9|[0x80002256]<br>0x0000000000000010|- rs1 : f7<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat<br>                                         |[0x800001e0]:fsqrt.h fa3, ft7, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:fsh fa3, 80(a5)<br> [0x800001ec]:sh a7, 82(a5)<br>     |
|  10|[0x80002260]<br>0x0000000000000010|- rs1 : f5<br> - rd : f22<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat<br>                                         |[0x800001f8]:fsqrt.h fs6, ft5, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:fsh fs6, 90(a5)<br> [0x80000204]:sh a7, 92(a5)<br>     |
|  11|[0x8000226a]<br>0x0000000000000010|- rs1 : f22<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat<br>                                        |[0x80000210]:fsqrt.h fs8, fs6, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsh fs8, 100(a5)<br> [0x8000021c]:sh a7, 102(a5)<br>   |
|  12|[0x80002274]<br>0x0000000000000010|- rs1 : f18<br> - rd : f15<br> - fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat<br>                                        |[0x80000228]:fsqrt.h fa5, fs2, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsh fa5, 110(a5)<br> [0x80000234]:sh a7, 112(a5)<br>   |
|  13|[0x8000227e]<br>0x0000000000000011|- rs1 : f25<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat<br>                                        |[0x80000240]:fsqrt.h fa1, fs9, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsh fa1, 120(a5)<br> [0x8000024c]:sh a7, 122(a5)<br>   |
|  14|[0x80002288]<br>0x0000000000000011|- rs1 : f9<br> - rd : f20<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 0  #nosat<br>                                         |[0x80000258]:fsqrt.h fs4, fs1, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsh fs4, 130(a5)<br> [0x80000264]:sh a7, 132(a5)<br>   |
|  15|[0x80002292]<br>0x0000000000000011|- rs1 : f0<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 0  #nosat<br>                                         |[0x80000270]:fsqrt.h fs7, ft0, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsh fs7, 140(a5)<br> [0x8000027c]:sh a7, 142(a5)<br>   |
|  16|[0x8000229c]<br>0x0000000000000011|- rs1 : f31<br> - rd : f18<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat<br>                                        |[0x80000288]:fsqrt.h fs2, ft11, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsh fs2, 150(a5)<br> [0x80000294]:sh a7, 152(a5)<br>  |
|  17|[0x800022a6]<br>0x0000000000000011|- rs1 : f2<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat<br>                                          |[0x800002a0]:fsqrt.h fs1, ft2, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsh fs1, 160(a5)<br> [0x800002ac]:sh a7, 162(a5)<br>   |
|  18|[0x800022b0]<br>0x0000000000000011|- rs1 : f27<br> - rd : f7<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat<br>                                         |[0x800002b8]:fsqrt.h ft7, fs11, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:fsh ft7, 170(a5)<br> [0x800002c4]:sh a7, 172(a5)<br>  |
|  19|[0x800022ba]<br>0x0000000000000011|- rs1 : f26<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat<br>                                        |[0x800002d0]:fsqrt.h fs9, fs10, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsh fs9, 180(a5)<br> [0x800002dc]:sh a7, 182(a5)<br>  |
|  20|[0x800022c4]<br>0x0000000000000011|- rs1 : f24<br> - rd : f27<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 0  #nosat<br>                                        |[0x800002e8]:fsqrt.h fs11, fs8, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsh fs11, 190(a5)<br> [0x800002f4]:sh a7, 192(a5)<br> |
|  21|[0x800022ce]<br>0x0000000000000011|- rs1 : f1<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 0  #nosat<br>                                          |[0x80000300]:fsqrt.h ft3, ft1, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsh ft3, 200(a5)<br> [0x8000030c]:sh a7, 202(a5)<br>   |
|  22|[0x800022d8]<br>0x0000000000000011|- rs1 : f13<br> - rd : f26<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat<br>                                        |[0x80000318]:fsqrt.h fs10, fa3, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsh fs10, 210(a5)<br> [0x80000324]:sh a7, 212(a5)<br> |
|  23|[0x800022e2]<br>0x0000000000000011|- rs1 : f14<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat<br>                                        |[0x80000330]:fsqrt.h ft8, fa4, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsh ft8, 220(a5)<br> [0x8000033c]:sh a7, 222(a5)<br>   |
|  24|[0x800022ec]<br>0x0000000000000011|- rs1 : f4<br> - rd : f10<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat<br>                                         |[0x80000348]:fsqrt.h fa0, ft4, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsh fa0, 230(a5)<br> [0x80000354]:sh a7, 232(a5)<br>   |
|  25|[0x800022f6]<br>0x0000000000000011|- rs1 : f10<br> - rd : f12<br>                                                                                                                |[0x80000360]:fsqrt.h fa2, fa0, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:fsh fa2, 240(a5)<br> [0x8000036c]:sh a7, 242(a5)<br>   |
|  26|[0x80002300]<br>0x0000000000000011|- rs1 : f12<br> - rd : f21<br>                                                                                                                |[0x80000378]:fsqrt.h fs5, fa2, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:fsh fs5, 250(a5)<br> [0x80000384]:sh a7, 252(a5)<br>   |
|  27|[0x8000230a]<br>0x0000000000000011|- rs1 : f3<br> - rd : f17<br>                                                                                                                 |[0x80000390]:fsqrt.h fa7, ft3, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:fsh fa7, 260(a5)<br> [0x8000039c]:sh a7, 262(a5)<br>   |
|  28|[0x80002314]<br>0x0000000000000011|- rs1 : f21<br> - rd : f19<br>                                                                                                                |[0x800003a8]:fsqrt.h fs3, fs5, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsh fs3, 270(a5)<br> [0x800003b4]:sh a7, 272(a5)<br>   |
|  29|[0x8000231e]<br>0x0000000000000011|- rs1 : f8<br> - rd : f2<br>                                                                                                                  |[0x800003c0]:fsqrt.h ft2, fs0, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsh ft2, 280(a5)<br> [0x800003cc]:sh a7, 282(a5)<br>   |
|  30|[0x80002328]<br>0x0000000000000011|- rs1 : f19<br> - rd : f4<br>                                                                                                                 |[0x800003d8]:fsqrt.h ft4, fs3, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsh ft4, 290(a5)<br> [0x800003e4]:sh a7, 292(a5)<br>   |
|  31|[0x80002332]<br>0x0000000000000011|- rs1 : f28<br> - rd : f31<br>                                                                                                                |[0x800003f0]:fsqrt.h ft11, ft8, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsh ft11, 300(a5)<br> [0x800003fc]:sh a7, 302(a5)<br> |
|  32|[0x8000233c]<br>0x0000000000000011|- rs1 : f23<br> - rd : f1<br>                                                                                                                 |[0x80000408]:fsqrt.h ft1, fs7, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsh ft1, 310(a5)<br> [0x80000414]:sh a7, 312(a5)<br>   |
