
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x8000039c', '0x80000450')]      |
| SIG_REGION  | [('0x80002210', '0x80002548')]      |
| COV_LABELS  | ('misalign-ld', 'misalign-ld')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-ld-01.S/misalign-ld-01.S    |

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

|            signature             |    coverpoints     |                                code                                 |
|----------------------------------|--------------------|---------------------------------------------------------------------|
|[0x80002210]<br>0x0000000000000000|- ea_align == 1<br> |[0x800003ac]:ld a1, 4086(a0)<br> [0x800003b4]:addi zero, zero, 0<br> |
|[0x80002218]<br>0x0000000000000000|- ea_align == 2<br> |[0x800003c4]:ld a1, 3967(a0)<br> [0x800003cc]:addi zero, zero, 0<br> |
|[0x80002220]<br>0x0000000000000000|- ea_align == 3<br> |[0x800003dc]:ld a1, 4089(a0)<br> [0x800003e4]:addi zero, zero, 0<br> |
|[0x80002228]<br>0x0000000000000000|- ea_align == 4<br> |[0x800003f4]:ld a1, 4093(a0)<br> [0x800003fc]:addi zero, zero, 0<br> |
|[0x80002230]<br>0x0000000000000000|- ea_align == 5<br> |[0x8000040c]:ld a1, 4086(a0)<br> [0x80000414]:addi zero, zero, 0<br> |
|[0x80002238]<br>0x0000000000000000|- ea_align == 6<br> |[0x80000424]:ld a1, 1023(a0)<br> [0x8000042c]:addi zero, zero, 0<br> |
|[0x80002240]<br>0x0000000000000000|- ea_align == 7<br> |[0x8000043c]:ld a1, 2730(a0)<br> [0x80000444]:addi zero, zero, 0<br> |
