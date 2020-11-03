
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80100b80')]      |
| SIG_REGION                | [('0x80103204', '0x80103310', '33 dwords')]      |
| COV_LABELS                | jal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jal-01.S/jal-01.S    |
| Total Number of coverpoints| 37     |
| Total Signature Updates   | 32      |
| Total Coverpoints Covered | 3      |
| STAT1                     | 1      |
| STAT2                     | 31      |
| STAT3                     | 32     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000046c]:jal zero, 4
      [0x80000470]:auipc gp, 0
      [0x80000474]:addi gp, gp, 3940
      [0x80000478]:andi gp, gp, 4092
      [0x8000047c]:sub s8, s8, gp
      [0x80000480]:sd s8, 8(ra)
 -- Signature Address: 0x80103218 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000494]:jal zero, 524304
      [0x800804a4]:auipc gp, 1048448
      [0x800804a8]:addi gp, gp, 4064
      [0x800804ac]:andi gp, gp, 4092
      [0x800804b0]:sub sp, sp, gp
      [0x800804b4]:sd sp, 16(ra)
 -- Signature Address: 0x80103220 Data: 0x0000000000080011
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801004d0]:jal zero, 4
      [0x801004d4]:auipc gp, 1048448
      [0x801004d8]:addi gp, gp, 4068
      [0x801004dc]:andi gp, gp, 4092
      [0x801004e0]:sub a0, a0, gp
      [0x801004e4]:sd a0, 24(ra)
 -- Signature Address: 0x80103228 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010050c]:jal zero, 4
      [0x80100510]:auipc gp, 0
      [0x80100514]:addi gp, gp, 4056
      [0x80100518]:andi gp, gp, 4092
      [0x8010051c]:sub a7, a7, gp
      [0x80100520]:sd a7, 32(ra)
 -- Signature Address: 0x80103230 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100548]:jal zero, 4
      [0x8010054c]:auipc gp, 0
      [0x80100550]:addi gp, gp, 4056
      [0x80100554]:andi gp, gp, 4092
      [0x80100558]:sub s2, s2, gp
      [0x8010055c]:sd s2, 40(ra)
 -- Signature Address: 0x80103238 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100584]:jal zero, 4
      [0x80100588]:auipc gp, 0
      [0x8010058c]:addi gp, gp, 4056
      [0x80100590]:andi gp, gp, 4092
      [0x80100594]:sub a1, a1, gp
      [0x80100598]:sd a1, 48(ra)
 -- Signature Address: 0x80103240 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801005c0]:jal zero, 4
      [0x801005c4]:auipc gp, 0
      [0x801005c8]:addi gp, gp, 4056
      [0x801005cc]:andi gp, gp, 4092
      [0x801005d0]:sub fp, fp, gp
      [0x801005d4]:sd fp, 56(ra)
 -- Signature Address: 0x80103248 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801005fc]:jal zero, 4
      [0x80100600]:auipc gp, 0
      [0x80100604]:addi gp, gp, 4056
      [0x80100608]:andi gp, gp, 4092
      [0x8010060c]:sub s11, s11, gp
      [0x80100610]:sd s11, 64(ra)
 -- Signature Address: 0x80103250 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100638]:jal zero, 4
      [0x8010063c]:auipc gp, 0
      [0x80100640]:addi gp, gp, 4056
      [0x80100644]:andi gp, gp, 4092
      [0x80100648]:sub a5, a5, gp
      [0x8010064c]:sd a5, 72(ra)
 -- Signature Address: 0x80103258 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100674]:jal zero, 4
      [0x80100678]:auipc gp, 0
      [0x8010067c]:addi gp, gp, 4056
      [0x80100680]:andi gp, gp, 4092
      [0x80100684]:sub s9, s9, gp
      [0x80100688]:sd s9, 80(ra)
 -- Signature Address: 0x80103260 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006b0]:jal zero, 4
      [0x801006b4]:auipc gp, 0
      [0x801006b8]:addi gp, gp, 4056
      [0x801006bc]:andi gp, gp, 4092
      [0x801006c0]:sub a4, a4, gp
      [0x801006c4]:sd a4, 88(ra)
 -- Signature Address: 0x80103268 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006ec]:jal zero, 4
      [0x801006f0]:auipc gp, 0
      [0x801006f4]:addi gp, gp, 4056
      [0x801006f8]:andi gp, gp, 4092
      [0x801006fc]:sub s3, s3, gp
      [0x80100700]:sd s3, 96(ra)
 -- Signature Address: 0x80103270 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100728]:jal zero, 4
      [0x8010072c]:auipc gp, 0
      [0x80100730]:addi gp, gp, 4056
      [0x80100734]:andi gp, gp, 4092
      [0x80100738]:sub t3, t3, gp
      [0x8010073c]:sd t3, 104(ra)
 -- Signature Address: 0x80103278 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100764]:jal zero, 4
      [0x80100768]:auipc gp, 0
      [0x8010076c]:addi gp, gp, 4056
      [0x80100770]:andi gp, gp, 4092
      [0x80100774]:sub a6, a6, gp
      [0x80100778]:sd a6, 112(ra)
 -- Signature Address: 0x80103280 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007a0]:jal zero, 4
      [0x801007a4]:auipc gp, 0
      [0x801007a8]:addi gp, gp, 4056
      [0x801007ac]:andi gp, gp, 4092
      [0x801007b0]:sub s5, s5, gp
      [0x801007b4]:sd s5, 120(ra)
 -- Signature Address: 0x80103288 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007dc]:jal zero, 4
      [0x801007e0]:auipc gp, 0
      [0x801007e4]:addi gp, gp, 4056
      [0x801007e8]:andi gp, gp, 4092
      [0x801007ec]:sub t6, t6, gp
      [0x801007f0]:sd t6, 128(ra)
 -- Signature Address: 0x80103290 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100818]:jal zero, 4
      [0x8010081c]:auipc gp, 0
      [0x80100820]:addi gp, gp, 4056
      [0x80100824]:andi gp, gp, 4092
      [0x80100828]:sub s10, s10, gp
      [0x8010082c]:sd s10, 136(ra)
 -- Signature Address: 0x80103298 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100854]:jal zero, 4
      [0x80100858]:auipc gp, 0
      [0x8010085c]:addi gp, gp, 4056
      [0x80100860]:andi gp, gp, 4092
      [0x80100864]:sub t0, t0, gp
      [0x80100868]:sd t0, 144(ra)
 -- Signature Address: 0x801032a0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100890]:jal zero, 4
      [0x80100894]:auipc gp, 0
      [0x80100898]:addi gp, gp, 4056
      [0x8010089c]:andi gp, gp, 4092
      [0x801008a0]:sub s7, s7, gp
      [0x801008a4]:sd s7, 152(ra)
 -- Signature Address: 0x801032a8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801008cc]:jal zero, 4
      [0x801008d0]:auipc gp, 0
      [0x801008d4]:addi gp, gp, 4056
      [0x801008d8]:andi gp, gp, 4092
      [0x801008dc]:sub t1, t1, gp
      [0x801008e0]:sd t1, 160(ra)
 -- Signature Address: 0x801032b0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100908]:jal zero, 4
      [0x8010090c]:auipc gp, 0
      [0x80100910]:addi gp, gp, 4056
      [0x80100914]:andi gp, gp, 4092
      [0x80100918]:sub zero, zero, gp
      [0x8010091c]:sd zero, 168(ra)
 -- Signature Address: 0x801032b8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100944]:jal zero, 4
      [0x80100948]:auipc gp, 0
      [0x8010094c]:addi gp, gp, 4056
      [0x80100950]:andi gp, gp, 4092
      [0x80100954]:sub s1, s1, gp
      [0x80100958]:sd s1, 176(ra)
 -- Signature Address: 0x801032c0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100980]:jal zero, 4
      [0x80100984]:auipc gp, 0
      [0x80100988]:addi gp, gp, 4056
      [0x8010098c]:andi gp, gp, 4092
      [0x80100990]:sub a2, a2, gp
      [0x80100994]:sd a2, 184(ra)
 -- Signature Address: 0x801032c8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801009bc]:jal zero, 4
      [0x801009c0]:auipc gp, 0
      [0x801009c4]:addi gp, gp, 4056
      [0x801009c8]:andi gp, gp, 4092
      [0x801009cc]:sub t5, t5, gp
      [0x801009d0]:sd t5, 192(ra)
 -- Signature Address: 0x801032d0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801009f8]:jal zero, 4
      [0x801009fc]:auipc gp, 0
      [0x80100a00]:addi gp, gp, 4056
      [0x80100a04]:andi gp, gp, 4092
      [0x80100a08]:sub t2, t2, gp
      [0x80100a0c]:sd t2, 200(ra)
 -- Signature Address: 0x801032d8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100a34]:jal zero, 4
      [0x80100a38]:auipc gp, 0
      [0x80100a3c]:addi gp, gp, 4056
      [0x80100a40]:andi gp, gp, 4092
      [0x80100a44]:sub tp, tp, gp
      [0x80100a48]:sd tp, 208(ra)
 -- Signature Address: 0x801032e0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100a70]:jal zero, 4
      [0x80100a74]:auipc gp, 0
      [0x80100a78]:addi gp, gp, 4056
      [0x80100a7c]:andi gp, gp, 4092
      [0x80100a80]:sub s4, s4, gp
      [0x80100a84]:sd s4, 216(ra)
 -- Signature Address: 0x801032e8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100aac]:jal zero, 4
      [0x80100ab0]:auipc tp, 0
      [0x80100ab4]:addi tp, tp, 4056
      [0x80100ab8]:andi tp, tp, 4092
      [0x80100abc]:sub a3, a3, tp
      [0x80100ac0]:sd a3, 224(ra)
 -- Signature Address: 0x801032f0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100af0]:jal zero, 4
      [0x80100af4]:auipc tp, 0
      [0x80100af8]:addi tp, tp, 4056
      [0x80100afc]:andi tp, tp, 4092
      [0x80100b00]:sub t4, t4, tp
      [0x80100b04]:sd t4, 0(sp)
 -- Signature Address: 0x801032f8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100b2c]:jal zero, 4
      [0x80100b30]:auipc tp, 0
      [0x80100b34]:addi tp, tp, 4056
      [0x80100b38]:andi tp, tp, 4092
      [0x80100b3c]:sub ra, ra, tp
      [0x80100b40]:sd ra, 8(sp)
 -- Signature Address: 0x80103300 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100b68]:jal zero, 4
      [0x80100b6c]:auipc tp, 0
      [0x80100b70]:addi tp, tp, 4056
      [0x80100b74]:andi tp, tp, 4092
      [0x80100b78]:sub gp, gp, tp
      [0x80100b7c]:sd gp, 16(sp)
 -- Signature Address: 0x80103308 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0






```

## Details of STAT3

```
[0x800003ac]:jal s6, 2097144
[0x800003a4]:xori s6, s6, 1

[0x800003e8]:jal s8, 128
[0x80000468]:xori s8, s8, 3

[0x80080490]:jal sp, 1572864
[0x80000490]:xori sp, sp, 1

[0x800804cc]:jal a0, 524288
[0x801004cc]:xori a0, a0, 3

[0x801004fc]:jal a7, 12
[0x80100508]:xori a7, a7, 3

[0x80100538]:jal s2, 12
[0x80100544]:xori s2, s2, 3

[0x80100574]:jal a1, 12
[0x80100580]:xori a1, a1, 3

[0x801005b0]:jal fp, 12
[0x801005bc]:xori fp, fp, 3

[0x801005ec]:jal s11, 12
[0x801005f8]:xori s11, s11, 3

[0x80100628]:jal a5, 12
[0x80100634]:xori a5, a5, 3

[0x80100664]:jal s9, 12
[0x80100670]:xori s9, s9, 3

[0x801006a0]:jal a4, 12
[0x801006ac]:xori a4, a4, 3

[0x801006dc]:jal s3, 12
[0x801006e8]:xori s3, s3, 3

[0x80100718]:jal t3, 12
[0x80100724]:xori t3, t3, 3

[0x80100754]:jal a6, 12
[0x80100760]:xori a6, a6, 3

[0x80100790]:jal s5, 12
[0x8010079c]:xori s5, s5, 3

[0x801007cc]:jal t6, 12
[0x801007d8]:xori t6, t6, 3

[0x80100808]:jal s10, 12
[0x80100814]:xori s10, s10, 3

[0x80100844]:jal t0, 12
[0x80100850]:xori t0, t0, 3

[0x80100880]:jal s7, 12
[0x8010088c]:xori s7, s7, 3

[0x801008bc]:jal t1, 12
[0x801008c8]:xori t1, t1, 3

[0x801008f8]:jal zero, 12
[0x80100904]:xori zero, zero, 3

[0x80100934]:jal s1, 12
[0x80100940]:xori s1, s1, 3

[0x80100970]:jal a2, 12
[0x8010097c]:xori a2, a2, 3

[0x801009ac]:jal t5, 12
[0x801009b8]:xori t5, t5, 3

[0x801009e8]:jal t2, 12
[0x801009f4]:xori t2, t2, 3

[0x80100a24]:jal tp, 12
[0x80100a30]:xori tp, tp, 3

[0x80100a60]:jal s4, 12
[0x80100a6c]:xori s4, s4, 3

[0x80100a9c]:jal a3, 12
[0x80100aa8]:xori a3, a3, 3

[0x80100ae0]:jal t4, 12
[0x80100aec]:xori t4, t4, 3

[0x80100b1c]:jal ra, 12
[0x80100b28]:xori ra, ra, 3

[0x80100b58]:jal gp, 12
[0x80100b64]:xori gp, gp, 3



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
|   1|[0x80103210]<br>0x0000000000000019|- rd : x0<br> - imm_val > 0<br> |[0x800003a8]:jal zero, 24<br> [0x800003c0]:auipc gp, 0<br> [0x800003c4]:addi gp, gp, 4056<br> [0x800003c8]:andi gp, gp, 4092<br> [0x800003cc]:sub s6, s6, gp<br> [0x800003d0]:sd s6, 0(ra)<br> |
