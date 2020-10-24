
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x800005d0')]      |
| SIG_REGION  | [('0x80002210', '0x80002310')]      |
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

|        signature         |           coverpoints            |                                                                                              code                                                                                               |
|--------------------------|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0x00000013|- opcode : c.jr<br> - rs1 : 6<br> |[0x80000104]:c.jr t1<br> [0x8000010c]:xori t1, t1, 3<br> [0x80000110]:auipc a2, 0<br> [0x80000114]:addi a2, a2, 4076<br> [0x80000118]:c.andi a2, 60<br> [0x8000011a]:sub t1, t1, a2<br>          |
|[0x80002214]<br>0x00000011|- rs1 : 5<br>                     |[0x8000012a]:c.jr t0<br> [0x80000132]:xori t0, t0, 3<br> [0x80000136]:auipc a2, 0<br> [0x8000013a]:addi a2, a2, 4076<br> [0x8000013e]:c.andi a2, 60<br> [0x80000140]:sub t0, t0, a2<br>          |
|[0x80002218]<br>0x00000013|- rs1 : 26<br>                    |[0x80000150]:c.jr s10<br> [0x80000158]:xori s10, s10, 3<br> [0x8000015c]:auipc a2, 0<br> [0x80000160]:addi a2, a2, 4076<br> [0x80000164]:c.andi a2, 60<br> [0x80000166]:sub s10, s10, a2<br>     |
|[0x8000221c]<br>0x00000011|- rs1 : 19<br>                    |[0x80000176]:c.jr s3<br> [0x8000017e]:xori s3, s3, 3<br> [0x80000182]:auipc a2, 0<br> [0x80000186]:addi a2, a2, 4076<br> [0x8000018a]:c.andi a2, 60<br> [0x8000018c]:sub s3, s3, a2<br>          |
|[0x80002220]<br>0x00000013|- rs1 : 25<br>                    |[0x8000019c]:c.jr s9<br> [0x800001a4]:xori s9, s9, 3<br> [0x800001a8]:auipc a2, 0<br> [0x800001ac]:addi a2, a2, 4076<br> [0x800001b0]:c.andi a2, 60<br> [0x800001b2]:sub s9, s9, a2<br>          |
|[0x80002224]<br>0x00000011|- rs1 : 7<br>                     |[0x800001c2]:c.jr t2<br> [0x800001ca]:xori t2, t2, 3<br> [0x800001ce]:auipc a2, 0<br> [0x800001d2]:addi a2, a2, 4076<br> [0x800001d6]:c.andi a2, 60<br> [0x800001d8]:sub t2, t2, a2<br>          |
|[0x80002228]<br>0x00000013|- rs1 : 1<br>                     |[0x800001e8]:c.jr ra<br> [0x800001f0]:xori ra, ra, 3<br> [0x800001f4]:auipc a2, 0<br> [0x800001f8]:addi a2, a2, 4076<br> [0x800001fc]:c.andi a2, 60<br> [0x800001fe]:sub ra, ra, a2<br>          |
|[0x8000222c]<br>0x00000011|- rs1 : 4<br>                     |[0x8000020e]:c.jr tp<br> [0x80000216]:xori tp, tp, 3<br> [0x8000021a]:auipc a2, 0<br> [0x8000021e]:addi a2, a2, 4076<br> [0x80000222]:c.andi a2, 60<br> [0x80000224]:sub tp, tp, a2<br>          |
|[0x80002230]<br>0x00000013|- rs1 : 21<br>                    |[0x80000234]:c.jr s5<br> [0x8000023c]:xori s5, s5, 3<br> [0x80000240]:auipc a2, 0<br> [0x80000244]:addi a2, a2, 4076<br> [0x80000248]:c.andi a2, 60<br> [0x8000024a]:sub s5, s5, a2<br>          |
|[0x80002234]<br>0x00000011|- rs1 : 24<br>                    |[0x8000025a]:c.jr s8<br> [0x80000262]:xori s8, s8, 3<br> [0x80000266]:auipc a2, 0<br> [0x8000026a]:addi a2, a2, 4076<br> [0x8000026e]:c.andi a2, 60<br> [0x80000270]:sub s8, s8, a2<br>          |
|[0x80002238]<br>0x00000013|- rs1 : 3<br>                     |[0x80000280]:c.jr gp<br> [0x80000288]:xori gp, gp, 3<br> [0x8000028c]:auipc a2, 0<br> [0x80000290]:addi a2, a2, 4076<br> [0x80000294]:c.andi a2, 60<br> [0x80000296]:sub gp, gp, a2<br>          |
|[0x8000223c]<br>0x00000011|- rs1 : 20<br>                    |[0x800002a6]:c.jr s4<br> [0x800002ae]:xori s4, s4, 3<br> [0x800002b2]:auipc a2, 0<br> [0x800002b6]:addi a2, a2, 4076<br> [0x800002ba]:c.andi a2, 60<br> [0x800002bc]:sub s4, s4, a2<br>          |
|[0x80002240]<br>0x00000013|- rs1 : 18<br>                    |[0x800002cc]:c.jr s2<br> [0x800002d4]:xori s2, s2, 3<br> [0x800002d8]:auipc a2, 0<br> [0x800002dc]:addi a2, a2, 4076<br> [0x800002e0]:c.andi a2, 60<br> [0x800002e2]:sub s2, s2, a2<br>          |
|[0x80002244]<br>0x00000011|- rs1 : 15<br>                    |[0x800002f2]:c.jr a5<br> [0x800002fa]:xori a5, a5, 3<br> [0x800002fe]:auipc a2, 0<br> [0x80000302]:addi a2, a2, 4076<br> [0x80000306]:c.andi a2, 60<br> [0x80000308]:c.sub a5, a2<br>            |
|[0x80002248]<br>0x00000011|- rs1 : 2<br>                     |[0x80000316]:c.jr sp<br> [0x8000031e]:xori sp, sp, 3<br> [0x80000322]:auipc a2, 0<br> [0x80000326]:addi a2, a2, 4076<br> [0x8000032a]:c.andi a2, 60<br> [0x8000032c]:sub sp, sp, a2<br>          |
|[0x8000224c]<br>0x00000013|- rs1 : 23<br>                    |[0x8000033c]:c.jr s7<br> [0x80000344]:xori s7, s7, 3<br> [0x80000348]:auipc a2, 0<br> [0x8000034c]:addi a2, a2, 4076<br> [0x80000350]:c.andi a2, 60<br> [0x80000352]:sub s7, s7, a2<br>          |
|[0x80002250]<br>0x00000011|- rs1 : 30<br>                    |[0x80000362]:c.jr t5<br> [0x8000036a]:xori t5, t5, 3<br> [0x8000036e]:auipc a2, 0<br> [0x80000372]:addi a2, a2, 4076<br> [0x80000376]:c.andi a2, 60<br> [0x80000378]:sub t5, t5, a2<br>          |
|[0x80002254]<br>0x00000013|- rs1 : 8<br>                     |[0x80000388]:c.jr fp<br> [0x80000390]:xori fp, fp, 3<br> [0x80000394]:auipc a2, 0<br> [0x80000398]:addi a2, a2, 4076<br> [0x8000039c]:c.andi a2, 60<br> [0x8000039e]:c.sub s0, a2<br>            |
|[0x80002258]<br>0x00000013|- rs1 : 14<br>                    |[0x800003ac]:c.jr a4<br> [0x800003b4]:xori a4, a4, 3<br> [0x800003b8]:auipc a2, 0<br> [0x800003bc]:addi a2, a2, 4076<br> [0x800003c0]:c.andi a2, 60<br> [0x800003c2]:c.sub a4, a2<br>            |
|[0x8000225c]<br>0x00000013|- rs1 : 22<br>                    |[0x800003d0]:c.jr s6<br> [0x800003d8]:xori s6, s6, 3<br> [0x800003dc]:auipc a2, 0<br> [0x800003e0]:addi a2, a2, 4076<br> [0x800003e4]:c.andi a2, 60<br> [0x800003e6]:sub s6, s6, a2<br>          |
|[0x80002260]<br>0x00000011|- rs1 : 31<br>                    |[0x800003f6]:c.jr t6<br> [0x800003fe]:xori t6, t6, 3<br> [0x80000402]:auipc a2, 0<br> [0x80000406]:addi a2, a2, 4076<br> [0x8000040a]:c.andi a2, 60<br> [0x8000040c]:sub t6, t6, a2<br>          |
|[0x80002264]<br>0x00000013|- rs1 : 11<br>                    |[0x8000041c]:c.jr a1<br> [0x80000424]:xori a1, a1, 3<br> [0x80000428]:auipc a2, 0<br> [0x8000042c]:addi a2, a2, 4076<br> [0x80000430]:c.andi a2, 60<br> [0x80000432]:c.sub a1, a2<br>            |
|[0x80002268]<br>0x00000013|- rs1 : 9<br>                     |[0x80000440]:c.jr s1<br> [0x80000448]:xori s1, s1, 3<br> [0x8000044c]:auipc a2, 0<br> [0x80000450]:addi a2, a2, 4076<br> [0x80000454]:c.andi a2, 60<br> [0x80000456]:c.sub s1, a2<br>            |
|[0x8000226c]<br>0x00000013|- rs1 : 16<br>                    |[0x80000464]:c.jr a6<br> [0x8000046c]:xori a6, a6, 3<br> [0x80000470]:auipc a2, 0<br> [0x80000474]:addi a2, a2, 4076<br> [0x80000478]:c.andi a2, 60<br> [0x8000047a]:sub a6, a6, a2<br>          |
|[0x80002270]<br>0x00000011|- rs1 : 13<br>                    |[0x8000048a]:c.jr a3<br> [0x80000492]:xori a3, a3, 3<br> [0x80000496]:auipc a2, 0<br> [0x8000049a]:addi a2, a2, 4076<br> [0x8000049e]:c.andi a2, 60<br> [0x800004a0]:c.sub a3, a2<br>            |
|[0x80002274]<br>0x00000011|- rs1 : 28<br>                    |[0x800004ae]:c.jr t3<br> [0x800004b6]:xori t3, t3, 3<br> [0x800004ba]:auipc a2, 0<br> [0x800004be]:addi a2, a2, 4076<br> [0x800004c2]:c.andi a2, 60<br> [0x800004c4]:sub t3, t3, a2<br>          |
|[0x80002278]<br>0x00000013|- rs1 : 12<br>                    |[0x800004d4]:c.jr a2<br> [0x800004dc]:xori a2, a2, 3<br> [0x800004e0]:auipc sp, 0<br> [0x800004e4]:addi sp, sp, 4076<br> [0x800004e8]:andi sp, sp, 4092<br> [0x800004ec]:sub a2, a2, sp<br>      |
|[0x8000227c]<br>0x00000013|- rs1 : 17<br>                    |[0x80000504]:c.jr a7<br> [0x8000050c]:xori a7, a7, 3<br> [0x80000510]:auipc sp, 0<br> [0x80000514]:addi sp, sp, 4076<br> [0x80000518]:andi sp, sp, 4092<br> [0x8000051c]:sub a7, a7, sp<br>      |
|[0x80002280]<br>0x00000013|- rs1 : 29<br>                    |[0x8000052c]:c.jr t4<br> [0x80000534]:xori t4, t4, 3<br> [0x80000538]:auipc sp, 0<br> [0x8000053c]:addi sp, sp, 4076<br> [0x80000540]:andi sp, sp, 4092<br> [0x80000544]:sub t4, t4, sp<br>      |
|[0x80002284]<br>0x00000013|- rs1 : 27<br>                    |[0x80000554]:c.jr s11<br> [0x8000055c]:xori s11, s11, 3<br> [0x80000560]:auipc sp, 0<br> [0x80000564]:addi sp, sp, 4076<br> [0x80000568]:andi sp, sp, 4092<br> [0x8000056c]:sub s11, s11, sp<br> |
|[0x80002288]<br>0x00000013|- rs1 : 10<br>                    |[0x8000057c]:c.jr a0<br> [0x80000584]:xori a0, a0, 3<br> [0x80000588]:auipc sp, 0<br> [0x8000058c]:addi sp, sp, 4076<br> [0x80000590]:andi sp, sp, 4092<br> [0x80000594]:sub a0, a0, sp<br>      |
