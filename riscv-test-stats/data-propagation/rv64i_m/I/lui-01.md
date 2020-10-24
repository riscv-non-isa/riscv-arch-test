
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x80000390', '0x800004b0')]      |
| SIG_REGION  | [('0x80002210', '0x80002418')]      |
| COV_LABELS  | ('lui',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/lui-01.S/lui-01.S    |

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

|            signature             |                coverpoints                |              code               |
|----------------------------------|-------------------------------------------|---------------------------------|
|[0x80002210]<br>0x0000000000000000|- rd : 31<br> - imm_val == 0<br>           |[0x80000398]:lui t6, 0<br>       |
|[0x80002218]<br>0x0000000000006000|- rd : 1<br> - imm_val > 0<br>             |[0x800003a0]:lui ra, 6<br>       |
|[0x80002220]<br>0xFFFFFFFFFFFFF000|- rd : 10<br> - imm_val == ((2**20)-1)<br> |[0x800003a8]:lui a0, 1048575<br> |
|[0x80002228]<br>0x0000000000000000|- rd : 8<br>                               |[0x800003b0]:lui fp, 0<br>       |
|[0x80002230]<br>0x0000000000000000|- rd : 15<br>                              |[0x800003b8]:lui a5, 0<br>       |
|[0x80002238]<br>0x0000000000000000|- rd : 12<br>                              |[0x800003c0]:lui a2, 0<br>       |
|[0x80002240]<br>0x0000000000000000|- rd : 11<br>                              |[0x800003c8]:lui a1, 0<br>       |
|[0x80002248]<br>0x0000000000000000|- rd : 21<br>                              |[0x800003d0]:lui s5, 0<br>       |
|[0x80002250]<br>0x0000000000000000|- rd : 0<br>                               |[0x800003d8]:lui zero, 0<br>     |
|[0x80002258]<br>0x0000000000000000|- rd : 4<br>                               |[0x800003e0]:lui tp, 0<br>       |
|[0x80002260]<br>0x0000000000000000|- rd : 27<br>                              |[0x800003e8]:lui s11, 0<br>      |
|[0x80002268]<br>0x0000000000000000|- rd : 6<br>                               |[0x800003f0]:lui t1, 0<br>       |
|[0x80002270]<br>0x0000000000000000|- rd : 28<br>                              |[0x800003f8]:lui t3, 0<br>       |
|[0x80002278]<br>0x0000000000000000|- rd : 23<br>                              |[0x80000400]:lui s7, 0<br>       |
|[0x80002280]<br>0x0000000000000000|- rd : 2<br>                               |[0x80000408]:lui sp, 0<br>       |
|[0x80002288]<br>0x0000000000000000|- rd : 14<br>                              |[0x80000410]:lui a4, 0<br>       |
|[0x80002290]<br>0x0000000000000000|- rd : 20<br>                              |[0x80000418]:lui s4, 0<br>       |
|[0x80002298]<br>0x0000000000000000|- rd : 19<br>                              |[0x80000420]:lui s3, 0<br>       |
|[0x800022a0]<br>0x0000000000000000|- rd : 18<br>                              |[0x80000428]:lui s2, 0<br>       |
|[0x800022a8]<br>0x0000000000000000|- rd : 17<br>                              |[0x80000430]:lui a7, 0<br>       |
|[0x800022b0]<br>0x0000000000000000|- rd : 3<br>                               |[0x80000438]:lui gp, 0<br>       |
|[0x800022b8]<br>0x0000000000000000|- rd : 13<br>                              |[0x80000440]:lui a3, 0<br>       |
|[0x800022c0]<br>0x0000000000000000|- rd : 5<br>                               |[0x80000448]:lui t0, 0<br>       |
|[0x800022c8]<br>0x0000000000000000|- rd : 29<br>                              |[0x80000450]:lui t4, 0<br>       |
|[0x800022d0]<br>0x0000000000000000|- rd : 16<br>                              |[0x80000458]:lui a6, 0<br>       |
|[0x800022d8]<br>0x0000000000000000|- rd : 24<br>                              |[0x80000460]:lui s8, 0<br>       |
|[0x800022e0]<br>0x0000000000000000|- rd : 7<br>                               |[0x80000468]:lui t2, 0<br>       |
|[0x800022e8]<br>0x0000000000000000|- rd : 22<br>                              |[0x80000470]:lui s6, 0<br>       |
|[0x800022f0]<br>0x0000000000000000|- rd : 9<br>                               |[0x80000478]:lui s1, 0<br>       |
|[0x800022f8]<br>0x0000000000000000|- rd : 25<br>                              |[0x80000488]:lui s9, 0<br>       |
|[0x80002300]<br>0x0000000000000000|- rd : 30<br>                              |[0x80000490]:lui t5, 0<br>       |
|[0x80002308]<br>0x0000000000000000|- rd : 26<br>                              |[0x80000498]:lui s10, 0<br>      |
