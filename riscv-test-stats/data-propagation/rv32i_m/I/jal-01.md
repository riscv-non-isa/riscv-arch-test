
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80100880')]      |
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
      [0x80000168]:jal zero, 4
      [0x8000016c]:auipc a5, 0
      [0x80000170]:addi a5, a5, 4056
      [0x80000174]:andi a5, a5, 4092
      [0x80000178]:sub t5, t5, a5
      [0x8000017c]:sw t5, 4(t2)
 -- Signature Address: 0x80103208 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000190]:jal zero, 524304
      [0x800801a0]:auipc a5, 1048448
      [0x800801a4]:addi a5, a5, 4064
      [0x800801a8]:andi a5, a5, 4092
      [0x800801ac]:sub t4, t4, a5
      [0x800801b0]:sw t4, 8(t2)
 -- Signature Address: 0x8010320c Data: 0x00080011
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801001cc]:jal zero, 4
      [0x801001d0]:auipc a5, 1048448
      [0x801001d4]:addi a5, a5, 4068
      [0x801001d8]:andi a5, a5, 4092
      [0x801001dc]:sub a0, a0, a5
      [0x801001e0]:sw a0, 12(t2)
 -- Signature Address: 0x80103210 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100208]:jal zero, 4
      [0x8010020c]:auipc a5, 0
      [0x80100210]:addi a5, a5, 4056
      [0x80100214]:andi a5, a5, 4092
      [0x80100218]:sub t6, t6, a5
      [0x8010021c]:sw t6, 16(t2)
 -- Signature Address: 0x80103214 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100244]:jal zero, 4
      [0x80100248]:auipc a5, 0
      [0x8010024c]:addi a5, a5, 4056
      [0x80100250]:andi a5, a5, 4092
      [0x80100254]:sub a1, a1, a5
      [0x80100258]:sw a1, 20(t2)
 -- Signature Address: 0x80103218 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100280]:jal zero, 4
      [0x80100284]:auipc a5, 0
      [0x80100288]:addi a5, a5, 4056
      [0x8010028c]:andi a5, a5, 4092
      [0x80100290]:sub tp, tp, a5
      [0x80100294]:sw tp, 24(t2)
 -- Signature Address: 0x8010321c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801002bc]:jal zero, 4
      [0x801002c0]:auipc a5, 0
      [0x801002c4]:addi a5, a5, 4056
      [0x801002c8]:andi a5, a5, 4092
      [0x801002cc]:sub s3, s3, a5
      [0x801002d0]:sw s3, 28(t2)
 -- Signature Address: 0x80103220 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801002f8]:jal zero, 4
      [0x801002fc]:auipc a5, 0
      [0x80100300]:addi a5, a5, 4056
      [0x80100304]:andi a5, a5, 4092
      [0x80100308]:sub t1, t1, a5
      [0x8010030c]:sw t1, 32(t2)
 -- Signature Address: 0x80103224 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100334]:jal zero, 4
      [0x80100338]:auipc a5, 0
      [0x8010033c]:addi a5, a5, 4056
      [0x80100340]:andi a5, a5, 4092
      [0x80100344]:sub a2, a2, a5
      [0x80100348]:sw a2, 36(t2)
 -- Signature Address: 0x80103228 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100370]:jal zero, 4
      [0x80100374]:auipc a5, 0
      [0x80100378]:addi a5, a5, 4056
      [0x8010037c]:andi a5, a5, 4092
      [0x80100380]:sub s7, s7, a5
      [0x80100384]:sw s7, 40(t2)
 -- Signature Address: 0x8010322c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801003ac]:jal zero, 4
      [0x801003b0]:auipc a5, 0
      [0x801003b4]:addi a5, a5, 4056
      [0x801003b8]:andi a5, a5, 4092
      [0x801003bc]:sub gp, gp, a5
      [0x801003c0]:sw gp, 44(t2)
 -- Signature Address: 0x80103230 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801003e8]:jal zero, 4
      [0x801003ec]:auipc a5, 0
      [0x801003f0]:addi a5, a5, 4056
      [0x801003f4]:andi a5, a5, 4092
      [0x801003f8]:sub s1, s1, a5
      [0x801003fc]:sw s1, 48(t2)
 -- Signature Address: 0x80103234 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100424]:jal zero, 4
      [0x80100428]:auipc a5, 0
      [0x8010042c]:addi a5, a5, 4056
      [0x80100430]:andi a5, a5, 4092
      [0x80100434]:sub sp, sp, a5
      [0x80100438]:sw sp, 52(t2)
 -- Signature Address: 0x80103238 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100460]:jal zero, 4
      [0x80100464]:auipc a5, 0
      [0x80100468]:addi a5, a5, 4056
      [0x8010046c]:andi a5, a5, 4092
      [0x80100470]:sub a7, a7, a5
      [0x80100474]:sw a7, 56(t2)
 -- Signature Address: 0x8010323c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010049c]:jal zero, 4
      [0x801004a0]:auipc a5, 0
      [0x801004a4]:addi a5, a5, 4056
      [0x801004a8]:andi a5, a5, 4092
      [0x801004ac]:sub s4, s4, a5
      [0x801004b0]:sw s4, 60(t2)
 -- Signature Address: 0x80103240 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801004d8]:jal zero, 4
      [0x801004dc]:auipc a5, 0
      [0x801004e0]:addi a5, a5, 4056
      [0x801004e4]:andi a5, a5, 4092
      [0x801004e8]:sub s11, s11, a5
      [0x801004ec]:sw s11, 64(t2)
 -- Signature Address: 0x80103244 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100514]:jal zero, 4
      [0x80100518]:auipc a5, 0
      [0x8010051c]:addi a5, a5, 4056
      [0x80100520]:andi a5, a5, 4092
      [0x80100524]:sub a6, a6, a5
      [0x80100528]:sw a6, 68(t2)
 -- Signature Address: 0x80103248 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100550]:jal zero, 4
      [0x80100554]:auipc a5, 0
      [0x80100558]:addi a5, a5, 4056
      [0x8010055c]:andi a5, a5, 4092
      [0x80100560]:sub zero, zero, a5
      [0x80100564]:sw zero, 72(t2)
 -- Signature Address: 0x8010324c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010058c]:jal zero, 4
      [0x80100590]:auipc a5, 0
      [0x80100594]:addi a5, a5, 4056
      [0x80100598]:andi a5, a5, 4092
      [0x8010059c]:sub a3, a3, a5
      [0x801005a0]:sw a3, 76(t2)
 -- Signature Address: 0x80103250 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801005c8]:jal zero, 4
      [0x801005cc]:auipc a5, 0
      [0x801005d0]:addi a5, a5, 4056
      [0x801005d4]:andi a5, a5, 4092
      [0x801005d8]:sub s10, s10, a5
      [0x801005dc]:sw s10, 80(t2)
 -- Signature Address: 0x80103254 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100604]:jal zero, 4
      [0x80100608]:auipc a5, 0
      [0x8010060c]:addi a5, a5, 4056
      [0x80100610]:andi a5, a5, 4092
      [0x80100614]:sub ra, ra, a5
      [0x80100618]:sw ra, 84(t2)
 -- Signature Address: 0x80103258 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100640]:jal zero, 4
      [0x80100644]:auipc a5, 0
      [0x80100648]:addi a5, a5, 4056
      [0x8010064c]:andi a5, a5, 4092
      [0x80100650]:sub t0, t0, a5
      [0x80100654]:sw t0, 88(t2)
 -- Signature Address: 0x8010325c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010067c]:jal zero, 4
      [0x80100680]:auipc a5, 0
      [0x80100684]:addi a5, a5, 4056
      [0x80100688]:andi a5, a5, 4092
      [0x8010068c]:sub a4, a4, a5
      [0x80100690]:sw a4, 92(t2)
 -- Signature Address: 0x80103260 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006b8]:jal zero, 4
      [0x801006bc]:auipc a5, 0
      [0x801006c0]:addi a5, a5, 4056
      [0x801006c4]:andi a5, a5, 4092
      [0x801006c8]:sub t3, t3, a5
      [0x801006cc]:sw t3, 96(t2)
 -- Signature Address: 0x80103264 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006f4]:jal zero, 4
      [0x801006f8]:auipc a5, 0
      [0x801006fc]:addi a5, a5, 4056
      [0x80100700]:andi a5, a5, 4092
      [0x80100704]:sub s8, s8, a5
      [0x80100708]:sw s8, 100(t2)
 -- Signature Address: 0x80103268 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100730]:jal zero, 4
      [0x80100734]:auipc a5, 0
      [0x80100738]:addi a5, a5, 4056
      [0x8010073c]:andi a5, a5, 4092
      [0x80100740]:sub fp, fp, a5
      [0x80100744]:sw fp, 104(t2)
 -- Signature Address: 0x8010326c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010076c]:jal zero, 4
      [0x80100770]:auipc a5, 0
      [0x80100774]:addi a5, a5, 4056
      [0x80100778]:andi a5, a5, 4092
      [0x8010077c]:sub s2, s2, a5
      [0x80100780]:sw s2, 108(t2)
 -- Signature Address: 0x80103270 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007a8]:jal zero, 4
      [0x801007ac]:auipc sp, 0
      [0x801007b0]:addi sp, sp, 4056
      [0x801007b4]:andi sp, sp, 4092
      [0x801007b8]:sub s6, s6, sp
      [0x801007bc]:sw s6, 112(t2)
 -- Signature Address: 0x80103274 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007ec]:jal zero, 4
      [0x801007f0]:auipc sp, 0
      [0x801007f4]:addi sp, sp, 4056
      [0x801007f8]:andi sp, sp, 4092
      [0x801007fc]:sub a5, a5, sp
      [0x80100800]:sw a5, 0(ra)
 -- Signature Address: 0x80103278 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100828]:jal zero, 4
      [0x8010082c]:auipc sp, 0
      [0x80100830]:addi sp, sp, 4056
      [0x80100834]:andi sp, sp, 4092
      [0x80100838]:sub s5, s5, sp
      [0x8010083c]:sw s5, 4(ra)
 -- Signature Address: 0x8010327c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100864]:jal zero, 4
      [0x80100868]:auipc sp, 0
      [0x8010086c]:addi sp, sp, 4056
      [0x80100870]:andi sp, sp, 4092
      [0x80100874]:sub t2, t2, sp
      [0x80100878]:sw t2, 8(ra)
 -- Signature Address: 0x80103280 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0






```

## Details of STAT3

```
[0x8000011c]:jal s9, 2097136
[0x8000010c]:xori s9, s9, 1

[0x80000158]:jal t5, 12
[0x80000164]:xori t5, t5, 3

[0x8008018c]:jal t4, 1572864
[0x8000018c]:xori t4, t4, 1

[0x800801c8]:jal a0, 524288
[0x801001c8]:xori a0, a0, 3

[0x801001f8]:jal t6, 12
[0x80100204]:xori t6, t6, 3

[0x80100234]:jal a1, 12
[0x80100240]:xori a1, a1, 3

[0x80100270]:jal tp, 12
[0x8010027c]:xori tp, tp, 3

[0x801002ac]:jal s3, 12
[0x801002b8]:xori s3, s3, 3

[0x801002e8]:jal t1, 12
[0x801002f4]:xori t1, t1, 3

[0x80100324]:jal a2, 12
[0x80100330]:xori a2, a2, 3

[0x80100360]:jal s7, 12
[0x8010036c]:xori s7, s7, 3

[0x8010039c]:jal gp, 12
[0x801003a8]:xori gp, gp, 3

[0x801003d8]:jal s1, 12
[0x801003e4]:xori s1, s1, 3

[0x80100414]:jal sp, 12
[0x80100420]:xori sp, sp, 3

[0x80100450]:jal a7, 12
[0x8010045c]:xori a7, a7, 3

[0x8010048c]:jal s4, 12
[0x80100498]:xori s4, s4, 3

[0x801004c8]:jal s11, 12
[0x801004d4]:xori s11, s11, 3

[0x80100504]:jal a6, 12
[0x80100510]:xori a6, a6, 3

[0x80100540]:jal zero, 12
[0x8010054c]:xori zero, zero, 3

[0x8010057c]:jal a3, 12
[0x80100588]:xori a3, a3, 3

[0x801005b8]:jal s10, 12
[0x801005c4]:xori s10, s10, 3

[0x801005f4]:jal ra, 12
[0x80100600]:xori ra, ra, 3

[0x80100630]:jal t0, 12
[0x8010063c]:xori t0, t0, 3

[0x8010066c]:jal a4, 12
[0x80100678]:xori a4, a4, 3

[0x801006a8]:jal t3, 12
[0x801006b4]:xori t3, t3, 3

[0x801006e4]:jal s8, 12
[0x801006f0]:xori s8, s8, 3

[0x80100720]:jal fp, 12
[0x8010072c]:xori fp, fp, 3

[0x8010075c]:jal s2, 12
[0x80100768]:xori s2, s2, 3

[0x80100798]:jal s6, 12
[0x801007a4]:xori s6, s6, 3

[0x801007dc]:jal a5, 12
[0x801007e8]:xori a5, a5, 3

[0x80100818]:jal s5, 12
[0x80100824]:xori s5, s5, 3

[0x80100854]:jal t2, 12
[0x80100860]:xori t2, t2, 3



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
|   1|[0x80103204]<br>0x00000021|- rd : x0<br> - imm_val > 0<br> |[0x80000110]:jal zero, 32<br> [0x80000130]:auipc a5, 0<br> [0x80000134]:addi a5, a5, 4048<br> [0x80000138]:andi a5, a5, 4092<br> [0x8000013c]:sub s9, s9, a5<br> [0x80000140]:sw s9, 0(t2)<br> |
