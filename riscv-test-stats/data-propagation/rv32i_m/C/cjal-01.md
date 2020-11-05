
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001de0')]      |
| SIG_REGION                | [('0x80004204', '0x80004248', '17 words')]      |
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

|s.no|        signature         |                        coverpoints                         |                                                                                                                             code                                                                                                                             |
|---:|--------------------------|------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004204]<br>0x0000000F|- opcode : c.jal<br> - imm_val > 0<br> - imm_val == 256<br> |[0x8000010a]:c.jal 256<br> [0x8000020a]:xori ra, ra, 3<br> [0x8000020e]:auipc gp, 0<br> [0x80000212]:addi gp, gp, 3826<br> [0x80000216]:andi gp, gp, 4092<br> [0x8000021a]:sub ra, ra, gp<br> [0x8000021e]:c.swsp ra, 0<br>                                   |
|   2|[0x80004208]<br>0x00000047|- imm_val < 0<br> - imm_val == -66<br>                      |[0x80000264]:c.jal 4030<br> [0x80000222]:xori ra, ra, 1<br> [0x80000226]:jal zero, 76<br> [0x80000272]:auipc gp, 0<br> [0x80000276]:addi gp, gp, 4014<br> [0x8000027a]:andi gp, gp, 4092<br> [0x8000027e]:sub ra, ra, gp<br> [0x80000282]:c.swsp ra, 1<br>    |
|   3|[0x8000420c]<br>0x0000000F|- imm_val == 16<br>                                         |[0x8000028e]:c.jal 16<br> [0x8000029e]:xori ra, ra, 3<br> [0x800002a2]:auipc gp, 0<br> [0x800002a6]:addi gp, gp, 4066<br> [0x800002aa]:andi gp, gp, 4092<br> [0x800002ae]:sub ra, ra, gp<br> [0x800002b2]:c.swsp ra, 2<br>                                    |
|   4|[0x80004210]<br>0x0000000F|- imm_val == 32<br>                                         |[0x800002be]:c.jal 32<br> [0x800002de]:xori ra, ra, 3<br> [0x800002e2]:auipc gp, 0<br> [0x800002e6]:addi gp, gp, 4050<br> [0x800002ea]:andi gp, gp, 4092<br> [0x800002ee]:sub ra, ra, gp<br> [0x800002f2]:c.swsp ra, 3<br>                                    |
|   5|[0x80004214]<br>0x0000000F|- imm_val == 64<br>                                         |[0x800002fe]:c.jal 64<br> [0x8000033e]:xori ra, ra, 3<br> [0x80000342]:auipc gp, 0<br> [0x80000346]:addi gp, gp, 4018<br> [0x8000034a]:andi gp, gp, 4092<br> [0x8000034e]:sub ra, ra, gp<br> [0x80000352]:c.swsp ra, 4<br>                                    |
|   6|[0x80004218]<br>0x0000000F|- imm_val == 128<br>                                        |[0x8000035e]:c.jal 128<br> [0x800003de]:xori ra, ra, 3<br> [0x800003e2]:auipc gp, 0<br> [0x800003e6]:addi gp, gp, 3954<br> [0x800003ea]:andi gp, gp, 4092<br> [0x800003ee]:sub ra, ra, gp<br> [0x800003f2]:c.swsp ra, 5<br>                                   |
|   7|[0x8000421c]<br>0x0000000F|- imm_val == 512<br>                                        |[0x800003fe]:c.jal 512<br> [0x800005fe]:xori ra, ra, 3<br> [0x80000602]:auipc gp, 0<br> [0x80000606]:addi gp, gp, 3570<br> [0x8000060a]:andi gp, gp, 4092<br> [0x8000060e]:sub ra, ra, gp<br> [0x80000612]:c.swsp ra, 6<br>                                   |
|   8|[0x80004220]<br>0x0000000F|- imm_val == 1024<br>                                       |[0x8000061e]:c.jal 1024<br> [0x80000a1e]:xori ra, ra, 3<br> [0x80000a22]:auipc gp, 0<br> [0x80000a26]:addi gp, gp, 3058<br> [0x80000a2a]:andi gp, gp, 4092<br> [0x80000a2e]:sub ra, ra, gp<br> [0x80000a32]:c.swsp ra, 7<br>                                  |
|   9|[0x80004224]<br>0x0000000F|- imm_val == -10<br>                                        |[0x80000a40]:c.jal 4086<br> [0x80000a36]:xori ra, ra, 1<br> [0x80000a3a]:jal zero, 20<br> [0x80000a4e]:auipc gp, 0<br> [0x80000a52]:addi gp, gp, 4070<br> [0x80000a56]:andi gp, gp, 4092<br> [0x80000a5a]:sub ra, ra, gp<br> [0x80000a5e]:c.swsp ra, 8<br>    |
|  10|[0x80004228]<br>0x00000017|- imm_val == -18<br>                                        |[0x80000a74]:c.jal 4078<br> [0x80000a62]:xori ra, ra, 1<br> [0x80000a66]:jal zero, 28<br> [0x80000a82]:auipc gp, 0<br> [0x80000a86]:addi gp, gp, 4062<br> [0x80000a8a]:andi gp, gp, 4092<br> [0x80000a8e]:sub ra, ra, gp<br> [0x80000a92]:c.swsp ra, 9<br>    |
|  11|[0x8000422c]<br>0x00000407|- imm_val == -1026<br>                                      |[0x80000e98]:c.jal 3070<br> [0x80000a96]:xori ra, ra, 1<br> [0x80000a9a]:jal zero, 1036<br> [0x80000ea6]:auipc gp, 0<br> [0x80000eaa]:addi gp, gp, 3054<br> [0x80000eae]:andi gp, gp, 4092<br> [0x80000eb2]:sub ra, ra, gp<br> [0x80000eb6]:c.swsp ra, 10<br> |
|  12|[0x80004230]<br>0x0000055B|- imm_val == -1366<br>                                      |[0x80001410]:c.jal 2730<br> [0x80000eba]:xori ra, ra, 1<br> [0x80000ebe]:jal zero, 1376<br> [0x8000141e]:auipc gp, 0<br> [0x80001422]:addi gp, gp, 2714<br> [0x80001426]:andi gp, gp, 4092<br> [0x8000142a]:sub ra, ra, gp<br> [0x8000142e]:c.swsp ra, 11<br> |
|  13|[0x80004234]<br>0x0000000F|- imm_val == 1364<br>                                       |[0x8000143a]:c.jal 1364<br> [0x8000198e]:xori ra, ra, 3<br> [0x80001992]:auipc gp, 0<br> [0x80001996]:addi gp, gp, 2718<br> [0x8000199a]:andi gp, gp, 4092<br> [0x8000199e]:sub ra, ra, gp<br> [0x800019a2]:c.swsp ra, 12<br>                                 |
|  14|[0x80004238]<br>0x00000027|- imm_val == -34<br>                                        |[0x800019c8]:c.jal 4062<br> [0x800019a6]:xori ra, ra, 1<br> [0x800019aa]:jal zero, 44<br> [0x800019d6]:auipc gp, 0<br> [0x800019da]:addi gp, gp, 4046<br> [0x800019de]:andi gp, gp, 4092<br> [0x800019e2]:sub ra, ra, gp<br> [0x800019e6]:c.swsp ra, 13<br>   |
|  15|[0x8000423c]<br>0x00000087|- imm_val == -130<br>                                       |[0x80001a6c]:c.jal 3966<br> [0x800019ea]:xori ra, ra, 1<br> [0x800019ee]:jal zero, 140<br> [0x80001a7a]:auipc gp, 0<br> [0x80001a7e]:addi gp, gp, 3950<br> [0x80001a82]:andi gp, gp, 4092<br> [0x80001a86]:sub ra, ra, gp<br> [0x80001a8a]:c.swsp ra, 14<br>  |
|  16|[0x80004240]<br>0x00000107|- imm_val == -258<br>                                       |[0x80001b90]:c.jal 3838<br> [0x80001a8e]:xori ra, ra, 1<br> [0x80001a92]:jal zero, 268<br> [0x80001b9e]:auipc gp, 0<br> [0x80001ba2]:addi gp, gp, 3822<br> [0x80001ba6]:andi gp, gp, 4092<br> [0x80001baa]:sub ra, ra, gp<br> [0x80001bae]:c.swsp ra, 15<br>  |
|  17|[0x80004244]<br>0x00000207|- imm_val == -514<br>                                       |[0x80001db4]:c.jal 3582<br> [0x80001bb2]:xori ra, ra, 1<br> [0x80001bb6]:jal zero, 524<br> [0x80001dc2]:auipc gp, 0<br> [0x80001dc6]:addi gp, gp, 3566<br> [0x80001dca]:andi gp, gp, 4092<br> [0x80001dce]:sub ra, ra, gp<br> [0x80001dd2]:c.swsp ra, 16<br>  |
