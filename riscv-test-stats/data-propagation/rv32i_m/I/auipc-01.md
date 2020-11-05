
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004a0')]      |
| SIG_REGION                | [('0x80003204', '0x800032c8', '49 words')]      |
| COV_LABELS                | auipc      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/auipc-01.S/auipc-01.S    |
| Total Number of coverpoints| 78     |
| Total Coverpoints Hit     | 78      |
| Total Signature Updates   | 46      |
| STAT1                     | 45      |
| STAT2                     | 1      |
| STAT3                     | 48     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000494]:auipc a0, 1
      [0x80000498]:sub a0, a0, sp
      [0x8000049c]:sw a0, 64(ra)
 -- Signature Address: 0x800032c4 Data: 0x00001008
 -- Redundant Coverpoints hit by the op
      - opcode : auipc
      - rd : x10
      - imm_val > 0
      - imm_val == 1






```

## Details of STAT3

```
[0x800000f8]:auipc s1, 3
[0x800000fc]:addi s1, s1, 280

[0x80000100]:auipc a1, 0
[0x80000104]:addi a1, a1, 0

[0x80000114]:auipc a1, 0
[0x80000118]:addi a1, a1, 0

[0x80000128]:auipc a1, 0
[0x8000012c]:addi a1, a1, 0

[0x8000013c]:auipc a1, 0
[0x80000140]:addi a1, a1, 0

[0x80000150]:auipc a1, 0
[0x80000154]:addi a1, a1, 0

[0x80000164]:auipc a1, 0
[0x80000168]:addi a1, a1, 0

[0x80000178]:auipc a1, 0
[0x8000017c]:addi a1, a1, 0

[0x8000018c]:auipc a1, 0
[0x80000190]:addi a1, a1, 0

[0x800001a0]:auipc a1, 0
[0x800001a4]:addi a1, a1, 0

[0x800001b4]:auipc a1, 0
[0x800001b8]:addi a1, a1, 0

[0x800001c8]:auipc a1, 0
[0x800001cc]:addi a1, a1, 0

[0x800001dc]:auipc a1, 0
[0x800001e0]:addi a1, a1, 0

[0x800001f0]:auipc a1, 0
[0x800001f4]:addi a1, a1, 0

[0x80000204]:auipc a1, 0
[0x80000208]:addi a1, a1, 0

[0x80000218]:auipc a1, 0
[0x8000021c]:addi a1, a1, 0

[0x8000022c]:auipc a1, 0
[0x80000230]:addi a1, a1, 0

[0x80000240]:auipc a1, 0
[0x80000244]:addi a1, a1, 0

[0x80000254]:auipc a1, 0
[0x80000258]:addi a1, a1, 0

[0x80000268]:auipc a1, 0
[0x8000026c]:addi a1, a1, 0

[0x8000027c]:auipc a1, 0
[0x80000280]:addi a1, a1, 0

[0x80000290]:auipc a1, 0
[0x80000294]:addi a1, a1, 0

[0x800002a4]:auipc a1, 0
[0x800002a8]:addi a1, a1, 0

[0x800002b8]:auipc a1, 0
[0x800002bc]:addi a1, a1, 0

[0x800002cc]:auipc a1, 0
[0x800002d0]:addi a1, a1, 0

[0x800002e0]:auipc a1, 0
[0x800002e4]:addi a1, a1, 0

[0x800002f4]:auipc a1, 0
[0x800002f8]:addi a1, a1, 0

[0x80000308]:auipc a1, 0
[0x8000030c]:addi a1, a1, 0

[0x8000031c]:auipc a1, 0
[0x80000320]:addi a1, a1, 0

[0x80000330]:auipc sp, 0
[0x80000334]:addi sp, sp, 0

[0x80000344]:auipc ra, 3
[0x80000348]:addi ra, ra, 3904

[0x8000034c]:auipc sp, 0
[0x80000350]:addi sp, sp, 0

[0x80000360]:auipc sp, 0
[0x80000364]:addi sp, sp, 0

[0x80000374]:auipc sp, 0
[0x80000378]:addi sp, sp, 0

[0x80000388]:auipc sp, 0
[0x8000038c]:addi sp, sp, 0

[0x8000039c]:auipc sp, 0
[0x800003a0]:addi sp, sp, 0

[0x800003b0]:auipc sp, 0
[0x800003b4]:addi sp, sp, 0

[0x800003c4]:auipc sp, 0
[0x800003c8]:addi sp, sp, 0

[0x800003d8]:auipc sp, 0
[0x800003dc]:addi sp, sp, 0

[0x800003ec]:auipc sp, 0
[0x800003f0]:addi sp, sp, 0

[0x80000400]:auipc sp, 0
[0x80000404]:addi sp, sp, 0

[0x80000414]:auipc sp, 0
[0x80000418]:addi sp, sp, 0

[0x80000428]:auipc sp, 0
[0x8000042c]:addi sp, sp, 0

[0x8000043c]:auipc sp, 0
[0x80000440]:addi sp, sp, 0

[0x80000450]:auipc sp, 0
[0x80000454]:addi sp, sp, 0

[0x80000464]:auipc sp, 0
[0x80000468]:addi sp, sp, 0

[0x80000478]:auipc sp, 0
[0x8000047c]:addi sp, sp, 0

[0x8000048c]:auipc sp, 0
[0x80000490]:addi sp, sp, 0



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

|s.no|        signature         |                coverpoints                |                                                code                                                 |
|---:|--------------------------|-------------------------------------------|-----------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000008|- rd : x28<br>                             |[0x80000108]:auipc t3, 0<br> [0x8000010c]:sub t3, t3, a1<br> [0x80000110]:sw t3, 0(s1)<br>           |
|   2|[0x80003214]<br>0x00009008|- rd : x16<br>                             |[0x8000011c]:auipc a6, 9<br> [0x80000120]:sub a6, a6, a1<br> [0x80000124]:sw a6, 4(s1)<br>           |
|   3|[0x80003218]<br>0xFFFFF008|- rd : x3<br> - imm_val == ((2**20)-1)<br> |[0x80000130]:auipc gp, 1048575<br> [0x80000134]:sub gp, gp, a1<br> [0x80000138]:sw gp, 8(s1)<br>     |
|   4|[0x8000321c]<br>0x00000000|- rd : x0<br> - imm_val == 1<br>           |[0x80000144]:auipc zero, 1<br> [0x80000148]:sub zero, zero, a1<br> [0x8000014c]:sw zero, 12(s1)<br>  |
|   5|[0x80003220]<br>0x00002008|- rd : x7<br> - imm_val == 2<br>           |[0x80000158]:auipc t2, 2<br> [0x8000015c]:sub t2, t2, a1<br> [0x80000160]:sw t2, 16(s1)<br>          |
|   6|[0x80003224]<br>0x00004008|- rd : x19<br> - imm_val == 4<br>          |[0x8000016c]:auipc s3, 4<br> [0x80000170]:sub s3, s3, a1<br> [0x80000174]:sw s3, 20(s1)<br>          |
|   7|[0x80003228]<br>0x00008008|- rd : x22<br> - imm_val == 8<br>          |[0x80000180]:auipc s6, 8<br> [0x80000184]:sub s6, s6, a1<br> [0x80000188]:sw s6, 24(s1)<br>          |
|   8|[0x8000322c]<br>0x00010008|- rd : x25<br> - imm_val == 16<br>         |[0x80000194]:auipc s9, 16<br> [0x80000198]:sub s9, s9, a1<br> [0x8000019c]:sw s9, 28(s1)<br>         |
|   9|[0x80003230]<br>0x00020008|- rd : x14<br> - imm_val == 32<br>         |[0x800001a8]:auipc a4, 32<br> [0x800001ac]:sub a4, a4, a1<br> [0x800001b0]:sw a4, 32(s1)<br>         |
|  10|[0x80003234]<br>0x00040008|- rd : x8<br> - imm_val == 64<br>          |[0x800001bc]:auipc fp, 64<br> [0x800001c0]:sub fp, fp, a1<br> [0x800001c4]:sw fp, 36(s1)<br>         |
|  11|[0x80003238]<br>0x00080008|- rd : x4<br> - imm_val == 128<br>         |[0x800001d0]:auipc tp, 128<br> [0x800001d4]:sub tp, tp, a1<br> [0x800001d8]:sw tp, 40(s1)<br>        |
|  12|[0x8000323c]<br>0x00100008|- rd : x13<br> - imm_val == 256<br>        |[0x800001e4]:auipc a3, 256<br> [0x800001e8]:sub a3, a3, a1<br> [0x800001ec]:sw a3, 44(s1)<br>        |
|  13|[0x80003240]<br>0x00200008|- rd : x10<br> - imm_val == 512<br>        |[0x800001f8]:auipc a0, 512<br> [0x800001fc]:sub a0, a0, a1<br> [0x80000200]:sw a0, 48(s1)<br>        |
|  14|[0x80003244]<br>0x00400008|- rd : x23<br> - imm_val == 1024<br>       |[0x8000020c]:auipc s7, 1024<br> [0x80000210]:sub s7, s7, a1<br> [0x80000214]:sw s7, 52(s1)<br>       |
|  15|[0x80003248]<br>0x00800008|- rd : x17<br> - imm_val == 2048<br>       |[0x80000220]:auipc a7, 2048<br> [0x80000224]:sub a7, a7, a1<br> [0x80000228]:sw a7, 56(s1)<br>       |
|  16|[0x8000324c]<br>0x01000008|- rd : x1<br> - imm_val == 4096<br>        |[0x80000234]:auipc ra, 4096<br> [0x80000238]:sub ra, ra, a1<br> [0x8000023c]:sw ra, 60(s1)<br>       |
|  17|[0x80003250]<br>0x02000008|- rd : x2<br> - imm_val == 8192<br>        |[0x80000248]:auipc sp, 8192<br> [0x8000024c]:sub sp, sp, a1<br> [0x80000250]:sw sp, 64(s1)<br>       |
|  18|[0x80003254]<br>0x04000008|- rd : x18<br> - imm_val == 16384<br>      |[0x8000025c]:auipc s2, 16384<br> [0x80000260]:sub s2, s2, a1<br> [0x80000264]:sw s2, 68(s1)<br>      |
|  19|[0x80003258]<br>0x08000008|- rd : x29<br> - imm_val == 32768<br>      |[0x80000270]:auipc t4, 32768<br> [0x80000274]:sub t4, t4, a1<br> [0x80000278]:sw t4, 72(s1)<br>      |
|  20|[0x8000325c]<br>0x10000008|- rd : x5<br> - imm_val == 65536<br>       |[0x80000284]:auipc t0, 65536<br> [0x80000288]:sub t0, t0, a1<br> [0x8000028c]:sw t0, 76(s1)<br>      |
|  21|[0x80003260]<br>0x20000008|- rd : x27<br> - imm_val == 131072<br>     |[0x80000298]:auipc s11, 131072<br> [0x8000029c]:sub s11, s11, a1<br> [0x800002a0]:sw s11, 80(s1)<br> |
|  22|[0x80003264]<br>0x40000008|- rd : x6<br> - imm_val == 262144<br>      |[0x800002ac]:auipc t1, 262144<br> [0x800002b0]:sub t1, t1, a1<br> [0x800002b4]:sw t1, 84(s1)<br>     |
|  23|[0x80003268]<br>0x80000008|- rd : x26<br> - imm_val == 524288<br>     |[0x800002c0]:auipc s10, 524288<br> [0x800002c4]:sub s10, s10, a1<br> [0x800002c8]:sw s10, 88(s1)<br> |
|  24|[0x8000326c]<br>0xFFFFE008|- rd : x12<br> - imm_val == 1048574<br>    |[0x800002d4]:auipc a2, 1048574<br> [0x800002d8]:sub a2, a2, a1<br> [0x800002dc]:sw a2, 92(s1)<br>    |
|  25|[0x80003270]<br>0xFFFFD008|- rd : x31<br> - imm_val == 1048573<br>    |[0x800002e8]:auipc t6, 1048573<br> [0x800002ec]:sub t6, t6, a1<br> [0x800002f0]:sw t6, 96(s1)<br>    |
|  26|[0x80003274]<br>0xFFFFB008|- rd : x24<br> - imm_val == 1048571<br>    |[0x800002fc]:auipc s8, 1048571<br> [0x80000300]:sub s8, s8, a1<br> [0x80000304]:sw s8, 100(s1)<br>   |
|  27|[0x80003278]<br>0xFFFF7008|- rd : x20<br> - imm_val == 1048567<br>    |[0x80000310]:auipc s4, 1048567<br> [0x80000314]:sub s4, s4, a1<br> [0x80000318]:sw s4, 104(s1)<br>   |
|  28|[0x8000327c]<br>0xFFFEF008|- rd : x21<br> - imm_val == 1048559<br>    |[0x80000324]:auipc s5, 1048559<br> [0x80000328]:sub s5, s5, a1<br> [0x8000032c]:sw s5, 108(s1)<br>   |
|  29|[0x80003280]<br>0xFFFDF008|- rd : x30<br> - imm_val == 1048543<br>    |[0x80000338]:auipc t5, 1048543<br> [0x8000033c]:sub t5, t5, sp<br> [0x80000340]:sw t5, 112(s1)<br>   |
|  30|[0x80003284]<br>0xFFFBF008|- rd : x15<br> - imm_val == 1048511<br>    |[0x80000354]:auipc a5, 1048511<br> [0x80000358]:sub a5, a5, sp<br> [0x8000035c]:sw a5, 0(ra)<br>     |
|  31|[0x80003288]<br>0xFFDFF008|- imm_val == 1048063<br>                   |[0x80000368]:auipc a1, 1048063<br> [0x8000036c]:sub a1, a1, sp<br> [0x80000370]:sw a1, 4(ra)<br>     |
|  32|[0x8000328c]<br>0xFFBFF008|- imm_val == 1047551<br>                   |[0x8000037c]:auipc s1, 1047551<br> [0x80000380]:sub s1, s1, sp<br> [0x80000384]:sw s1, 8(ra)<br>     |
|  33|[0x80003290]<br>0xFF7FF008|- imm_val == 1046527<br>                   |[0x80000390]:auipc a0, 1046527<br> [0x80000394]:sub a0, a0, sp<br> [0x80000398]:sw a0, 12(ra)<br>    |
|  34|[0x80003294]<br>0xFEFFF008|- imm_val == 1044479<br>                   |[0x800003a4]:auipc a0, 1044479<br> [0x800003a8]:sub a0, a0, sp<br> [0x800003ac]:sw a0, 16(ra)<br>    |
|  35|[0x80003298]<br>0xFDFFF008|- imm_val == 1040383<br>                   |[0x800003b8]:auipc a0, 1040383<br> [0x800003bc]:sub a0, a0, sp<br> [0x800003c0]:sw a0, 20(ra)<br>    |
|  36|[0x8000329c]<br>0xFBFFF008|- imm_val == 1032191<br>                   |[0x800003cc]:auipc a0, 1032191<br> [0x800003d0]:sub a0, a0, sp<br> [0x800003d4]:sw a0, 24(ra)<br>    |
|  37|[0x800032a0]<br>0xF7FFF008|- imm_val == 1015807<br>                   |[0x800003e0]:auipc a0, 1015807<br> [0x800003e4]:sub a0, a0, sp<br> [0x800003e8]:sw a0, 28(ra)<br>    |
|  38|[0x800032a4]<br>0xEFFFF008|- imm_val == 983039<br>                    |[0x800003f4]:auipc a0, 983039<br> [0x800003f8]:sub a0, a0, sp<br> [0x800003fc]:sw a0, 32(ra)<br>     |
|  39|[0x800032a8]<br>0xDFFFF008|- imm_val == 917503<br>                    |[0x80000408]:auipc a0, 917503<br> [0x8000040c]:sub a0, a0, sp<br> [0x80000410]:sw a0, 36(ra)<br>     |
|  40|[0x800032ac]<br>0xBFFFF008|- imm_val == 786431<br>                    |[0x8000041c]:auipc a0, 786431<br> [0x80000420]:sub a0, a0, sp<br> [0x80000424]:sw a0, 40(ra)<br>     |
|  41|[0x800032b0]<br>0x7FFFF008|- imm_val == 524287<br>                    |[0x80000430]:auipc a0, 524287<br> [0x80000434]:sub a0, a0, sp<br> [0x80000438]:sw a0, 44(ra)<br>     |
|  42|[0x800032b4]<br>0x55555008|- imm_val == 349525<br>                    |[0x80000444]:auipc a0, 349525<br> [0x80000448]:sub a0, a0, sp<br> [0x8000044c]:sw a0, 48(ra)<br>     |
|  43|[0x800032b8]<br>0xAAAAA008|- imm_val == 699050<br>                    |[0x80000458]:auipc a0, 699050<br> [0x8000045c]:sub a0, a0, sp<br> [0x80000460]:sw a0, 52(ra)<br>     |
|  44|[0x800032bc]<br>0xFFF7F008|- imm_val == 1048447<br>                   |[0x8000046c]:auipc a0, 1048447<br> [0x80000470]:sub a0, a0, sp<br> [0x80000474]:sw a0, 56(ra)<br>    |
|  45|[0x800032c0]<br>0xFFEFF008|- imm_val == 1048319<br>                   |[0x80000480]:auipc a0, 1048319<br> [0x80000484]:sub a0, a0, sp<br> [0x80000488]:sw a0, 60(ra)<br>    |
