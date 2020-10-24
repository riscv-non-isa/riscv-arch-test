
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x80000390', '0x80001430')]      |
| SIG_REGION  | [('0x80003210', '0x80003730')]      |
| COV_LABELS  | ('sh-align',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/sh-align-01.S/sh-align-01.S    |

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
