
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80100b90')]      |
| SIG_REGION                | [('0x80103208', '0x80103308', '32 dwords')]      |
| COV_LABELS                | jal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jal-01.S/jal-01.S    |
| Total Number of coverpoints| 37     |
| Total Coverpoints Hit     | 3      |
| Total Signature Updates   | 32      |
| STAT1                     | 1      |
| STAT2                     | 31      |
| STAT3                     | 32     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000478]:jal zero, 4
      [0x8000047c]:auipc t1, 0
      [0x80000480]:addi t1, t1, 3940
      [0x80000484]:andi t1, t1, 4092
      [0x80000488]:sub s9, s9, t1
      [0x8000048c]:sd s9, 8(ra)
 -- Signature Address: 0x80103210 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a0]:jal zero, 524304
      [0x800804b0]:auipc t1, 1048448
      [0x800804b4]:addi t1, t1, 4064
      [0x800804b8]:andi t1, t1, 4092
      [0x800804bc]:sub a1, a1, t1
      [0x800804c0]:sd a1, 16(ra)
 -- Signature Address: 0x80103218 Data: 0x0000000000080011
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801004dc]:jal zero, 4
      [0x801004e0]:auipc t1, 1048448
      [0x801004e4]:addi t1, t1, 4068
      [0x801004e8]:andi t1, t1, 4092
      [0x801004ec]:sub a2, a2, t1
      [0x801004f0]:sd a2, 24(ra)
 -- Signature Address: 0x80103220 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100518]:jal zero, 4
      [0x8010051c]:auipc t1, 0
      [0x80100520]:addi t1, t1, 4056
      [0x80100524]:andi t1, t1, 4092
      [0x80100528]:sub t5, t5, t1
      [0x8010052c]:sd t5, 32(ra)
 -- Signature Address: 0x80103228 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100554]:jal zero, 4
      [0x80100558]:auipc t1, 0
      [0x8010055c]:addi t1, t1, 4056
      [0x80100560]:andi t1, t1, 4092
      [0x80100564]:sub s5, s5, t1
      [0x80100568]:sd s5, 40(ra)
 -- Signature Address: 0x80103230 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100590]:jal zero, 4
      [0x80100594]:auipc t1, 0
      [0x80100598]:addi t1, t1, 4056
      [0x8010059c]:andi t1, t1, 4092
      [0x801005a0]:sub s6, s6, t1
      [0x801005a4]:sd s6, 48(ra)
 -- Signature Address: 0x80103238 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801005cc]:jal zero, 4
      [0x801005d0]:auipc t1, 0
      [0x801005d4]:addi t1, t1, 4056
      [0x801005d8]:andi t1, t1, 4092
      [0x801005dc]:sub t3, t3, t1
      [0x801005e0]:sd t3, 56(ra)
 -- Signature Address: 0x80103240 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100608]:jal zero, 4
      [0x8010060c]:auipc t1, 0
      [0x80100610]:addi t1, t1, 4056
      [0x80100614]:andi t1, t1, 4092
      [0x80100618]:sub s10, s10, t1
      [0x8010061c]:sd s10, 64(ra)
 -- Signature Address: 0x80103248 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100644]:jal zero, 4
      [0x80100648]:auipc t1, 0
      [0x8010064c]:addi t1, t1, 4056
      [0x80100650]:andi t1, t1, 4092
      [0x80100654]:sub s11, s11, t1
      [0x80100658]:sd s11, 72(ra)
 -- Signature Address: 0x80103250 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100680]:jal zero, 4
      [0x80100684]:auipc t1, 0
      [0x80100688]:addi t1, t1, 4056
      [0x8010068c]:andi t1, t1, 4092
      [0x80100690]:sub a3, a3, t1
      [0x80100694]:sd a3, 80(ra)
 -- Signature Address: 0x80103258 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006bc]:jal zero, 4
      [0x801006c0]:auipc t1, 0
      [0x801006c4]:addi t1, t1, 4056
      [0x801006c8]:andi t1, t1, 4092
      [0x801006cc]:sub s7, s7, t1
      [0x801006d0]:sd s7, 88(ra)
 -- Signature Address: 0x80103260 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006f8]:jal zero, 4
      [0x801006fc]:auipc t1, 0
      [0x80100700]:addi t1, t1, 4056
      [0x80100704]:andi t1, t1, 4092
      [0x80100708]:sub sp, sp, t1
      [0x8010070c]:sd sp, 96(ra)
 -- Signature Address: 0x80103268 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100734]:jal zero, 4
      [0x80100738]:auipc t1, 0
      [0x8010073c]:addi t1, t1, 4056
      [0x80100740]:andi t1, t1, 4092
      [0x80100744]:sub t2, t2, t1
      [0x80100748]:sd t2, 104(ra)
 -- Signature Address: 0x80103270 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100770]:jal zero, 4
      [0x80100774]:auipc t1, 0
      [0x80100778]:addi t1, t1, 4056
      [0x8010077c]:andi t1, t1, 4092
      [0x80100780]:sub t6, t6, t1
      [0x80100784]:sd t6, 112(ra)
 -- Signature Address: 0x80103278 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007ac]:jal zero, 4
      [0x801007b0]:auipc t1, 0
      [0x801007b4]:addi t1, t1, 4056
      [0x801007b8]:andi t1, t1, 4092
      [0x801007bc]:sub s8, s8, t1
      [0x801007c0]:sd s8, 120(ra)
 -- Signature Address: 0x80103280 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007e8]:jal zero, 4
      [0x801007ec]:auipc t1, 0
      [0x801007f0]:addi t1, t1, 4056
      [0x801007f4]:andi t1, t1, 4092
      [0x801007f8]:sub a7, a7, t1
      [0x801007fc]:sd a7, 128(ra)
 -- Signature Address: 0x80103288 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100824]:jal zero, 4
      [0x80100828]:auipc t1, 0
      [0x8010082c]:addi t1, t1, 4056
      [0x80100830]:andi t1, t1, 4092
      [0x80100834]:sub fp, fp, t1
      [0x80100838]:sd fp, 136(ra)
 -- Signature Address: 0x80103290 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100860]:jal zero, 4
      [0x80100864]:auipc t1, 0
      [0x80100868]:addi t1, t1, 4056
      [0x8010086c]:andi t1, t1, 4092
      [0x80100870]:sub gp, gp, t1
      [0x80100874]:sd gp, 144(ra)
 -- Signature Address: 0x80103298 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010089c]:jal zero, 4
      [0x801008a0]:auipc t1, 0
      [0x801008a4]:addi t1, t1, 4056
      [0x801008a8]:andi t1, t1, 4092
      [0x801008ac]:sub t4, t4, t1
      [0x801008b0]:sd t4, 152(ra)
 -- Signature Address: 0x801032a0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801008d8]:jal zero, 4
      [0x801008dc]:auipc t1, 0
      [0x801008e0]:addi t1, t1, 4056
      [0x801008e4]:andi t1, t1, 4092
      [0x801008e8]:sub s2, s2, t1
      [0x801008ec]:sd s2, 160(ra)
 -- Signature Address: 0x801032a8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100914]:jal zero, 4
      [0x80100918]:auipc t1, 0
      [0x8010091c]:addi t1, t1, 4056
      [0x80100920]:andi t1, t1, 4092
      [0x80100924]:sub s1, s1, t1
      [0x80100928]:sd s1, 168(ra)
 -- Signature Address: 0x801032b0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100950]:jal zero, 4
      [0x80100954]:auipc t1, 0
      [0x80100958]:addi t1, t1, 4056
      [0x8010095c]:andi t1, t1, 4092
      [0x80100960]:sub s4, s4, t1
      [0x80100964]:sd s4, 176(ra)
 -- Signature Address: 0x801032b8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010098c]:jal zero, 4
      [0x80100990]:auipc t1, 0
      [0x80100994]:addi t1, t1, 4056
      [0x80100998]:andi t1, t1, 4092
      [0x8010099c]:sub a5, a5, t1
      [0x801009a0]:sd a5, 184(ra)
 -- Signature Address: 0x801032c0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801009c8]:jal zero, 4
      [0x801009cc]:auipc t1, 0
      [0x801009d0]:addi t1, t1, 4056
      [0x801009d4]:andi t1, t1, 4092
      [0x801009d8]:sub zero, zero, t1
      [0x801009dc]:sd zero, 192(ra)
 -- Signature Address: 0x801032c8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100a04]:jal zero, 4
      [0x80100a08]:auipc t1, 0
      [0x80100a0c]:addi t1, t1, 4056
      [0x80100a10]:andi t1, t1, 4092
      [0x80100a14]:sub s3, s3, t1
      [0x80100a18]:sd s3, 200(ra)
 -- Signature Address: 0x801032d0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100a40]:jal zero, 4
      [0x80100a44]:auipc t1, 0
      [0x80100a48]:addi t1, t1, 4056
      [0x80100a4c]:andi t1, t1, 4092
      [0x80100a50]:sub tp, tp, t1
      [0x80100a54]:sd tp, 208(ra)
 -- Signature Address: 0x801032d8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100a7c]:jal zero, 4
      [0x80100a80]:auipc t1, 0
      [0x80100a84]:addi t1, t1, 4056
      [0x80100a88]:andi t1, t1, 4092
      [0x80100a8c]:sub t0, t0, t1
      [0x80100a90]:sd t0, 216(ra)
 -- Signature Address: 0x801032e0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100ab8]:jal zero, 4
      [0x80100abc]:auipc gp, 0
      [0x80100ac0]:addi gp, gp, 4056
      [0x80100ac4]:andi gp, gp, 4092
      [0x80100ac8]:sub a6, a6, gp
      [0x80100acc]:sd a6, 224(ra)
 -- Signature Address: 0x801032e8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100afc]:jal zero, 4
      [0x80100b00]:auipc gp, 0
      [0x80100b04]:addi gp, gp, 4056
      [0x80100b08]:andi gp, gp, 4092
      [0x80100b0c]:sub t1, t1, gp
      [0x80100b10]:sd t1, 0(sp)
 -- Signature Address: 0x801032f0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100b38]:jal zero, 4
      [0x80100b3c]:auipc gp, 0
      [0x80100b40]:addi gp, gp, 4056
      [0x80100b44]:andi gp, gp, 4092
      [0x80100b48]:sub a4, a4, gp
      [0x80100b4c]:sd a4, 8(sp)
 -- Signature Address: 0x801032f8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100b74]:jal zero, 4
      [0x80100b78]:auipc gp, 0
      [0x80100b7c]:addi gp, gp, 4056
      [0x80100b80]:andi gp, gp, 4092
      [0x80100b84]:sub ra, ra, gp
      [0x80100b88]:sd ra, 16(sp)
 -- Signature Address: 0x80103300 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0






```

## Details of STAT3

```
[0x800003b8]:jal a0, 2097132
[0x800003a4]:xori a0, a0, 1

[0x800003f4]:jal s9, 128
[0x80000474]:xori s9, s9, 3

[0x8008049c]:jal a1, 1572864
[0x8000049c]:xori a1, a1, 1

[0x800804d8]:jal a2, 524288
[0x801004d8]:xori a2, a2, 3

[0x80100508]:jal t5, 12
[0x80100514]:xori t5, t5, 3

[0x80100544]:jal s5, 12
[0x80100550]:xori s5, s5, 3

[0x80100580]:jal s6, 12
[0x8010058c]:xori s6, s6, 3

[0x801005bc]:jal t3, 12
[0x801005c8]:xori t3, t3, 3

[0x801005f8]:jal s10, 12
[0x80100604]:xori s10, s10, 3

[0x80100634]:jal s11, 12
[0x80100640]:xori s11, s11, 3

[0x80100670]:jal a3, 12
[0x8010067c]:xori a3, a3, 3

[0x801006ac]:jal s7, 12
[0x801006b8]:xori s7, s7, 3

[0x801006e8]:jal sp, 12
[0x801006f4]:xori sp, sp, 3

[0x80100724]:jal t2, 12
[0x80100730]:xori t2, t2, 3

[0x80100760]:jal t6, 12
[0x8010076c]:xori t6, t6, 3

[0x8010079c]:jal s8, 12
[0x801007a8]:xori s8, s8, 3

[0x801007d8]:jal a7, 12
[0x801007e4]:xori a7, a7, 3

[0x80100814]:jal fp, 12
[0x80100820]:xori fp, fp, 3

[0x80100850]:jal gp, 12
[0x8010085c]:xori gp, gp, 3

[0x8010088c]:jal t4, 12
[0x80100898]:xori t4, t4, 3

[0x801008c8]:jal s2, 12
[0x801008d4]:xori s2, s2, 3

[0x80100904]:jal s1, 12
[0x80100910]:xori s1, s1, 3

[0x80100940]:jal s4, 12
[0x8010094c]:xori s4, s4, 3

[0x8010097c]:jal a5, 12
[0x80100988]:xori a5, a5, 3

[0x801009b8]:jal zero, 12
[0x801009c4]:xori zero, zero, 3

[0x801009f4]:jal s3, 12
[0x80100a00]:xori s3, s3, 3

[0x80100a30]:jal tp, 12
[0x80100a3c]:xori tp, tp, 3

[0x80100a6c]:jal t0, 12
[0x80100a78]:xori t0, t0, 3

[0x80100aa8]:jal a6, 12
[0x80100ab4]:xori a6, a6, 3

[0x80100aec]:jal t1, 12
[0x80100af8]:xori t1, t1, 3

[0x80100b28]:jal a4, 12
[0x80100b34]:xori a4, a4, 3

[0x80100b64]:jal ra, 12
[0x80100b70]:xori ra, ra, 3



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

|s.no|            signature             |          coverpoints           |                                                                                             code                                                                                              |
|---:|----------------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80103208]<br>0x0000000000000025|- rd : x0<br> - imm_val > 0<br> |[0x800003a8]:jal zero, 36<br> [0x800003cc]:auipc t1, 0<br> [0x800003d0]:addi t1, t1, 4044<br> [0x800003d4]:andi t1, t1, 4092<br> [0x800003d8]:sub a0, a0, t1<br> [0x800003dc]:sd a0, 0(ra)<br> |
