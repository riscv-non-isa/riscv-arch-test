
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005a0')]      |
| SIG_REGION                | [('0x80003204', '0x80003280', '31 words')]      |
| COV_LABELS                | cjr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjr-01.S/cjr-01.S    |
| Total Number of coverpoints| 32     |
| Total Coverpoints Hit     | 32      |
| Total Signature Updates   | 31      |
| STAT1                     | 31      |
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

|s.no|        signature         |            coverpoints            |                                                                                                            code                                                                                                             |
|---:|--------------------------|-----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000013|- opcode : c.jr<br> - rs1 : x8<br> |[0x80000108]:c.jr fp<br> [0x80000110]:xori fp, fp, 3<br> [0x80000114]:auipc s1, 0<br> [0x80000118]:addi s1, s1, 4076<br> [0x8000011c]:c.andi s1, 60<br> [0x8000011e]:c.sub s0, s1<br> [0x80000120]:sw fp, 0(gp)<br>          |
|   2|[0x80003208]<br>0x00000013|- rs1 : x24<br>                    |[0x8000012c]:c.jr s8<br> [0x80000134]:xori s8, s8, 3<br> [0x80000138]:auipc s1, 0<br> [0x8000013c]:addi s1, s1, 4076<br> [0x80000140]:c.andi s1, 60<br> [0x80000142]:sub s8, s8, s1<br> [0x80000146]:sw s8, 4(gp)<br>        |
|   3|[0x8000320c]<br>0x00000011|- rs1 : x7<br>                     |[0x80000152]:c.jr t2<br> [0x8000015a]:xori t2, t2, 3<br> [0x8000015e]:auipc s1, 0<br> [0x80000162]:addi s1, s1, 4076<br> [0x80000166]:c.andi s1, 60<br> [0x80000168]:sub t2, t2, s1<br> [0x8000016c]:sw t2, 8(gp)<br>        |
|   4|[0x80003210]<br>0x00000013|- rs1 : x16<br>                    |[0x80000178]:c.jr a6<br> [0x80000180]:xori a6, a6, 3<br> [0x80000184]:auipc s1, 0<br> [0x80000188]:addi s1, s1, 4076<br> [0x8000018c]:c.andi s1, 60<br> [0x8000018e]:sub a6, a6, s1<br> [0x80000192]:sw a6, 12(gp)<br>       |
|   5|[0x80003214]<br>0x00000011|- rs1 : x19<br>                    |[0x8000019e]:c.jr s3<br> [0x800001a6]:xori s3, s3, 3<br> [0x800001aa]:auipc s1, 0<br> [0x800001ae]:addi s1, s1, 4076<br> [0x800001b2]:c.andi s1, 60<br> [0x800001b4]:sub s3, s3, s1<br> [0x800001b8]:sw s3, 16(gp)<br>       |
|   6|[0x80003218]<br>0x00000013|- rs1 : x15<br>                    |[0x800001c4]:c.jr a5<br> [0x800001cc]:xori a5, a5, 3<br> [0x800001d0]:auipc s1, 0<br> [0x800001d4]:addi s1, s1, 4076<br> [0x800001d8]:c.andi s1, 60<br> [0x800001da]:c.sub a5, s1<br> [0x800001dc]:sw a5, 20(gp)<br>         |
|   7|[0x8000321c]<br>0x00000013|- rs1 : x14<br>                    |[0x800001e8]:c.jr a4<br> [0x800001f0]:xori a4, a4, 3<br> [0x800001f4]:auipc s1, 0<br> [0x800001f8]:addi s1, s1, 4076<br> [0x800001fc]:c.andi s1, 60<br> [0x800001fe]:c.sub a4, s1<br> [0x80000200]:sw a4, 24(gp)<br>         |
|   8|[0x80003220]<br>0x00000013|- rs1 : x5<br>                     |[0x8000020c]:c.jr t0<br> [0x80000214]:xori t0, t0, 3<br> [0x80000218]:auipc s1, 0<br> [0x8000021c]:addi s1, s1, 4076<br> [0x80000220]:c.andi s1, 60<br> [0x80000222]:sub t0, t0, s1<br> [0x80000226]:sw t0, 28(gp)<br>       |
|   9|[0x80003224]<br>0x00000011|- rs1 : x27<br>                    |[0x80000232]:c.jr s11<br> [0x8000023a]:xori s11, s11, 3<br> [0x8000023e]:auipc s1, 0<br> [0x80000242]:addi s1, s1, 4076<br> [0x80000246]:c.andi s1, 60<br> [0x80000248]:sub s11, s11, s1<br> [0x8000024c]:sw s11, 32(gp)<br> |
|  10|[0x80003228]<br>0x00000013|- rs1 : x6<br>                     |[0x80000258]:c.jr t1<br> [0x80000260]:xori t1, t1, 3<br> [0x80000264]:auipc s1, 0<br> [0x80000268]:addi s1, s1, 4076<br> [0x8000026c]:c.andi s1, 60<br> [0x8000026e]:sub t1, t1, s1<br> [0x80000272]:sw t1, 36(gp)<br>       |
|  11|[0x8000322c]<br>0x00000011|- rs1 : x28<br>                    |[0x8000027e]:c.jr t3<br> [0x80000286]:xori t3, t3, 3<br> [0x8000028a]:auipc s1, 0<br> [0x8000028e]:addi s1, s1, 4076<br> [0x80000292]:c.andi s1, 60<br> [0x80000294]:sub t3, t3, s1<br> [0x80000298]:sw t3, 40(gp)<br>       |
|  12|[0x80003230]<br>0x00000013|- rs1 : x1<br>                     |[0x800002a4]:c.jr ra<br> [0x800002ac]:xori ra, ra, 3<br> [0x800002b0]:auipc s1, 0<br> [0x800002b4]:addi s1, s1, 4076<br> [0x800002b8]:c.andi s1, 60<br> [0x800002ba]:sub ra, ra, s1<br> [0x800002be]:sw ra, 44(gp)<br>       |
|  13|[0x80003234]<br>0x00000011|- rs1 : x12<br>                    |[0x800002ca]:c.jr a2<br> [0x800002d2]:xori a2, a2, 3<br> [0x800002d6]:auipc s1, 0<br> [0x800002da]:addi s1, s1, 4076<br> [0x800002de]:c.andi s1, 60<br> [0x800002e0]:c.sub a2, s1<br> [0x800002e2]:sw a2, 48(gp)<br>         |
|  14|[0x80003238]<br>0x00000011|- rs1 : x25<br>                    |[0x800002ee]:c.jr s9<br> [0x800002f6]:xori s9, s9, 3<br> [0x800002fa]:auipc s1, 0<br> [0x800002fe]:addi s1, s1, 4076<br> [0x80000302]:c.andi s1, 60<br> [0x80000304]:sub s9, s9, s1<br> [0x80000308]:sw s9, 52(gp)<br>       |
|  15|[0x8000323c]<br>0x00000013|- rs1 : x2<br>                     |[0x80000314]:c.jr sp<br> [0x8000031c]:xori sp, sp, 3<br> [0x80000320]:auipc s1, 0<br> [0x80000324]:addi s1, s1, 4076<br> [0x80000328]:c.andi s1, 60<br> [0x8000032a]:sub sp, sp, s1<br> [0x8000032e]:sw sp, 56(gp)<br>       |
|  16|[0x80003240]<br>0x00000011|- rs1 : x13<br>                    |[0x8000033a]:c.jr a3<br> [0x80000342]:xori a3, a3, 3<br> [0x80000346]:auipc s1, 0<br> [0x8000034a]:addi s1, s1, 4076<br> [0x8000034e]:c.andi s1, 60<br> [0x80000350]:c.sub a3, s1<br> [0x80000352]:sw a3, 60(gp)<br>         |
|  17|[0x80003244]<br>0x00000011|- rs1 : x11<br>                    |[0x8000035e]:c.jr a1<br> [0x80000366]:xori a1, a1, 3<br> [0x8000036a]:auipc s1, 0<br> [0x8000036e]:addi s1, s1, 4076<br> [0x80000372]:c.andi s1, 60<br> [0x80000374]:c.sub a1, s1<br> [0x80000376]:sw a1, 64(gp)<br>         |
|  18|[0x80003248]<br>0x00000011|- rs1 : x4<br>                     |[0x80000382]:c.jr tp<br> [0x8000038a]:xori tp, tp, 3<br> [0x8000038e]:auipc s1, 0<br> [0x80000392]:addi s1, s1, 4076<br> [0x80000396]:c.andi s1, 60<br> [0x80000398]:sub tp, tp, s1<br> [0x8000039c]:sw tp, 68(gp)<br>       |
|  19|[0x8000324c]<br>0x00000013|- rs1 : x26<br>                    |[0x800003a8]:c.jr s10<br> [0x800003b0]:xori s10, s10, 3<br> [0x800003b4]:auipc s1, 0<br> [0x800003b8]:addi s1, s1, 4076<br> [0x800003bc]:c.andi s1, 60<br> [0x800003be]:sub s10, s10, s1<br> [0x800003c2]:sw s10, 72(gp)<br> |
|  20|[0x80003250]<br>0x00000011|- rs1 : x17<br>                    |[0x800003ce]:c.jr a7<br> [0x800003d6]:xori a7, a7, 3<br> [0x800003da]:auipc s1, 0<br> [0x800003de]:addi s1, s1, 4076<br> [0x800003e2]:c.andi s1, 60<br> [0x800003e4]:sub a7, a7, s1<br> [0x800003e8]:sw a7, 76(gp)<br>       |
|  21|[0x80003254]<br>0x00000013|- rs1 : x20<br>                    |[0x800003f4]:c.jr s4<br> [0x800003fc]:xori s4, s4, 3<br> [0x80000400]:auipc s1, 0<br> [0x80000404]:addi s1, s1, 4076<br> [0x80000408]:c.andi s1, 60<br> [0x8000040a]:sub s4, s4, s1<br> [0x8000040e]:sw s4, 80(gp)<br>       |
|  22|[0x80003258]<br>0x00000011|- rs1 : x29<br>                    |[0x8000041a]:c.jr t4<br> [0x80000422]:xori t4, t4, 3<br> [0x80000426]:auipc s1, 0<br> [0x8000042a]:addi s1, s1, 4076<br> [0x8000042e]:c.andi s1, 60<br> [0x80000430]:sub t4, t4, s1<br> [0x80000434]:sw t4, 84(gp)<br>       |
|  23|[0x8000325c]<br>0x00000013|- rs1 : x30<br>                    |[0x80000440]:c.jr t5<br> [0x80000448]:xori t5, t5, 3<br> [0x8000044c]:auipc s1, 0<br> [0x80000450]:addi s1, s1, 4076<br> [0x80000454]:c.andi s1, 60<br> [0x80000456]:sub t5, t5, s1<br> [0x8000045a]:sw t5, 88(gp)<br>       |
|  24|[0x80003260]<br>0x00000011|- rs1 : x22<br>                    |[0x80000466]:c.jr s6<br> [0x8000046e]:xori s6, s6, 3<br> [0x80000472]:auipc s1, 0<br> [0x80000476]:addi s1, s1, 4076<br> [0x8000047a]:c.andi s1, 60<br> [0x8000047c]:sub s6, s6, s1<br> [0x80000480]:sw s6, 92(gp)<br>       |
|  25|[0x80003264]<br>0x00000013|- rs1 : x21<br>                    |[0x8000048c]:c.jr s5<br> [0x80000494]:xori s5, s5, 3<br> [0x80000498]:auipc s1, 0<br> [0x8000049c]:addi s1, s1, 4076<br> [0x800004a0]:c.andi s1, 60<br> [0x800004a2]:sub s5, s5, s1<br> [0x800004a6]:sw s5, 96(gp)<br>       |
|  26|[0x80003268]<br>0x00000011|- rs1 : x31<br>                    |[0x800004b2]:c.jr t6<br> [0x800004ba]:xori t6, t6, 3<br> [0x800004be]:auipc s1, 0<br> [0x800004c2]:addi s1, s1, 4076<br> [0x800004c6]:c.andi s1, 60<br> [0x800004c8]:sub t6, t6, s1<br> [0x800004cc]:sw t6, 100(gp)<br>      |
|  27|[0x8000326c]<br>0x00000013|- rs1 : x23<br>                    |[0x800004d8]:c.jr s7<br> [0x800004e0]:xori s7, s7, 3<br> [0x800004e4]:auipc sp, 0<br> [0x800004e8]:addi sp, sp, 4076<br> [0x800004ec]:andi sp, sp, 4092<br> [0x800004f0]:sub s7, s7, sp<br> [0x800004f4]:sw s7, 104(gp)<br>  |
|  28|[0x80003270]<br>0x00000013|- rs1 : x9<br>                     |[0x80000508]:c.jr s1<br> [0x80000510]:xori s1, s1, 3<br> [0x80000514]:auipc sp, 0<br> [0x80000518]:addi sp, sp, 4076<br> [0x8000051c]:andi sp, sp, 4092<br> [0x80000520]:sub s1, s1, sp<br> [0x80000524]:sw s1, 0(ra)<br>    |
|  29|[0x80003274]<br>0x00000013|- rs1 : x18<br>                    |[0x80000530]:c.jr s2<br> [0x80000538]:xori s2, s2, 3<br> [0x8000053c]:auipc sp, 0<br> [0x80000540]:addi sp, sp, 4076<br> [0x80000544]:andi sp, sp, 4092<br> [0x80000548]:sub s2, s2, sp<br> [0x8000054c]:sw s2, 4(ra)<br>    |
|  30|[0x80003278]<br>0x00000013|- rs1 : x3<br>                     |[0x80000558]:c.jr gp<br> [0x80000560]:xori gp, gp, 3<br> [0x80000564]:auipc sp, 0<br> [0x80000568]:addi sp, sp, 4076<br> [0x8000056c]:andi sp, sp, 4092<br> [0x80000570]:sub gp, gp, sp<br> [0x80000574]:sw gp, 8(ra)<br>    |
|  31|[0x8000327c]<br>0x00000013|- rs1 : x10<br>                    |[0x80000580]:c.jr a0<br> [0x80000588]:xori a0, a0, 3<br> [0x8000058c]:auipc sp, 0<br> [0x80000590]:addi sp, sp, 4076<br> [0x80000594]:andi sp, sp, 4092<br> [0x80000598]:sub a0, a0, sp<br> [0x8000059c]:sw a0, 12(ra)<br>   |
