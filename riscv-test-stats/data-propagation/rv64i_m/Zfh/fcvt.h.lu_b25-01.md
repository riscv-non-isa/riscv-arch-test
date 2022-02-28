
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x800004b0')]      |
| SIG_REGION                | [('0x80002204', '0x80002444', '72 dwords')]      |
| COV_LABELS                | fcvt.h.lu_b25      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/fcvt.h.lu_b25-01.S/ref.S    |
| Total Number of coverpoints| 76     |
| Total Coverpoints Hit     | 72      |
| Total Signature Updates   | 36      |
| STAT1                     | 32      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000450]:fcvt.h.lu ft11, t6, dyn
      [0x80000454]:csrrs a7, fflags, zero
      [0x80000458]:fsh ft11, 80(a5)
      [0x8000045c]:sh a7, 82(a5)
 -- Signature Address: 0x800023d6 Data: 0x0000000000000005
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.h.lu
      - rs1 : x31
      - rd : f31
      - rs1_val == 0 and rm_val == 0  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000468]:fcvt.h.lu ft11, t6, dyn
      [0x8000046c]:csrrs a7, fflags, zero
      [0x80000470]:fsh ft11, 90(a5)
      [0x80000474]:sh a7, 92(a5)
 -- Signature Address: 0x800023e0 Data: 0x0000000000000005
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.h.lu
      - rs1 : x31
      - rd : f31
      - rs1_val == 0 and rm_val == 0  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000480]:fcvt.h.lu ft11, t6, dyn
      [0x80000484]:csrrs a7, fflags, zero
      [0x80000488]:fsh ft11, 100(a5)
      [0x8000048c]:sh a7, 102(a5)
 -- Signature Address: 0x800023ea Data: 0x0000000000000005
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.h.lu
      - rs1 : x31
      - rd : f31
      - rs1_val == 0 and rm_val == 0  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000498]:fcvt.h.lu ft11, t6, dyn
      [0x8000049c]:csrrs a7, fflags, zero
      [0x800004a0]:fsh ft11, 110(a5)
      [0x800004a4]:sh a7, 112(a5)
 -- Signature Address: 0x800023f4 Data: 0x0000000000000005
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.h.lu
      - rs1 : x31
      - rd : f31
      - rs1_val == 1 and rm_val == 0  #nosat






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

|s.no|            signature             |                                            coverpoints                                            |                                                                       code                                                                        |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002206]<br>0x0000000000000000|- opcode : fcvt.h.lu<br> - rs1 : x28<br> - rd : f11<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x80000120]:fcvt.h.lu fa1, t3, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsh fa1, 0(a5)<br> [0x8000012c]:sh a7, 2(a5)<br>      |
|   2|[0x80002210]<br>0x0000000000000005|- rs1 : x29<br> - rd : f14<br> - rs1_val == -18723 and rm_val == 0  #nosat<br>                     |[0x80000138]:fcvt.h.lu fa4, t4, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsh fa4, 10(a5)<br> [0x80000144]:sh a7, 12(a5)<br>    |
|   3|[0x8000221a]<br>0x0000000000000005|- rs1 : x14<br> - rd : f8<br>                                                                      |[0x80000150]:fcvt.h.lu fs0, a4, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:fsh fs0, 20(a5)<br> [0x8000015c]:sh a7, 22(a5)<br>    |
|   4|[0x80002224]<br>0x0000000000000005|- rs1 : x10<br> - rd : f22<br>                                                                     |[0x80000168]:fcvt.h.lu fs6, a0, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsh fs6, 30(a5)<br> [0x80000174]:sh a7, 32(a5)<br>    |
|   5|[0x8000222e]<br>0x0000000000000005|- rs1 : x25<br> - rd : f28<br>                                                                     |[0x80000180]:fcvt.h.lu ft8, s9, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsh ft8, 40(a5)<br> [0x8000018c]:sh a7, 42(a5)<br>    |
|   6|[0x80002238]<br>0x0000000000000005|- rs1 : x4<br> - rd : f1<br>                                                                       |[0x80000198]:fcvt.h.lu ft1, tp, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsh ft1, 50(a5)<br> [0x800001a4]:sh a7, 52(a5)<br>    |
|   7|[0x80002242]<br>0x0000000000000005|- rs1 : x13<br> - rd : f12<br> - rs1_val == 18723 and rm_val == 0  #nosat<br>                      |[0x800001b0]:fcvt.h.lu fa2, a3, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsh fa2, 60(a5)<br> [0x800001bc]:sh a7, 62(a5)<br>    |
|   8|[0x8000224c]<br>0x0000000000000005|- rs1 : x6<br> - rd : f17<br>                                                                      |[0x800001c8]:fcvt.h.lu fa7, t1, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsh fa7, 70(a5)<br> [0x800001d4]:sh a7, 72(a5)<br>    |
|   9|[0x80002256]<br>0x0000000000000005|- rs1 : x31<br> - rd : f5<br>                                                                      |[0x800001e0]:fcvt.h.lu ft5, t6, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:fsh ft5, 80(a5)<br> [0x800001ec]:sh a7, 82(a5)<br>    |
|  10|[0x80002260]<br>0x0000000000000005|- rs1 : x8<br> - rd : f4<br>                                                                       |[0x800001f8]:fcvt.h.lu ft4, fp, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:fsh ft4, 90(a5)<br> [0x80000204]:sh a7, 92(a5)<br>    |
|  11|[0x8000226a]<br>0x0000000000000005|- rs1 : x30<br> - rd : f16<br>                                                                     |[0x80000210]:fcvt.h.lu fa6, t5, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsh fa6, 100(a5)<br> [0x8000021c]:sh a7, 102(a5)<br>  |
|  12|[0x80002274]<br>0x0000000000000005|- rs1 : x5<br> - rd : f9<br> - rs1_val == -32767 and rm_val == 0  #nosat<br>                       |[0x80000228]:fcvt.h.lu fs1, t0, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsh fs1, 110(a5)<br> [0x80000234]:sh a7, 112(a5)<br>  |
|  13|[0x8000227e]<br>0x0000000000000005|- rs1 : x21<br> - rd : f7<br>                                                                      |[0x80000240]:fcvt.h.lu ft7, s5, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsh ft7, 120(a5)<br> [0x8000024c]:sh a7, 122(a5)<br>  |
|  14|[0x80002288]<br>0x0000000000000005|- rs1 : x23<br> - rd : f3<br>                                                                      |[0x80000258]:fcvt.h.lu ft3, s7, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsh ft3, 130(a5)<br> [0x80000264]:sh a7, 132(a5)<br>  |
|  15|[0x80002292]<br>0x0000000000000005|- rs1 : x20<br> - rd : f21<br>                                                                     |[0x80000270]:fcvt.h.lu fs5, s4, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsh fs5, 140(a5)<br> [0x8000027c]:sh a7, 142(a5)<br>  |
|  16|[0x8000229c]<br>0x0000000000000005|- rs1 : x9<br> - rd : f23<br>                                                                      |[0x80000288]:fcvt.h.lu fs7, s1, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsh fs7, 150(a5)<br> [0x80000294]:sh a7, 152(a5)<br>  |
|  17|[0x80002306]<br>0x0000000000000005|- rs1 : x17<br> - rd : f15<br> - rs1_val == 32767 and rm_val == 0  #nosat<br>                      |[0x800002ac]:fcvt.h.lu fa5, a7, dyn<br> [0x800002b0]:csrrs s5, fflags, zero<br> [0x800002b4]:fsh fa5, 0(s3)<br> [0x800002b8]:sh s5, 2(s3)<br>      |
|  18|[0x80002310]<br>0x0000000000000005|- rs1 : x15<br> - rd : f6<br>                                                                      |[0x800002c4]:fcvt.h.lu ft6, a5, dyn<br> [0x800002c8]:csrrs s5, fflags, zero<br> [0x800002cc]:fsh ft6, 10(s3)<br> [0x800002d0]:sh s5, 12(s3)<br>    |
|  19|[0x80002326]<br>0x0000000000000005|- rs1 : x3<br> - rd : f27<br>                                                                      |[0x800002e8]:fcvt.h.lu fs11, gp, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsh fs11, 0(a5)<br> [0x800002f4]:sh a7, 2(a5)<br>    |
|  20|[0x80002330]<br>0x0000000000000005|- rs1 : x26<br> - rd : f29<br>                                                                     |[0x80000300]:fcvt.h.lu ft9, s10, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsh ft9, 10(a5)<br> [0x8000030c]:sh a7, 12(a5)<br>   |
|  21|[0x8000233a]<br>0x0000000000000005|- rs1 : x18<br> - rd : f30<br>                                                                     |[0x80000318]:fcvt.h.lu ft10, s2, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsh ft10, 20(a5)<br> [0x80000324]:sh a7, 22(a5)<br>  |
|  22|[0x80002344]<br>0x0000000000000005|- rs1 : x24<br> - rd : f19<br> - rs1_val == -1 and rm_val == 0  #nosat<br>                         |[0x80000330]:fcvt.h.lu fs3, s8, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsh fs3, 30(a5)<br> [0x8000033c]:sh a7, 32(a5)<br>    |
|  23|[0x8000234e]<br>0x0000000000000005|- rs1 : x7<br> - rd : f2<br>                                                                       |[0x80000348]:fcvt.h.lu ft2, t2, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsh ft2, 40(a5)<br> [0x80000354]:sh a7, 42(a5)<br>    |
|  24|[0x80002376]<br>0x0000000000000005|- rs1 : x16<br> - rd : f13<br>                                                                     |[0x8000036c]:fcvt.h.lu fa3, a6, dyn<br> [0x80000370]:csrrs s5, fflags, zero<br> [0x80000374]:fsh fa3, 0(s3)<br> [0x80000378]:sh s5, 2(s3)<br>      |
|  25|[0x80002386]<br>0x0000000000000005|- rs1 : x19<br> - rd : f25<br>                                                                     |[0x80000390]:fcvt.h.lu fs9, s3, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:fsh fs9, 0(a5)<br> [0x8000039c]:sh a7, 2(a5)<br>      |
|  26|[0x80002390]<br>0x0000000000000005|- rs1 : x27<br> - rd : f31<br>                                                                     |[0x800003a8]:fcvt.h.lu ft11, s11, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsh ft11, 10(a5)<br> [0x800003b4]:sh a7, 12(a5)<br> |
|  27|[0x8000239a]<br>0x0000000000000005|- rs1 : x1<br> - rd : f24<br> - rs1_val == 1 and rm_val == 0  #nosat<br>                           |[0x800003c0]:fcvt.h.lu fs8, ra, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsh fs8, 20(a5)<br> [0x800003cc]:sh a7, 22(a5)<br>    |
|  28|[0x800023a4]<br>0x0000000000000005|- rs1 : x22<br> - rd : f26<br>                                                                     |[0x800003d8]:fcvt.h.lu fs10, s6, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsh fs10, 30(a5)<br> [0x800003e4]:sh a7, 32(a5)<br>  |
|  29|[0x800023ae]<br>0x0000000000000005|- rs1 : x12<br> - rd : f18<br>                                                                     |[0x800003f0]:fcvt.h.lu fs2, a2, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsh fs2, 40(a5)<br> [0x800003fc]:sh a7, 42(a5)<br>    |
|  30|[0x800023b8]<br>0x0000000000000005|- rs1 : x0<br> - rd : f0<br>                                                                       |[0x80000408]:fcvt.h.lu ft0, zero, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsh ft0, 50(a5)<br> [0x80000414]:sh a7, 52(a5)<br>  |
|  31|[0x800023c2]<br>0x0000000000000005|- rs1 : x11<br> - rd : f20<br>                                                                     |[0x80000420]:fcvt.h.lu fs4, a1, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsh fs4, 60(a5)<br> [0x8000042c]:sh a7, 62(a5)<br>    |
|  32|[0x800023cc]<br>0x0000000000000005|- rs1 : x2<br> - rd : f10<br>                                                                      |[0x80000438]:fcvt.h.lu fa0, sp, dyn<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:fsh fa0, 70(a5)<br> [0x80000444]:sh a7, 72(a5)<br>    |
