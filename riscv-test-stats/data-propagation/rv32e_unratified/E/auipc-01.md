
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000580')]      |
| SIG_REGION                | [('0x80002204', '0x80002300', '63 words')]      |
| COV_LABELS                | auipc      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/auipc-01.S/auipc-01.S    |
| Total Number of coverpoints| 90     |
| Total Coverpoints Hit     | 87      |
| Total Signature Updates   | 63      |
| STAT1                     | 60      |
| STAT2                     | 3      |
| STAT3                     | 65     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003b0]:auipc a0, 0
      [0x800003b4]:sub a0, a0, tp
      [0x800003b8]:sw a0, 108(ra)
 -- Signature Address: 0x800022a4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : auipc
      - rd : x10
      - imm_val==0
      - imm_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003ec]:auipc a0, 2
      [0x800003f0]:sub a0, a0, tp
      [0x800003f4]:sw a0, 120(ra)
 -- Signature Address: 0x800022b0 Data: 0x00002000
 -- Redundant Coverpoints hit by the op
      - opcode : auipc
      - rd : x10
      - imm_val == 2
      - imm_val==2
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000568]:auipc a0, 1046527
      [0x8000056c]:sub a0, a0, tp
      [0x80000570]:sw a0, 196(ra)
 -- Signature Address: 0x800022fc Data: 0xFF7FF000
 -- Redundant Coverpoints hit by the op
      - opcode : auipc
      - rd : x10
      - imm_val == 1046527
      - imm_val > 0






```

## Details of STAT3

```
[0x80000078]:auipc sp, 2
[0x8000007c]:addi sp, sp, 396

[0x80000080]:auipc gp, 0
[0x80000084]:addi gp, gp, 8

[0x80000094]:auipc gp, 0
[0x80000098]:addi gp, gp, 8

[0x800000a8]:auipc gp, 0
[0x800000ac]:addi gp, gp, 8

[0x800000bc]:auipc gp, 0
[0x800000c0]:addi gp, gp, 8

[0x800000d0]:auipc gp, 0
[0x800000d4]:addi gp, gp, 8

[0x800000e4]:auipc gp, 0
[0x800000e8]:addi gp, gp, 8

[0x800000f8]:auipc gp, 0
[0x800000fc]:addi gp, gp, 8

[0x8000010c]:auipc gp, 0
[0x80000110]:addi gp, gp, 8

[0x80000120]:auipc gp, 0
[0x80000124]:addi gp, gp, 8

[0x80000134]:auipc gp, 0
[0x80000138]:addi gp, gp, 8

[0x80000148]:auipc gp, 0
[0x8000014c]:addi gp, gp, 8

[0x8000015c]:auipc gp, 0
[0x80000160]:addi gp, gp, 8

[0x80000170]:auipc tp, 0
[0x80000174]:addi tp, tp, 8

[0x80000184]:auipc ra, 2
[0x80000188]:addi ra, ra, 180

[0x8000018c]:auipc tp, 0
[0x80000190]:addi tp, tp, 8

[0x800001a0]:auipc tp, 0
[0x800001a4]:addi tp, tp, 8

[0x800001b4]:auipc tp, 0
[0x800001b8]:addi tp, tp, 8

[0x800001c8]:auipc tp, 0
[0x800001cc]:addi tp, tp, 8

[0x800001dc]:auipc tp, 0
[0x800001e0]:addi tp, tp, 8

[0x800001f0]:auipc tp, 0
[0x800001f4]:addi tp, tp, 8

[0x80000204]:auipc tp, 0
[0x80000208]:addi tp, tp, 8

[0x80000218]:auipc tp, 0
[0x8000021c]:addi tp, tp, 8

[0x8000022c]:auipc tp, 0
[0x80000230]:addi tp, tp, 8

[0x80000240]:auipc tp, 0
[0x80000244]:addi tp, tp, 8

[0x80000254]:auipc tp, 0
[0x80000258]:addi tp, tp, 8

[0x80000268]:auipc tp, 0
[0x8000026c]:addi tp, tp, 8

[0x8000027c]:auipc tp, 0
[0x80000280]:addi tp, tp, 8

[0x80000290]:auipc tp, 0
[0x80000294]:addi tp, tp, 8

[0x800002a4]:auipc tp, 0
[0x800002a8]:addi tp, tp, 8

[0x800002b8]:auipc tp, 0
[0x800002bc]:addi tp, tp, 8

[0x800002cc]:auipc tp, 0
[0x800002d0]:addi tp, tp, 8

[0x800002e0]:auipc tp, 0
[0x800002e4]:addi tp, tp, 8

[0x800002f4]:auipc tp, 0
[0x800002f8]:addi tp, tp, 8

[0x80000308]:auipc tp, 0
[0x8000030c]:addi tp, tp, 8

[0x8000031c]:auipc tp, 0
[0x80000320]:addi tp, tp, 8

[0x80000330]:auipc tp, 0
[0x80000334]:addi tp, tp, 8

[0x80000344]:auipc tp, 0
[0x80000348]:addi tp, tp, 8

[0x80000358]:auipc tp, 0
[0x8000035c]:addi tp, tp, 8

[0x8000036c]:auipc tp, 0
[0x80000370]:addi tp, tp, 8

[0x80000380]:auipc tp, 0
[0x80000384]:addi tp, tp, 8

[0x80000394]:auipc tp, 0
[0x80000398]:addi tp, tp, 8

[0x800003a8]:auipc tp, 0
[0x800003ac]:addi tp, tp, 8

[0x800003bc]:auipc tp, 0
[0x800003c0]:addi tp, tp, 8

[0x800003d0]:auipc tp, 0
[0x800003d4]:addi tp, tp, 8

[0x800003e4]:auipc tp, 0
[0x800003e8]:addi tp, tp, 8

[0x800003f8]:auipc tp, 0
[0x800003fc]:addi tp, tp, 8

[0x8000040c]:auipc tp, 0
[0x80000410]:addi tp, tp, 8

[0x80000420]:auipc tp, 0
[0x80000424]:addi tp, tp, 8

[0x80000434]:auipc tp, 0
[0x80000438]:addi tp, tp, 8

[0x80000448]:auipc tp, 0
[0x8000044c]:addi tp, tp, 8

[0x8000045c]:auipc tp, 0
[0x80000460]:addi tp, tp, 8

[0x80000470]:auipc tp, 0
[0x80000474]:addi tp, tp, 8

[0x80000484]:auipc tp, 0
[0x80000488]:addi tp, tp, 8

[0x80000498]:auipc tp, 0
[0x8000049c]:addi tp, tp, 8

[0x800004ac]:auipc tp, 0
[0x800004b0]:addi tp, tp, 8

[0x800004c0]:auipc tp, 0
[0x800004c4]:addi tp, tp, 8

[0x800004d4]:auipc tp, 0
[0x800004d8]:addi tp, tp, 8

[0x800004e8]:auipc tp, 0
[0x800004ec]:addi tp, tp, 8

[0x800004fc]:auipc tp, 0
[0x80000500]:addi tp, tp, 8

[0x80000510]:auipc tp, 0
[0x80000514]:addi tp, tp, 8

[0x80000524]:auipc tp, 0
[0x80000528]:addi tp, tp, 8

[0x80000538]:auipc tp, 0
[0x8000053c]:addi tp, tp, 8

[0x8000054c]:auipc tp, 0
[0x80000550]:addi tp, tp, 8

[0x80000560]:auipc tp, 0
[0x80000564]:addi tp, tp, 8



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

|s.no|        signature         |                 coverpoints                  |                                                   code                                                   |
|---:|--------------------------|----------------------------------------------|----------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFFF000|- rd : x9<br> - imm_val == ((2**20)-1)<br>    |[0x80000088]:auipc s1, 1048575<br> [0x8000008c]:sub s1, s1, gp<br> [0x80000090]:sw s1, 0(sp)<br>          |
|   2|[0x80002208]<br>0x7FFFF000|- rd : x6<br> - imm_val == 524287<br>         |[0x8000009c]:auipc t1, 524287<br> [0x800000a0]:sub t1, t1, gp<br> [0x800000a4]:sw t1, 4(sp)<br>           |
|   3|[0x8000220c]<br>0xBFFFF000|- rd : x1<br> - imm_val == 786431<br>         |[0x800000b0]:auipc ra, 786431<br> [0x800000b4]:sub ra, ra, gp<br> [0x800000b8]:sw ra, 8(sp)<br>           |
|   4|[0x80002210]<br>0xDFFFF000|- rd : x5<br> - imm_val == 917503<br>         |[0x800000c4]:auipc t0, 917503<br> [0x800000c8]:sub t0, t0, gp<br> [0x800000cc]:sw t0, 12(sp)<br>          |
|   5|[0x80002214]<br>0xEFFFF000|- rd : x14<br> - imm_val == 983039<br>        |[0x800000d8]:auipc a4, 983039<br> [0x800000dc]:sub a4, a4, gp<br> [0x800000e0]:sw a4, 16(sp)<br>          |
|   6|[0x80002218]<br>0xF7FFF000|- rd : x7<br> - imm_val == 1015807<br>        |[0x800000ec]:auipc t2, 1015807<br> [0x800000f0]:sub t2, t2, gp<br> [0x800000f4]:sw t2, 20(sp)<br>         |
|   7|[0x8000221c]<br>0xFBFFF000|- rd : x15<br> - imm_val == 1032191<br>       |[0x80000100]:auipc a5, 1032191<br> [0x80000104]:sub a5, a5, gp<br> [0x80000108]:sw a5, 24(sp)<br>         |
|   8|[0x80002220]<br>0xFDFFF000|- rd : x10<br> - imm_val == 1040383<br>       |[0x80000114]:auipc a0, 1040383<br> [0x80000118]:sub a0, a0, gp<br> [0x8000011c]:sw a0, 28(sp)<br>         |
|   9|[0x80002224]<br>0xFEFFF000|- rd : x12<br> - imm_val == 1044479<br>       |[0x80000128]:auipc a2, 1044479<br> [0x8000012c]:sub a2, a2, gp<br> [0x80000130]:sw a2, 32(sp)<br>         |
|  10|[0x80002228]<br>0x00000000|- rd : x0<br> - imm_val == 1046527<br>        |[0x8000013c]:auipc zero, 1046527<br> [0x80000140]:sub zero, zero, gp<br> [0x80000144]:sw zero, 36(sp)<br> |
|  11|[0x8000222c]<br>0xFFBFF000|- rd : x8<br> - imm_val == 1047551<br>        |[0x80000150]:auipc fp, 1047551<br> [0x80000154]:sub fp, fp, gp<br> [0x80000158]:sw fp, 40(sp)<br>         |
|  12|[0x80002230]<br>0xFFDFF000|- rd : x4<br> - imm_val == 1048063<br>        |[0x80000164]:auipc tp, 1048063<br> [0x80000168]:sub tp, tp, gp<br> [0x8000016c]:sw tp, 44(sp)<br>         |
|  13|[0x80002234]<br>0xFFEFF000|- rd : x13<br> - imm_val == 1048319<br>       |[0x80000178]:auipc a3, 1048319<br> [0x8000017c]:sub a3, a3, tp<br> [0x80000180]:sw a3, 48(sp)<br>         |
|  14|[0x80002238]<br>0xFFF7F000|- imm_val == 1048447<br>                      |[0x80000194]:auipc gp, 1048447<br> [0x80000198]:sub gp, gp, tp<br> [0x8000019c]:sw gp, 0(ra)<br>          |
|  15|[0x8000223c]<br>0xFFFBF000|- rd : x11<br> - imm_val == 1048511<br>       |[0x800001a8]:auipc a1, 1048511<br> [0x800001ac]:sub a1, a1, tp<br> [0x800001b0]:sw a1, 4(ra)<br>          |
|  16|[0x80002240]<br>0xFFFDF000|- imm_val == 1048543<br>                      |[0x800001bc]:auipc sp, 1048543<br> [0x800001c0]:sub sp, sp, tp<br> [0x800001c4]:sw sp, 8(ra)<br>          |
|  17|[0x80002244]<br>0xFFFEF000|- imm_val == 1048559<br>                      |[0x800001d0]:auipc a0, 1048559<br> [0x800001d4]:sub a0, a0, tp<br> [0x800001d8]:sw a0, 12(ra)<br>         |
|  18|[0x80002248]<br>0xFFFF7000|- imm_val == 1048567<br>                      |[0x800001e4]:auipc a0, 1048567<br> [0x800001e8]:sub a0, a0, tp<br> [0x800001ec]:sw a0, 16(ra)<br>         |
|  19|[0x8000224c]<br>0xFFFFB000|- imm_val == 1048571<br>                      |[0x800001f8]:auipc a0, 1048571<br> [0x800001fc]:sub a0, a0, tp<br> [0x80000200]:sw a0, 20(ra)<br>         |
|  20|[0x80002250]<br>0xFFFFD000|- imm_val == 1048573<br>                      |[0x8000020c]:auipc a0, 1048573<br> [0x80000210]:sub a0, a0, tp<br> [0x80000214]:sw a0, 24(ra)<br>         |
|  21|[0x80002254]<br>0xFFFFE000|- imm_val == 1048574<br>                      |[0x80000220]:auipc a0, 1048574<br> [0x80000224]:sub a0, a0, tp<br> [0x80000228]:sw a0, 28(ra)<br>         |
|  22|[0x80002258]<br>0x80000000|- imm_val == 524288<br>                       |[0x80000234]:auipc a0, 524288<br> [0x80000238]:sub a0, a0, tp<br> [0x8000023c]:sw a0, 32(ra)<br>          |
|  23|[0x8000225c]<br>0x40000000|- imm_val == 262144<br>                       |[0x80000248]:auipc a0, 262144<br> [0x8000024c]:sub a0, a0, tp<br> [0x80000250]:sw a0, 36(ra)<br>          |
|  24|[0x80002260]<br>0x20000000|- imm_val == 131072<br>                       |[0x8000025c]:auipc a0, 131072<br> [0x80000260]:sub a0, a0, tp<br> [0x80000264]:sw a0, 40(ra)<br>          |
|  25|[0x80002264]<br>0x10000000|- imm_val == 65536<br>                        |[0x80000270]:auipc a0, 65536<br> [0x80000274]:sub a0, a0, tp<br> [0x80000278]:sw a0, 44(ra)<br>           |
|  26|[0x80002268]<br>0x08000000|- imm_val == 32768<br>                        |[0x80000284]:auipc a0, 32768<br> [0x80000288]:sub a0, a0, tp<br> [0x8000028c]:sw a0, 48(ra)<br>           |
|  27|[0x8000226c]<br>0x04000000|- imm_val == 16384<br>                        |[0x80000298]:auipc a0, 16384<br> [0x8000029c]:sub a0, a0, tp<br> [0x800002a0]:sw a0, 52(ra)<br>           |
|  28|[0x80002270]<br>0x02000000|- imm_val == 8192<br>                         |[0x800002ac]:auipc a0, 8192<br> [0x800002b0]:sub a0, a0, tp<br> [0x800002b4]:sw a0, 56(ra)<br>            |
|  29|[0x80002274]<br>0x01000000|- imm_val == 4096<br>                         |[0x800002c0]:auipc a0, 4096<br> [0x800002c4]:sub a0, a0, tp<br> [0x800002c8]:sw a0, 60(ra)<br>            |
|  30|[0x80002278]<br>0x00800000|- imm_val == 2048<br>                         |[0x800002d4]:auipc a0, 2048<br> [0x800002d8]:sub a0, a0, tp<br> [0x800002dc]:sw a0, 64(ra)<br>            |
|  31|[0x8000227c]<br>0x00400000|- imm_val == 1024<br> - imm_val==1024<br>     |[0x800002e8]:auipc a0, 1024<br> [0x800002ec]:sub a0, a0, tp<br> [0x800002f0]:sw a0, 68(ra)<br>            |
|  32|[0x80002280]<br>0x00200000|- imm_val == 512<br>                          |[0x800002fc]:auipc a0, 512<br> [0x80000300]:sub a0, a0, tp<br> [0x80000304]:sw a0, 72(ra)<br>             |
|  33|[0x80002284]<br>0x00100000|- imm_val == 256<br>                          |[0x80000310]:auipc a0, 256<br> [0x80000314]:sub a0, a0, tp<br> [0x80000318]:sw a0, 76(ra)<br>             |
|  34|[0x80002288]<br>0x00080000|- imm_val == 128<br>                          |[0x80000324]:auipc a0, 128<br> [0x80000328]:sub a0, a0, tp<br> [0x8000032c]:sw a0, 80(ra)<br>             |
|  35|[0x8000228c]<br>0x00040000|- imm_val == 64<br>                           |[0x80000338]:auipc a0, 64<br> [0x8000033c]:sub a0, a0, tp<br> [0x80000340]:sw a0, 84(ra)<br>              |
|  36|[0x80002290]<br>0x00020000|- imm_val == 32<br>                           |[0x8000034c]:auipc a0, 32<br> [0x80000350]:sub a0, a0, tp<br> [0x80000354]:sw a0, 88(ra)<br>              |
|  37|[0x80002294]<br>0x00010000|- imm_val == 16<br>                           |[0x80000360]:auipc a0, 16<br> [0x80000364]:sub a0, a0, tp<br> [0x80000368]:sw a0, 92(ra)<br>              |
|  38|[0x80002298]<br>0x55555000|- imm_val==349525<br> - imm_val == 349525<br> |[0x80000374]:auipc a0, 349525<br> [0x80000378]:sub a0, a0, tp<br> [0x8000037c]:sw a0, 96(ra)<br>          |
|  39|[0x8000229c]<br>0x00003000|- imm_val==3<br>                              |[0x80000388]:auipc a0, 3<br> [0x8000038c]:sub a0, a0, tp<br> [0x80000390]:sw a0, 100(ra)<br>              |
|  40|[0x800022a0]<br>0xAAAAA000|- imm_val==699050<br> - imm_val == 699050<br> |[0x8000039c]:auipc a0, 699050<br> [0x800003a0]:sub a0, a0, tp<br> [0x800003a4]:sw a0, 104(ra)<br>         |
|  41|[0x800022a8]<br>0x00008000|- imm_val == 8<br>                            |[0x800003c4]:auipc a0, 8<br> [0x800003c8]:sub a0, a0, tp<br> [0x800003cc]:sw a0, 112(ra)<br>              |
|  42|[0x800022ac]<br>0x00004000|- imm_val == 4<br> - imm_val==4<br>           |[0x800003d8]:auipc a0, 4<br> [0x800003dc]:sub a0, a0, tp<br> [0x800003e0]:sw a0, 116(ra)<br>              |
|  43|[0x800022b4]<br>0x00001000|- imm_val == 1<br> - imm_val==1<br>           |[0x80000400]:auipc a0, 1<br> [0x80000404]:sub a0, a0, tp<br> [0x80000408]:sw a0, 124(ra)<br>              |
|  44|[0x800022b8]<br>0x002D5000|- imm_val==725<br>                            |[0x80000414]:auipc a0, 725<br> [0x80000418]:sub a0, a0, tp<br> [0x8000041c]:sw a0, 128(ra)<br>            |
|  45|[0x800022bc]<br>0x66667000|- imm_val==419431<br>                         |[0x80000428]:auipc a0, 419431<br> [0x8000042c]:sub a0, a0, tp<br> [0x80000430]:sw a0, 132(ra)<br>         |
|  46|[0x800022c0]<br>0x33334000|- imm_val==209716<br>                         |[0x8000043c]:auipc a0, 209716<br> [0x80000440]:sub a0, a0, tp<br> [0x80000444]:sw a0, 136(ra)<br>         |
|  47|[0x800022c4]<br>0x00006000|- imm_val==6<br>                              |[0x80000450]:auipc a0, 6<br> [0x80000454]:sub a0, a0, tp<br> [0x80000458]:sw a0, 140(ra)<br>              |
|  48|[0x800022c8]<br>0xAAAAB000|- imm_val==699051<br>                         |[0x80000464]:auipc a0, 699051<br> [0x80000468]:sub a0, a0, tp<br> [0x8000046c]:sw a0, 144(ra)<br>         |
|  49|[0x800022cc]<br>0x55556000|- imm_val==349526<br>                         |[0x80000478]:auipc a0, 349526<br> [0x8000047c]:sub a0, a0, tp<br> [0x80000480]:sw a0, 148(ra)<br>         |
|  50|[0x800022d0]<br>0x003FE000|- imm_val==1022<br>                           |[0x8000048c]:auipc a0, 1022<br> [0x80000490]:sub a0, a0, tp<br> [0x80000494]:sw a0, 152(ra)<br>           |
|  51|[0x800022d4]<br>0x002D3000|- imm_val==723<br>                            |[0x800004a0]:auipc a0, 723<br> [0x800004a4]:sub a0, a0, tp<br> [0x800004a8]:sw a0, 156(ra)<br>            |
|  52|[0x800022d8]<br>0x66665000|- imm_val==419429<br>                         |[0x800004b4]:auipc a0, 419429<br> [0x800004b8]:sub a0, a0, tp<br> [0x800004bc]:sw a0, 160(ra)<br>         |
|  53|[0x800022dc]<br>0x33332000|- imm_val==209714<br>                         |[0x800004c8]:auipc a0, 209714<br> [0x800004cc]:sub a0, a0, tp<br> [0x800004d0]:sw a0, 164(ra)<br>         |
|  54|[0x800022e0]<br>0xAAAA9000|- imm_val==699049<br>                         |[0x800004dc]:auipc a0, 699049<br> [0x800004e0]:sub a0, a0, tp<br> [0x800004e4]:sw a0, 168(ra)<br>         |
|  55|[0x800022e4]<br>0x55554000|- imm_val==349524<br>                         |[0x800004f0]:auipc a0, 349524<br> [0x800004f4]:sub a0, a0, tp<br> [0x800004f8]:sw a0, 172(ra)<br>         |
|  56|[0x800022e8]<br>0x003FF000|- imm_val==1023<br>                           |[0x80000504]:auipc a0, 1023<br> [0x80000508]:sub a0, a0, tp<br> [0x8000050c]:sw a0, 176(ra)<br>           |
|  57|[0x800022ec]<br>0x002D4000|- imm_val==724<br>                            |[0x80000518]:auipc a0, 724<br> [0x8000051c]:sub a0, a0, tp<br> [0x80000520]:sw a0, 180(ra)<br>            |
|  58|[0x800022f0]<br>0x66666000|- imm_val==419430<br>                         |[0x8000052c]:auipc a0, 419430<br> [0x80000530]:sub a0, a0, tp<br> [0x80000534]:sw a0, 184(ra)<br>         |
|  59|[0x800022f4]<br>0x33333000|- imm_val==209715<br>                         |[0x80000540]:auipc a0, 209715<br> [0x80000544]:sub a0, a0, tp<br> [0x80000548]:sw a0, 188(ra)<br>         |
|  60|[0x800022f8]<br>0x00005000|- imm_val==5<br>                              |[0x80000554]:auipc a0, 5<br> [0x80000558]:sub a0, a0, tp<br> [0x8000055c]:sw a0, 192(ra)<br>              |
