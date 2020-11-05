
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000280')]      |
| SIG_REGION                | [('0x80003204', '0x800032c8', '49 words')]      |
| COV_LABELS                | lui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lui-01.S/lui-01.S    |
| Total Number of coverpoints| 78     |
| Total Coverpoints Hit     | 78      |
| Total Signature Updates   | 46      |
| STAT1                     | 45      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000270]:lui a0, 1048543
      [0x80000274]:sw a0, 68(sp)
 -- Signature Address: 0x800032c4 Data: 0xFFFDF000
 -- Redundant Coverpoints hit by the op
      - opcode : lui
      - rd : x10
      - imm_val > 0
      - imm_val == 1048543






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

|s.no|        signature         |                     coverpoints                     |                               code                                |
|---:|--------------------------|-----------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : lui<br> - rd : x10<br> - imm_val == 0<br> |[0x80000100]:lui a0, 0<br> [0x80000104]:sw a0, 0(ra)<br>           |
|   2|[0x80003214]<br>0x0000B000|- rd : x2<br> - imm_val > 0<br>                      |[0x80000108]:lui sp, 11<br> [0x8000010c]:sw sp, 4(ra)<br>          |
|   3|[0x80003218]<br>0xFFFFF000|- rd : x15<br> - imm_val == ((2**20)-1)<br>          |[0x80000110]:lui a5, 1048575<br> [0x80000114]:sw a5, 8(ra)<br>     |
|   4|[0x8000321c]<br>0x00001000|- rd : x23<br> - imm_val == 1<br>                    |[0x80000118]:lui s7, 1<br> [0x8000011c]:sw s7, 12(ra)<br>          |
|   5|[0x80003220]<br>0x00002000|- rd : x25<br> - imm_val == 2<br>                    |[0x80000120]:lui s9, 2<br> [0x80000124]:sw s9, 16(ra)<br>          |
|   6|[0x80003224]<br>0x00004000|- rd : x12<br> - imm_val == 4<br>                    |[0x80000128]:lui a2, 4<br> [0x8000012c]:sw a2, 20(ra)<br>          |
|   7|[0x80003228]<br>0x00008000|- rd : x21<br> - imm_val == 8<br>                    |[0x80000130]:lui s5, 8<br> [0x80000134]:sw s5, 24(ra)<br>          |
|   8|[0x8000322c]<br>0x00010000|- rd : x28<br> - imm_val == 16<br>                   |[0x80000138]:lui t3, 16<br> [0x8000013c]:sw t3, 28(ra)<br>         |
|   9|[0x80003230]<br>0x00020000|- rd : x24<br> - imm_val == 32<br>                   |[0x80000140]:lui s8, 32<br> [0x80000144]:sw s8, 32(ra)<br>         |
|  10|[0x80003234]<br>0x00040000|- rd : x22<br> - imm_val == 64<br>                   |[0x80000148]:lui s6, 64<br> [0x8000014c]:sw s6, 36(ra)<br>         |
|  11|[0x80003238]<br>0x00080000|- rd : x30<br> - imm_val == 128<br>                  |[0x80000150]:lui t5, 128<br> [0x80000154]:sw t5, 40(ra)<br>        |
|  12|[0x8000323c]<br>0x00100000|- rd : x20<br> - imm_val == 256<br>                  |[0x80000158]:lui s4, 256<br> [0x8000015c]:sw s4, 44(ra)<br>        |
|  13|[0x80003240]<br>0x00200000|- rd : x19<br> - imm_val == 512<br>                  |[0x80000160]:lui s3, 512<br> [0x80000164]:sw s3, 48(ra)<br>        |
|  14|[0x80003244]<br>0x00400000|- rd : x5<br> - imm_val == 1024<br>                  |[0x80000168]:lui t0, 1024<br> [0x8000016c]:sw t0, 52(ra)<br>       |
|  15|[0x80003248]<br>0x00800000|- rd : x17<br> - imm_val == 2048<br>                 |[0x80000170]:lui a7, 2048<br> [0x80000174]:sw a7, 56(ra)<br>       |
|  16|[0x8000324c]<br>0x01000000|- rd : x3<br> - imm_val == 4096<br>                  |[0x80000178]:lui gp, 4096<br> [0x8000017c]:sw gp, 60(ra)<br>       |
|  17|[0x80003250]<br>0x02000000|- rd : x27<br> - imm_val == 8192<br>                 |[0x80000180]:lui s11, 8192<br> [0x80000184]:sw s11, 64(ra)<br>     |
|  18|[0x80003254]<br>0x04000000|- rd : x14<br> - imm_val == 16384<br>                |[0x80000188]:lui a4, 16384<br> [0x8000018c]:sw a4, 68(ra)<br>      |
|  19|[0x80003258]<br>0x08000000|- rd : x4<br> - imm_val == 32768<br>                 |[0x80000190]:lui tp, 32768<br> [0x80000194]:sw tp, 72(ra)<br>      |
|  20|[0x8000325c]<br>0x10000000|- rd : x6<br> - imm_val == 65536<br>                 |[0x80000198]:lui t1, 65536<br> [0x8000019c]:sw t1, 76(ra)<br>      |
|  21|[0x80003260]<br>0x20000000|- rd : x16<br> - imm_val == 131072<br>               |[0x800001a0]:lui a6, 131072<br> [0x800001a4]:sw a6, 80(ra)<br>     |
|  22|[0x80003264]<br>0x40000000|- rd : x13<br> - imm_val == 262144<br>               |[0x800001a8]:lui a3, 262144<br> [0x800001ac]:sw a3, 84(ra)<br>     |
|  23|[0x80003268]<br>0x80000000|- rd : x31<br> - imm_val == 524288<br>               |[0x800001b0]:lui t6, 524288<br> [0x800001b4]:sw t6, 88(ra)<br>     |
|  24|[0x8000326c]<br>0xFFFFE000|- rd : x7<br> - imm_val == 1048574<br>               |[0x800001b8]:lui t2, 1048574<br> [0x800001bc]:sw t2, 92(ra)<br>    |
|  25|[0x80003270]<br>0xFFFFD000|- rd : x26<br> - imm_val == 1048573<br>              |[0x800001c0]:lui s10, 1048573<br> [0x800001c4]:sw s10, 96(ra)<br>  |
|  26|[0x80003274]<br>0xFFFFB000|- rd : x8<br> - imm_val == 1048571<br>               |[0x800001c8]:lui fp, 1048571<br> [0x800001cc]:sw fp, 100(ra)<br>   |
|  27|[0x80003278]<br>0xFFFF7000|- rd : x18<br> - imm_val == 1048567<br>              |[0x800001d0]:lui s2, 1048567<br> [0x800001d4]:sw s2, 104(ra)<br>   |
|  28|[0x8000327c]<br>0xFFFEF000|- rd : x29<br> - imm_val == 1048559<br>              |[0x800001d8]:lui t4, 1048559<br> [0x800001dc]:sw t4, 108(ra)<br>   |
|  29|[0x80003280]<br>0x00000000|- rd : x0<br> - imm_val == 1048543<br>               |[0x800001e8]:lui zero, 1048543<br> [0x800001ec]:sw zero, 0(sp)<br> |
|  30|[0x80003284]<br>0xFFFBF000|- rd : x9<br> - imm_val == 1048511<br>               |[0x800001f0]:lui s1, 1048511<br> [0x800001f4]:sw s1, 4(sp)<br>     |
|  31|[0x80003288]<br>0xFFDFF000|- rd : x1<br> - imm_val == 1048063<br>               |[0x800001f8]:lui ra, 1048063<br> [0x800001fc]:sw ra, 8(sp)<br>     |
|  32|[0x8000328c]<br>0xFFBFF000|- rd : x11<br> - imm_val == 1047551<br>              |[0x80000200]:lui a1, 1047551<br> [0x80000204]:sw a1, 12(sp)<br>    |
|  33|[0x80003290]<br>0xFF7FF000|- imm_val == 1046527<br>                             |[0x80000208]:lui a0, 1046527<br> [0x8000020c]:sw a0, 16(sp)<br>    |
|  34|[0x80003294]<br>0xFEFFF000|- imm_val == 1044479<br>                             |[0x80000210]:lui a0, 1044479<br> [0x80000214]:sw a0, 20(sp)<br>    |
|  35|[0x80003298]<br>0xFDFFF000|- imm_val == 1040383<br>                             |[0x80000218]:lui a0, 1040383<br> [0x8000021c]:sw a0, 24(sp)<br>    |
|  36|[0x8000329c]<br>0xFBFFF000|- imm_val == 1032191<br>                             |[0x80000220]:lui a0, 1032191<br> [0x80000224]:sw a0, 28(sp)<br>    |
|  37|[0x800032a0]<br>0xF7FFF000|- imm_val == 1015807<br>                             |[0x80000228]:lui a0, 1015807<br> [0x8000022c]:sw a0, 32(sp)<br>    |
|  38|[0x800032a4]<br>0xEFFFF000|- imm_val == 983039<br>                              |[0x80000230]:lui a0, 983039<br> [0x80000234]:sw a0, 36(sp)<br>     |
|  39|[0x800032a8]<br>0xDFFFF000|- imm_val == 917503<br>                              |[0x80000238]:lui a0, 917503<br> [0x8000023c]:sw a0, 40(sp)<br>     |
|  40|[0x800032ac]<br>0xBFFFF000|- imm_val == 786431<br>                              |[0x80000240]:lui a0, 786431<br> [0x80000244]:sw a0, 44(sp)<br>     |
|  41|[0x800032b0]<br>0x7FFFF000|- imm_val == 524287<br>                              |[0x80000248]:lui a0, 524287<br> [0x8000024c]:sw a0, 48(sp)<br>     |
|  42|[0x800032b4]<br>0x55555000|- imm_val == 349525<br>                              |[0x80000250]:lui a0, 349525<br> [0x80000254]:sw a0, 52(sp)<br>     |
|  43|[0x800032b8]<br>0xAAAAA000|- imm_val == 699050<br>                              |[0x80000258]:lui a0, 699050<br> [0x8000025c]:sw a0, 56(sp)<br>     |
|  44|[0x800032bc]<br>0xFFF7F000|- imm_val == 1048447<br>                             |[0x80000260]:lui a0, 1048447<br> [0x80000264]:sw a0, 60(sp)<br>    |
|  45|[0x800032c0]<br>0xFFEFF000|- imm_val == 1048319<br>                             |[0x80000268]:lui a0, 1048319<br> [0x8000026c]:sw a0, 64(sp)<br>    |
