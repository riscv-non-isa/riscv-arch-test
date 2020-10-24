
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x800005d0')]      |
| SIG_REGION  | [('0x80002210', '0x80002310')]      |
| COV_LABELS  | ('cjalr',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cjalr-01.S/cjalr-01.S    |

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

|        signature         |             coverpoints             |                                                                                             code                                                                                             |
|--------------------------|-------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0x00000009|- opcode : c.jalr<br> - rs1 : 16<br> |[0x80000104]:c.jalr a6<br> [0x8000010c]:xori ra, ra, 3<br> [0x80000110]:auipc a0, 0<br> [0x80000114]:addi a0, a0, 4076<br> [0x80000118]:c.andi a0, 60<br> [0x8000011a]:sub ra, ra, a0<br>     |
|[0x80002214]<br>0x0000000F|- rs1 : 2<br>                        |[0x8000012a]:c.jalr sp<br> [0x80000132]:xori ra, ra, 3<br> [0x80000136]:auipc a0, 0<br> [0x8000013a]:addi a0, a0, 4076<br> [0x8000013e]:c.andi a0, 60<br> [0x80000140]:sub ra, ra, a0<br>     |
|[0x80002218]<br>0x00000009|- rs1 : 26<br>                       |[0x80000150]:c.jalr s10<br> [0x80000158]:xori ra, ra, 3<br> [0x8000015c]:auipc a0, 0<br> [0x80000160]:addi a0, a0, 4076<br> [0x80000164]:c.andi a0, 60<br> [0x80000166]:sub ra, ra, a0<br>    |
|[0x8000221c]<br>0x0000000F|- rs1 : 25<br>                       |[0x80000176]:c.jalr s9<br> [0x8000017e]:xori ra, ra, 3<br> [0x80000182]:auipc a0, 0<br> [0x80000186]:addi a0, a0, 4076<br> [0x8000018a]:c.andi a0, 60<br> [0x8000018c]:sub ra, ra, a0<br>     |
|[0x80002220]<br>0x00000009|- rs1 : 29<br>                       |[0x8000019c]:c.jalr t4<br> [0x800001a4]:xori ra, ra, 3<br> [0x800001a8]:auipc a0, 0<br> [0x800001ac]:addi a0, a0, 4076<br> [0x800001b0]:c.andi a0, 60<br> [0x800001b2]:sub ra, ra, a0<br>     |
|[0x80002224]<br>0x0000000F|- rs1 : 3<br>                        |[0x800001c2]:c.jalr gp<br> [0x800001ca]:xori ra, ra, 3<br> [0x800001ce]:auipc a0, 0<br> [0x800001d2]:addi a0, a0, 4076<br> [0x800001d6]:c.andi a0, 60<br> [0x800001d8]:sub ra, ra, a0<br>     |
|[0x80002228]<br>0x00000009|- rs1 : 23<br>                       |[0x800001e8]:c.jalr s7<br> [0x800001f0]:xori ra, ra, 3<br> [0x800001f4]:auipc a0, 0<br> [0x800001f8]:addi a0, a0, 4076<br> [0x800001fc]:c.andi a0, 60<br> [0x800001fe]:sub ra, ra, a0<br>     |
|[0x8000222c]<br>0x0000000F|- rs1 : 1<br>                        |[0x8000020e]:c.jalr ra<br> [0x80000216]:xori ra, ra, 3<br> [0x8000021a]:auipc a0, 0<br> [0x8000021e]:addi a0, a0, 4076<br> [0x80000222]:c.andi a0, 60<br> [0x80000224]:sub ra, ra, a0<br>     |
|[0x80002230]<br>0x00000009|- rs1 : 20<br>                       |[0x80000234]:c.jalr s4<br> [0x8000023c]:xori ra, ra, 3<br> [0x80000240]:auipc a0, 0<br> [0x80000244]:addi a0, a0, 4076<br> [0x80000248]:c.andi a0, 60<br> [0x8000024a]:sub ra, ra, a0<br>     |
|[0x80002234]<br>0x0000000F|- rs1 : 22<br>                       |[0x8000025a]:c.jalr s6<br> [0x80000262]:xori ra, ra, 3<br> [0x80000266]:auipc a0, 0<br> [0x8000026a]:addi a0, a0, 4076<br> [0x8000026e]:c.andi a0, 60<br> [0x80000270]:sub ra, ra, a0<br>     |
|[0x80002238]<br>0x00000009|- rs1 : 21<br>                       |[0x80000280]:c.jalr s5<br> [0x80000288]:xori ra, ra, 3<br> [0x8000028c]:auipc a0, 0<br> [0x80000290]:addi a0, a0, 4076<br> [0x80000294]:c.andi a0, 60<br> [0x80000296]:sub ra, ra, a0<br>     |
|[0x8000223c]<br>0x0000000F|- rs1 : 28<br>                       |[0x800002a6]:c.jalr t3<br> [0x800002ae]:xori ra, ra, 3<br> [0x800002b2]:auipc a0, 0<br> [0x800002b6]:addi a0, a0, 4076<br> [0x800002ba]:c.andi a0, 60<br> [0x800002bc]:sub ra, ra, a0<br>     |
|[0x80002240]<br>0x00000009|- rs1 : 27<br>                       |[0x800002cc]:c.jalr s11<br> [0x800002d4]:xori ra, ra, 3<br> [0x800002d8]:auipc a0, 0<br> [0x800002dc]:addi a0, a0, 4076<br> [0x800002e0]:c.andi a0, 60<br> [0x800002e2]:sub ra, ra, a0<br>    |
|[0x80002244]<br>0x0000000F|- rs1 : 24<br>                       |[0x800002f2]:c.jalr s8<br> [0x800002fa]:xori ra, ra, 3<br> [0x800002fe]:auipc a0, 0<br> [0x80000302]:addi a0, a0, 4076<br> [0x80000306]:c.andi a0, 60<br> [0x80000308]:sub ra, ra, a0<br>     |
|[0x80002248]<br>0x00000009|- rs1 : 15<br>                       |[0x80000318]:c.jalr a5<br> [0x80000320]:xori ra, ra, 3<br> [0x80000324]:auipc a0, 0<br> [0x80000328]:addi a0, a0, 4076<br> [0x8000032c]:c.andi a0, 60<br> [0x8000032e]:sub ra, ra, a0<br>     |
|[0x8000224c]<br>0x0000000F|- rs1 : 6<br>                        |[0x8000033e]:c.jalr t1<br> [0x80000346]:xori ra, ra, 3<br> [0x8000034a]:auipc a0, 0<br> [0x8000034e]:addi a0, a0, 4076<br> [0x80000352]:c.andi a0, 60<br> [0x80000354]:sub ra, ra, a0<br>     |
|[0x80002250]<br>0x00000009|- rs1 : 4<br>                        |[0x80000364]:c.jalr tp<br> [0x8000036c]:xori ra, ra, 3<br> [0x80000370]:auipc a0, 0<br> [0x80000374]:addi a0, a0, 4076<br> [0x80000378]:c.andi a0, 60<br> [0x8000037a]:sub ra, ra, a0<br>     |
|[0x80002254]<br>0x0000000F|- rs1 : 31<br>                       |[0x8000038a]:c.jalr t6<br> [0x80000392]:xori ra, ra, 3<br> [0x80000396]:auipc a0, 0<br> [0x8000039a]:addi a0, a0, 4076<br> [0x8000039e]:c.andi a0, 60<br> [0x800003a0]:sub ra, ra, a0<br>     |
|[0x80002258]<br>0x00000009|- rs1 : 8<br>                        |[0x800003b0]:c.jalr fp<br> [0x800003b8]:xori ra, ra, 3<br> [0x800003bc]:auipc a0, 0<br> [0x800003c0]:addi a0, a0, 4076<br> [0x800003c4]:c.andi a0, 60<br> [0x800003c6]:sub ra, ra, a0<br>     |
|[0x8000225c]<br>0x0000000F|- rs1 : 11<br>                       |[0x800003d6]:c.jalr a1<br> [0x800003de]:xori ra, ra, 3<br> [0x800003e2]:auipc a0, 0<br> [0x800003e6]:addi a0, a0, 4076<br> [0x800003ea]:c.andi a0, 60<br> [0x800003ec]:sub ra, ra, a0<br>     |
|[0x80002260]<br>0x00000009|- rs1 : 14<br>                       |[0x800003fc]:c.jalr a4<br> [0x80000404]:xori ra, ra, 3<br> [0x80000408]:auipc a0, 0<br> [0x8000040c]:addi a0, a0, 4076<br> [0x80000410]:c.andi a0, 60<br> [0x80000412]:sub ra, ra, a0<br>     |
|[0x80002264]<br>0x0000000F|- rs1 : 30<br>                       |[0x80000422]:c.jalr t5<br> [0x8000042a]:xori ra, ra, 3<br> [0x8000042e]:auipc a0, 0<br> [0x80000432]:addi a0, a0, 4076<br> [0x80000436]:c.andi a0, 60<br> [0x80000438]:sub ra, ra, a0<br>     |
|[0x80002268]<br>0x00000009|- rs1 : 18<br>                       |[0x80000448]:c.jalr s2<br> [0x80000450]:xori ra, ra, 3<br> [0x80000454]:auipc a0, 0<br> [0x80000458]:addi a0, a0, 4076<br> [0x8000045c]:c.andi a0, 60<br> [0x8000045e]:sub ra, ra, a0<br>     |
|[0x8000226c]<br>0x0000000F|- rs1 : 19<br>                       |[0x8000046e]:c.jalr s3<br> [0x80000476]:xori ra, ra, 3<br> [0x8000047a]:auipc a0, 0<br> [0x8000047e]:addi a0, a0, 4076<br> [0x80000482]:c.andi a0, 60<br> [0x80000484]:sub ra, ra, a0<br>     |
|[0x80002270]<br>0x00000009|- rs1 : 9<br>                        |[0x80000494]:c.jalr s1<br> [0x8000049c]:xori ra, ra, 3<br> [0x800004a0]:auipc a0, 0<br> [0x800004a4]:addi a0, a0, 4076<br> [0x800004a8]:c.andi a0, 60<br> [0x800004aa]:sub ra, ra, a0<br>     |
|[0x80002274]<br>0x0000000F|- rs1 : 12<br>                       |[0x800004ba]:c.jalr a2<br> [0x800004c2]:xori ra, ra, 3<br> [0x800004c6]:auipc a0, 0<br> [0x800004ca]:addi a0, a0, 4076<br> [0x800004ce]:c.andi a0, 60<br> [0x800004d0]:sub ra, ra, a0<br>     |
|[0x80002278]<br>0x00000009|- rs1 : 7<br>                        |[0x800004e0]:c.jalr t2<br> [0x800004e8]:xori ra, ra, 3<br> [0x800004ec]:auipc a0, 0<br> [0x800004f0]:addi a0, a0, 4076<br> [0x800004f4]:c.andi a0, 60<br> [0x800004f6]:sub ra, ra, a0<br>     |
|[0x8000227c]<br>0x0000000F|- rs1 : 17<br>                       |[0x80000506]:c.jalr a7<br> [0x8000050e]:xori ra, ra, 3<br> [0x80000512]:auipc gp, 0<br> [0x80000516]:addi gp, gp, 4076<br> [0x8000051a]:andi gp, gp, 4092<br> [0x8000051e]:sub ra, ra, gp<br> |
