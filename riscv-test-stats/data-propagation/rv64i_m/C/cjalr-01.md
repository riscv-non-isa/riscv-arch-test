
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x800007a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002410')]      |
| COV_LABELS                | ('cjalr',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjalr-01.S/cjalr-01.S    |
| Total Unique Coverpoints  | 32      |
| Total Signature Updates   | 62      |
| Ops w/o unique coverpoints | 1      |
| Sig Updates w/o Coverpoints | 0    |

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

|s.no|            signature             |             coverpoints             |                                                                                             code                                                                                             |
|---:|----------------------------------|-------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000000000000000F|- opcode : c.jalr<br> - rs1 : x2<br> |[0x800002de]:c.jalr sp<br> [0x800002e6]:xori ra, ra, 3<br> [0x800002ea]:auipc a3, 0<br> [0x800002ee]:addi a3, a3, 4076<br> [0x800002f2]:c.andi a3, 60<br> [0x800002f4]:sub ra, ra, a3<br>     |
|   2|[0x80002218]<br>0x0000000000000009|- rs1 : x4<br>                       |[0x80000304]:c.jalr tp<br> [0x8000030c]:xori ra, ra, 3<br> [0x80000310]:auipc a3, 0<br> [0x80000314]:addi a3, a3, 4076<br> [0x80000318]:c.andi a3, 60<br> [0x8000031a]:sub ra, ra, a3<br>     |
|   3|[0x80002220]<br>0x000000000000000F|- rs1 : x8<br>                       |[0x8000032a]:c.jalr fp<br> [0x80000332]:xori ra, ra, 3<br> [0x80000336]:auipc a3, 0<br> [0x8000033a]:addi a3, a3, 4076<br> [0x8000033e]:c.andi a3, 60<br> [0x80000340]:sub ra, ra, a3<br>     |
|   4|[0x80002228]<br>0x0000000000000009|- rs1 : x11<br>                      |[0x80000350]:c.jalr a1<br> [0x80000358]:xori ra, ra, 3<br> [0x8000035c]:auipc a3, 0<br> [0x80000360]:addi a3, a3, 4076<br> [0x80000364]:c.andi a3, 60<br> [0x80000366]:sub ra, ra, a3<br>     |
|   5|[0x80002230]<br>0x000000000000000F|- rs1 : x15<br>                      |[0x80000376]:c.jalr a5<br> [0x8000037e]:xori ra, ra, 3<br> [0x80000382]:auipc a3, 0<br> [0x80000386]:addi a3, a3, 4076<br> [0x8000038a]:c.andi a3, 60<br> [0x8000038c]:sub ra, ra, a3<br>     |
|   6|[0x80002238]<br>0x0000000000000009|- rs1 : x9<br>                       |[0x8000039c]:c.jalr s1<br> [0x800003a4]:xori ra, ra, 3<br> [0x800003a8]:auipc a3, 0<br> [0x800003ac]:addi a3, a3, 4076<br> [0x800003b0]:c.andi a3, 60<br> [0x800003b2]:sub ra, ra, a3<br>     |
|   7|[0x80002240]<br>0x000000000000000F|- rs1 : x29<br>                      |[0x800003c2]:c.jalr t4<br> [0x800003ca]:xori ra, ra, 3<br> [0x800003ce]:auipc a3, 0<br> [0x800003d2]:addi a3, a3, 4076<br> [0x800003d6]:c.andi a3, 60<br> [0x800003d8]:sub ra, ra, a3<br>     |
|   8|[0x80002248]<br>0x0000000000000009|- rs1 : x3<br>                       |[0x800003e8]:c.jalr gp<br> [0x800003f0]:xori ra, ra, 3<br> [0x800003f4]:auipc a3, 0<br> [0x800003f8]:addi a3, a3, 4076<br> [0x800003fc]:c.andi a3, 60<br> [0x800003fe]:sub ra, ra, a3<br>     |
|   9|[0x80002250]<br>0x000000000000000F|- rs1 : x16<br>                      |[0x8000040e]:c.jalr a6<br> [0x80000416]:xori ra, ra, 3<br> [0x8000041a]:auipc a3, 0<br> [0x8000041e]:addi a3, a3, 4076<br> [0x80000422]:c.andi a3, 60<br> [0x80000424]:sub ra, ra, a3<br>     |
|  10|[0x80002258]<br>0x0000000000000009|- rs1 : x22<br>                      |[0x80000434]:c.jalr s6<br> [0x8000043c]:xori ra, ra, 3<br> [0x80000440]:auipc a3, 0<br> [0x80000444]:addi a3, a3, 4076<br> [0x80000448]:c.andi a3, 60<br> [0x8000044a]:sub ra, ra, a3<br>     |
|  11|[0x80002260]<br>0x000000000000000F|- rs1 : x31<br>                      |[0x8000045a]:c.jalr t6<br> [0x80000462]:xori ra, ra, 3<br> [0x80000466]:auipc a3, 0<br> [0x8000046a]:addi a3, a3, 4076<br> [0x8000046e]:c.andi a3, 60<br> [0x80000470]:sub ra, ra, a3<br>     |
|  12|[0x80002268]<br>0x0000000000000009|- rs1 : x24<br>                      |[0x80000480]:c.jalr s8<br> [0x80000488]:xori ra, ra, 3<br> [0x8000048c]:auipc a3, 0<br> [0x80000490]:addi a3, a3, 4076<br> [0x80000494]:c.andi a3, 60<br> [0x80000496]:sub ra, ra, a3<br>     |
|  13|[0x80002270]<br>0x000000000000000F|- rs1 : x5<br>                       |[0x800004a6]:c.jalr t0<br> [0x800004ae]:xori ra, ra, 3<br> [0x800004b2]:auipc a3, 0<br> [0x800004b6]:addi a3, a3, 4076<br> [0x800004ba]:c.andi a3, 60<br> [0x800004bc]:sub ra, ra, a3<br>     |
|  14|[0x80002278]<br>0x0000000000000009|- rs1 : x25<br>                      |[0x800004cc]:c.jalr s9<br> [0x800004d4]:xori ra, ra, 3<br> [0x800004d8]:auipc a3, 0<br> [0x800004dc]:addi a3, a3, 4076<br> [0x800004e0]:c.andi a3, 60<br> [0x800004e2]:sub ra, ra, a3<br>     |
|  15|[0x80002280]<br>0x000000000000000F|- rs1 : x27<br>                      |[0x800004f2]:c.jalr s11<br> [0x800004fa]:xori ra, ra, 3<br> [0x800004fe]:auipc a3, 0<br> [0x80000502]:addi a3, a3, 4076<br> [0x80000506]:c.andi a3, 60<br> [0x80000508]:sub ra, ra, a3<br>    |
|  16|[0x80002288]<br>0x0000000000000009|- rs1 : x18<br>                      |[0x80000518]:c.jalr s2<br> [0x80000520]:xori ra, ra, 3<br> [0x80000524]:auipc a3, 0<br> [0x80000528]:addi a3, a3, 4076<br> [0x8000052c]:c.andi a3, 60<br> [0x8000052e]:sub ra, ra, a3<br>     |
|  17|[0x80002290]<br>0x000000000000000F|- rs1 : x28<br>                      |[0x8000053e]:c.jalr t3<br> [0x80000546]:xori ra, ra, 3<br> [0x8000054a]:auipc a3, 0<br> [0x8000054e]:addi a3, a3, 4076<br> [0x80000552]:c.andi a3, 60<br> [0x80000554]:sub ra, ra, a3<br>     |
|  18|[0x80002298]<br>0x0000000000000009|- rs1 : x17<br>                      |[0x80000564]:c.jalr a7<br> [0x8000056c]:xori ra, ra, 3<br> [0x80000570]:auipc a3, 0<br> [0x80000574]:addi a3, a3, 4076<br> [0x80000578]:c.andi a3, 60<br> [0x8000057a]:sub ra, ra, a3<br>     |
|  19|[0x800022a0]<br>0x000000000000000F|- rs1 : x1<br>                       |[0x8000058a]:c.jalr ra<br> [0x80000592]:xori ra, ra, 3<br> [0x80000596]:auipc a3, 0<br> [0x8000059a]:addi a3, a3, 4076<br> [0x8000059e]:c.andi a3, 60<br> [0x800005a0]:sub ra, ra, a3<br>     |
|  20|[0x800022a8]<br>0x0000000000000009|- rs1 : x12<br>                      |[0x800005b0]:c.jalr a2<br> [0x800005b8]:xori ra, ra, 3<br> [0x800005bc]:auipc a3, 0<br> [0x800005c0]:addi a3, a3, 4076<br> [0x800005c4]:c.andi a3, 60<br> [0x800005c6]:sub ra, ra, a3<br>     |
|  21|[0x800022b0]<br>0x000000000000000F|- rs1 : x7<br>                       |[0x800005d6]:c.jalr t2<br> [0x800005de]:xori ra, ra, 3<br> [0x800005e2]:auipc a3, 0<br> [0x800005e6]:addi a3, a3, 4076<br> [0x800005ea]:c.andi a3, 60<br> [0x800005ec]:sub ra, ra, a3<br>     |
|  22|[0x800022b8]<br>0x0000000000000009|- rs1 : x21<br>                      |[0x800005fc]:c.jalr s5<br> [0x80000604]:xori ra, ra, 3<br> [0x80000608]:auipc a3, 0<br> [0x8000060c]:addi a3, a3, 4076<br> [0x80000610]:c.andi a3, 60<br> [0x80000612]:sub ra, ra, a3<br>     |
|  23|[0x800022c0]<br>0x000000000000000F|- rs1 : x30<br>                      |[0x80000622]:c.jalr t5<br> [0x8000062a]:xori ra, ra, 3<br> [0x8000062e]:auipc a3, 0<br> [0x80000632]:addi a3, a3, 4076<br> [0x80000636]:c.andi a3, 60<br> [0x80000638]:sub ra, ra, a3<br>     |
|  24|[0x800022c8]<br>0x0000000000000009|- rs1 : x6<br>                       |[0x80000648]:c.jalr t1<br> [0x80000650]:xori ra, ra, 3<br> [0x80000654]:auipc a3, 0<br> [0x80000658]:addi a3, a3, 4076<br> [0x8000065c]:c.andi a3, 60<br> [0x8000065e]:sub ra, ra, a3<br>     |
|  25|[0x800022d0]<br>0x000000000000000F|- rs1 : x26<br>                      |[0x8000066e]:c.jalr s10<br> [0x80000676]:xori ra, ra, 3<br> [0x8000067a]:auipc a3, 0<br> [0x8000067e]:addi a3, a3, 4076<br> [0x80000682]:c.andi a3, 60<br> [0x80000684]:sub ra, ra, a3<br>    |
|  26|[0x800022d8]<br>0x0000000000000009|- rs1 : x14<br>                      |[0x80000694]:c.jalr a4<br> [0x8000069c]:xori ra, ra, 3<br> [0x800006a0]:auipc a3, 0<br> [0x800006a4]:addi a3, a3, 4076<br> [0x800006a8]:c.andi a3, 60<br> [0x800006aa]:sub ra, ra, a3<br>     |
|  27|[0x800022e0]<br>0x000000000000000F|- rs1 : x20<br>                      |[0x800006ba]:c.jalr s4<br> [0x800006c2]:xori ra, ra, 3<br> [0x800006c6]:auipc a3, 0<br> [0x800006ca]:addi a3, a3, 4076<br> [0x800006ce]:c.andi a3, 60<br> [0x800006d0]:sub ra, ra, a3<br>     |
|  28|[0x800022e8]<br>0x0000000000000009|- rs1 : x19<br>                      |[0x800006e0]:c.jalr s3<br> [0x800006e8]:xori ra, ra, 3<br> [0x800006ec]:auipc gp, 0<br> [0x800006f0]:addi gp, gp, 4076<br> [0x800006f4]:andi gp, gp, 4092<br> [0x800006f8]:sub ra, ra, gp<br> |
|  29|[0x800022f0]<br>0x0000000000000009|- rs1 : x23<br>                      |[0x80000710]:c.jalr s7<br> [0x80000718]:xori ra, ra, 3<br> [0x8000071c]:auipc gp, 0<br> [0x80000720]:addi gp, gp, 4076<br> [0x80000724]:andi gp, gp, 4092<br> [0x80000728]:sub ra, ra, gp<br> |
|  30|[0x800022f8]<br>0x000000000000000F|- rs1 : x13<br>                      |[0x80000736]:c.jalr a3<br> [0x8000073e]:xori ra, ra, 3<br> [0x80000742]:auipc gp, 0<br> [0x80000746]:addi gp, gp, 4076<br> [0x8000074a]:andi gp, gp, 4092<br> [0x8000074e]:sub ra, ra, gp<br> |
|  31|[0x80002300]<br>0x0000000000000009|- rs1 : x10<br>                      |[0x8000075c]:c.jalr a0<br> [0x80000764]:xori ra, ra, 3<br> [0x80000768]:auipc gp, 0<br> [0x8000076c]:addi gp, gp, 4076<br> [0x80000770]:andi gp, gp, 4092<br> [0x80000774]:sub ra, ra, gp<br> |
