
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
| SIG_REGION                | [('0x80103204', '0x80103290', '35 words')]      |
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
      [0x80000164]:jal zero, 4
      [0x80000168]:auipc tp, 0
      [0x8000016c]:addi tp, tp, 4052
      [0x80000170]:andi tp, tp, 4092
      [0x80000174]:sub s9, s9, tp
      [0x80000178]:sw s9, 4(a2)
 -- Signature Address: 0x80103214 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000018c]:jal zero, 524304
      [0x8008019c]:auipc tp, 1048448
      [0x800801a0]:addi tp, tp, 4064
      [0x800801a4]:andi tp, tp, 4092
      [0x800801a8]:sub t3, t3, tp
      [0x800801ac]:sw t3, 8(a2)
 -- Signature Address: 0x80103218 Data: 0x00080011
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801001c8]:jal zero, 4
      [0x801001cc]:auipc tp, 1048448
      [0x801001d0]:addi tp, tp, 4068
      [0x801001d4]:andi tp, tp, 4092
      [0x801001d8]:sub sp, sp, tp
      [0x801001dc]:sw sp, 12(a2)
 -- Signature Address: 0x8010321c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100204]:jal zero, 4
      [0x80100208]:auipc tp, 0
      [0x8010020c]:addi tp, tp, 4056
      [0x80100210]:andi tp, tp, 4092
      [0x80100214]:sub t1, t1, tp
      [0x80100218]:sw t1, 16(a2)
 -- Signature Address: 0x80103220 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100240]:jal zero, 4
      [0x80100244]:auipc tp, 0
      [0x80100248]:addi tp, tp, 4056
      [0x8010024c]:andi tp, tp, 4092
      [0x80100250]:sub a1, a1, tp
      [0x80100254]:sw a1, 20(a2)
 -- Signature Address: 0x80103224 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010027c]:jal zero, 4
      [0x80100280]:auipc tp, 0
      [0x80100284]:addi tp, tp, 4056
      [0x80100288]:andi tp, tp, 4092
      [0x8010028c]:sub s2, s2, tp
      [0x80100290]:sw s2, 24(a2)
 -- Signature Address: 0x80103228 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801002b8]:jal zero, 4
      [0x801002bc]:auipc tp, 0
      [0x801002c0]:addi tp, tp, 4056
      [0x801002c4]:andi tp, tp, 4092
      [0x801002c8]:sub s10, s10, tp
      [0x801002cc]:sw s10, 28(a2)
 -- Signature Address: 0x8010322c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801002f4]:jal zero, 4
      [0x801002f8]:auipc tp, 0
      [0x801002fc]:addi tp, tp, 4056
      [0x80100300]:andi tp, tp, 4092
      [0x80100304]:sub s4, s4, tp
      [0x80100308]:sw s4, 32(a2)
 -- Signature Address: 0x80103230 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100330]:jal zero, 4
      [0x80100334]:auipc tp, 0
      [0x80100338]:addi tp, tp, 4056
      [0x8010033c]:andi tp, tp, 4092
      [0x80100340]:sub t6, t6, tp
      [0x80100344]:sw t6, 36(a2)
 -- Signature Address: 0x80103234 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010036c]:jal zero, 4
      [0x80100370]:auipc tp, 0
      [0x80100374]:addi tp, tp, 4056
      [0x80100378]:andi tp, tp, 4092
      [0x8010037c]:sub a5, a5, tp
      [0x80100380]:sw a5, 40(a2)
 -- Signature Address: 0x80103238 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801003a8]:jal zero, 4
      [0x801003ac]:auipc tp, 0
      [0x801003b0]:addi tp, tp, 4056
      [0x801003b4]:andi tp, tp, 4092
      [0x801003b8]:sub s8, s8, tp
      [0x801003bc]:sw s8, 44(a2)
 -- Signature Address: 0x8010323c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801003e4]:jal zero, 4
      [0x801003e8]:auipc tp, 0
      [0x801003ec]:addi tp, tp, 4056
      [0x801003f0]:andi tp, tp, 4092
      [0x801003f4]:sub ra, ra, tp
      [0x801003f8]:sw ra, 48(a2)
 -- Signature Address: 0x80103240 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100420]:jal zero, 4
      [0x80100424]:auipc tp, 0
      [0x80100428]:addi tp, tp, 4056
      [0x8010042c]:andi tp, tp, 4092
      [0x80100430]:sub gp, gp, tp
      [0x80100434]:sw gp, 52(a2)
 -- Signature Address: 0x80103244 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010045c]:jal zero, 4
      [0x80100460]:auipc tp, 0
      [0x80100464]:addi tp, tp, 4056
      [0x80100468]:andi tp, tp, 4092
      [0x8010046c]:sub a3, a3, tp
      [0x80100470]:sw a3, 56(a2)
 -- Signature Address: 0x80103248 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100498]:jal zero, 4
      [0x8010049c]:auipc tp, 0
      [0x801004a0]:addi tp, tp, 4056
      [0x801004a4]:andi tp, tp, 4092
      [0x801004a8]:sub a4, a4, tp
      [0x801004ac]:sw a4, 60(a2)
 -- Signature Address: 0x8010324c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801004d4]:jal zero, 4
      [0x801004d8]:auipc tp, 0
      [0x801004dc]:addi tp, tp, 4056
      [0x801004e0]:andi tp, tp, 4092
      [0x801004e4]:sub s7, s7, tp
      [0x801004e8]:sw s7, 64(a2)
 -- Signature Address: 0x80103250 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100510]:jal zero, 4
      [0x80100514]:auipc tp, 0
      [0x80100518]:addi tp, tp, 4056
      [0x8010051c]:andi tp, tp, 4092
      [0x80100520]:sub t4, t4, tp
      [0x80100524]:sw t4, 68(a2)
 -- Signature Address: 0x80103254 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010054c]:jal zero, 4
      [0x80100550]:auipc tp, 0
      [0x80100554]:addi tp, tp, 4056
      [0x80100558]:andi tp, tp, 4092
      [0x8010055c]:sub s6, s6, tp
      [0x80100560]:sw s6, 72(a2)
 -- Signature Address: 0x80103258 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100588]:jal zero, 4
      [0x8010058c]:auipc tp, 0
      [0x80100590]:addi tp, tp, 4056
      [0x80100594]:andi tp, tp, 4092
      [0x80100598]:sub a6, a6, tp
      [0x8010059c]:sw a6, 76(a2)
 -- Signature Address: 0x8010325c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801005c4]:jal zero, 4
      [0x801005c8]:auipc tp, 0
      [0x801005cc]:addi tp, tp, 4056
      [0x801005d0]:andi tp, tp, 4092
      [0x801005d4]:sub a0, a0, tp
      [0x801005d8]:sw a0, 80(a2)
 -- Signature Address: 0x80103260 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100600]:jal zero, 4
      [0x80100604]:auipc tp, 0
      [0x80100608]:addi tp, tp, 4056
      [0x8010060c]:andi tp, tp, 4092
      [0x80100610]:sub t2, t2, tp
      [0x80100614]:sw t2, 84(a2)
 -- Signature Address: 0x80103264 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010063c]:jal zero, 4
      [0x80100640]:auipc tp, 0
      [0x80100644]:addi tp, tp, 4056
      [0x80100648]:andi tp, tp, 4092
      [0x8010064c]:sub s5, s5, tp
      [0x80100650]:sw s5, 88(a2)
 -- Signature Address: 0x80103268 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100678]:jal zero, 4
      [0x8010067c]:auipc tp, 0
      [0x80100680]:addi tp, tp, 4056
      [0x80100684]:andi tp, tp, 4092
      [0x80100688]:sub s1, s1, tp
      [0x8010068c]:sw s1, 92(a2)
 -- Signature Address: 0x8010326c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006b4]:jal zero, 4
      [0x801006b8]:auipc tp, 0
      [0x801006bc]:addi tp, tp, 4056
      [0x801006c0]:andi tp, tp, 4092
      [0x801006c4]:sub t5, t5, tp
      [0x801006c8]:sw t5, 96(a2)
 -- Signature Address: 0x80103270 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801006f0]:jal zero, 4
      [0x801006f4]:auipc tp, 0
      [0x801006f8]:addi tp, tp, 4056
      [0x801006fc]:andi tp, tp, 4092
      [0x80100700]:sub t0, t0, tp
      [0x80100704]:sw t0, 100(a2)
 -- Signature Address: 0x80103274 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8010072c]:jal zero, 4
      [0x80100730]:auipc tp, 0
      [0x80100734]:addi tp, tp, 4056
      [0x80100738]:andi tp, tp, 4092
      [0x8010073c]:sub zero, zero, tp
      [0x80100740]:sw zero, 104(a2)
 -- Signature Address: 0x80103278 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100768]:jal zero, 4
      [0x8010076c]:auipc tp, 0
      [0x80100770]:addi tp, tp, 4056
      [0x80100774]:andi tp, tp, 4092
      [0x80100778]:sub s3, s3, tp
      [0x8010077c]:sw s3, 108(a2)
 -- Signature Address: 0x8010327c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007a4]:jal zero, 4
      [0x801007a8]:auipc sp, 0
      [0x801007ac]:addi sp, sp, 4056
      [0x801007b0]:andi sp, sp, 4092
      [0x801007b4]:sub tp, tp, sp
      [0x801007b8]:sw tp, 112(a2)
 -- Signature Address: 0x80103280 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801007e8]:jal zero, 4
      [0x801007ec]:auipc sp, 0
      [0x801007f0]:addi sp, sp, 4056
      [0x801007f4]:andi sp, sp, 4092
      [0x801007f8]:sub a7, a7, sp
      [0x801007fc]:sw a7, 0(ra)
 -- Signature Address: 0x80103284 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100824]:jal zero, 4
      [0x80100828]:auipc sp, 0
      [0x8010082c]:addi sp, sp, 4056
      [0x80100830]:andi sp, sp, 4092
      [0x80100834]:sub s11, s11, sp
      [0x80100838]:sw s11, 4(ra)
 -- Signature Address: 0x80103288 Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80100860]:jal zero, 4
      [0x80100864]:auipc sp, 0
      [0x80100868]:addi sp, sp, 4056
      [0x8010086c]:andi sp, sp, 4092
      [0x80100870]:sub a2, a2, sp
      [0x80100874]:sw a2, 8(ra)
 -- Signature Address: 0x8010328c Data: 0x0000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0






```

## Details of STAT3

```
[0x80000114]:jal fp, 2097144
[0x8000010c]:xori fp, fp, 1

[0x80000150]:jal s9, 16
[0x80000160]:xori s9, s9, 3

[0x80080188]:jal t3, 1572864
[0x80000188]:xori t3, t3, 1

[0x800801c4]:jal sp, 524288
[0x801001c4]:xori sp, sp, 3

[0x801001f4]:jal t1, 12
[0x80100200]:xori t1, t1, 3

[0x80100230]:jal a1, 12
[0x8010023c]:xori a1, a1, 3

[0x8010026c]:jal s2, 12
[0x80100278]:xori s2, s2, 3

[0x801002a8]:jal s10, 12
[0x801002b4]:xori s10, s10, 3

[0x801002e4]:jal s4, 12
[0x801002f0]:xori s4, s4, 3

[0x80100320]:jal t6, 12
[0x8010032c]:xori t6, t6, 3

[0x8010035c]:jal a5, 12
[0x80100368]:xori a5, a5, 3

[0x80100398]:jal s8, 12
[0x801003a4]:xori s8, s8, 3

[0x801003d4]:jal ra, 12
[0x801003e0]:xori ra, ra, 3

[0x80100410]:jal gp, 12
[0x8010041c]:xori gp, gp, 3

[0x8010044c]:jal a3, 12
[0x80100458]:xori a3, a3, 3

[0x80100488]:jal a4, 12
[0x80100494]:xori a4, a4, 3

[0x801004c4]:jal s7, 12
[0x801004d0]:xori s7, s7, 3

[0x80100500]:jal t4, 12
[0x8010050c]:xori t4, t4, 3

[0x8010053c]:jal s6, 12
[0x80100548]:xori s6, s6, 3

[0x80100578]:jal a6, 12
[0x80100584]:xori a6, a6, 3

[0x801005b4]:jal a0, 12
[0x801005c0]:xori a0, a0, 3

[0x801005f0]:jal t2, 12
[0x801005fc]:xori t2, t2, 3

[0x8010062c]:jal s5, 12
[0x80100638]:xori s5, s5, 3

[0x80100668]:jal s1, 12
[0x80100674]:xori s1, s1, 3

[0x801006a4]:jal t5, 12
[0x801006b0]:xori t5, t5, 3

[0x801006e0]:jal t0, 12
[0x801006ec]:xori t0, t0, 3

[0x8010071c]:jal zero, 12
[0x80100728]:xori zero, zero, 3

[0x80100758]:jal s3, 12
[0x80100764]:xori s3, s3, 3

[0x80100794]:jal tp, 12
[0x801007a0]:xori tp, tp, 3

[0x801007d8]:jal a7, 12
[0x801007e4]:xori a7, a7, 3

[0x80100814]:jal s11, 12
[0x80100820]:xori s11, s11, 3

[0x80100850]:jal a2, 12
[0x8010085c]:xori a2, a2, 3



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
|   1|[0x80103210]<br>0x00000019|- rd : x0<br> - imm_val > 0<br> |[0x80000110]:jal zero, 24<br> [0x80000128]:auipc tp, 0<br> [0x8000012c]:addi tp, tp, 4056<br> [0x80000130]:andi tp, tp, 4092<br> [0x80000134]:sub fp, fp, tp<br> [0x80000138]:sw fp, 0(a2)<br> |
