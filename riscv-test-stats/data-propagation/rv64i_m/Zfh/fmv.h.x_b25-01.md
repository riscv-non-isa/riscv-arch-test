
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x80000460')]      |
| SIG_REGION                | [('0x80002204', '0x80002404', '64 dwords')]      |
| COV_LABELS                | fmv.h.x_b25      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/fmv.h.x_b25-01.S/ref.S    |
| Total Number of coverpoints| 76     |
| Total Coverpoints Hit     | 72      |
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

|s.no|            signature             |                                          coverpoints                                          |                                                                    code                                                                     |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002206]<br>0x0000000000000000|- opcode : fmv.h.x<br> - rs1 : x2<br> - rd : f1<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x80000120]:fmv.h.x ft1, sp<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsh ft1, 0(a5)<br> [0x8000012c]:sh a7, 2(a5)<br>       |
|   2|[0x80002210]<br>0x0000000000000000|- rs1 : x9<br> - rd : f15<br> - rs1_val == -18723 and rm_val == 0  #nosat<br>                  |[0x80000138]:fmv.h.x fa5, s1<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsh fa5, 10(a5)<br> [0x80000144]:sh a7, 12(a5)<br>     |
|   3|[0x80002226]<br>0x0000000000000000|- rs1 : x17<br> - rd : f14<br> - rs1_val == 18723 and rm_val == 0  #nosat<br>                  |[0x8000015c]:fmv.h.x fa4, a7<br> [0x80000160]:csrrs s5, fflags, zero<br> [0x80000164]:fsh fa4, 0(s3)<br> [0x80000168]:sh s5, 2(s3)<br>       |
|   4|[0x80002236]<br>0x0000000000000000|- rs1 : x22<br> - rd : f17<br> - rs1_val == -32767 and rm_val == 0  #nosat<br>                 |[0x80000180]:fmv.h.x fa7, s6<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsh fa7, 0(a5)<br> [0x8000018c]:sh a7, 2(a5)<br>       |
|   5|[0x80002240]<br>0x0000000000000000|- rs1 : x1<br> - rd : f10<br> - rs1_val == 32767 and rm_val == 0  #nosat<br>                   |[0x80000198]:fmv.h.x fa0, ra<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsh fa0, 10(a5)<br> [0x800001a4]:sh a7, 12(a5)<br>     |
|   6|[0x8000224a]<br>0x0000000000000000|- rs1 : x27<br> - rd : f5<br> - rs1_val == -1 and rm_val == 0  #nosat<br>                      |[0x800001b0]:fmv.h.x ft5, s11<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsh ft5, 20(a5)<br> [0x800001bc]:sh a7, 22(a5)<br>    |
|   7|[0x80002266]<br>0x0000000000000000|- rs1 : x15<br> - rd : f6<br> - rs1_val == 1 and rm_val == 0  #nosat<br>                       |[0x800001d4]:fmv.h.x ft6, a5<br> [0x800001d8]:csrrs s5, fflags, zero<br> [0x800001dc]:fsh ft6, 0(s3)<br> [0x800001e0]:sh s5, 2(s3)<br>       |
|   8|[0x80002276]<br>0x0000000000000000|- rs1 : x31<br> - rd : f20<br>                                                                 |[0x800001f8]:fmv.h.x fs4, t6<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:fsh fs4, 0(a5)<br> [0x80000204]:sh a7, 2(a5)<br>       |
|   9|[0x80002280]<br>0x0000000000000000|- rs1 : x8<br> - rd : f3<br>                                                                   |[0x80000210]:fmv.h.x ft3, fp<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsh ft3, 10(a5)<br> [0x8000021c]:sh a7, 12(a5)<br>     |
|  10|[0x8000228a]<br>0x0000000000000000|- rs1 : x21<br> - rd : f7<br>                                                                  |[0x80000228]:fmv.h.x ft7, s5<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsh ft7, 20(a5)<br> [0x80000234]:sh a7, 22(a5)<br>     |
|  11|[0x80002294]<br>0x0000000000000000|- rs1 : x23<br> - rd : f4<br>                                                                  |[0x80000240]:fmv.h.x ft4, s7<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsh ft4, 30(a5)<br> [0x8000024c]:sh a7, 32(a5)<br>     |
|  12|[0x8000229e]<br>0x0000000000000000|- rs1 : x3<br> - rd : f18<br>                                                                  |[0x80000258]:fmv.h.x fs2, gp<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsh fs2, 40(a5)<br> [0x80000264]:sh a7, 42(a5)<br>     |
|  13|[0x800022a8]<br>0x0000000000000000|- rs1 : x24<br> - rd : f29<br>                                                                 |[0x80000270]:fmv.h.x ft9, s8<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsh ft9, 50(a5)<br> [0x8000027c]:sh a7, 52(a5)<br>     |
|  14|[0x800022b2]<br>0x0000000000000000|- rs1 : x26<br> - rd : f30<br>                                                                 |[0x80000288]:fmv.h.x ft10, s10<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsh ft10, 60(a5)<br> [0x80000294]:sh a7, 62(a5)<br>  |
|  15|[0x800022bc]<br>0x0000000000000000|- rs1 : x6<br> - rd : f16<br>                                                                  |[0x800002a0]:fmv.h.x fa6, t1<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsh fa6, 70(a5)<br> [0x800002ac]:sh a7, 72(a5)<br>     |
|  16|[0x800022c6]<br>0x0000000000000000|- rs1 : x5<br> - rd : f23<br>                                                                  |[0x800002b8]:fmv.h.x fs7, t0<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:fsh fs7, 80(a5)<br> [0x800002c4]:sh a7, 82(a5)<br>     |
|  17|[0x800022d0]<br>0x0000000000000000|- rs1 : x10<br> - rd : f13<br>                                                                 |[0x800002d0]:fmv.h.x fa3, a0<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsh fa3, 90(a5)<br> [0x800002dc]:sh a7, 92(a5)<br>     |
|  18|[0x800022da]<br>0x0000000000000000|- rs1 : x11<br> - rd : f8<br>                                                                  |[0x800002e8]:fmv.h.x fs0, a1<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsh fs0, 100(a5)<br> [0x800002f4]:sh a7, 102(a5)<br>   |
|  19|[0x800022e4]<br>0x0000000000000000|- rs1 : x28<br> - rd : f2<br>                                                                  |[0x80000300]:fmv.h.x ft2, t3<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsh ft2, 110(a5)<br> [0x8000030c]:sh a7, 112(a5)<br>   |
|  20|[0x800022ee]<br>0x0000000000000000|- rs1 : x13<br> - rd : f27<br>                                                                 |[0x80000318]:fmv.h.x fs11, a3<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsh fs11, 120(a5)<br> [0x80000324]:sh a7, 122(a5)<br> |
|  21|[0x800022f8]<br>0x0000000000000000|- rs1 : x7<br> - rd : f0<br>                                                                   |[0x80000330]:fmv.h.x ft0, t2<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsh ft0, 130(a5)<br> [0x8000033c]:sh a7, 132(a5)<br>   |
|  22|[0x80002302]<br>0x0000000000000000|- rs1 : x20<br> - rd : f21<br>                                                                 |[0x80000348]:fmv.h.x fs5, s4<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsh fs5, 140(a5)<br> [0x80000354]:sh a7, 142(a5)<br>   |
|  23|[0x80002366]<br>0x0000000000000000|- rs1 : x16<br> - rd : f12<br>                                                                 |[0x8000036c]:fmv.h.x fa2, a6<br> [0x80000370]:csrrs s5, fflags, zero<br> [0x80000374]:fsh fa2, 0(s3)<br> [0x80000378]:sh s5, 2(s3)<br>       |
|  24|[0x80002376]<br>0x0000000000000000|- rs1 : x12<br> - rd : f19<br>                                                                 |[0x80000390]:fmv.h.x fs3, a2<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:fsh fs3, 0(a5)<br> [0x8000039c]:sh a7, 2(a5)<br>       |
|  25|[0x80002380]<br>0x0000000000000000|- rs1 : x25<br> - rd : f9<br>                                                                  |[0x800003a8]:fmv.h.x fs1, s9<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsh fs1, 10(a5)<br> [0x800003b4]:sh a7, 12(a5)<br>     |
|  26|[0x8000238a]<br>0x0000000000000000|- rs1 : x30<br> - rd : f28<br>                                                                 |[0x800003c0]:fmv.h.x ft8, t5<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsh ft8, 20(a5)<br> [0x800003cc]:sh a7, 22(a5)<br>     |
|  27|[0x80002394]<br>0x0000000000000000|- rs1 : x0<br> - rd : f24<br>                                                                  |[0x800003d8]:fmv.h.x fs8, zero<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsh fs8, 30(a5)<br> [0x800003e4]:sh a7, 32(a5)<br>   |
|  28|[0x8000239e]<br>0x0000000000000000|- rs1 : x14<br> - rd : f22<br>                                                                 |[0x800003f0]:fmv.h.x fs6, a4<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsh fs6, 40(a5)<br> [0x800003fc]:sh a7, 42(a5)<br>     |
|  29|[0x800023a8]<br>0x0000000000000000|- rs1 : x4<br> - rd : f31<br>                                                                  |[0x80000408]:fmv.h.x ft11, tp<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsh ft11, 50(a5)<br> [0x80000414]:sh a7, 52(a5)<br>   |
|  30|[0x800023b2]<br>0x0000000000000000|- rs1 : x19<br> - rd : f26<br>                                                                 |[0x80000420]:fmv.h.x fs10, s3<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsh fs10, 60(a5)<br> [0x8000042c]:sh a7, 62(a5)<br>   |
|  31|[0x800023bc]<br>0x0000000000000000|- rs1 : x29<br> - rd : f11<br>                                                                 |[0x80000438]:fmv.h.x fa1, t4<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:fsh fa1, 70(a5)<br> [0x80000444]:sh a7, 72(a5)<br>     |
|  32|[0x800023c6]<br>0x0000000000000000|- rs1 : x18<br> - rd : f25<br>                                                                 |[0x80000450]:fmv.h.x fs9, s2<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsh fs9, 80(a5)<br> [0x8000045c]:sh a7, 82(a5)<br>     |
