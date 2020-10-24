
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x800002ce', '0x800007a0')]      |
| SIG_REGION  | [('0x80002210', '0x80002410')]      |
| COV_LABELS  | ('cjr',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cjr-01.S/cjr-01.S    |

## Report Table

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

|            signature             |            coverpoints            |                                                                                            code                                                                                             |
|----------------------------------|-----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0x0000000000000011|- opcode : c.jr<br> - rs1 : 12<br> |[0x800002de]:c.jr a2<br> [0x800002e6]:xori a2, a2, 3<br> [0x800002ea]:auipc s1, 0<br> [0x800002ee]:addi s1, s1, 4076<br> [0x800002f2]:c.andi s1, 60<br> [0x800002f4]:c.sub a2, s1<br>        |
|[0x80002218]<br>0x0000000000000011|- rs1 : 3<br>                      |[0x80000302]:c.jr gp<br> [0x8000030a]:xori gp, gp, 3<br> [0x8000030e]:auipc s1, 0<br> [0x80000312]:addi s1, s1, 4076<br> [0x80000316]:c.andi s1, 60<br> [0x80000318]:sub gp, gp, s1<br>      |
|[0x80002220]<br>0x0000000000000013|- rs1 : 31<br>                     |[0x80000328]:c.jr t6<br> [0x80000330]:xori t6, t6, 3<br> [0x80000334]:auipc s1, 0<br> [0x80000338]:addi s1, s1, 4076<br> [0x8000033c]:c.andi s1, 60<br> [0x8000033e]:sub t6, t6, s1<br>      |
|[0x80002228]<br>0x0000000000000011|- rs1 : 5<br>                      |[0x8000034e]:c.jr t0<br> [0x80000356]:xori t0, t0, 3<br> [0x8000035a]:auipc s1, 0<br> [0x8000035e]:addi s1, s1, 4076<br> [0x80000362]:c.andi s1, 60<br> [0x80000364]:sub t0, t0, s1<br>      |
|[0x80002230]<br>0x0000000000000013|- rs1 : 6<br>                      |[0x80000374]:c.jr t1<br> [0x8000037c]:xori t1, t1, 3<br> [0x80000380]:auipc s1, 0<br> [0x80000384]:addi s1, s1, 4076<br> [0x80000388]:c.andi s1, 60<br> [0x8000038a]:sub t1, t1, s1<br>      |
|[0x80002238]<br>0x0000000000000011|- rs1 : 21<br>                     |[0x8000039a]:c.jr s5<br> [0x800003a2]:xori s5, s5, 3<br> [0x800003a6]:auipc s1, 0<br> [0x800003aa]:addi s1, s1, 4076<br> [0x800003ae]:c.andi s1, 60<br> [0x800003b0]:sub s5, s5, s1<br>      |
|[0x80002240]<br>0x0000000000000013|- rs1 : 15<br>                     |[0x800003c0]:c.jr a5<br> [0x800003c8]:xori a5, a5, 3<br> [0x800003cc]:auipc s1, 0<br> [0x800003d0]:addi s1, s1, 4076<br> [0x800003d4]:c.andi s1, 60<br> [0x800003d6]:c.sub a5, s1<br>        |
|[0x80002248]<br>0x0000000000000013|- rs1 : 27<br>                     |[0x800003e4]:c.jr s11<br> [0x800003ec]:xori s11, s11, 3<br> [0x800003f0]:auipc s1, 0<br> [0x800003f4]:addi s1, s1, 4076<br> [0x800003f8]:c.andi s1, 60<br> [0x800003fa]:sub s11, s11, s1<br> |
|[0x80002250]<br>0x0000000000000011|- rs1 : 18<br>                     |[0x8000040a]:c.jr s2<br> [0x80000412]:xori s2, s2, 3<br> [0x80000416]:auipc s1, 0<br> [0x8000041a]:addi s1, s1, 4076<br> [0x8000041e]:c.andi s1, 60<br> [0x80000420]:sub s2, s2, s1<br>      |
|[0x80002258]<br>0x0000000000000013|- rs1 : 22<br>                     |[0x80000430]:c.jr s6<br> [0x80000438]:xori s6, s6, 3<br> [0x8000043c]:auipc s1, 0<br> [0x80000440]:addi s1, s1, 4076<br> [0x80000444]:c.andi s1, 60<br> [0x80000446]:sub s6, s6, s1<br>      |
|[0x80002260]<br>0x0000000000000011|- rs1 : 2<br>                      |[0x80000456]:c.jr sp<br> [0x8000045e]:xori sp, sp, 3<br> [0x80000462]:auipc s1, 0<br> [0x80000466]:addi s1, s1, 4076<br> [0x8000046a]:c.andi s1, 60<br> [0x8000046c]:sub sp, sp, s1<br>      |
|[0x80002268]<br>0x0000000000000013|- rs1 : 1<br>                      |[0x8000047c]:c.jr ra<br> [0x80000484]:xori ra, ra, 3<br> [0x80000488]:auipc s1, 0<br> [0x8000048c]:addi s1, s1, 4076<br> [0x80000490]:c.andi s1, 60<br> [0x80000492]:sub ra, ra, s1<br>      |
|[0x80002270]<br>0x0000000000000011|- rs1 : 16<br>                     |[0x800004a2]:c.jr a6<br> [0x800004aa]:xori a6, a6, 3<br> [0x800004ae]:auipc s1, 0<br> [0x800004b2]:addi s1, s1, 4076<br> [0x800004b6]:c.andi s1, 60<br> [0x800004b8]:sub a6, a6, s1<br>      |
|[0x80002278]<br>0x0000000000000013|- rs1 : 26<br>                     |[0x800004c8]:c.jr s10<br> [0x800004d0]:xori s10, s10, 3<br> [0x800004d4]:auipc s1, 0<br> [0x800004d8]:addi s1, s1, 4076<br> [0x800004dc]:c.andi s1, 60<br> [0x800004de]:sub s10, s10, s1<br> |
|[0x80002280]<br>0x0000000000000011|- rs1 : 11<br>                     |[0x800004ee]:c.jr a1<br> [0x800004f6]:xori a1, a1, 3<br> [0x800004fa]:auipc s1, 0<br> [0x800004fe]:addi s1, s1, 4076<br> [0x80000502]:c.andi s1, 60<br> [0x80000504]:c.sub a1, s1<br>        |
|[0x80002288]<br>0x0000000000000011|- rs1 : 17<br>                     |[0x80000512]:c.jr a7<br> [0x8000051a]:xori a7, a7, 3<br> [0x8000051e]:auipc s1, 0<br> [0x80000522]:addi s1, s1, 4076<br> [0x80000526]:c.andi s1, 60<br> [0x80000528]:sub a7, a7, s1<br>      |
|[0x80002290]<br>0x0000000000000013|- rs1 : 7<br>                      |[0x80000538]:c.jr t2<br> [0x80000540]:xori t2, t2, 3<br> [0x80000544]:auipc s1, 0<br> [0x80000548]:addi s1, s1, 4076<br> [0x8000054c]:c.andi s1, 60<br> [0x8000054e]:sub t2, t2, s1<br>      |
|[0x80002298]<br>0x0000000000000011|- rs1 : 29<br>                     |[0x8000055e]:c.jr t4<br> [0x80000566]:xori t4, t4, 3<br> [0x8000056a]:auipc s1, 0<br> [0x8000056e]:addi s1, s1, 4076<br> [0x80000572]:c.andi s1, 60<br> [0x80000574]:sub t4, t4, s1<br>      |
|[0x800022a0]<br>0x0000000000000013|- rs1 : 13<br>                     |[0x80000584]:c.jr a3<br> [0x8000058c]:xori a3, a3, 3<br> [0x80000590]:auipc s1, 0<br> [0x80000594]:addi s1, s1, 4076<br> [0x80000598]:c.andi s1, 60<br> [0x8000059a]:c.sub a3, s1<br>        |
|[0x800022a8]<br>0x0000000000000013|- rs1 : 24<br>                     |[0x800005a8]:c.jr s8<br> [0x800005b0]:xori s8, s8, 3<br> [0x800005b4]:auipc s1, 0<br> [0x800005b8]:addi s1, s1, 4076<br> [0x800005bc]:c.andi s1, 60<br> [0x800005be]:sub s8, s8, s1<br>      |
|[0x800022b0]<br>0x0000000000000011|- rs1 : 23<br>                     |[0x800005ce]:c.jr s7<br> [0x800005d6]:xori s7, s7, 3<br> [0x800005da]:auipc s1, 0<br> [0x800005de]:addi s1, s1, 4076<br> [0x800005e2]:c.andi s1, 60<br> [0x800005e4]:sub s7, s7, s1<br>      |
|[0x800022b8]<br>0x0000000000000013|- rs1 : 20<br>                     |[0x800005f4]:c.jr s4<br> [0x800005fc]:xori s4, s4, 3<br> [0x80000600]:auipc s1, 0<br> [0x80000604]:addi s1, s1, 4076<br> [0x80000608]:c.andi s1, 60<br> [0x8000060a]:sub s4, s4, s1<br>      |
|[0x800022c0]<br>0x0000000000000011|- rs1 : 8<br>                      |[0x8000061a]:c.jr fp<br> [0x80000622]:xori fp, fp, 3<br> [0x80000626]:auipc s1, 0<br> [0x8000062a]:addi s1, s1, 4076<br> [0x8000062e]:c.andi s1, 60<br> [0x80000630]:c.sub s0, s1<br>        |
|[0x800022c8]<br>0x0000000000000011|- rs1 : 14<br>                     |[0x8000063e]:c.jr a4<br> [0x80000646]:xori a4, a4, 3<br> [0x8000064a]:auipc s1, 0<br> [0x8000064e]:addi s1, s1, 4076<br> [0x80000652]:c.andi s1, 60<br> [0x80000654]:c.sub a4, s1<br>        |
|[0x800022d0]<br>0x0000000000000011|- rs1 : 25<br>                     |[0x80000662]:c.jr s9<br> [0x8000066a]:xori s9, s9, 3<br> [0x8000066e]:auipc s1, 0<br> [0x80000672]:addi s1, s1, 4076<br> [0x80000676]:c.andi s1, 60<br> [0x80000678]:sub s9, s9, s1<br>      |
|[0x800022d8]<br>0x0000000000000013|- rs1 : 4<br>                      |[0x80000688]:c.jr tp<br> [0x80000690]:xori tp, tp, 3<br> [0x80000694]:auipc s1, 0<br> [0x80000698]:addi s1, s1, 4076<br> [0x8000069c]:c.andi s1, 60<br> [0x8000069e]:sub tp, tp, s1<br>      |
|[0x800022e0]<br>0x0000000000000011|- rs1 : 9<br>                      |[0x800006ae]:c.jr s1<br> [0x800006b6]:xori s1, s1, 3<br> [0x800006ba]:auipc sp, 0<br> [0x800006be]:addi sp, sp, 4076<br> [0x800006c2]:andi sp, sp, 4092<br> [0x800006c6]:sub s1, s1, sp<br>  |
|[0x800022e8]<br>0x0000000000000011|- rs1 : 28<br>                     |[0x800006de]:c.jr t3<br> [0x800006e6]:xori t3, t3, 3<br> [0x800006ea]:auipc sp, 0<br> [0x800006ee]:addi sp, sp, 4076<br> [0x800006f2]:andi sp, sp, 4092<br> [0x800006f6]:sub t3, t3, sp<br>  |
|[0x800022f0]<br>0x0000000000000011|- rs1 : 30<br>                     |[0x80000706]:c.jr t5<br> [0x8000070e]:xori t5, t5, 3<br> [0x80000712]:auipc sp, 0<br> [0x80000716]:addi sp, sp, 4076<br> [0x8000071a]:andi sp, sp, 4092<br> [0x8000071e]:sub t5, t5, sp<br>  |
|[0x800022f8]<br>0x0000000000000011|- rs1 : 19<br>                     |[0x8000072e]:c.jr s3<br> [0x80000736]:xori s3, s3, 3<br> [0x8000073a]:auipc sp, 0<br> [0x8000073e]:addi sp, sp, 4076<br> [0x80000742]:andi sp, sp, 4092<br> [0x80000746]:sub s3, s3, sp<br>  |
|[0x80002300]<br>0x0000000000000011|- rs1 : 10<br>                     |[0x80000756]:c.jr a0<br> [0x8000075e]:xori a0, a0, 3<br> [0x80000762]:auipc sp, 0<br> [0x80000766]:addi sp, sp, 4076<br> [0x8000076a]:andi sp, sp, 4092<br> [0x8000076e]:sub a0, a0, sp<br>  |
