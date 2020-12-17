
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001e00')]      |
| SIG_REGION                | [('0x80003010', '0x80003060', '20 words')]      |
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

|s.no|        signature         |              coverpoints              |                                                                                                                             code                                                                                                                             |
|---:|--------------------------|---------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003010]<br>0x0000000F|- opcode : c.jal<br> - imm_val > 0<br> |[0x8000010a]:c.jal 10<br> [0x80000114]:xori ra, ra, 3<br> [0x80000118]:auipc gp, 0<br> [0x8000011c]:addi gp, gp, 4072<br> [0x80000120]:andi gp, gp, 4092<br> [0x80000124]:sub ra, ra, gp<br> [0x80000128]:c.swsp ra, 0<br>                                    |
|   2|[0x80003014]<br>0x00000011|- imm_val < 0<br> - imm_val == -10<br> |[0x80000136]:c.jal 4086<br> [0x8000012c]:xori ra, ra, 1<br> [0x80000130]:jal zero, 20<br> [0x80000144]:auipc gp, 0<br> [0x80000148]:addi gp, gp, 4070<br> [0x8000014c]:andi gp, gp, 4092<br> [0x80000150]:sub ra, ra, gp<br> [0x80000154]:c.swsp ra, 1<br>    |
|   3|[0x80003018]<br>0x0000000D|- imm_val == 16<br>                    |[0x80000160]:c.jal 16<br> [0x80000170]:xori ra, ra, 3<br> [0x80000174]:auipc gp, 0<br> [0x80000178]:addi gp, gp, 4066<br> [0x8000017c]:andi gp, gp, 4092<br> [0x80000180]:sub ra, ra, gp<br> [0x80000184]:c.swsp ra, 2<br>                                    |
|   4|[0x8000301c]<br>0x0000000D|- imm_val == 32<br>                    |[0x80000190]:c.jal 32<br> [0x800001b0]:xori ra, ra, 3<br> [0x800001b4]:auipc gp, 0<br> [0x800001b8]:addi gp, gp, 4050<br> [0x800001bc]:andi gp, gp, 4092<br> [0x800001c0]:sub ra, ra, gp<br> [0x800001c4]:c.swsp ra, 3<br>                                    |
|   5|[0x80003020]<br>0x0000000D|- imm_val == 64<br>                    |[0x800001d0]:c.jal 64<br> [0x80000210]:xori ra, ra, 3<br> [0x80000214]:auipc gp, 0<br> [0x80000218]:addi gp, gp, 4018<br> [0x8000021c]:andi gp, gp, 4092<br> [0x80000220]:sub ra, ra, gp<br> [0x80000224]:c.swsp ra, 4<br>                                    |
|   6|[0x80003024]<br>0x0000000D|- imm_val == 128<br>                   |[0x80000230]:c.jal 128<br> [0x800002b0]:xori ra, ra, 3<br> [0x800002b4]:auipc gp, 0<br> [0x800002b8]:addi gp, gp, 3954<br> [0x800002bc]:andi gp, gp, 4092<br> [0x800002c0]:sub ra, ra, gp<br> [0x800002c4]:c.swsp ra, 5<br>                                   |
|   7|[0x80003028]<br>0x0000000D|- imm_val == 256<br>                   |[0x800002d0]:c.jal 256<br> [0x800003d0]:xori ra, ra, 3<br> [0x800003d4]:auipc gp, 0<br> [0x800003d8]:addi gp, gp, 3826<br> [0x800003dc]:andi gp, gp, 4092<br> [0x800003e0]:sub ra, ra, gp<br> [0x800003e4]:c.swsp ra, 6<br>                                   |
|   8|[0x8000302c]<br>0x0000000D|- imm_val == 512<br>                   |[0x800003f0]:c.jal 512<br> [0x800005f0]:xori ra, ra, 3<br> [0x800005f4]:auipc gp, 0<br> [0x800005f8]:addi gp, gp, 3570<br> [0x800005fc]:andi gp, gp, 4092<br> [0x80000600]:sub ra, ra, gp<br> [0x80000604]:c.swsp ra, 7<br>                                   |
|   9|[0x80003030]<br>0x0000000D|- imm_val == 1024<br>                  |[0x80000610]:c.jal 1024<br> [0x80000a10]:xori ra, ra, 3<br> [0x80000a14]:auipc gp, 0<br> [0x80000a18]:addi gp, gp, 3058<br> [0x80000a1c]:andi gp, gp, 4092<br> [0x80000a20]:sub ra, ra, gp<br> [0x80000a24]:c.swsp ra, 8<br>                                  |
|  10|[0x80003034]<br>0x00000019|- imm_val == -18<br>                   |[0x80000a3a]:c.jal 4078<br> [0x80000a28]:xori ra, ra, 1<br> [0x80000a2c]:jal zero, 28<br> [0x80000a48]:auipc gp, 0<br> [0x80000a4c]:addi gp, gp, 4062<br> [0x80000a50]:andi gp, gp, 4092<br> [0x80000a54]:sub ra, ra, gp<br> [0x80000a58]:c.swsp ra, 9<br>    |
|  11|[0x80003038]<br>0x00000029|- imm_val == -34<br>                   |[0x80000a7e]:c.jal 4062<br> [0x80000a5c]:xori ra, ra, 1<br> [0x80000a60]:jal zero, 44<br> [0x80000a8c]:auipc gp, 0<br> [0x80000a90]:addi gp, gp, 4046<br> [0x80000a94]:andi gp, gp, 4092<br> [0x80000a98]:sub ra, ra, gp<br> [0x80000a9c]:c.swsp ra, 10<br>   |
|  12|[0x8000303c]<br>0x00000409|- imm_val == -1026<br>                 |[0x80000ea2]:c.jal 3070<br> [0x80000aa0]:xori ra, ra, 1<br> [0x80000aa4]:jal zero, 1036<br> [0x80000eb0]:auipc gp, 0<br> [0x80000eb4]:addi gp, gp, 3054<br> [0x80000eb8]:andi gp, gp, 4092<br> [0x80000ebc]:sub ra, ra, gp<br> [0x80000ec0]:c.swsp ra, 11<br> |
|  13|[0x80003040]<br>0x0000055D|- imm_val == -1366<br>                 |[0x8000141a]:c.jal 2730<br> [0x80000ec4]:xori ra, ra, 1<br> [0x80000ec8]:jal zero, 1376<br> [0x80001428]:auipc gp, 0<br> [0x8000142c]:addi gp, gp, 2714<br> [0x80001430]:andi gp, gp, 4092<br> [0x80001434]:sub ra, ra, gp<br> [0x80001438]:c.swsp ra, 12<br> |
|  14|[0x80003044]<br>0x0000000D|- imm_val == 1364<br>                  |[0x80001444]:c.jal 1364<br> [0x80001998]:xori ra, ra, 3<br> [0x8000199c]:auipc gp, 0<br> [0x800019a0]:addi gp, gp, 2718<br> [0x800019a4]:andi gp, gp, 4092<br> [0x800019a8]:sub ra, ra, gp<br> [0x800019ac]:c.swsp ra, 13<br>                                 |
|  15|[0x80003048]<br>0x00000049|- imm_val == -66<br>                   |[0x800019f2]:c.jal 4030<br> [0x800019b0]:xori ra, ra, 1<br> [0x800019b4]:jal zero, 76<br> [0x80001a00]:auipc gp, 0<br> [0x80001a04]:addi gp, gp, 4014<br> [0x80001a08]:andi gp, gp, 4092<br> [0x80001a0c]:sub ra, ra, gp<br> [0x80001a10]:c.swsp ra, 14<br>   |
|  16|[0x8000304c]<br>0x00000089|- imm_val == -130<br>                  |[0x80001a96]:c.jal 3966<br> [0x80001a14]:xori ra, ra, 1<br> [0x80001a18]:jal zero, 140<br> [0x80001aa4]:auipc gp, 0<br> [0x80001aa8]:addi gp, gp, 3950<br> [0x80001aac]:andi gp, gp, 4092<br> [0x80001ab0]:sub ra, ra, gp<br> [0x80001ab4]:c.swsp ra, 15<br>  |
|  17|[0x80003050]<br>0x00000109|- imm_val == -258<br>                  |[0x80001bba]:c.jal 3838<br> [0x80001ab8]:xori ra, ra, 1<br> [0x80001abc]:jal zero, 268<br> [0x80001bc8]:auipc gp, 0<br> [0x80001bcc]:addi gp, gp, 3822<br> [0x80001bd0]:andi gp, gp, 4092<br> [0x80001bd4]:sub ra, ra, gp<br> [0x80001bd8]:c.swsp ra, 16<br>  |
|  18|[0x80003054]<br>0x00000209|- imm_val == -514<br>                  |[0x80001dde]:c.jal 3582<br> [0x80001bdc]:xori ra, ra, 1<br> [0x80001be0]:jal zero, 524<br> [0x80001dec]:auipc gp, 0<br> [0x80001df0]:addi gp, gp, 3566<br> [0x80001df4]:andi gp, gp, 4092<br> [0x80001df8]:sub ra, ra, gp<br> [0x80001dfc]:c.swsp ra, 17<br>  |
