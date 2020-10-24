
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x80001dd0')]      |
| SIG_REGION                | [('0x80003210', '0x800032d4')]      |
| COV_LABELS                | ('cjal',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjal-01.S/cjal-01.S    |
| Total Unique Coverpoints  | 0      |
| Total Signature Updates   | 0      |
| Ops w/o unique coverpoints | 0      |
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

|s.no|signature|coverpoints|code|
|----|---------|-----------|----|
