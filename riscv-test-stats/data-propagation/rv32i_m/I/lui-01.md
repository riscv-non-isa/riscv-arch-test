
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000300')]      |
| SIG_REGION                | [('0x80002010', '0x80002110', '64 words')]      |
| COV_LABELS                | lui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lui-01.S/lui-01.S    |
| Total Number of coverpoints| 103     |
| Total Coverpoints Hit     | 103      |
| Total Signature Updates   | 63      |
| STAT1                     | 62      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800002f8]:lui a0, 349525
      [0x800002fc]:sw a0, 132(ra)
 -- Signature Address: 0x80002108 Data: 0x55555000
 -- Redundant Coverpoints hit by the op
      - opcode : lui
      - rd : x10
      - imm_val > 0
      - imm_val==349525
      - imm_val == 349525






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

|s.no|        signature         |                             coverpoints                             |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000000|- opcode : lui<br> - rd : x8<br> - imm_val == 0<br> - imm_val==0<br> |[0x80000100]:lui fp, 0<br> [0x80000104]:sw fp, 0(s1)<br>           |
|   2|[0x80002014]<br>0x00005000|- rd : x5<br> - imm_val > 0<br> - imm_val==5<br>                     |[0x80000108]:lui t0, 5<br> [0x8000010c]:sw t0, 4(s1)<br>           |
|   3|[0x80002018]<br>0xFFFFF000|- rd : x19<br> - imm_val == ((2**20)-1)<br>                          |[0x80000110]:lui s3, 1048575<br> [0x80000114]:sw s3, 8(s1)<br>     |
|   4|[0x8000201c]<br>0x00003000|- rd : x13<br> - imm_val==3<br>                                      |[0x80000118]:lui a3, 3<br> [0x8000011c]:sw a3, 12(s1)<br>          |
|   5|[0x80002020]<br>0x00000000|- rd : x0<br> - imm_val==349525<br> - imm_val == 349525<br>          |[0x80000120]:lui zero, 349525<br> [0x80000124]:sw zero, 16(s1)<br> |
|   6|[0x80002024]<br>0xAAAAA000|- rd : x4<br> - imm_val==699050<br> - imm_val == 699050<br>          |[0x80000128]:lui tp, 699050<br> [0x8000012c]:sw tp, 20(s1)<br>     |
|   7|[0x80002028]<br>0x33333000|- rd : x22<br> - imm_val==209715<br>                                 |[0x80000130]:lui s6, 209715<br> [0x80000134]:sw s6, 24(s1)<br>     |
|   8|[0x8000202c]<br>0x66666000|- rd : x26<br> - imm_val==419430<br>                                 |[0x80000138]:lui s10, 419430<br> [0x8000013c]:sw s10, 28(s1)<br>   |
|   9|[0x80002030]<br>0x002D4000|- rd : x29<br> - imm_val==724<br>                                    |[0x80000140]:lui t4, 724<br> [0x80000144]:sw t4, 32(s1)<br>        |
|  10|[0x80002034]<br>0x003FF000|- rd : x3<br> - imm_val==1023<br>                                    |[0x80000148]:lui gp, 1023<br> [0x8000014c]:sw gp, 36(s1)<br>       |
|  11|[0x80002038]<br>0x00002000|- rd : x30<br> - imm_val==2<br> - imm_val == 2<br>                   |[0x80000150]:lui t5, 2<br> [0x80000154]:sw t5, 40(s1)<br>          |
|  12|[0x8000203c]<br>0x55554000|- rd : x16<br> - imm_val==349524<br>                                 |[0x80000158]:lui a6, 349524<br> [0x8000015c]:sw a6, 44(s1)<br>     |
|  13|[0x80002040]<br>0xAAAA9000|- rd : x2<br> - imm_val==699049<br>                                  |[0x80000160]:lui sp, 699049<br> [0x80000164]:sw sp, 48(s1)<br>     |
|  14|[0x80002044]<br>0x00004000|- rd : x24<br> - imm_val==4<br> - imm_val == 4<br>                   |[0x80000168]:lui s8, 4<br> [0x8000016c]:sw s8, 52(s1)<br>          |
|  15|[0x80002048]<br>0x33332000|- rd : x27<br> - imm_val==209714<br>                                 |[0x80000170]:lui s11, 209714<br> [0x80000174]:sw s11, 56(s1)<br>   |
|  16|[0x8000204c]<br>0x66665000|- rd : x20<br> - imm_val==419429<br>                                 |[0x80000178]:lui s4, 419429<br> [0x8000017c]:sw s4, 60(s1)<br>     |
|  17|[0x80002050]<br>0x002D3000|- rd : x28<br> - imm_val==723<br>                                    |[0x80000180]:lui t3, 723<br> [0x80000184]:sw t3, 64(s1)<br>        |
|  18|[0x80002054]<br>0x003FE000|- rd : x6<br> - imm_val==1022<br>                                    |[0x80000188]:lui t1, 1022<br> [0x8000018c]:sw t1, 68(s1)<br>       |
|  19|[0x80002058]<br>0x55556000|- rd : x10<br> - imm_val==349526<br>                                 |[0x80000190]:lui a0, 349526<br> [0x80000194]:sw a0, 72(s1)<br>     |
|  20|[0x8000205c]<br>0xAAAAB000|- rd : x12<br> - imm_val==699051<br>                                 |[0x80000198]:lui a2, 699051<br> [0x8000019c]:sw a2, 76(s1)<br>     |
|  21|[0x80002060]<br>0x00006000|- rd : x15<br> - imm_val==6<br>                                      |[0x800001a0]:lui a5, 6<br> [0x800001a4]:sw a5, 80(s1)<br>          |
|  22|[0x80002064]<br>0x33334000|- rd : x23<br> - imm_val==209716<br>                                 |[0x800001a8]:lui s7, 209716<br> [0x800001ac]:sw s7, 84(s1)<br>     |
|  23|[0x80002068]<br>0x66667000|- rd : x1<br> - imm_val==419431<br>                                  |[0x800001b0]:lui ra, 419431<br> [0x800001b4]:sw ra, 88(s1)<br>     |
|  24|[0x8000206c]<br>0x002D5000|- rd : x18<br> - imm_val==725<br>                                    |[0x800001b8]:lui s2, 725<br> [0x800001bc]:sw s2, 92(s1)<br>        |
|  25|[0x80002070]<br>0x00001000|- rd : x11<br> - imm_val==1<br> - imm_val == 1<br>                   |[0x800001c0]:lui a1, 1<br> [0x800001c4]:sw a1, 96(s1)<br>          |
|  26|[0x80002074]<br>0x00400000|- rd : x21<br> - imm_val==1024<br> - imm_val == 1024<br>             |[0x800001c8]:lui s5, 1024<br> [0x800001cc]:sw s5, 100(s1)<br>      |
|  27|[0x80002078]<br>0x00008000|- rd : x17<br> - imm_val == 8<br>                                    |[0x800001d0]:lui a7, 8<br> [0x800001d4]:sw a7, 104(s1)<br>         |
|  28|[0x8000207c]<br>0x00010000|- rd : x25<br> - imm_val == 16<br>                                   |[0x800001d8]:lui s9, 16<br> [0x800001dc]:sw s9, 108(s1)<br>        |
|  29|[0x80002080]<br>0x00020000|- rd : x7<br> - imm_val == 32<br>                                    |[0x800001e0]:lui t2, 32<br> [0x800001e4]:sw t2, 112(s1)<br>        |
|  30|[0x80002084]<br>0x00040000|- rd : x14<br> - imm_val == 64<br>                                   |[0x800001f0]:lui a4, 64<br> [0x800001f4]:sw a4, 0(ra)<br>          |
|  31|[0x80002088]<br>0x00080000|- rd : x9<br> - imm_val == 128<br>                                   |[0x800001f8]:lui s1, 128<br> [0x800001fc]:sw s1, 4(ra)<br>         |
|  32|[0x8000208c]<br>0xEFFFF000|- rd : x31<br> - imm_val == 983039<br>                               |[0x80000200]:lui t6, 983039<br> [0x80000204]:sw t6, 8(ra)<br>      |
|  33|[0x80002090]<br>0xDFFFF000|- imm_val == 917503<br>                                              |[0x80000208]:lui a0, 917503<br> [0x8000020c]:sw a0, 12(ra)<br>     |
|  34|[0x80002094]<br>0xBFFFF000|- imm_val == 786431<br>                                              |[0x80000210]:lui a0, 786431<br> [0x80000214]:sw a0, 16(ra)<br>     |
|  35|[0x80002098]<br>0x7FFFF000|- imm_val == 524287<br>                                              |[0x80000218]:lui a0, 524287<br> [0x8000021c]:sw a0, 20(ra)<br>     |
|  36|[0x8000209c]<br>0x00100000|- imm_val == 256<br>                                                 |[0x80000220]:lui a0, 256<br> [0x80000224]:sw a0, 24(ra)<br>        |
|  37|[0x800020a0]<br>0x00200000|- imm_val == 512<br>                                                 |[0x80000228]:lui a0, 512<br> [0x8000022c]:sw a0, 28(ra)<br>        |
|  38|[0x800020a4]<br>0x00800000|- imm_val == 2048<br>                                                |[0x80000230]:lui a0, 2048<br> [0x80000234]:sw a0, 32(ra)<br>       |
|  39|[0x800020a8]<br>0x01000000|- imm_val == 4096<br>                                                |[0x80000238]:lui a0, 4096<br> [0x8000023c]:sw a0, 36(ra)<br>       |
|  40|[0x800020ac]<br>0x02000000|- imm_val == 8192<br>                                                |[0x80000240]:lui a0, 8192<br> [0x80000244]:sw a0, 40(ra)<br>       |
|  41|[0x800020b0]<br>0x04000000|- imm_val == 16384<br>                                               |[0x80000248]:lui a0, 16384<br> [0x8000024c]:sw a0, 44(ra)<br>      |
|  42|[0x800020b4]<br>0x08000000|- imm_val == 32768<br>                                               |[0x80000250]:lui a0, 32768<br> [0x80000254]:sw a0, 48(ra)<br>      |
|  43|[0x800020b8]<br>0x10000000|- imm_val == 65536<br>                                               |[0x80000258]:lui a0, 65536<br> [0x8000025c]:sw a0, 52(ra)<br>      |
|  44|[0x800020bc]<br>0x20000000|- imm_val == 131072<br>                                              |[0x80000260]:lui a0, 131072<br> [0x80000264]:sw a0, 56(ra)<br>     |
|  45|[0x800020c0]<br>0x40000000|- imm_val == 262144<br>                                              |[0x80000268]:lui a0, 262144<br> [0x8000026c]:sw a0, 60(ra)<br>     |
|  46|[0x800020c4]<br>0x80000000|- imm_val == 524288<br>                                              |[0x80000270]:lui a0, 524288<br> [0x80000274]:sw a0, 64(ra)<br>     |
|  47|[0x800020c8]<br>0xFFFFE000|- imm_val == 1048574<br>                                             |[0x80000278]:lui a0, 1048574<br> [0x8000027c]:sw a0, 68(ra)<br>    |
|  48|[0x800020cc]<br>0xFFFFD000|- imm_val == 1048573<br>                                             |[0x80000280]:lui a0, 1048573<br> [0x80000284]:sw a0, 72(ra)<br>    |
|  49|[0x800020d0]<br>0xFFFFB000|- imm_val == 1048571<br>                                             |[0x80000288]:lui a0, 1048571<br> [0x8000028c]:sw a0, 76(ra)<br>    |
|  50|[0x800020d4]<br>0xFFFF7000|- imm_val == 1048567<br>                                             |[0x80000290]:lui a0, 1048567<br> [0x80000294]:sw a0, 80(ra)<br>    |
|  51|[0x800020d8]<br>0xFFFEF000|- imm_val == 1048559<br>                                             |[0x80000298]:lui a0, 1048559<br> [0x8000029c]:sw a0, 84(ra)<br>    |
|  52|[0x800020dc]<br>0xFFFDF000|- imm_val == 1048543<br>                                             |[0x800002a0]:lui a0, 1048543<br> [0x800002a4]:sw a0, 88(ra)<br>    |
|  53|[0x800020e0]<br>0xFFFBF000|- imm_val == 1048511<br>                                             |[0x800002a8]:lui a0, 1048511<br> [0x800002ac]:sw a0, 92(ra)<br>    |
|  54|[0x800020e4]<br>0xFFF7F000|- imm_val == 1048447<br>                                             |[0x800002b0]:lui a0, 1048447<br> [0x800002b4]:sw a0, 96(ra)<br>    |
|  55|[0x800020e8]<br>0xFFEFF000|- imm_val == 1048319<br>                                             |[0x800002b8]:lui a0, 1048319<br> [0x800002bc]:sw a0, 100(ra)<br>   |
|  56|[0x800020ec]<br>0xFFDFF000|- imm_val == 1048063<br>                                             |[0x800002c0]:lui a0, 1048063<br> [0x800002c4]:sw a0, 104(ra)<br>   |
|  57|[0x800020f0]<br>0xFFBFF000|- imm_val == 1047551<br>                                             |[0x800002c8]:lui a0, 1047551<br> [0x800002cc]:sw a0, 108(ra)<br>   |
|  58|[0x800020f4]<br>0xFF7FF000|- imm_val == 1046527<br>                                             |[0x800002d0]:lui a0, 1046527<br> [0x800002d4]:sw a0, 112(ra)<br>   |
|  59|[0x800020f8]<br>0xFEFFF000|- imm_val == 1044479<br>                                             |[0x800002d8]:lui a0, 1044479<br> [0x800002dc]:sw a0, 116(ra)<br>   |
|  60|[0x800020fc]<br>0xFDFFF000|- imm_val == 1040383<br>                                             |[0x800002e0]:lui a0, 1040383<br> [0x800002e4]:sw a0, 120(ra)<br>   |
|  61|[0x80002100]<br>0xFBFFF000|- imm_val == 1032191<br>                                             |[0x800002e8]:lui a0, 1032191<br> [0x800002ec]:sw a0, 124(ra)<br>   |
|  62|[0x80002104]<br>0xF7FFF000|- imm_val == 1015807<br>                                             |[0x800002f0]:lui a0, 1015807<br> [0x800002f4]:sw a0, 128(ra)<br>   |
