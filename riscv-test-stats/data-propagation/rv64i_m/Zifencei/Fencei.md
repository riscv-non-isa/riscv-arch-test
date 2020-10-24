
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800003f0')]      |
| SIG_REGION                | [('0x80002210', '0x80002320')]      |
| COV_LABELS                | ('fencei',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/Fencei.S/Fencei.S    |
| Total Unique Coverpoints  | 1      |
| Total Signature Updates   | 2      |
| Ops w/o unique coverpoints | 0      |
| Sig Updates w/o Coverpoints | 3    |

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

|s.no|            signature             |      coverpoints      |                          code                           |
|---:|----------------------------------|-----------------------|---------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000030|- opcode : fence.i<br> |[0x800003c4]:fence.i<br> [0x800003c8]:add gp, sp, ra<br> |
