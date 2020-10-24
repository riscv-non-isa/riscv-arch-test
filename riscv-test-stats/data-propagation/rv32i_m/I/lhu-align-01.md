
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f8', '0x80000440')]      |
| SIG_REGION  | [('0x80002210', '0x80002318')]      |
| COV_LABELS  | ('lhu-align',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/lhu-align-01.S/lhu-align-01.S    |

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

|        signature         |                                                        coverpoints                                                         |                                                    code                                                    |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0x0000CAFE|- opcode : lhu<br> - rs1 : 11<br> - rd : 3<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000108]:lhu gp, 16(a1)<br> [0x8000010c]:addi zero, zero, 0<br> [0x80000110]:addi zero, zero, 0<br>     |
|[0x80002214]<br>0x0000CAFE|- rs1 : 14<br> - rd : 14<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                     |[0x80000120]:lhu a4, 1365(a4)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br>   |
|[0x80002218]<br>0x0000CAFE|- rs1 : 19<br> - rd : 13<br> - ea_align == 0 and (imm_val % 4) == 2<br> - imm_val < 0<br>                                   |[0x80000138]:lhu a3, 4094(s3)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br>   |
|[0x8000221c]<br>0x0000CAFE|- rs1 : 16<br> - rd : 9<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                      |[0x80000150]:lhu s1, 4031(a6)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br>   |
|[0x80002220]<br>0x0000BABE|- rs1 : 13<br> - rd : 8<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                      |[0x80000168]:lhu fp, 256(a3)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br>    |
|[0x80002224]<br>0x0000CAFE|- rs1 : 17<br> - rd : 4<br> - imm_val == 0<br>                                                                              |[0x80000180]:lhu tp, 0(a7)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br>      |
|[0x80002228]<br>0x0000BABE|- rs1 : 23<br> - rd : 21<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                     |[0x80000198]:lhu s5, 1365(s7)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br>   |
|[0x8000222c]<br>0x0000BABE|- rs1 : 15<br> - rd : 20<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                     |[0x800001b0]:lhu s4, 2730(a5)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br>   |
|[0x80002230]<br>0x0000BABE|- rs1 : 21<br> - rd : 26<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                     |[0x800001c8]:lhu s10, 7(s5)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br>     |
|[0x80002234]<br>0x0000CAFE|- rs1 : 22<br> - rd : 1<br>                                                                                                 |[0x800001e0]:lhu ra, 2048(s6)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br>   |
|[0x80002238]<br>0x0000CAFE|- rs1 : 12<br> - rd : 23<br>                                                                                                |[0x800001f8]:lhu s7, 2048(a2)<br> [0x800001fc]:addi zero, zero, 0<br> [0x80000200]:addi zero, zero, 0<br>   |
|[0x8000223c]<br>0x0000CAFE|- rs1 : 1<br> - rd : 30<br>                                                                                                 |[0x80000210]:lhu t5, 2048(ra)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br>   |
|[0x80002240]<br>0x0000CAFE|- rs1 : 5<br> - rd : 31<br>                                                                                                 |[0x80000228]:lhu t6, 2048(t0)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br>   |
|[0x80002244]<br>0x0000CAFE|- rs1 : 28<br> - rd : 16<br>                                                                                                |[0x80000240]:lhu a6, 2048(t3)<br> [0x80000244]:addi zero, zero, 0<br> [0x80000248]:addi zero, zero, 0<br>   |
|[0x80002248]<br>0x0000CAFE|- rs1 : 29<br> - rd : 28<br>                                                                                                |[0x80000258]:lhu t3, 2048(t4)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br>   |
|[0x8000224c]<br>0x0000CAFE|- rs1 : 4<br> - rd : 24<br>                                                                                                 |[0x80000270]:lhu s8, 2048(tp)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br>   |
|[0x80002250]<br>0x0000CAFE|- rs1 : 25<br> - rd : 22<br>                                                                                                |[0x80000288]:lhu s6, 2048(s9)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br>   |
|[0x80002254]<br>0x0000CAFE|- rs1 : 10<br> - rd : 19<br>                                                                                                |[0x800002a0]:lhu s3, 2048(a0)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br>   |
|[0x80002258]<br>0x0000CAFE|- rs1 : 7<br> - rd : 29<br>                                                                                                 |[0x800002b8]:lhu t4, 2048(t2)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br>   |
|[0x8000225c]<br>0x0000CAFE|- rs1 : 27<br> - rd : 11<br>                                                                                                |[0x800002d0]:lhu a1, 2048(s11)<br> [0x800002d4]:addi zero, zero, 0<br> [0x800002d8]:addi zero, zero, 0<br>  |
|[0x80002260]<br>0x0000CAFE|- rs1 : 8<br> - rd : 7<br>                                                                                                  |[0x800002f0]:lhu t2, 2048(fp)<br> [0x800002f4]:addi zero, zero, 0<br> [0x800002f8]:addi zero, zero, 0<br>   |
|[0x80002264]<br>0x0000CAFE|- rs1 : 30<br> - rd : 6<br>                                                                                                 |[0x80000308]:lhu t1, 2048(t5)<br> [0x8000030c]:addi zero, zero, 0<br> [0x80000310]:addi zero, zero, 0<br>   |
|[0x80002268]<br>0x0000CAFE|- rs1 : 2<br> - rd : 12<br>                                                                                                 |[0x80000320]:lhu a2, 2048(sp)<br> [0x80000324]:addi zero, zero, 0<br> [0x80000328]:addi zero, zero, 0<br>   |
|[0x8000226c]<br>0x0000CAFE|- rs1 : 26<br> - rd : 2<br>                                                                                                 |[0x80000338]:lhu sp, 2048(s10)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br>  |
|[0x80002270]<br>0x0000CAFE|- rs1 : 20<br> - rd : 17<br>                                                                                                |[0x80000350]:lhu a7, 2048(s4)<br> [0x80000354]:addi zero, zero, 0<br> [0x80000358]:addi zero, zero, 0<br>   |
|[0x80002274]<br>0x0000CAFE|- rs1 : 24<br> - rd : 18<br>                                                                                                |[0x80000368]:lhu s2, 2048(s8)<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:addi zero, zero, 0<br>   |
|[0x80002278]<br>0x0000CAFE|- rs1 : 3<br> - rd : 10<br>                                                                                                 |[0x80000380]:lhu a0, 2048(gp)<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:addi zero, zero, 0<br>   |
|[0x8000227c]<br>0x0000CAFE|- rs1 : 6<br> - rd : 25<br>                                                                                                 |[0x80000398]:lhu s9, 2048(t1)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br>   |
|[0x80002280]<br>0x0000CAFE|- rs1 : 9<br> - rd : 27<br>                                                                                                 |[0x800003b0]:lhu s11, 2048(s1)<br> [0x800003b4]:addi zero, zero, 0<br> [0x800003b8]:addi zero, zero, 0<br>  |
|[0x80002284]<br>0x0000CAFE|- rs1 : 18<br> - rd : 15<br>                                                                                                |[0x800003c8]:lhu a5, 2048(s2)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br>   |
|[0x80002288]<br>0x00000000|- rs1 : 31<br> - rd : 0<br>                                                                                                 |[0x800003e0]:lhu zero, 2048(t6)<br> [0x800003e4]:addi zero, zero, 0<br> [0x800003e8]:addi zero, zero, 0<br> |
|[0x8000228c]<br>0x0000CAFE|- rd : 5<br>                                                                                                                |[0x800003f8]:lhu t0, 2048(t4)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br>   |
