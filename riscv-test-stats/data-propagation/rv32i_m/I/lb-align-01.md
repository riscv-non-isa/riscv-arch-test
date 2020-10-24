
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000440')]      |
| SIG_REGION                | [('0x80002210', '0x80002318')]      |
| COV_LABELS                | ('lb-align',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lb-align-01.S/lb-align-01.S    |
| Total Unique Coverpoints  | 85      |
| Total Signature Updates   | 32      |
| Ops w/o unique coverpoints | 2      |
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

|s.no|        signature         |                                                         coverpoints                                                          |                                                   code                                                   |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFE|- opcode : lb<br> - rs1 : x31<br> - rd : x15<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000108]:lb a5, 512(t6)<br> [0x8000010c]:addi zero, zero, 0<br> [0x80000110]:addi zero, zero, 0<br>   |
|   2|[0x80002214]<br>0xFFFFFFFE|- rs1 : x8<br> - rd : x8<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                       |[0x80000120]:lb fp, 5(fp)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br>     |
|   3|[0x80002218]<br>0xFFFFFFFE|- rs1 : x3<br> - rd : x25<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                      |[0x80000138]:lb s9, 6(gp)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br>     |
|   4|[0x8000221c]<br>0xFFFFFFFE|- rs1 : x6<br> - rd : x10<br> - ea_align == 0 and (imm_val % 4) == 3<br> - imm_val < 0<br>                                    |[0x80000150]:lb a0, 4063(t1)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br>  |
|   5|[0x80002220]<br>0xFFFFFFBE|- rs1 : x4<br> - rd : x18<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                      |[0x80000168]:lb s2, 4088(tp)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br>  |
|   6|[0x80002224]<br>0xFFFFFFBE|- rs1 : x16<br> - rd : x14<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                     |[0x80000180]:lb a4, 9(a6)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br>     |
|   7|[0x80002228]<br>0xFFFFFFBE|- rs1 : x28<br> - rd : x21<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                     |[0x80000198]:lb s5, 4086(t3)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br>  |
|   8|[0x8000222c]<br>0xFFFFFFBE|- rs1 : x7<br> - rd : x31<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                      |[0x800001b0]:lb t6, 1023(t2)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br>  |
|   9|[0x80002230]<br>0xFFFFFFCA|- rs1 : x25<br> - rd : x7<br> - ea_align == 1 and (imm_val % 4) == 0<br>                                                      |[0x800001c8]:lb t2, 128(s9)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br>   |
|  10|[0x80002234]<br>0xFFFFFFCA|- rs1 : x24<br> - rd : x16<br> - ea_align == 1 and (imm_val % 4) == 1<br>                                                     |[0x800001e0]:lb a6, 9(s8)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x10<br> - rd : x0<br> - imm_val == 0<br>                                                                              |[0x800001f8]:lb zero, 0(a0)<br> [0x800001fc]:addi zero, zero, 0<br> [0x80000200]:addi zero, zero, 0<br>   |
|  12|[0x8000223c]<br>0xFFFFFFCA|- rs1 : x14<br> - rd : x19<br> - ea_align == 1 and (imm_val % 4) == 2<br>                                                     |[0x80000210]:lb s3, 4090(a4)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br>  |
|  13|[0x80002240]<br>0xFFFFFFCA|- rs1 : x15<br> - rd : x27<br> - ea_align == 1 and (imm_val % 4) == 3<br>                                                     |[0x80000228]:lb s11, 4087(a5)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> |
|  14|[0x80002244]<br>0xFFFFFFBA|- rs1 : x5<br> - rd : x12<br> - ea_align == 3 and (imm_val % 4) == 0<br>                                                      |[0x80000240]:lb a2, 256(t0)<br> [0x80000244]:addi zero, zero, 0<br> [0x80000248]:addi zero, zero, 0<br>   |
|  15|[0x80002248]<br>0xFFFFFFBA|- rs1 : x21<br> - rd : x4<br> - ea_align == 3 and (imm_val % 4) == 1<br>                                                      |[0x80000258]:lb tp, 4093(s5)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br>  |
|  16|[0x8000224c]<br>0xFFFFFFBA|- rs1 : x9<br> - rd : x6<br> - ea_align == 3 and (imm_val % 4) == 2<br>                                                       |[0x80000270]:lb t1, 6(s1)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br>     |
|  17|[0x80002250]<br>0xFFFFFFBA|- rs1 : x23<br> - rd : x1<br> - ea_align == 3 and (imm_val % 4) == 3<br>                                                      |[0x80000288]:lb ra, 2047(s7)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br>  |
|  18|[0x80002254]<br>0xFFFFFFFE|- rs1 : x2<br> - rd : x5<br>                                                                                                  |[0x800002a0]:lb t0, 2048(sp)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br>  |
|  19|[0x80002258]<br>0xFFFFFFFE|- rs1 : x27<br> - rd : x20<br>                                                                                                |[0x800002b8]:lb s4, 2048(s11)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br> |
|  20|[0x8000225c]<br>0xFFFFFFFE|- rs1 : x20<br> - rd : x24<br>                                                                                                |[0x800002d0]:lb s8, 2048(s4)<br> [0x800002d4]:addi zero, zero, 0<br> [0x800002d8]:addi zero, zero, 0<br>  |
|  21|[0x80002260]<br>0xFFFFFFFE|- rs1 : x17<br> - rd : x13<br>                                                                                                |[0x800002e8]:lb a3, 2048(a7)<br> [0x800002ec]:addi zero, zero, 0<br> [0x800002f0]:addi zero, zero, 0<br>  |
|  22|[0x80002264]<br>0xFFFFFFFE|- rs1 : x26<br> - rd : x9<br>                                                                                                 |[0x80000300]:lb s1, 2048(s10)<br> [0x80000304]:addi zero, zero, 0<br> [0x80000308]:addi zero, zero, 0<br> |
|  23|[0x80002268]<br>0xFFFFFFFE|- rs1 : x11<br> - rd : x17<br>                                                                                                |[0x80000318]:lb a7, 2048(a1)<br> [0x8000031c]:addi zero, zero, 0<br> [0x80000320]:addi zero, zero, 0<br>  |
|  24|[0x8000226c]<br>0xFFFFFFFE|- rs1 : x30<br> - rd : x11<br>                                                                                                |[0x80000338]:lb a1, 2048(t5)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br>  |
|  25|[0x80002270]<br>0xFFFFFFFE|- rs1 : x1<br> - rd : x26<br>                                                                                                 |[0x80000350]:lb s10, 2048(ra)<br> [0x80000354]:addi zero, zero, 0<br> [0x80000358]:addi zero, zero, 0<br> |
|  26|[0x80002274]<br>0xFFFFFFFE|- rs1 : x29<br> - rd : x2<br>                                                                                                 |[0x80000368]:lb sp, 2048(t4)<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:addi zero, zero, 0<br>  |
|  27|[0x80002278]<br>0xFFFFFFFE|- rs1 : x22<br> - rd : x29<br>                                                                                                |[0x80000380]:lb t4, 2048(s6)<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:addi zero, zero, 0<br>  |
|  28|[0x8000227c]<br>0xFFFFFFFE|- rs1 : x19<br> - rd : x28<br>                                                                                                |[0x80000398]:lb t3, 2048(s3)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br>  |
|  29|[0x80002280]<br>0xFFFFFFFE|- rs1 : x12<br> - rd : x23<br>                                                                                                |[0x800003b0]:lb s7, 2048(a2)<br> [0x800003b4]:addi zero, zero, 0<br> [0x800003b8]:addi zero, zero, 0<br>  |
|  30|[0x80002284]<br>0xFFFFFFFE|- rs1 : x13<br> - rd : x22<br>                                                                                                |[0x800003c8]:lb s6, 2048(a3)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br>  |
|  31|[0x80002288]<br>0xFFFFFFFE|- rs1 : x18<br> - rd : x30<br>                                                                                                |[0x800003e0]:lb t5, 2048(s2)<br> [0x800003e4]:addi zero, zero, 0<br> [0x800003e8]:addi zero, zero, 0<br>  |
|  32|[0x8000228c]<br>0xFFFFFFFE|- rd : x3<br>                                                                                                                 |[0x800003f8]:lb gp, 2048(s7)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br>  |
