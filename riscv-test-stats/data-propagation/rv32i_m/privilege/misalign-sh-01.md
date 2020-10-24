
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x80000104', '0x80000130')]      |
| SIG_REGION  | [('0x80002210', '0x80002394')]      |
| COV_LABELS  | ('misalign-sh', 'misalign-sh')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-sh-01.S/misalign-sh-01.S    |

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

|signature|coverpoints|code|
|---------|-----------|----|
