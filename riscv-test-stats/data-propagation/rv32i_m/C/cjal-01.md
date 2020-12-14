
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001e40')]      |
| SIG_REGION                | [('0x80003010', '0x80003060', '20 words')]      |
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
|   1|[0x80003010]<br>0x0000000F|- opcode : c.jal<br> - imm_val > 0<br> |[0x8000010a]:c.jal 10<br> [0x80000114]:xori ra, ra, 3<br> [0x80000118]:auipc gp, 0<br> [0x8000011c]:addi gp, gp, 4072<br> [0x80000120]:andi gp, gp, 4092<br> [0x80000124]:sub ra, ra, gp<br> [0x80000128]:c.swsp ra, 0<br>                                    |
|   2|[0x80003014]<br>0x0000001B|- imm_val < 0<br>                      |[0x80000140]:c.jal 4076<br> [0x8000012c]:xori ra, ra, 1<br> [0x80000130]:jal zero, 30<br> [0x8000014e]:auipc gp, 0<br> [0x80000152]:addi gp, gp, 4060<br> [0x80000156]:andi gp, gp, 4092<br> [0x8000015a]:sub ra, ra, gp<br> [0x8000015e]:c.swsp ra, 1<br>    |
|   3|[0x80003018]<br>0x0000000F|- imm_val == 16<br>                    |[0x8000016a]:c.jal 16<br> [0x8000017a]:xori ra, ra, 3<br> [0x8000017e]:auipc gp, 0<br> [0x80000182]:addi gp, gp, 4066<br> [0x80000186]:andi gp, gp, 4092<br> [0x8000018a]:sub ra, ra, gp<br> [0x8000018e]:c.swsp ra, 2<br>                                    |
|   4|[0x8000301c]<br>0x0000000F|- imm_val == 32<br>                    |[0x8000019a]:c.jal 32<br> [0x800001ba]:xori ra, ra, 3<br> [0x800001be]:auipc gp, 0<br> [0x800001c2]:addi gp, gp, 4050<br> [0x800001c6]:andi gp, gp, 4092<br> [0x800001ca]:sub ra, ra, gp<br> [0x800001ce]:c.swsp ra, 3<br>                                    |
|   5|[0x80003020]<br>0x0000000F|- imm_val == 64<br>                    |[0x800001da]:c.jal 64<br> [0x8000021a]:xori ra, ra, 3<br> [0x8000021e]:auipc gp, 0<br> [0x80000222]:addi gp, gp, 4018<br> [0x80000226]:andi gp, gp, 4092<br> [0x8000022a]:sub ra, ra, gp<br> [0x8000022e]:c.swsp ra, 4<br>                                    |
|   6|[0x80003024]<br>0x0000000F|- imm_val == 128<br>                   |[0x8000023a]:c.jal 128<br> [0x800002ba]:xori ra, ra, 3<br> [0x800002be]:auipc gp, 0<br> [0x800002c2]:addi gp, gp, 3954<br> [0x800002c6]:andi gp, gp, 4092<br> [0x800002ca]:sub ra, ra, gp<br> [0x800002ce]:c.swsp ra, 5<br>                                   |
|   7|[0x80003028]<br>0x0000000F|- imm_val == 256<br>                   |[0x800002da]:c.jal 256<br> [0x800003da]:xori ra, ra, 3<br> [0x800003de]:auipc gp, 0<br> [0x800003e2]:addi gp, gp, 3826<br> [0x800003e6]:andi gp, gp, 4092<br> [0x800003ea]:sub ra, ra, gp<br> [0x800003ee]:c.swsp ra, 6<br>                                   |
|   8|[0x8000302c]<br>0x0000000F|- imm_val == 512<br>                   |[0x800003fa]:c.jal 512<br> [0x800005fa]:xori ra, ra, 3<br> [0x800005fe]:auipc gp, 0<br> [0x80000602]:addi gp, gp, 3570<br> [0x80000606]:andi gp, gp, 4092<br> [0x8000060a]:sub ra, ra, gp<br> [0x8000060e]:c.swsp ra, 7<br>                                   |
|   9|[0x80003030]<br>0x0000000F|- imm_val == 1024<br>                  |[0x8000061a]:c.jal 1024<br> [0x80000a1a]:xori ra, ra, 3<br> [0x80000a1e]:auipc gp, 0<br> [0x80000a22]:addi gp, gp, 3058<br> [0x80000a26]:andi gp, gp, 4092<br> [0x80000a2a]:sub ra, ra, gp<br> [0x80000a2e]:c.swsp ra, 8<br>                                  |
|  10|[0x80003034]<br>0x0000000F|- imm_val == -10<br>                   |[0x80000a3c]:c.jal 4086<br> [0x80000a32]:xori ra, ra, 1<br> [0x80000a36]:jal zero, 20<br> [0x80000a4a]:auipc gp, 0<br> [0x80000a4e]:addi gp, gp, 4070<br> [0x80000a52]:andi gp, gp, 4092<br> [0x80000a56]:sub ra, ra, gp<br> [0x80000a5a]:c.swsp ra, 9<br>    |
|  11|[0x80003038]<br>0x00000017|- imm_val == -18<br>                   |[0x80000a70]:c.jal 4078<br> [0x80000a5e]:xori ra, ra, 1<br> [0x80000a62]:jal zero, 28<br> [0x80000a7e]:auipc gp, 0<br> [0x80000a82]:addi gp, gp, 4062<br> [0x80000a86]:andi gp, gp, 4092<br> [0x80000a8a]:sub ra, ra, gp<br> [0x80000a8e]:c.swsp ra, 10<br>   |
|  12|[0x8000303c]<br>0x00000027|- imm_val == -34<br>                   |[0x80000ab4]:c.jal 4062<br> [0x80000a92]:xori ra, ra, 1<br> [0x80000a96]:jal zero, 44<br> [0x80000ac2]:auipc gp, 0<br> [0x80000ac6]:addi gp, gp, 4046<br> [0x80000aca]:andi gp, gp, 4092<br> [0x80000ace]:sub ra, ra, gp<br> [0x80000ad2]:c.swsp ra, 11<br>   |
|  13|[0x80003040]<br>0x00000407|- imm_val == -1026<br>                 |[0x80000ed8]:c.jal 3070<br> [0x80000ad6]:xori ra, ra, 1<br> [0x80000ada]:jal zero, 1036<br> [0x80000ee6]:auipc gp, 0<br> [0x80000eea]:addi gp, gp, 3054<br> [0x80000eee]:andi gp, gp, 4092<br> [0x80000ef2]:sub ra, ra, gp<br> [0x80000ef6]:c.swsp ra, 12<br> |
|  14|[0x80003044]<br>0x0000055B|- imm_val == -1366<br>                 |[0x80001450]:c.jal 2730<br> [0x80000efa]:xori ra, ra, 1<br> [0x80000efe]:jal zero, 1376<br> [0x8000145e]:auipc gp, 0<br> [0x80001462]:addi gp, gp, 2714<br> [0x80001466]:andi gp, gp, 4092<br> [0x8000146a]:sub ra, ra, gp<br> [0x8000146e]:c.swsp ra, 13<br> |
|  15|[0x80003048]<br>0x0000000F|- imm_val == 1364<br>                  |[0x8000147a]:c.jal 1364<br> [0x800019ce]:xori ra, ra, 3<br> [0x800019d2]:auipc gp, 0<br> [0x800019d6]:addi gp, gp, 2718<br> [0x800019da]:andi gp, gp, 4092<br> [0x800019de]:sub ra, ra, gp<br> [0x800019e2]:c.swsp ra, 14<br>                                 |
|  16|[0x8000304c]<br>0x00000047|- imm_val == -66<br>                   |[0x80001a28]:c.jal 4030<br> [0x800019e6]:xori ra, ra, 1<br> [0x800019ea]:jal zero, 76<br> [0x80001a36]:auipc gp, 0<br> [0x80001a3a]:addi gp, gp, 4014<br> [0x80001a3e]:andi gp, gp, 4092<br> [0x80001a42]:sub ra, ra, gp<br> [0x80001a46]:c.swsp ra, 15<br>   |
|  17|[0x80003050]<br>0x00000087|- imm_val == -130<br>                  |[0x80001acc]:c.jal 3966<br> [0x80001a4a]:xori ra, ra, 1<br> [0x80001a4e]:jal zero, 140<br> [0x80001ada]:auipc gp, 0<br> [0x80001ade]:addi gp, gp, 3950<br> [0x80001ae2]:andi gp, gp, 4092<br> [0x80001ae6]:sub ra, ra, gp<br> [0x80001aea]:c.swsp ra, 16<br>  |
|  18|[0x80003054]<br>0x00000107|- imm_val == -258<br>                  |[0x80001bf0]:c.jal 3838<br> [0x80001aee]:xori ra, ra, 1<br> [0x80001af2]:jal zero, 268<br> [0x80001bfe]:auipc gp, 0<br> [0x80001c02]:addi gp, gp, 3822<br> [0x80001c06]:andi gp, gp, 4092<br> [0x80001c0a]:sub ra, ra, gp<br> [0x80001c0e]:c.swsp ra, 17<br>  |
|  19|[0x80003058]<br>0x00000207|- imm_val == -514<br>                  |[0x80001e14]:c.jal 3582<br> [0x80001c12]:xori ra, ra, 1<br> [0x80001c16]:jal zero, 524<br> [0x80001e22]:auipc gp, 0<br> [0x80001e26]:addi gp, gp, 3566<br> [0x80001e2a]:andi gp, gp, 4092<br> [0x80001e2e]:sub ra, ra, gp<br> [0x80001e32]:c.swsp ra, 18<br>  |
