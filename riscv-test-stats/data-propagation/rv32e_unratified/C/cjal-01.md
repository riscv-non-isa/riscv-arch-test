
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80001d90')]      |
| SIG_REGION                | [('0x80003204', '0x8000324c', '18 words')]      |
| COV_LABELS                | cjal      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/cjal-01.S/cjal-01.S    |
| Total Number of coverpoints| 22     |
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

|s.no|        signature         |              coverpoints               |                                                                                                                             code                                                                                                                             |
|---:|--------------------------|----------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000015|- opcode : c.jal<br> - imm_val < 0<br>  |[0x80000092]:c.jal 4080<br> [0x80000082]:xori ra, ra, 1<br> [0x80000086]:jal zero, 26<br> [0x800000a0]:auipc gp, 0<br> [0x800000a4]:addi gp, gp, 4064<br> [0x800000a8]:andi gp, gp, 4092<br> [0x800000ac]:sub ra, ra, gp<br> [0x800000b0]:c.swsp ra, 0<br>    |
|   2|[0x80003208]<br>0x00000409|- imm_val == -1026<br>                  |[0x800004b6]:c.jal 3070<br> [0x800000b4]:xori ra, ra, 1<br> [0x800000b8]:jal zero, 1036<br> [0x800004c4]:auipc gp, 0<br> [0x800004c8]:addi gp, gp, 3054<br> [0x800004cc]:andi gp, gp, 4092<br> [0x800004d0]:sub ra, ra, gp<br> [0x800004d4]:c.swsp ra, 1<br>  |
|   3|[0x8000320c]<br>0x00000209|- imm_val == -514<br>                   |[0x800006da]:c.jal 3582<br> [0x800004d8]:xori ra, ra, 1<br> [0x800004dc]:jal zero, 524<br> [0x800006e8]:auipc gp, 0<br> [0x800006ec]:addi gp, gp, 3566<br> [0x800006f0]:andi gp, gp, 4092<br> [0x800006f4]:sub ra, ra, gp<br> [0x800006f8]:c.swsp ra, 2<br>   |
|   4|[0x80003210]<br>0x00000109|- imm_val == -258<br>                   |[0x800007fe]:c.jal 3838<br> [0x800006fc]:xori ra, ra, 1<br> [0x80000700]:jal zero, 268<br> [0x8000080c]:auipc gp, 0<br> [0x80000810]:addi gp, gp, 3822<br> [0x80000814]:andi gp, gp, 4092<br> [0x80000818]:sub ra, ra, gp<br> [0x8000081c]:c.swsp ra, 3<br>   |
|   5|[0x80003214]<br>0x00000089|- imm_val == -130<br>                   |[0x800008a2]:c.jal 3966<br> [0x80000820]:xori ra, ra, 1<br> [0x80000824]:jal zero, 140<br> [0x800008b0]:auipc gp, 0<br> [0x800008b4]:addi gp, gp, 3950<br> [0x800008b8]:andi gp, gp, 4092<br> [0x800008bc]:sub ra, ra, gp<br> [0x800008c0]:c.swsp ra, 4<br>   |
|   6|[0x80003218]<br>0x00000049|- imm_val == -66<br>                    |[0x80000906]:c.jal 4030<br> [0x800008c4]:xori ra, ra, 1<br> [0x800008c8]:jal zero, 76<br> [0x80000914]:auipc gp, 0<br> [0x80000918]:addi gp, gp, 4014<br> [0x8000091c]:andi gp, gp, 4092<br> [0x80000920]:sub ra, ra, gp<br> [0x80000924]:c.swsp ra, 5<br>    |
|   7|[0x8000321c]<br>0x00000029|- imm_val == -34<br>                    |[0x8000094a]:c.jal 4062<br> [0x80000928]:xori ra, ra, 1<br> [0x8000092c]:jal zero, 44<br> [0x80000958]:auipc gp, 0<br> [0x8000095c]:addi gp, gp, 4046<br> [0x80000960]:andi gp, gp, 4092<br> [0x80000964]:sub ra, ra, gp<br> [0x80000968]:c.swsp ra, 6<br>    |
|   8|[0x80003220]<br>0x00000019|- imm_val == -18<br>                    |[0x8000097e]:c.jal 4078<br> [0x8000096c]:xori ra, ra, 1<br> [0x80000970]:jal zero, 28<br> [0x8000098c]:auipc gp, 0<br> [0x80000990]:addi gp, gp, 4062<br> [0x80000994]:andi gp, gp, 4092<br> [0x80000998]:sub ra, ra, gp<br> [0x8000099c]:c.swsp ra, 7<br>    |
|   9|[0x80003224]<br>0x00000011|- imm_val == -10<br>                    |[0x800009aa]:c.jal 4086<br> [0x800009a0]:xori ra, ra, 1<br> [0x800009a4]:jal zero, 20<br> [0x800009b8]:auipc gp, 0<br> [0x800009bc]:addi gp, gp, 4070<br> [0x800009c0]:andi gp, gp, 4092<br> [0x800009c4]:sub ra, ra, gp<br> [0x800009c8]:c.swsp ra, 8<br>    |
|  10|[0x80003228]<br>0x0000000D|- imm_val == 1024<br> - imm_val > 0<br> |[0x800009d4]:c.jal 1024<br> [0x80000dd4]:xori ra, ra, 3<br> [0x80000dd8]:auipc gp, 0<br> [0x80000ddc]:addi gp, gp, 3058<br> [0x80000de0]:andi gp, gp, 4092<br> [0x80000de4]:sub ra, ra, gp<br> [0x80000de8]:c.swsp ra, 9<br>                                  |
|  11|[0x8000322c]<br>0x0000000D|- imm_val == 512<br>                    |[0x80000df4]:c.jal 512<br> [0x80000ff4]:xori ra, ra, 3<br> [0x80000ff8]:auipc gp, 0<br> [0x80000ffc]:addi gp, gp, 3570<br> [0x80001000]:andi gp, gp, 4092<br> [0x80001004]:sub ra, ra, gp<br> [0x80001008]:c.swsp ra, 10<br>                                  |
|  12|[0x80003230]<br>0x0000000D|- imm_val == 1364<br>                   |[0x80001014]:c.jal 1364<br> [0x80001568]:xori ra, ra, 3<br> [0x8000156c]:auipc gp, 0<br> [0x80001570]:addi gp, gp, 2718<br> [0x80001574]:andi gp, gp, 4092<br> [0x80001578]:sub ra, ra, gp<br> [0x8000157c]:c.swsp ra, 11<br>                                 |
|  13|[0x80003234]<br>0x0000055D|- imm_val == -1366<br>                  |[0x80001ad6]:c.jal 2730<br> [0x80001580]:xori ra, ra, 1<br> [0x80001584]:jal zero, 1376<br> [0x80001ae4]:auipc gp, 0<br> [0x80001ae8]:addi gp, gp, 2714<br> [0x80001aec]:andi gp, gp, 4092<br> [0x80001af0]:sub ra, ra, gp<br> [0x80001af4]:c.swsp ra, 12<br> |
|  14|[0x80003238]<br>0x0000000D|- imm_val == 256<br>                    |[0x80001b00]:c.jal 256<br> [0x80001c00]:xori ra, ra, 3<br> [0x80001c04]:auipc gp, 0<br> [0x80001c08]:addi gp, gp, 3826<br> [0x80001c0c]:andi gp, gp, 4092<br> [0x80001c10]:sub ra, ra, gp<br> [0x80001c14]:c.swsp ra, 13<br>                                  |
|  15|[0x8000323c]<br>0x0000000D|- imm_val == 128<br>                    |[0x80001c20]:c.jal 128<br> [0x80001ca0]:xori ra, ra, 3<br> [0x80001ca4]:auipc gp, 0<br> [0x80001ca8]:addi gp, gp, 3954<br> [0x80001cac]:andi gp, gp, 4092<br> [0x80001cb0]:sub ra, ra, gp<br> [0x80001cb4]:c.swsp ra, 14<br>                                  |
|  16|[0x80003240]<br>0x0000000D|- imm_val == 64<br>                     |[0x80001cc0]:c.jal 64<br> [0x80001d00]:xori ra, ra, 3<br> [0x80001d04]:auipc gp, 0<br> [0x80001d08]:addi gp, gp, 4018<br> [0x80001d0c]:andi gp, gp, 4092<br> [0x80001d10]:sub ra, ra, gp<br> [0x80001d14]:c.swsp ra, 15<br>                                   |
|  17|[0x80003244]<br>0x0000000D|- imm_val == 32<br>                     |[0x80001d20]:c.jal 32<br> [0x80001d40]:xori ra, ra, 3<br> [0x80001d44]:auipc gp, 0<br> [0x80001d48]:addi gp, gp, 4050<br> [0x80001d4c]:andi gp, gp, 4092<br> [0x80001d50]:sub ra, ra, gp<br> [0x80001d54]:c.swsp ra, 16<br>                                   |
|  18|[0x80003248]<br>0x0000000D|- imm_val == 16<br>                     |[0x80001d60]:c.jal 16<br> [0x80001d70]:xori ra, ra, 3<br> [0x80001d74]:auipc gp, 0<br> [0x80001d78]:addi gp, gp, 4066<br> [0x80001d7c]:andi gp, gp, 4092<br> [0x80001d80]:sub ra, ra, gp<br> [0x80001d84]:c.swsp ra, 17<br>                                   |
