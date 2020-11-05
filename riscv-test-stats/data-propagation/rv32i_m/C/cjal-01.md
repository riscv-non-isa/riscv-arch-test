
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001e30')]      |
| SIG_REGION                | [('0x80004204', '0x8000425c', '22 words')]      |
| COV_LABELS                | cjal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjal-01.S/cjal-01.S    |
| Total Number of coverpoints| 20     |
| Total Coverpoints Hit     | 20      |
| Total Signature Updates   | 19      |
| STAT1                     | 19      |
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

|s.no|        signature         |              coverpoints              |                                                                                                                             code                                                                                                                             |
|---:|--------------------------|---------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000F|- opcode : c.jal<br> - imm_val > 0<br> |[0x8000010a]:c.jal 14<br> [0x80000118]:xori ra, ra, 3<br> [0x8000011c]:auipc gp, 0<br> [0x80000120]:addi gp, gp, 4068<br> [0x80000124]:andi gp, gp, 4092<br> [0x80000128]:sub ra, ra, gp<br> [0x8000012c]:c.swsp ra, 0<br>                                    |
|   2|[0x80004214]<br>0x0000000F|- imm_val < 0<br>                      |[0x80000138]:c.jal 4088<br> [0x80000130]:xori ra, ra, 1<br> [0x80000134]:jal zero, 18<br> [0x80000146]:auipc gp, 0<br> [0x8000014a]:addi gp, gp, 4072<br> [0x8000014e]:andi gp, gp, 4092<br> [0x80000152]:sub ra, ra, gp<br> [0x80000156]:c.swsp ra, 1<br>    |
|   3|[0x80004218]<br>0x0000000F|- imm_val == 16<br>                    |[0x80000162]:c.jal 16<br> [0x80000172]:xori ra, ra, 3<br> [0x80000176]:auipc gp, 0<br> [0x8000017a]:addi gp, gp, 4066<br> [0x8000017e]:andi gp, gp, 4092<br> [0x80000182]:sub ra, ra, gp<br> [0x80000186]:c.swsp ra, 2<br>                                    |
|   4|[0x8000421c]<br>0x0000000F|- imm_val == 32<br>                    |[0x80000192]:c.jal 32<br> [0x800001b2]:xori ra, ra, 3<br> [0x800001b6]:auipc gp, 0<br> [0x800001ba]:addi gp, gp, 4050<br> [0x800001be]:andi gp, gp, 4092<br> [0x800001c2]:sub ra, ra, gp<br> [0x800001c6]:c.swsp ra, 3<br>                                    |
|   5|[0x80004220]<br>0x0000000F|- imm_val == 64<br>                    |[0x800001d2]:c.jal 64<br> [0x80000212]:xori ra, ra, 3<br> [0x80000216]:auipc gp, 0<br> [0x8000021a]:addi gp, gp, 4018<br> [0x8000021e]:andi gp, gp, 4092<br> [0x80000222]:sub ra, ra, gp<br> [0x80000226]:c.swsp ra, 4<br>                                    |
|   6|[0x80004224]<br>0x0000000F|- imm_val == 128<br>                   |[0x80000232]:c.jal 128<br> [0x800002b2]:xori ra, ra, 3<br> [0x800002b6]:auipc gp, 0<br> [0x800002ba]:addi gp, gp, 3954<br> [0x800002be]:andi gp, gp, 4092<br> [0x800002c2]:sub ra, ra, gp<br> [0x800002c6]:c.swsp ra, 5<br>                                   |
|   7|[0x80004228]<br>0x0000000F|- imm_val == 256<br>                   |[0x800002d2]:c.jal 256<br> [0x800003d2]:xori ra, ra, 3<br> [0x800003d6]:auipc gp, 0<br> [0x800003da]:addi gp, gp, 3826<br> [0x800003de]:andi gp, gp, 4092<br> [0x800003e2]:sub ra, ra, gp<br> [0x800003e6]:c.swsp ra, 6<br>                                   |
|   8|[0x8000422c]<br>0x0000000F|- imm_val == 512<br>                   |[0x800003f2]:c.jal 512<br> [0x800005f2]:xori ra, ra, 3<br> [0x800005f6]:auipc gp, 0<br> [0x800005fa]:addi gp, gp, 3570<br> [0x800005fe]:andi gp, gp, 4092<br> [0x80000602]:sub ra, ra, gp<br> [0x80000606]:c.swsp ra, 7<br>                                   |
|   9|[0x80004230]<br>0x0000000F|- imm_val == 1024<br>                  |[0x80000612]:c.jal 1024<br> [0x80000a12]:xori ra, ra, 3<br> [0x80000a16]:auipc gp, 0<br> [0x80000a1a]:addi gp, gp, 3058<br> [0x80000a1e]:andi gp, gp, 4092<br> [0x80000a22]:sub ra, ra, gp<br> [0x80000a26]:c.swsp ra, 8<br>                                  |
|  10|[0x80004234]<br>0x0000000F|- imm_val == -10<br>                   |[0x80000a34]:c.jal 4086<br> [0x80000a2a]:xori ra, ra, 1<br> [0x80000a2e]:jal zero, 20<br> [0x80000a42]:auipc gp, 0<br> [0x80000a46]:addi gp, gp, 4070<br> [0x80000a4a]:andi gp, gp, 4092<br> [0x80000a4e]:sub ra, ra, gp<br> [0x80000a52]:c.swsp ra, 9<br>    |
|  11|[0x80004238]<br>0x00000017|- imm_val == -18<br>                   |[0x80000a68]:c.jal 4078<br> [0x80000a56]:xori ra, ra, 1<br> [0x80000a5a]:jal zero, 28<br> [0x80000a76]:auipc gp, 0<br> [0x80000a7a]:addi gp, gp, 4062<br> [0x80000a7e]:andi gp, gp, 4092<br> [0x80000a82]:sub ra, ra, gp<br> [0x80000a86]:c.swsp ra, 10<br>   |
|  12|[0x8000423c]<br>0x00000027|- imm_val == -34<br>                   |[0x80000aac]:c.jal 4062<br> [0x80000a8a]:xori ra, ra, 1<br> [0x80000a8e]:jal zero, 44<br> [0x80000aba]:auipc gp, 0<br> [0x80000abe]:addi gp, gp, 4046<br> [0x80000ac2]:andi gp, gp, 4092<br> [0x80000ac6]:sub ra, ra, gp<br> [0x80000aca]:c.swsp ra, 11<br>   |
|  13|[0x80004240]<br>0x00000407|- imm_val == -1026<br>                 |[0x80000ed0]:c.jal 3070<br> [0x80000ace]:xori ra, ra, 1<br> [0x80000ad2]:jal zero, 1036<br> [0x80000ede]:auipc gp, 0<br> [0x80000ee2]:addi gp, gp, 3054<br> [0x80000ee6]:andi gp, gp, 4092<br> [0x80000eea]:sub ra, ra, gp<br> [0x80000eee]:c.swsp ra, 12<br> |
|  14|[0x80004244]<br>0x0000055B|- imm_val == -1366<br>                 |[0x80001448]:c.jal 2730<br> [0x80000ef2]:xori ra, ra, 1<br> [0x80000ef6]:jal zero, 1376<br> [0x80001456]:auipc gp, 0<br> [0x8000145a]:addi gp, gp, 2714<br> [0x8000145e]:andi gp, gp, 4092<br> [0x80001462]:sub ra, ra, gp<br> [0x80001466]:c.swsp ra, 13<br> |
|  15|[0x80004248]<br>0x0000000F|- imm_val == 1364<br>                  |[0x80001472]:c.jal 1364<br> [0x800019c6]:xori ra, ra, 3<br> [0x800019ca]:auipc gp, 0<br> [0x800019ce]:addi gp, gp, 2718<br> [0x800019d2]:andi gp, gp, 4092<br> [0x800019d6]:sub ra, ra, gp<br> [0x800019da]:c.swsp ra, 14<br>                                 |
|  16|[0x8000424c]<br>0x00000047|- imm_val == -66<br>                   |[0x80001a20]:c.jal 4030<br> [0x800019de]:xori ra, ra, 1<br> [0x800019e2]:jal zero, 76<br> [0x80001a2e]:auipc gp, 0<br> [0x80001a32]:addi gp, gp, 4014<br> [0x80001a36]:andi gp, gp, 4092<br> [0x80001a3a]:sub ra, ra, gp<br> [0x80001a3e]:c.swsp ra, 15<br>   |
|  17|[0x80004250]<br>0x00000087|- imm_val == -130<br>                  |[0x80001ac4]:c.jal 3966<br> [0x80001a42]:xori ra, ra, 1<br> [0x80001a46]:jal zero, 140<br> [0x80001ad2]:auipc gp, 0<br> [0x80001ad6]:addi gp, gp, 3950<br> [0x80001ada]:andi gp, gp, 4092<br> [0x80001ade]:sub ra, ra, gp<br> [0x80001ae2]:c.swsp ra, 16<br>  |
|  18|[0x80004254]<br>0x00000107|- imm_val == -258<br>                  |[0x80001be8]:c.jal 3838<br> [0x80001ae6]:xori ra, ra, 1<br> [0x80001aea]:jal zero, 268<br> [0x80001bf6]:auipc gp, 0<br> [0x80001bfa]:addi gp, gp, 3822<br> [0x80001bfe]:andi gp, gp, 4092<br> [0x80001c02]:sub ra, ra, gp<br> [0x80001c06]:c.swsp ra, 17<br>  |
|  19|[0x80004258]<br>0x00000207|- imm_val == -514<br>                  |[0x80001e0c]:c.jal 3582<br> [0x80001c0a]:xori ra, ra, 1<br> [0x80001c0e]:jal zero, 524<br> [0x80001e1a]:auipc gp, 0<br> [0x80001e1e]:addi gp, gp, 3566<br> [0x80001e22]:andi gp, gp, 4092<br> [0x80001e26]:sub ra, ra, gp<br> [0x80001e2a]:c.swsp ra, 18<br>  |
