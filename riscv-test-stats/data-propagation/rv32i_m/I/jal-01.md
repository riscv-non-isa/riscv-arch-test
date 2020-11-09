
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x801008f0')]      |
| SIG_REGION                | [('0x80103204', '0x80103284', '32 words')]      |
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
      [0x800001d4]:jal zero, 4
      [0x800001d8]:auipc a4, 0
      [0x800001dc]:addi a4, a4, 3940
      [0x800001e0]:andi a4, a4, 4092
      [0x800001e4]:sub s11, s11, a4
      [0x800001e8]:sw s11, 4(t0)
 -- Signature Address: 0x80103208 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800001fc]:jal zero, 524304
      [0x8008020c]:auipc a4, 1048448
      [0x80080210]:addi a4, a4, 4064
      [0x80080214]:andi a4, a4, 4092
      [0x80080218]:sub s3, s3, a4
      [0x8008021c]:sw s3, 8(t0)
 -- Signature Address: 0x8010320c Data: 0x00080011
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100238]:jal zero, 4
      [0x8010023c]:auipc a4, 1048448
      [0x80100240]:addi a4, a4, 4068
      [0x80100244]:andi a4, a4, 4092
      [0x80100248]:sub a7, a7, a4
      [0x8010024c]:sw a7, 12(t0)
 -- Signature Address: 0x80103210 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100274]:jal zero, 4
      [0x80100278]:auipc a4, 0
      [0x8010027c]:addi a4, a4, 4056
      [0x80100280]:andi a4, a4, 4092
      [0x80100284]:sub a1, a1, a4
      [0x80100288]:sw a1, 16(t0)
 -- Signature Address: 0x80103214 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801002b0]:jal zero, 4
      [0x801002b4]:auipc a4, 0
      [0x801002b8]:addi a4, a4, 4056
      [0x801002bc]:andi a4, a4, 4092
      [0x801002c0]:sub sp, sp, a4
      [0x801002c4]:sw sp, 20(t0)
 -- Signature Address: 0x80103218 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801002ec]:jal zero, 4
      [0x801002f0]:auipc a4, 0
      [0x801002f4]:addi a4, a4, 4056
      [0x801002f8]:andi a4, a4, 4092
      [0x801002fc]:sub a3, a3, a4
      [0x80100300]:sw a3, 24(t0)
 -- Signature Address: 0x8010321c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100328]:jal zero, 4
      [0x8010032c]:auipc a4, 0
      [0x80100330]:addi a4, a4, 4056
      [0x80100334]:andi a4, a4, 4092
      [0x80100338]:sub t3, t3, a4
      [0x8010033c]:sw t3, 28(t0)
 -- Signature Address: 0x80103220 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100364]:jal zero, 4
      [0x80100368]:auipc a4, 0
      [0x8010036c]:addi a4, a4, 4056
      [0x80100370]:andi a4, a4, 4092
      [0x80100374]:sub gp, gp, a4
      [0x80100378]:sw gp, 32(t0)
 -- Signature Address: 0x80103224 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801003a0]:jal zero, 4
      [0x801003a4]:auipc a4, 0
      [0x801003a8]:addi a4, a4, 4056
      [0x801003ac]:andi a4, a4, 4092
      [0x801003b0]:sub t6, t6, a4
      [0x801003b4]:sw t6, 36(t0)
 -- Signature Address: 0x80103228 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801003dc]:jal zero, 4
      [0x801003e0]:auipc a4, 0
      [0x801003e4]:addi a4, a4, 4056
      [0x801003e8]:andi a4, a4, 4092
      [0x801003ec]:sub s4, s4, a4
      [0x801003f0]:sw s4, 40(t0)
 -- Signature Address: 0x8010322c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100418]:jal zero, 4
      [0x8010041c]:auipc a4, 0
      [0x80100420]:addi a4, a4, 4056
      [0x80100424]:andi a4, a4, 4092
      [0x80100428]:sub s10, s10, a4
      [0x8010042c]:sw s10, 44(t0)
 -- Signature Address: 0x80103230 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100454]:jal zero, 4
      [0x80100458]:auipc a4, 0
      [0x8010045c]:addi a4, a4, 4056
      [0x80100460]:andi a4, a4, 4092
      [0x80100464]:sub ra, ra, a4
      [0x80100468]:sw ra, 48(t0)
 -- Signature Address: 0x80103234 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100490]:jal zero, 4
      [0x80100494]:auipc a4, 0
      [0x80100498]:addi a4, a4, 4056
      [0x8010049c]:andi a4, a4, 4092
      [0x801004a0]:sub fp, fp, a4
      [0x801004a4]:sw fp, 52(t0)
 -- Signature Address: 0x80103238 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801004cc]:jal zero, 4
      [0x801004d0]:auipc a4, 0
      [0x801004d4]:addi a4, a4, 4056
      [0x801004d8]:andi a4, a4, 4092
      [0x801004dc]:sub a2, a2, a4
      [0x801004e0]:sw a2, 56(t0)
 -- Signature Address: 0x8010323c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100508]:jal zero, 4
      [0x8010050c]:auipc a4, 0
      [0x80100510]:addi a4, a4, 4056
      [0x80100514]:andi a4, a4, 4092
      [0x80100518]:sub a0, a0, a4
      [0x8010051c]:sw a0, 60(t0)
 -- Signature Address: 0x80103240 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100544]:jal zero, 4
      [0x80100548]:auipc a4, 0
      [0x8010054c]:addi a4, a4, 4056
      [0x80100550]:andi a4, a4, 4092
      [0x80100554]:sub zero, zero, a4
      [0x80100558]:sw zero, 64(t0)
 -- Signature Address: 0x80103244 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100580]:jal zero, 4
      [0x80100584]:auipc a4, 0
      [0x80100588]:addi a4, a4, 4056
      [0x8010058c]:andi a4, a4, 4092
      [0x80100590]:sub a6, a6, a4
      [0x80100594]:sw a6, 68(t0)
 -- Signature Address: 0x80103248 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801005bc]:jal zero, 4
      [0x801005c0]:auipc a4, 0
      [0x801005c4]:addi a4, a4, 4056
      [0x801005c8]:andi a4, a4, 4092
      [0x801005cc]:sub s7, s7, a4
      [0x801005d0]:sw s7, 72(t0)
 -- Signature Address: 0x8010324c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801005f8]:jal zero, 4
      [0x801005fc]:auipc a4, 0
      [0x80100600]:addi a4, a4, 4056
      [0x80100604]:andi a4, a4, 4092
      [0x80100608]:sub a5, a5, a4
      [0x8010060c]:sw a5, 76(t0)
 -- Signature Address: 0x80103250 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100634]:jal zero, 4
      [0x80100638]:auipc a4, 0
      [0x8010063c]:addi a4, a4, 4056
      [0x80100640]:andi a4, a4, 4092
      [0x80100644]:sub tp, tp, a4
      [0x80100648]:sw tp, 80(t0)
 -- Signature Address: 0x80103254 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100670]:jal zero, 4
      [0x80100674]:auipc a4, 0
      [0x80100678]:addi a4, a4, 4056
      [0x8010067c]:andi a4, a4, 4092
      [0x80100680]:sub t1, t1, a4
      [0x80100684]:sw t1, 84(t0)
 -- Signature Address: 0x80103258 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006ac]:jal zero, 4
      [0x801006b0]:auipc a4, 0
      [0x801006b4]:addi a4, a4, 4056
      [0x801006b8]:andi a4, a4, 4092
      [0x801006bc]:sub s5, s5, a4
      [0x801006c0]:sw s5, 88(t0)
 -- Signature Address: 0x8010325c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006e8]:jal zero, 4
      [0x801006ec]:auipc a4, 0
      [0x801006f0]:addi a4, a4, 4056
      [0x801006f4]:andi a4, a4, 4092
      [0x801006f8]:sub t4, t4, a4
      [0x801006fc]:sw t4, 92(t0)
 -- Signature Address: 0x80103260 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100724]:jal zero, 4
      [0x80100728]:auipc a4, 0
      [0x8010072c]:addi a4, a4, 4056
      [0x80100730]:andi a4, a4, 4092
      [0x80100734]:sub t5, t5, a4
      [0x80100738]:sw t5, 96(t0)
 -- Signature Address: 0x80103264 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100760]:jal zero, 4
      [0x80100764]:auipc a4, 0
      [0x80100768]:addi a4, a4, 4056
      [0x8010076c]:andi a4, a4, 4092
      [0x80100770]:sub s6, s6, a4
      [0x80100774]:sw s6, 100(t0)
 -- Signature Address: 0x80103268 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010079c]:jal zero, 4
      [0x801007a0]:auipc a4, 0
      [0x801007a4]:addi a4, a4, 4056
      [0x801007a8]:andi a4, a4, 4092
      [0x801007ac]:sub s9, s9, a4
      [0x801007b0]:sw s9, 104(t0)
 -- Signature Address: 0x8010326c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007d8]:jal zero, 4
      [0x801007dc]:auipc a4, 0
      [0x801007e0]:addi a4, a4, 4056
      [0x801007e4]:andi a4, a4, 4092
      [0x801007e8]:sub t2, t2, a4
      [0x801007ec]:sw t2, 108(t0)
 -- Signature Address: 0x80103270 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100814]:jal zero, 4
      [0x80100818]:auipc sp, 0
      [0x8010081c]:addi sp, sp, 4056
      [0x80100820]:andi sp, sp, 4092
      [0x80100824]:sub a4, a4, sp
      [0x80100828]:sw a4, 112(t0)
 -- Signature Address: 0x80103274 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100858]:jal zero, 4
      [0x8010085c]:auipc sp, 0
      [0x80100860]:addi sp, sp, 4056
      [0x80100864]:andi sp, sp, 4092
      [0x80100868]:sub s2, s2, sp
      [0x8010086c]:sw s2, 0(ra)
 -- Signature Address: 0x80103278 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100894]:jal zero, 4
      [0x80100898]:auipc sp, 0
      [0x8010089c]:addi sp, sp, 4056
      [0x801008a0]:andi sp, sp, 4092
      [0x801008a4]:sub t0, t0, sp
      [0x801008a8]:sw t0, 4(ra)
 -- Signature Address: 0x8010327c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801008d0]:jal zero, 4
      [0x801008d4]:auipc sp, 0
      [0x801008d8]:addi sp, sp, 4056
      [0x801008dc]:andi sp, sp, 4092
      [0x801008e0]:sub s8, s8, sp
      [0x801008e4]:sw s8, 8(ra)
 -- Signature Address: 0x80103280 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0






```

## Details of STAT3

```
[0x80000114]:jal s1, 2097144
[0x8000010c]:xori s1, s1, 1

[0x80000150]:jal s11, 128
[0x800001d0]:xori s11, s11, 3

[0x800801f8]:jal s3, 1572864
[0x800001f8]:xori s3, s3, 1

[0x80080234]:jal a7, 524288
[0x80100234]:xori a7, a7, 3

[0x80100264]:jal a1, 12
[0x80100270]:xori a1, a1, 3

[0x801002a0]:jal sp, 12
[0x801002ac]:xori sp, sp, 3

[0x801002dc]:jal a3, 12
[0x801002e8]:xori a3, a3, 3

[0x80100318]:jal t3, 12
[0x80100324]:xori t3, t3, 3

[0x80100354]:jal gp, 12
[0x80100360]:xori gp, gp, 3

[0x80100390]:jal t6, 12
[0x8010039c]:xori t6, t6, 3

[0x801003cc]:jal s4, 12
[0x801003d8]:xori s4, s4, 3

[0x80100408]:jal s10, 12
[0x80100414]:xori s10, s10, 3

[0x80100444]:jal ra, 12
[0x80100450]:xori ra, ra, 3

[0x80100480]:jal fp, 12
[0x8010048c]:xori fp, fp, 3

[0x801004bc]:jal a2, 12
[0x801004c8]:xori a2, a2, 3

[0x801004f8]:jal a0, 12
[0x80100504]:xori a0, a0, 3

[0x80100534]:jal zero, 12
[0x80100540]:xori zero, zero, 3

[0x80100570]:jal a6, 12
[0x8010057c]:xori a6, a6, 3

[0x801005ac]:jal s7, 12
[0x801005b8]:xori s7, s7, 3

[0x801005e8]:jal a5, 12
[0x801005f4]:xori a5, a5, 3

[0x80100624]:jal tp, 12
[0x80100630]:xori tp, tp, 3

[0x80100660]:jal t1, 12
[0x8010066c]:xori t1, t1, 3

[0x8010069c]:jal s5, 12
[0x801006a8]:xori s5, s5, 3

[0x801006d8]:jal t4, 12
[0x801006e4]:xori t4, t4, 3

[0x80100714]:jal t5, 12
[0x80100720]:xori t5, t5, 3

[0x80100750]:jal s6, 12
[0x8010075c]:xori s6, s6, 3

[0x8010078c]:jal s9, 12
[0x80100798]:xori s9, s9, 3

[0x801007c8]:jal t2, 12
[0x801007d4]:xori t2, t2, 3

[0x80100804]:jal a4, 12
[0x80100810]:xori a4, a4, 3

[0x80100848]:jal s2, 12
[0x80100854]:xori s2, s2, 3

[0x80100884]:jal t0, 12
[0x80100890]:xori t0, t0, 3

[0x801008c0]:jal s8, 12
[0x801008cc]:xori s8, s8, 3



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

|s.no|        signature         |          coverpoints           |                                                                                             code                                                                                              |
|---:|--------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80103204]<br>0x00000019|- rd : x0<br> - imm_val > 0<br> |[0x80000110]:jal zero, 24<br> [0x80000128]:auipc a4, 0<br> [0x8000012c]:addi a4, a4, 4056<br> [0x80000130]:andi a4, a4, 4092<br> [0x80000134]:sub s1, s1, a4<br> [0x80000138]:sw s1, 0(t0)<br> |
