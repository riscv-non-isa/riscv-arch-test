
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x80000400')]      |
| SIG_REGION                | [('0x80002210', '0x80002528')]      |
| COV_LABELS                | ('misalign-sw', 'misalign-sw')      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-sw-01.S/misalign-sw-01.S    |
| Total Unique Coverpoints  | 3      |
| Total Signature Updates   | 4      |
| Ops w/o unique coverpoints | 0      |
| Sig Updates w/o Coverpoints | 1    |

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

|s.no|            signature             |             coverpoints              |                                                                                                                       code                                                                                                                       |
|---:|----------------------------------|--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x8000221a]<br>0xC000000000000000|- opcode : sw<br> - ea_align == 1<br> |[0x800003b4]:sw a1, 4095(a0)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addiw a1, zero, 4095<br> [0x800003c4]:slli a1, a1, 62<br> [0x800003c8]:addi a0, ra, 10<br> [0x800003cc]:addi sp, zero, 4088<br> [0x800003d0]:sub a0, a0, sp<br> |
|   2|[0x80002223]<br>0x0000000000010000|- ea_align == 2<br>                   |[0x800003d4]:sw a1, 4088(a0)<br> [0x800003dc]:addi zero, zero, 0<br> [0x800003e0]:lui a1, 16<br> [0x800003e4]:addi a0, ra, 19<br> [0x800003e8]:addi sp, zero, 4090<br> [0x800003ec]:sub a0, a0, sp<br>                                            |
