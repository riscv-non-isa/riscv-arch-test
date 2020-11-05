
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005b0')]      |
| SIG_REGION                | [('0x80003204', '0x8000328c', '34 words')]      |
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
|   1|[0x80003210]<br>0x00000013|- opcode : c.jr<br> - rs1 : x7<br> |[0x80000108]:c.jr t2<br> [0x80000110]:xori t2, t2, 3<br> [0x80000114]:auipc a1, 0<br> [0x80000118]:addi a1, a1, 4076<br> [0x8000011c]:c.andi a1, 60<br> [0x8000011e]:sub t2, t2, a1<br> [0x80000122]:sw t2, 0(tp)<br>        |
|   2|[0x80003214]<br>0x00000011|- rs1 : x5<br>                     |[0x8000012e]:c.jr t0<br> [0x80000136]:xori t0, t0, 3<br> [0x8000013a]:auipc a1, 0<br> [0x8000013e]:addi a1, a1, 4076<br> [0x80000142]:c.andi a1, 60<br> [0x80000144]:sub t0, t0, a1<br> [0x80000148]:sw t0, 4(tp)<br>        |
|   3|[0x80003218]<br>0x00000013|- rs1 : x17<br>                    |[0x80000154]:c.jr a7<br> [0x8000015c]:xori a7, a7, 3<br> [0x80000160]:auipc a1, 0<br> [0x80000164]:addi a1, a1, 4076<br> [0x80000168]:c.andi a1, 60<br> [0x8000016a]:sub a7, a7, a1<br> [0x8000016e]:sw a7, 8(tp)<br>        |
|   4|[0x8000321c]<br>0x00000011|- rs1 : x1<br>                     |[0x8000017a]:c.jr ra<br> [0x80000182]:xori ra, ra, 3<br> [0x80000186]:auipc a1, 0<br> [0x8000018a]:addi a1, a1, 4076<br> [0x8000018e]:c.andi a1, 60<br> [0x80000190]:sub ra, ra, a1<br> [0x80000194]:sw ra, 12(tp)<br>       |
|   5|[0x80003220]<br>0x00000013|- rs1 : x21<br>                    |[0x800001a0]:c.jr s5<br> [0x800001a8]:xori s5, s5, 3<br> [0x800001ac]:auipc a1, 0<br> [0x800001b0]:addi a1, a1, 4076<br> [0x800001b4]:c.andi a1, 60<br> [0x800001b6]:sub s5, s5, a1<br> [0x800001ba]:sw s5, 16(tp)<br>       |
|   6|[0x80003224]<br>0x00000011|- rs1 : x15<br>                    |[0x800001c6]:c.jr a5<br> [0x800001ce]:xori a5, a5, 3<br> [0x800001d2]:auipc a1, 0<br> [0x800001d6]:addi a1, a1, 4076<br> [0x800001da]:c.andi a1, 60<br> [0x800001dc]:c.sub a5, a1<br> [0x800001de]:sw a5, 20(tp)<br>         |
|   7|[0x80003228]<br>0x00000011|- rs1 : x3<br>                     |[0x800001ea]:c.jr gp<br> [0x800001f2]:xori gp, gp, 3<br> [0x800001f6]:auipc a1, 0<br> [0x800001fa]:addi a1, a1, 4076<br> [0x800001fe]:c.andi a1, 60<br> [0x80000200]:sub gp, gp, a1<br> [0x80000204]:sw gp, 24(tp)<br>       |
|   8|[0x8000322c]<br>0x00000013|- rs1 : x29<br>                    |[0x80000210]:c.jr t4<br> [0x80000218]:xori t4, t4, 3<br> [0x8000021c]:auipc a1, 0<br> [0x80000220]:addi a1, a1, 4076<br> [0x80000224]:c.andi a1, 60<br> [0x80000226]:sub t4, t4, a1<br> [0x8000022a]:sw t4, 28(tp)<br>       |
|   9|[0x80003230]<br>0x00000011|- rs1 : x25<br>                    |[0x80000236]:c.jr s9<br> [0x8000023e]:xori s9, s9, 3<br> [0x80000242]:auipc a1, 0<br> [0x80000246]:addi a1, a1, 4076<br> [0x8000024a]:c.andi a1, 60<br> [0x8000024c]:sub s9, s9, a1<br> [0x80000250]:sw s9, 32(tp)<br>       |
|  10|[0x80003234]<br>0x00000013|- rs1 : x22<br>                    |[0x8000025c]:c.jr s6<br> [0x80000264]:xori s6, s6, 3<br> [0x80000268]:auipc a1, 0<br> [0x8000026c]:addi a1, a1, 4076<br> [0x80000270]:c.andi a1, 60<br> [0x80000272]:sub s6, s6, a1<br> [0x80000276]:sw s6, 36(tp)<br>       |
|  11|[0x80003238]<br>0x00000011|- rs1 : x9<br>                     |[0x80000282]:c.jr s1<br> [0x8000028a]:xori s1, s1, 3<br> [0x8000028e]:auipc a1, 0<br> [0x80000292]:addi a1, a1, 4076<br> [0x80000296]:c.andi a1, 60<br> [0x80000298]:c.sub s1, a1<br> [0x8000029a]:sw s1, 40(tp)<br>         |
|  12|[0x8000323c]<br>0x00000011|- rs1 : x8<br>                     |[0x800002a6]:c.jr fp<br> [0x800002ae]:xori fp, fp, 3<br> [0x800002b2]:auipc a1, 0<br> [0x800002b6]:addi a1, a1, 4076<br> [0x800002ba]:c.andi a1, 60<br> [0x800002bc]:c.sub s0, a1<br> [0x800002be]:sw fp, 44(tp)<br>         |
|  13|[0x80003240]<br>0x00000011|- rs1 : x31<br>                    |[0x800002ca]:c.jr t6<br> [0x800002d2]:xori t6, t6, 3<br> [0x800002d6]:auipc a1, 0<br> [0x800002da]:addi a1, a1, 4076<br> [0x800002de]:c.andi a1, 60<br> [0x800002e0]:sub t6, t6, a1<br> [0x800002e4]:sw t6, 48(tp)<br>       |
|  14|[0x80003244]<br>0x00000013|- rs1 : x24<br>                    |[0x800002f0]:c.jr s8<br> [0x800002f8]:xori s8, s8, 3<br> [0x800002fc]:auipc a1, 0<br> [0x80000300]:addi a1, a1, 4076<br> [0x80000304]:c.andi a1, 60<br> [0x80000306]:sub s8, s8, a1<br> [0x8000030a]:sw s8, 52(tp)<br>       |
|  15|[0x80003248]<br>0x00000011|- rs1 : x18<br>                    |[0x80000316]:c.jr s2<br> [0x8000031e]:xori s2, s2, 3<br> [0x80000322]:auipc a1, 0<br> [0x80000326]:addi a1, a1, 4076<br> [0x8000032a]:c.andi a1, 60<br> [0x8000032c]:sub s2, s2, a1<br> [0x80000330]:sw s2, 56(tp)<br>       |
|  16|[0x8000324c]<br>0x00000013|- rs1 : x14<br>                    |[0x8000033c]:c.jr a4<br> [0x80000344]:xori a4, a4, 3<br> [0x80000348]:auipc a1, 0<br> [0x8000034c]:addi a1, a1, 4076<br> [0x80000350]:c.andi a1, 60<br> [0x80000352]:c.sub a4, a1<br> [0x80000354]:sw a4, 60(tp)<br>         |
|  17|[0x80003250]<br>0x00000013|- rs1 : x12<br>                    |[0x80000360]:c.jr a2<br> [0x80000368]:xori a2, a2, 3<br> [0x8000036c]:auipc a1, 0<br> [0x80000370]:addi a1, a1, 4076<br> [0x80000374]:c.andi a1, 60<br> [0x80000376]:c.sub a2, a1<br> [0x80000378]:sw a2, 64(tp)<br>         |
|  18|[0x80003254]<br>0x00000013|- rs1 : x27<br>                    |[0x80000384]:c.jr s11<br> [0x8000038c]:xori s11, s11, 3<br> [0x80000390]:auipc a1, 0<br> [0x80000394]:addi a1, a1, 4076<br> [0x80000398]:c.andi a1, 60<br> [0x8000039a]:sub s11, s11, a1<br> [0x8000039e]:sw s11, 68(tp)<br> |
|  19|[0x80003258]<br>0x00000011|- rs1 : x20<br>                    |[0x800003aa]:c.jr s4<br> [0x800003b2]:xori s4, s4, 3<br> [0x800003b6]:auipc a1, 0<br> [0x800003ba]:addi a1, a1, 4076<br> [0x800003be]:c.andi a1, 60<br> [0x800003c0]:sub s4, s4, a1<br> [0x800003c4]:sw s4, 72(tp)<br>       |
|  20|[0x8000325c]<br>0x00000013|- rs1 : x30<br>                    |[0x800003d0]:c.jr t5<br> [0x800003d8]:xori t5, t5, 3<br> [0x800003dc]:auipc a1, 0<br> [0x800003e0]:addi a1, a1, 4076<br> [0x800003e4]:c.andi a1, 60<br> [0x800003e6]:sub t5, t5, a1<br> [0x800003ea]:sw t5, 76(tp)<br>       |
|  21|[0x80003260]<br>0x00000011|- rs1 : x6<br>                     |[0x800003f6]:c.jr t1<br> [0x800003fe]:xori t1, t1, 3<br> [0x80000402]:auipc a1, 0<br> [0x80000406]:addi a1, a1, 4076<br> [0x8000040a]:c.andi a1, 60<br> [0x8000040c]:sub t1, t1, a1<br> [0x80000410]:sw t1, 80(tp)<br>       |
|  22|[0x80003264]<br>0x00000013|- rs1 : x19<br>                    |[0x8000041c]:c.jr s3<br> [0x80000424]:xori s3, s3, 3<br> [0x80000428]:auipc a1, 0<br> [0x8000042c]:addi a1, a1, 4076<br> [0x80000430]:c.andi a1, 60<br> [0x80000432]:sub s3, s3, a1<br> [0x80000436]:sw s3, 84(tp)<br>       |
|  23|[0x80003268]<br>0x00000011|- rs1 : x28<br>                    |[0x80000442]:c.jr t3<br> [0x8000044a]:xori t3, t3, 3<br> [0x8000044e]:auipc a1, 0<br> [0x80000452]:addi a1, a1, 4076<br> [0x80000456]:c.andi a1, 60<br> [0x80000458]:sub t3, t3, a1<br> [0x8000045c]:sw t3, 88(tp)<br>       |
|  24|[0x8000326c]<br>0x00000013|- rs1 : x2<br>                     |[0x80000468]:c.jr sp<br> [0x80000470]:xori sp, sp, 3<br> [0x80000474]:auipc a1, 0<br> [0x80000478]:addi a1, a1, 4076<br> [0x8000047c]:c.andi a1, 60<br> [0x8000047e]:sub sp, sp, a1<br> [0x80000482]:sw sp, 92(tp)<br>       |
|  25|[0x80003270]<br>0x00000011|- rs1 : x26<br>                    |[0x8000048e]:c.jr s10<br> [0x80000496]:xori s10, s10, 3<br> [0x8000049a]:auipc a1, 0<br> [0x8000049e]:addi a1, a1, 4076<br> [0x800004a2]:c.andi a1, 60<br> [0x800004a4]:sub s10, s10, a1<br> [0x800004a8]:sw s10, 96(tp)<br> |
|  26|[0x80003274]<br>0x00000013|- rs1 : x16<br>                    |[0x800004b4]:c.jr a6<br> [0x800004bc]:xori a6, a6, 3<br> [0x800004c0]:auipc a1, 0<br> [0x800004c4]:addi a1, a1, 4076<br> [0x800004c8]:c.andi a1, 60<br> [0x800004ca]:sub a6, a6, a1<br> [0x800004ce]:sw a6, 100(tp)<br>      |
|  27|[0x80003278]<br>0x00000011|- rs1 : x13<br>                    |[0x800004da]:c.jr a3<br> [0x800004e2]:xori a3, a3, 3<br> [0x800004e6]:auipc sp, 0<br> [0x800004ea]:addi sp, sp, 4076<br> [0x800004ee]:andi sp, sp, 4092<br> [0x800004f2]:sub a3, a3, sp<br> [0x800004f6]:sw a3, 104(tp)<br>  |
|  28|[0x8000327c]<br>0x00000011|- rs1 : x4<br>                     |[0x8000050a]:c.jr tp<br> [0x80000512]:xori tp, tp, 3<br> [0x80000516]:auipc sp, 0<br> [0x8000051a]:addi sp, sp, 4076<br> [0x8000051e]:andi sp, sp, 4092<br> [0x80000522]:sub tp, tp, sp<br> [0x80000526]:sw tp, 0(ra)<br>    |
|  29|[0x80003280]<br>0x00000011|- rs1 : x23<br>                    |[0x80000532]:c.jr s7<br> [0x8000053a]:xori s7, s7, 3<br> [0x8000053e]:auipc sp, 0<br> [0x80000542]:addi sp, sp, 4076<br> [0x80000546]:andi sp, sp, 4092<br> [0x8000054a]:sub s7, s7, sp<br> [0x8000054e]:sw s7, 4(ra)<br>    |
|  30|[0x80003284]<br>0x00000011|- rs1 : x11<br>                    |[0x8000055a]:c.jr a1<br> [0x80000562]:xori a1, a1, 3<br> [0x80000566]:auipc sp, 0<br> [0x8000056a]:addi sp, sp, 4076<br> [0x8000056e]:andi sp, sp, 4092<br> [0x80000572]:sub a1, a1, sp<br> [0x80000576]:sw a1, 8(ra)<br>    |
|  31|[0x80003288]<br>0x00000011|- rs1 : x10<br>                    |[0x80000582]:c.jr a0<br> [0x8000058a]:xori a0, a0, 3<br> [0x8000058e]:auipc sp, 0<br> [0x80000592]:addi sp, sp, 4076<br> [0x80000596]:andi sp, sp, 4092<br> [0x8000059a]:sub a0, a0, sp<br> [0x8000059e]:sw a0, 12(ra)<br>   |
