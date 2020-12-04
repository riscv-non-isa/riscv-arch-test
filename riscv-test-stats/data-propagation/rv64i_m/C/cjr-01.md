
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000830')]      |
| SIG_REGION                | [('0x80002010', '0x80002110', '32 dwords')]      |
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

|s.no|            signature             |            coverpoints             |                                                                                                               code                                                                                                               |
|---:|----------------------------------|------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000013|- opcode : c.jr<br> - rs1 : x30<br> |[0x800003a0]:c.jr t5<br> [0x800003a8]:xori t5, t5, 3<br> [0x800003ac]:auipc a4, 0<br> [0x800003b0]:addi a4, a4, 4076<br> [0x800003b4]:c.andi a4, 60<br> [0x800003b6]:sub t5, t5, a4<br> [0x800003ba]:sd t5, 0(a3)<br>             |
|   2|[0x80002018]<br>0x0000000000000011|- rs1 : x18<br>                     |[0x800003c6]:c.jr s2<br> [0x800003ce]:xori s2, s2, 3<br> [0x800003d2]:auipc a4, 0<br> [0x800003d6]:addi a4, a4, 4076<br> [0x800003da]:c.andi a4, 60<br> [0x800003dc]:sub s2, s2, a4<br> [0x800003e0]:sd s2, 8(a3)<br>             |
|   3|[0x80002020]<br>0x0000000000000013|- rs1 : x15<br>                     |[0x800003ec]:c.jr a5<br> [0x800003f4]:xori a5, a5, 3<br> [0x800003f8]:auipc a4, 0<br> [0x800003fc]:addi a4, a4, 4076<br> [0x80000400]:c.andi a4, 60<br> [0x80000402]:c.sub a5, a4<br> [0x80000404]:c.sd a3, a5, 16<br>            |
|   4|[0x80002028]<br>0x0000000000000011|- rs1 : x6<br>                      |[0x8000040e]:c.jr t1<br> [0x80000416]:xori t1, t1, 3<br> [0x8000041a]:auipc a4, 0<br> [0x8000041e]:addi a4, a4, 4076<br> [0x80000422]:c.andi a4, 60<br> [0x80000424]:sub t1, t1, a4<br> [0x80000428]:sd t1, 24(a3)<br>            |
|   5|[0x80002030]<br>0x0000000000000013|- rs1 : x12<br>                     |[0x80000434]:c.jr a2<br> [0x8000043c]:xori a2, a2, 3<br> [0x80000440]:auipc a4, 0<br> [0x80000444]:addi a4, a4, 4076<br> [0x80000448]:c.andi a4, 60<br> [0x8000044a]:c.sub a2, a4<br> [0x8000044c]:c.sd a3, a2, 32<br>            |
|   6|[0x80002038]<br>0x0000000000000011|- rs1 : x24<br>                     |[0x80000456]:c.jr s8<br> [0x8000045e]:xori s8, s8, 3<br> [0x80000462]:auipc a4, 0<br> [0x80000466]:addi a4, a4, 4076<br> [0x8000046a]:c.andi a4, 60<br> [0x8000046c]:sub s8, s8, a4<br> [0x80000470]:sd s8, 40(a3)<br>            |
|   7|[0x80002040]<br>0x0000000000000013|- rs1 : x5<br>                      |[0x8000047c]:c.jr t0<br> [0x80000484]:xori t0, t0, 3<br> [0x80000488]:auipc a4, 0<br> [0x8000048c]:addi a4, a4, 4076<br> [0x80000490]:c.andi a4, 60<br> [0x80000492]:sub t0, t0, a4<br> [0x80000496]:sd t0, 48(a3)<br>            |
|   8|[0x80002048]<br>0x0000000000000011|- rs1 : x23<br>                     |[0x800004a2]:c.jr s7<br> [0x800004aa]:xori s7, s7, 3<br> [0x800004ae]:auipc a4, 0<br> [0x800004b2]:addi a4, a4, 4076<br> [0x800004b6]:c.andi a4, 60<br> [0x800004b8]:sub s7, s7, a4<br> [0x800004bc]:sd s7, 56(a3)<br>            |
|   9|[0x80002050]<br>0x0000000000000013|- rs1 : x27<br>                     |[0x800004c8]:c.jr s11<br> [0x800004d0]:xori s11, s11, 3<br> [0x800004d4]:auipc a4, 0<br> [0x800004d8]:addi a4, a4, 4076<br> [0x800004dc]:c.andi a4, 60<br> [0x800004de]:sub s11, s11, a4<br> [0x800004e2]:sd s11, 64(a3)<br>      |
|  10|[0x80002058]<br>0x0000000000000011|- rs1 : x17<br>                     |[0x800004ee]:c.jr a7<br> [0x800004f6]:xori a7, a7, 3<br> [0x800004fa]:auipc a4, 0<br> [0x800004fe]:addi a4, a4, 4076<br> [0x80000502]:c.andi a4, 60<br> [0x80000504]:sub a7, a7, a4<br> [0x80000508]:sd a7, 72(a3)<br>            |
|  11|[0x80002060]<br>0x0000000000000013|- rs1 : x28<br>                     |[0x80000514]:c.jr t3<br> [0x8000051c]:xori t3, t3, 3<br> [0x80000520]:auipc a4, 0<br> [0x80000524]:addi a4, a4, 4076<br> [0x80000528]:c.andi a4, 60<br> [0x8000052a]:sub t3, t3, a4<br> [0x8000052e]:sd t3, 80(a3)<br>            |
|  12|[0x80002068]<br>0x0000000000000011|- rs1 : x16<br>                     |[0x8000053a]:c.jr a6<br> [0x80000542]:xori a6, a6, 3<br> [0x80000546]:auipc a4, 0<br> [0x8000054a]:addi a4, a4, 4076<br> [0x8000054e]:c.andi a4, 60<br> [0x80000550]:sub a6, a6, a4<br> [0x80000554]:sd a6, 88(a3)<br>            |
|  13|[0x80002070]<br>0x0000000000000013|- rs1 : x8<br>                      |[0x80000560]:c.jr fp<br> [0x80000568]:xori fp, fp, 3<br> [0x8000056c]:auipc a4, 0<br> [0x80000570]:addi a4, a4, 4076<br> [0x80000574]:c.andi a4, 60<br> [0x80000576]:c.sub s0, a4<br> [0x80000578]:c.sd a3, s0, 96<br>            |
|  14|[0x80002078]<br>0x0000000000000011|- rs1 : x29<br>                     |[0x80000582]:c.jr t4<br> [0x8000058a]:xori t4, t4, 3<br> [0x8000058e]:auipc a4, 0<br> [0x80000592]:addi a4, a4, 4076<br> [0x80000596]:c.andi a4, 60<br> [0x80000598]:sub t4, t4, a4<br> [0x8000059c]:sd t4, 104(a3)<br>           |
|  15|[0x80002080]<br>0x0000000000000013|- rs1 : x19<br>                     |[0x800005a8]:c.jr s3<br> [0x800005b0]:xori s3, s3, 3<br> [0x800005b4]:auipc a4, 0<br> [0x800005b8]:addi a4, a4, 4076<br> [0x800005bc]:c.andi a4, 60<br> [0x800005be]:sub s3, s3, a4<br> [0x800005c2]:sd s3, 112(a3)<br>           |
|  16|[0x80002088]<br>0x0000000000000011|- rs1 : x2<br>                      |[0x800005ce]:c.jr sp<br> [0x800005d6]:xori sp, sp, 3<br> [0x800005da]:auipc a4, 0<br> [0x800005de]:addi a4, a4, 4076<br> [0x800005e2]:c.andi a4, 60<br> [0x800005e4]:sub sp, sp, a4<br> [0x800005e8]:sd sp, 120(a3)<br>           |
|  17|[0x80002090]<br>0x0000000000000013|- rs1 : x31<br>                     |[0x800005f4]:c.jr t6<br> [0x800005fc]:xori t6, t6, 3<br> [0x80000600]:auipc a4, 0<br> [0x80000604]:addi a4, a4, 4076<br> [0x80000608]:c.andi a4, 60<br> [0x8000060a]:sub t6, t6, a4<br> [0x8000060e]:sd t6, 128(a3)<br>           |
|  18|[0x80002098]<br>0x0000000000000011|- rs1 : x4<br>                      |[0x8000061a]:c.jr tp<br> [0x80000622]:xori tp, tp, 3<br> [0x80000626]:auipc a4, 0<br> [0x8000062a]:addi a4, a4, 4076<br> [0x8000062e]:c.andi a4, 60<br> [0x80000630]:sub tp, tp, a4<br> [0x80000634]:sd tp, 136(a3)<br>           |
|  19|[0x800020a0]<br>0x0000000000000013|- rs1 : x7<br>                      |[0x80000640]:c.jr t2<br> [0x80000648]:xori t2, t2, 3<br> [0x8000064c]:auipc a4, 0<br> [0x80000650]:addi a4, a4, 4076<br> [0x80000654]:c.andi a4, 60<br> [0x80000656]:sub t2, t2, a4<br> [0x8000065a]:sd t2, 144(a3)<br>           |
|  20|[0x800020a8]<br>0x0000000000000011|- rs1 : x9<br>                      |[0x80000666]:c.jr s1<br> [0x8000066e]:xori s1, s1, 3<br> [0x80000672]:auipc a4, 0<br> [0x80000676]:addi a4, a4, 4076<br> [0x8000067a]:c.andi a4, 60<br> [0x8000067c]:c.sub s1, a4<br> [0x8000067e]:c.sd a3, s1, 152<br>           |
|  21|[0x800020b0]<br>0x0000000000000013|- rs1 : x21<br>                     |[0x80000688]:c.jr s5<br> [0x80000690]:xori s5, s5, 3<br> [0x80000694]:auipc a4, 0<br> [0x80000698]:addi a4, a4, 4076<br> [0x8000069c]:c.andi a4, 60<br> [0x8000069e]:sub s5, s5, a4<br> [0x800006a2]:sd s5, 160(a3)<br>           |
|  22|[0x800020b8]<br>0x0000000000000011|- rs1 : x1<br>                      |[0x800006ae]:c.jr ra<br> [0x800006b6]:xori ra, ra, 3<br> [0x800006ba]:auipc a4, 0<br> [0x800006be]:addi a4, a4, 4076<br> [0x800006c2]:c.andi a4, 60<br> [0x800006c4]:sub ra, ra, a4<br> [0x800006c8]:sd ra, 168(a3)<br>           |
|  23|[0x800020c0]<br>0x0000000000000013|- rs1 : x3<br>                      |[0x800006d4]:c.jr gp<br> [0x800006dc]:xori gp, gp, 3<br> [0x800006e0]:auipc a4, 0<br> [0x800006e4]:addi a4, a4, 4076<br> [0x800006e8]:c.andi a4, 60<br> [0x800006ea]:sub gp, gp, a4<br> [0x800006ee]:sd gp, 176(a3)<br>           |
|  24|[0x800020c8]<br>0x0000000000000011|- rs1 : x11<br>                     |[0x800006fa]:c.jr a1<br> [0x80000702]:xori a1, a1, 3<br> [0x80000706]:auipc a4, 0<br> [0x8000070a]:addi a4, a4, 4076<br> [0x8000070e]:c.andi a4, 60<br> [0x80000710]:c.sub a1, a4<br> [0x80000712]:c.sd a3, a1, 184<br>           |
|  25|[0x800020d0]<br>0x0000000000000013|- rs1 : x22<br>                     |[0x8000071c]:c.jr s6<br> [0x80000724]:xori s6, s6, 3<br> [0x80000728]:auipc a4, 0<br> [0x8000072c]:addi a4, a4, 4076<br> [0x80000730]:c.andi a4, 60<br> [0x80000732]:sub s6, s6, a4<br> [0x80000736]:sd s6, 192(a3)<br>           |
|  26|[0x800020d8]<br>0x0000000000000011|- rs1 : x25<br>                     |[0x80000742]:c.jr s9<br> [0x8000074a]:xori s9, s9, 3<br> [0x8000074e]:auipc a4, 0<br> [0x80000752]:addi a4, a4, 4076<br> [0x80000756]:c.andi a4, 60<br> [0x80000758]:sub s9, s9, a4<br> [0x8000075c]:sd s9, 200(a3)<br>           |
|  27|[0x800020e0]<br>0x0000000000000013|- rs1 : x26<br>                     |[0x80000768]:c.jr s10<br> [0x80000770]:xori s10, s10, 3<br> [0x80000774]:auipc sp, 0<br> [0x80000778]:addi sp, sp, 4076<br> [0x8000077c]:andi sp, sp, 4092<br> [0x80000780]:sub s10, s10, sp<br> [0x80000784]:sd s10, 208(a3)<br> |
|  28|[0x800020e8]<br>0x0000000000000013|- rs1 : x13<br>                     |[0x80000798]:c.jr a3<br> [0x800007a0]:xori a3, a3, 3<br> [0x800007a4]:auipc sp, 0<br> [0x800007a8]:addi sp, sp, 4076<br> [0x800007ac]:andi sp, sp, 4092<br> [0x800007b0]:sub a3, a3, sp<br> [0x800007b4]:sd a3, 0(ra)<br>         |
|  29|[0x800020f0]<br>0x0000000000000013|- rs1 : x20<br>                     |[0x800007c0]:c.jr s4<br> [0x800007c8]:xori s4, s4, 3<br> [0x800007cc]:auipc sp, 0<br> [0x800007d0]:addi sp, sp, 4076<br> [0x800007d4]:andi sp, sp, 4092<br> [0x800007d8]:sub s4, s4, sp<br> [0x800007dc]:sd s4, 8(ra)<br>         |
|  30|[0x800020f8]<br>0x0000000000000013|- rs1 : x14<br>                     |[0x800007e8]:c.jr a4<br> [0x800007f0]:xori a4, a4, 3<br> [0x800007f4]:auipc sp, 0<br> [0x800007f8]:addi sp, sp, 4076<br> [0x800007fc]:andi sp, sp, 4092<br> [0x80000800]:sub a4, a4, sp<br> [0x80000804]:sd a4, 16(ra)<br>        |
|  31|[0x80002100]<br>0x0000000000000013|- rs1 : x10<br>                     |[0x80000810]:c.jr a0<br> [0x80000818]:xori a0, a0, 3<br> [0x8000081c]:auipc sp, 0<br> [0x80000820]:addi sp, sp, 4076<br> [0x80000824]:andi sp, sp, 4092<br> [0x80000828]:sub a0, a0, sp<br> [0x8000082c]:sd a0, 24(ra)<br>        |
