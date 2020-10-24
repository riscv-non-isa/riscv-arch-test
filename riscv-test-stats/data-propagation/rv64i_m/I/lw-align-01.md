
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x80000390', '0x800006d0')]      |
| SIG_REGION  | [('0x80002210', '0x80002420')]      |
| COV_LABELS  | ('lw-align',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/lw-align-01.S/lw-align-01.S    |

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

<style>
table th:first-of-type {
    width: 5%;
}
table th:nth-of-type(2) {
    width: 40%;
}
table th:nth-of-type(3) {
    width: 55%;
}
</style>

|            signature             |                                               coverpoints                                                |                                                   code                                                    |
|----------------------------------|----------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0xFFFFFFFFBABECAFE|- rs1 : 29<br> - rd : 26<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x800003a0]:lw s10, 256(t4)<br> [0x800003a4]:addi zero, zero, 0<br> [0x800003a8]:addi zero, zero, 0<br>   |
|[0x80002218]<br>0xFFFFFFFFBABECAFE|- rs1 : 22<br> - rd : 22<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val < 0<br> |[0x800003b8]:lw s6, 4089(s6)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br>   |
|[0x80002220]<br>0xFFFFFFFFBABECAFE|- rs1 : 5<br> - rd : 29<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                    |[0x800003d0]:lw t4, 4090(t0)<br> [0x800003d4]:addi zero, zero, 0<br> [0x800003d8]:addi zero, zero, 0<br>   |
|[0x80002228]<br>0xFFFFFFFFBABECAFE|- rs1 : 8<br> - rd : 23<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                    |[0x800003e8]:lw s7, 4095(fp)<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:addi zero, zero, 0<br>   |
|[0x80002230]<br>0xFFFFFFFFBABECAFE|- rs1 : 16<br> - rd : 1<br> - imm_val == 0<br>                                                            |[0x80000400]:lw ra, 0(a6)<br> [0x80000404]:addi zero, zero, 0<br> [0x80000408]:addi zero, zero, 0<br>      |
|[0x80002238]<br>0xFFFFFFFFBABECAFE|- rs1 : 27<br> - rd : 31<br>                                                                              |[0x80000418]:lw t6, 2048(s11)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br>  |
|[0x80002240]<br>0xFFFFFFFFBABECAFE|- rs1 : 2<br> - rd : 4<br>                                                                                |[0x80000430]:lw tp, 2048(sp)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi zero, zero, 0<br>   |
|[0x80002248]<br>0xFFFFFFFFBABECAFE|- rs1 : 7<br> - rd : 5<br>                                                                                |[0x80000448]:lw t0, 2048(t2)<br> [0x8000044c]:addi zero, zero, 0<br> [0x80000450]:addi zero, zero, 0<br>   |
|[0x80002250]<br>0xFFFFFFFFBABECAFE|- rs1 : 3<br> - rd : 25<br>                                                                               |[0x80000460]:lw s9, 2048(gp)<br> [0x80000464]:addi zero, zero, 0<br> [0x80000468]:addi zero, zero, 0<br>   |
|[0x80002258]<br>0xFFFFFFFFBABECAFE|- rs1 : 20<br> - rd : 24<br>                                                                              |[0x80000478]:lw s8, 2048(s4)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br>   |
|[0x80002260]<br>0xFFFFFFFFBABECAFE|- rs1 : 6<br> - rd : 2<br>                                                                                |[0x80000490]:lw sp, 2048(t1)<br> [0x80000494]:addi zero, zero, 0<br> [0x80000498]:addi zero, zero, 0<br>   |
|[0x80002268]<br>0xFFFFFFFFBABECAFE|- rs1 : 31<br> - rd : 28<br>                                                                              |[0x800004a8]:lw t3, 2048(t6)<br> [0x800004ac]:addi zero, zero, 0<br> [0x800004b0]:addi zero, zero, 0<br>   |
|[0x80002270]<br>0xFFFFFFFFBABECAFE|- rs1 : 1<br> - rd : 27<br>                                                                               |[0x800004c0]:lw s11, 2048(ra)<br> [0x800004c4]:addi zero, zero, 0<br> [0x800004c8]:addi zero, zero, 0<br>  |
|[0x80002278]<br>0xFFFFFFFFBABECAFE|- rs1 : 18<br> - rd : 6<br>                                                                               |[0x800004d8]:lw t1, 2048(s2)<br> [0x800004dc]:addi zero, zero, 0<br> [0x800004e0]:addi zero, zero, 0<br>   |
|[0x80002280]<br>0xFFFFFFFFBABECAFE|- rs1 : 26<br> - rd : 9<br>                                                                               |[0x800004f0]:lw s1, 2048(s10)<br> [0x800004f4]:addi zero, zero, 0<br> [0x800004f8]:addi zero, zero, 0<br>  |
|[0x80002288]<br>0xFFFFFFFFBABECAFE|- rs1 : 21<br> - rd : 8<br>                                                                               |[0x80000508]:lw fp, 2048(s5)<br> [0x8000050c]:addi zero, zero, 0<br> [0x80000510]:addi zero, zero, 0<br>   |
|[0x80002290]<br>0xFFFFFFFFBABECAFE|- rs1 : 11<br> - rd : 21<br>                                                                              |[0x80000520]:lw s5, 2048(a1)<br> [0x80000524]:addi zero, zero, 0<br> [0x80000528]:addi zero, zero, 0<br>   |
|[0x80002298]<br>0xFFFFFFFFBABECAFE|- rs1 : 19<br> - rd : 18<br>                                                                              |[0x80000538]:lw s2, 2048(s3)<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:addi zero, zero, 0<br>   |
|[0x800022a0]<br>0xFFFFFFFFBABECAFE|- rs1 : 10<br> - rd : 13<br>                                                                              |[0x80000550]:lw a3, 2048(a0)<br> [0x80000554]:addi zero, zero, 0<br> [0x80000558]:addi zero, zero, 0<br>   |
|[0x800022a8]<br>0xFFFFFFFFBABECAFE|- rs1 : 14<br> - rd : 20<br>                                                                              |[0x80000568]:lw s4, 2048(a4)<br> [0x8000056c]:addi zero, zero, 0<br> [0x80000570]:addi zero, zero, 0<br>   |
|[0x800022b0]<br>0x0000000000000000|- rs1 : 17<br> - rd : 0<br>                                                                               |[0x80000580]:lw zero, 2048(a7)<br> [0x80000584]:addi zero, zero, 0<br> [0x80000588]:addi zero, zero, 0<br> |
|[0x800022b8]<br>0xFFFFFFFFBABECAFE|- rs1 : 30<br> - rd : 12<br>                                                                              |[0x800005a0]:lw a2, 2048(t5)<br> [0x800005a4]:addi zero, zero, 0<br> [0x800005a8]:addi zero, zero, 0<br>   |
|[0x800022c0]<br>0xFFFFFFFFBABECAFE|- rs1 : 15<br> - rd : 16<br>                                                                              |[0x800005b8]:lw a6, 2048(a5)<br> [0x800005bc]:addi zero, zero, 0<br> [0x800005c0]:addi zero, zero, 0<br>   |
|[0x800022c8]<br>0xFFFFFFFFBABECAFE|- rs1 : 4<br> - rd : 7<br>                                                                                |[0x800005d0]:lw t2, 2048(tp)<br> [0x800005d4]:addi zero, zero, 0<br> [0x800005d8]:addi zero, zero, 0<br>   |
|[0x800022d0]<br>0xFFFFFFFFBABECAFE|- rs1 : 25<br> - rd : 19<br>                                                                              |[0x800005e8]:lw s3, 2048(s9)<br> [0x800005ec]:addi zero, zero, 0<br> [0x800005f0]:addi zero, zero, 0<br>   |
|[0x800022d8]<br>0xFFFFFFFFBABECAFE|- rs1 : 23<br> - rd : 17<br>                                                                              |[0x80000600]:lw a7, 2048(s7)<br> [0x80000604]:addi zero, zero, 0<br> [0x80000608]:addi zero, zero, 0<br>   |
|[0x800022e0]<br>0xFFFFFFFFBABECAFE|- rs1 : 28<br> - rd : 14<br>                                                                              |[0x80000618]:lw a4, 2048(t3)<br> [0x8000061c]:addi zero, zero, 0<br> [0x80000620]:addi zero, zero, 0<br>   |
|[0x800022e8]<br>0xFFFFFFFFBABECAFE|- rs1 : 24<br> - rd : 10<br>                                                                              |[0x80000630]:lw a0, 2048(s8)<br> [0x80000634]:addi zero, zero, 0<br> [0x80000638]:addi zero, zero, 0<br>   |
|[0x800022f0]<br>0xFFFFFFFFBABECAFE|- rs1 : 12<br> - rd : 15<br>                                                                              |[0x80000648]:lw a5, 2048(a2)<br> [0x8000064c]:addi zero, zero, 0<br> [0x80000650]:addi zero, zero, 0<br>   |
|[0x800022f8]<br>0xFFFFFFFFBABECAFE|- rs1 : 9<br> - rd : 3<br>                                                                                |[0x80000660]:lw gp, 2048(s1)<br> [0x80000664]:addi zero, zero, 0<br> [0x80000668]:addi zero, zero, 0<br>   |
|[0x80002300]<br>0xFFFFFFFFBABECAFE|- rs1 : 13<br> - rd : 30<br>                                                                              |[0x80000678]:lw t5, 2048(a3)<br> [0x8000067c]:addi zero, zero, 0<br> [0x80000680]:addi zero, zero, 0<br>   |
|[0x80002308]<br>0xFFFFFFFFBABECAFE|- rd : 11<br>                                                                                             |[0x80000690]:lw a1, 2048(sp)<br> [0x80000694]:addi zero, zero, 0<br> [0x80000698]:addi zero, zero, 0<br>   |
