
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001e10')]      |
| SIG_REGION                | [('0x80003204', '0x8000324c', '18 words')]      |
| COV_LABELS                | cjal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjal-01.S/cjal-01.S    |
| Total Number of coverpoints| 20     |
| Total Coverpoints Hit     | 20      |
| Total Signature Updates   | 18      |
| STAT1                     | 18      |
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

|s.no|        signature         |                         coverpoints                         |                                                                                                                             code                                                                                                                             |
|---:|--------------------------|-------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0x0000000F|- opcode : c.jal<br> - imm_val > 0<br> - imm_val == 1364<br> |[0x8000010a]:c.jal 1364<br> [0x8000065e]:xori ra, ra, 3<br> [0x80000662]:auipc gp, 0<br> [0x80000666]:addi gp, gp, 2718<br> [0x8000066a]:andi gp, gp, 4092<br> [0x8000066e]:sub ra, ra, gp<br> [0x80000672]:c.swsp ra, 0<br>                                  |
|   2|[0x80003208]<br>0x00000013|- imm_val < 0<br>                                            |[0x80000684]:c.jal 4082<br> [0x80000676]:xori ra, ra, 1<br> [0x8000067a]:jal zero, 24<br> [0x80000692]:auipc gp, 0<br> [0x80000696]:addi gp, gp, 4066<br> [0x8000069a]:andi gp, gp, 4092<br> [0x8000069e]:sub ra, ra, gp<br> [0x800006a2]:c.swsp ra, 1<br>    |
|   3|[0x8000320c]<br>0x0000000F|- imm_val == 16<br>                                          |[0x800006ae]:c.jal 16<br> [0x800006be]:xori ra, ra, 3<br> [0x800006c2]:auipc gp, 0<br> [0x800006c6]:addi gp, gp, 4066<br> [0x800006ca]:andi gp, gp, 4092<br> [0x800006ce]:sub ra, ra, gp<br> [0x800006d2]:c.swsp ra, 2<br>                                    |
|   4|[0x80003210]<br>0x0000000F|- imm_val == 32<br>                                          |[0x800006de]:c.jal 32<br> [0x800006fe]:xori ra, ra, 3<br> [0x80000702]:auipc gp, 0<br> [0x80000706]:addi gp, gp, 4050<br> [0x8000070a]:andi gp, gp, 4092<br> [0x8000070e]:sub ra, ra, gp<br> [0x80000712]:c.swsp ra, 3<br>                                    |
|   5|[0x80003214]<br>0x0000000F|- imm_val == 64<br>                                          |[0x8000071e]:c.jal 64<br> [0x8000075e]:xori ra, ra, 3<br> [0x80000762]:auipc gp, 0<br> [0x80000766]:addi gp, gp, 4018<br> [0x8000076a]:andi gp, gp, 4092<br> [0x8000076e]:sub ra, ra, gp<br> [0x80000772]:c.swsp ra, 4<br>                                    |
|   6|[0x80003218]<br>0x0000000F|- imm_val == 128<br>                                         |[0x8000077e]:c.jal 128<br> [0x800007fe]:xori ra, ra, 3<br> [0x80000802]:auipc gp, 0<br> [0x80000806]:addi gp, gp, 3954<br> [0x8000080a]:andi gp, gp, 4092<br> [0x8000080e]:sub ra, ra, gp<br> [0x80000812]:c.swsp ra, 5<br>                                   |
|   7|[0x8000321c]<br>0x0000000F|- imm_val == 256<br>                                         |[0x8000081e]:c.jal 256<br> [0x8000091e]:xori ra, ra, 3<br> [0x80000922]:auipc gp, 0<br> [0x80000926]:addi gp, gp, 3826<br> [0x8000092a]:andi gp, gp, 4092<br> [0x8000092e]:sub ra, ra, gp<br> [0x80000932]:c.swsp ra, 6<br>                                   |
|   8|[0x80003220]<br>0x0000000F|- imm_val == 512<br>                                         |[0x8000093e]:c.jal 512<br> [0x80000b3e]:xori ra, ra, 3<br> [0x80000b42]:auipc gp, 0<br> [0x80000b46]:addi gp, gp, 3570<br> [0x80000b4a]:andi gp, gp, 4092<br> [0x80000b4e]:sub ra, ra, gp<br> [0x80000b52]:c.swsp ra, 7<br>                                   |
|   9|[0x80003224]<br>0x0000000F|- imm_val == 1024<br>                                        |[0x80000b5e]:c.jal 1024<br> [0x80000f5e]:xori ra, ra, 3<br> [0x80000f62]:auipc gp, 0<br> [0x80000f66]:addi gp, gp, 3058<br> [0x80000f6a]:andi gp, gp, 4092<br> [0x80000f6e]:sub ra, ra, gp<br> [0x80000f72]:c.swsp ra, 8<br>                                  |
|  10|[0x80003228]<br>0x0000000F|- imm_val == -10<br>                                         |[0x80000f80]:c.jal 4086<br> [0x80000f76]:xori ra, ra, 1<br> [0x80000f7a]:jal zero, 20<br> [0x80000f8e]:auipc gp, 0<br> [0x80000f92]:addi gp, gp, 4070<br> [0x80000f96]:andi gp, gp, 4092<br> [0x80000f9a]:sub ra, ra, gp<br> [0x80000f9e]:c.swsp ra, 9<br>    |
|  11|[0x8000322c]<br>0x00000017|- imm_val == -18<br>                                         |[0x80000fb4]:c.jal 4078<br> [0x80000fa2]:xori ra, ra, 1<br> [0x80000fa6]:jal zero, 28<br> [0x80000fc2]:auipc gp, 0<br> [0x80000fc6]:addi gp, gp, 4062<br> [0x80000fca]:andi gp, gp, 4092<br> [0x80000fce]:sub ra, ra, gp<br> [0x80000fd2]:c.swsp ra, 10<br>   |
|  12|[0x80003230]<br>0x00000407|- imm_val == -1026<br>                                       |[0x800013d8]:c.jal 3070<br> [0x80000fd6]:xori ra, ra, 1<br> [0x80000fda]:jal zero, 1036<br> [0x800013e6]:auipc gp, 0<br> [0x800013ea]:addi gp, gp, 3054<br> [0x800013ee]:andi gp, gp, 4092<br> [0x800013f2]:sub ra, ra, gp<br> [0x800013f6]:c.swsp ra, 11<br> |
|  13|[0x80003234]<br>0x0000055B|- imm_val == -1366<br>                                       |[0x80001950]:c.jal 2730<br> [0x800013fa]:xori ra, ra, 1<br> [0x800013fe]:jal zero, 1376<br> [0x8000195e]:auipc gp, 0<br> [0x80001962]:addi gp, gp, 2714<br> [0x80001966]:andi gp, gp, 4092<br> [0x8000196a]:sub ra, ra, gp<br> [0x8000196e]:c.swsp ra, 12<br> |
|  14|[0x80003238]<br>0x00000027|- imm_val == -34<br>                                         |[0x80001994]:c.jal 4062<br> [0x80001972]:xori ra, ra, 1<br> [0x80001976]:jal zero, 44<br> [0x800019a2]:auipc gp, 0<br> [0x800019a6]:addi gp, gp, 4046<br> [0x800019aa]:andi gp, gp, 4092<br> [0x800019ae]:sub ra, ra, gp<br> [0x800019b2]:c.swsp ra, 13<br>   |
|  15|[0x8000323c]<br>0x00000047|- imm_val == -66<br>                                         |[0x800019f8]:c.jal 4030<br> [0x800019b6]:xori ra, ra, 1<br> [0x800019ba]:jal zero, 76<br> [0x80001a06]:auipc gp, 0<br> [0x80001a0a]:addi gp, gp, 4014<br> [0x80001a0e]:andi gp, gp, 4092<br> [0x80001a12]:sub ra, ra, gp<br> [0x80001a16]:c.swsp ra, 14<br>   |
|  16|[0x80003240]<br>0x00000087|- imm_val == -130<br>                                        |[0x80001a9c]:c.jal 3966<br> [0x80001a1a]:xori ra, ra, 1<br> [0x80001a1e]:jal zero, 140<br> [0x80001aaa]:auipc gp, 0<br> [0x80001aae]:addi gp, gp, 3950<br> [0x80001ab2]:andi gp, gp, 4092<br> [0x80001ab6]:sub ra, ra, gp<br> [0x80001aba]:c.swsp ra, 15<br>  |
|  17|[0x80003244]<br>0x00000107|- imm_val == -258<br>                                        |[0x80001bc0]:c.jal 3838<br> [0x80001abe]:xori ra, ra, 1<br> [0x80001ac2]:jal zero, 268<br> [0x80001bce]:auipc gp, 0<br> [0x80001bd2]:addi gp, gp, 3822<br> [0x80001bd6]:andi gp, gp, 4092<br> [0x80001bda]:sub ra, ra, gp<br> [0x80001bde]:c.swsp ra, 16<br>  |
|  18|[0x80003248]<br>0x00000207|- imm_val == -514<br>                                        |[0x80001de4]:c.jal 3582<br> [0x80001be2]:xori ra, ra, 1<br> [0x80001be6]:jal zero, 524<br> [0x80001df2]:auipc gp, 0<br> [0x80001df6]:addi gp, gp, 3566<br> [0x80001dfa]:andi gp, gp, 4092<br> [0x80001dfe]:sub ra, ra, gp<br> [0x80001e02]:c.swsp ra, 17<br>  |
