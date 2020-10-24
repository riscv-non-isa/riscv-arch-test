
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x8000039c', '0x80000480')]      |
| SIG_REGION  | [('0x80002210', '0x80002548')]      |
| COV_LABELS  | ('misalign-sd', 'misalign-sd')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-sd-01.S/misalign-sd-01.S    |

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

|            signature             |    coverpoints     |                                                                                                                      code                                                                                                                      |
|----------------------------------|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x8000221a]<br>0xFFFFFFFFFFFFF7FF|- ea_align == 1<br> |[0x800003b8]:sd a1, 3839(a0)<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:lui a1, 1048575<br> [0x800003c8]:addiw a1, a1, 2047<br> [0x800003cc]:addi a0, ra, 10<br> [0x800003d0]:addi sp, zero, 2047<br> [0x800003d4]:sub a0, a0, sp<br> |
|[0x80002223]<br>0xFFFFFFFFFFFFFFFF|- ea_align == 2<br> |[0x800003d8]:sd a1, 2047(a0)<br> [0x800003e0]:addi zero, zero, 0<br> [0x800003e4]:addi a1, zero, 4095<br> [0x800003e8]:addi a0, ra, 19<br> [0x800003ec]:addi sp, zero, 3967<br> [0x800003f0]:sub a0, a0, sp<br>                                 |
|[0x8000222c]<br>0xFFFFFFFFFFFFFEFF|- ea_align == 3<br> |[0x800003f4]:sd a1, 3967(a0)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi a1, zero, 3839<br> [0x80000404]:addi a0, ra, 28<br> [0x80000408]:addi sp, zero, 4079<br> [0x8000040c]:sub a0, a0, sp<br>                                 |
|[0x80002235]<br>0xFFFFFFFFFFFFFFFE|- ea_align == 4<br> |[0x80000410]:sd a1, 4079(a0)<br> [0x80000418]:addi zero, zero, 0<br> [0x8000041c]:addi a1, zero, 4094<br> [0x80000420]:addi a0, ra, 37<br> [0x80000424]:addi sp, zero, 6<br> [0x80000428]:sub a0, a0, sp<br>                                    |
|[0x8000223e]<br>0xFFFFFFFFFFFFFDFF|- ea_align == 5<br> |[0x8000042c]:sd a1, 6(a0)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi a1, zero, 3583<br> [0x8000043c]:addi a0, ra, 46<br> [0x80000440]:addi sp, zero, 8<br> [0x80000444]:sub a0, a0, sp<br>                                       |
|[0x80002247]<br>0x0200000000000000|- ea_align == 6<br> |[0x80000448]:sd a1, 8(a0)<br> [0x80000450]:addi zero, zero, 0<br> [0x80000454]:addiw a1, zero, 1<br> [0x80000458]:slli a1, a1, 57<br> [0x8000045c]:addi a0, ra, 55<br> [0x80000460]:addi sp, zero, 2047<br> [0x80000464]:sub a0, a0, sp<br>     |
