
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001de2')]      |
| SIG_REGION                | [('0x80003204', '0x80003248', '17 words')]      |
| COV_LABELS                | cjal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjal-01.S/cjal-01.S    |
| Total Number of coverpoints| 20     |
| Total Coverpoints Hit     | 20      |
| Total Signature Updates   | 17      |
| STAT1                     | 17      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```

```

## Details of STAT5:



## Details of STAT1:

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
- The order in the table is based on the order of signatures occuring in the
  test. These need not necessarily be in increasing or decreasing order of the
  address in the signature region.

|s.no|        signature         |                        coverpoints                        |                                                                                                                             code                                                                                                                             |
|---:|--------------------------|-----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0x0000000F|- opcode : c.jal<br> - imm_val > 0<br> - imm_val == 64<br> |[0x8000010a]:c.jal 64<br> [0x8000014a]:xori ra, ra, 3<br> [0x8000014e]:auipc gp, 0<br> [0x80000152]:addi gp, gp, 4018<br> [0x80000156]:andi gp, gp, 4092<br> [0x8000015a]:sub ra, ra, gp<br> [0x8000015e]:c.swsp ra, 0<br>                                    |
|   2|[0x80003208]<br>0x00000087|- imm_val < 0<br> - imm_val == -130<br>                    |[0x800001e4]:c.jal 3966<br> [0x80000162]:xori ra, ra, 1<br> [0x80000166]:jal zero, 140<br> [0x800001f2]:auipc gp, 0<br> [0x800001f6]:addi gp, gp, 3950<br> [0x800001fa]:andi gp, gp, 4092<br> [0x800001fe]:sub ra, ra, gp<br> [0x80000202]:c.swsp ra, 1<br>   |
|   3|[0x8000320c]<br>0x0000000F|- imm_val == 16<br>                                        |[0x8000020e]:c.jal 16<br> [0x8000021e]:xori ra, ra, 3<br> [0x80000222]:auipc gp, 0<br> [0x80000226]:addi gp, gp, 4066<br> [0x8000022a]:andi gp, gp, 4092<br> [0x8000022e]:sub ra, ra, gp<br> [0x80000232]:c.swsp ra, 2<br>                                    |
|   4|[0x80003210]<br>0x0000000F|- imm_val == 32<br>                                        |[0x8000023e]:c.jal 32<br> [0x8000025e]:xori ra, ra, 3<br> [0x80000262]:auipc gp, 0<br> [0x80000266]:addi gp, gp, 4050<br> [0x8000026a]:andi gp, gp, 4092<br> [0x8000026e]:sub ra, ra, gp<br> [0x80000272]:c.swsp ra, 3<br>                                    |
|   5|[0x80003214]<br>0x0000000F|- imm_val == 128<br>                                       |[0x8000027e]:c.jal 128<br> [0x800002fe]:xori ra, ra, 3<br> [0x80000302]:auipc gp, 0<br> [0x80000306]:addi gp, gp, 3954<br> [0x8000030a]:andi gp, gp, 4092<br> [0x8000030e]:sub ra, ra, gp<br> [0x80000312]:c.swsp ra, 4<br>                                   |
|   6|[0x80003218]<br>0x0000000F|- imm_val == 256<br>                                       |[0x8000031e]:c.jal 256<br> [0x8000041e]:xori ra, ra, 3<br> [0x80000422]:auipc gp, 0<br> [0x80000426]:addi gp, gp, 3826<br> [0x8000042a]:andi gp, gp, 4092<br> [0x8000042e]:sub ra, ra, gp<br> [0x80000432]:c.swsp ra, 5<br>                                   |
|   7|[0x8000321c]<br>0x0000000F|- imm_val == 512<br>                                       |[0x8000043e]:c.jal 512<br> [0x8000063e]:xori ra, ra, 3<br> [0x80000642]:auipc gp, 0<br> [0x80000646]:addi gp, gp, 3570<br> [0x8000064a]:andi gp, gp, 4092<br> [0x8000064e]:sub ra, ra, gp<br> [0x80000652]:c.swsp ra, 6<br>                                   |
|   8|[0x80003220]<br>0x0000000F|- imm_val == 1024<br>                                      |[0x8000065e]:c.jal 1024<br> [0x80000a5e]:xori ra, ra, 3<br> [0x80000a62]:auipc gp, 0<br> [0x80000a66]:addi gp, gp, 3058<br> [0x80000a6a]:andi gp, gp, 4092<br> [0x80000a6e]:sub ra, ra, gp<br> [0x80000a72]:c.swsp ra, 7<br>                                  |
|   9|[0x80003224]<br>0x0000000F|- imm_val == -10<br>                                       |[0x80000a80]:c.jal 4086<br> [0x80000a76]:xori ra, ra, 1<br> [0x80000a7a]:jal zero, 20<br> [0x80000a8e]:auipc gp, 0<br> [0x80000a92]:addi gp, gp, 4070<br> [0x80000a96]:andi gp, gp, 4092<br> [0x80000a9a]:sub ra, ra, gp<br> [0x80000a9e]:c.swsp ra, 8<br>    |
|  10|[0x80003228]<br>0x00000017|- imm_val == -18<br>                                       |[0x80000ab4]:c.jal 4078<br> [0x80000aa2]:xori ra, ra, 1<br> [0x80000aa6]:jal zero, 28<br> [0x80000ac2]:auipc gp, 0<br> [0x80000ac6]:addi gp, gp, 4062<br> [0x80000aca]:andi gp, gp, 4092<br> [0x80000ace]:sub ra, ra, gp<br> [0x80000ad2]:c.swsp ra, 9<br>    |
|  11|[0x8000322c]<br>0x00000407|- imm_val == -1026<br>                                     |[0x80000ed8]:c.jal 3070<br> [0x80000ad6]:xori ra, ra, 1<br> [0x80000ada]:jal zero, 1036<br> [0x80000ee6]:auipc gp, 0<br> [0x80000eea]:addi gp, gp, 3054<br> [0x80000eee]:andi gp, gp, 4092<br> [0x80000ef2]:sub ra, ra, gp<br> [0x80000ef6]:c.swsp ra, 10<br> |
|  12|[0x80003230]<br>0x0000055B|- imm_val == -1366<br>                                     |[0x80001450]:c.jal 2730<br> [0x80000efa]:xori ra, ra, 1<br> [0x80000efe]:jal zero, 1376<br> [0x8000145e]:auipc gp, 0<br> [0x80001462]:addi gp, gp, 2714<br> [0x80001466]:andi gp, gp, 4092<br> [0x8000146a]:sub ra, ra, gp<br> [0x8000146e]:c.swsp ra, 11<br> |
|  13|[0x80003234]<br>0x0000000F|- imm_val == 1364<br>                                      |[0x8000147a]:c.jal 1364<br> [0x800019ce]:xori ra, ra, 3<br> [0x800019d2]:auipc gp, 0<br> [0x800019d6]:addi gp, gp, 2718<br> [0x800019da]:andi gp, gp, 4092<br> [0x800019de]:sub ra, ra, gp<br> [0x800019e2]:c.swsp ra, 12<br>                                 |
|  14|[0x80003238]<br>0x00000027|- imm_val == -34<br>                                       |[0x80001a08]:c.jal 4062<br> [0x800019e6]:xori ra, ra, 1<br> [0x800019ea]:jal zero, 44<br> [0x80001a16]:auipc gp, 0<br> [0x80001a1a]:addi gp, gp, 4046<br> [0x80001a1e]:andi gp, gp, 4092<br> [0x80001a22]:sub ra, ra, gp<br> [0x80001a26]:c.swsp ra, 13<br>   |
|  15|[0x8000323c]<br>0x00000047|- imm_val == -66<br>                                       |[0x80001a6c]:c.jal 4030<br> [0x80001a2a]:xori ra, ra, 1<br> [0x80001a2e]:jal zero, 76<br> [0x80001a7a]:auipc gp, 0<br> [0x80001a7e]:addi gp, gp, 4014<br> [0x80001a82]:andi gp, gp, 4092<br> [0x80001a86]:sub ra, ra, gp<br> [0x80001a8a]:c.swsp ra, 14<br>   |
|  16|[0x80003240]<br>0x00000107|- imm_val == -258<br>                                      |[0x80001b90]:c.jal 3838<br> [0x80001a8e]:xori ra, ra, 1<br> [0x80001a92]:jal zero, 268<br> [0x80001b9e]:auipc gp, 0<br> [0x80001ba2]:addi gp, gp, 3822<br> [0x80001ba6]:andi gp, gp, 4092<br> [0x80001baa]:sub ra, ra, gp<br> [0x80001bae]:c.swsp ra, 15<br>  |
|  17|[0x80003244]<br>0x00000207|- imm_val == -514<br>                                      |[0x80001db4]:c.jal 3582<br> [0x80001bb2]:xori ra, ra, 1<br> [0x80001bb6]:jal zero, 524<br> [0x80001dc2]:auipc gp, 0<br> [0x80001dc6]:addi gp, gp, 3566<br> [0x80001dca]:andi gp, gp, 4092<br> [0x80001dce]:sub ra, ra, gp<br> [0x80001dd2]:c.swsp ra, 16<br>  |
