
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000100', '0x80000120')]      |
| SIG_REGION                | [('0x80002210', '0x800022a8')]      |
| COV_LABELS                | ('cebreak',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cebreak-01.S/cebreak-01.S    |
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
