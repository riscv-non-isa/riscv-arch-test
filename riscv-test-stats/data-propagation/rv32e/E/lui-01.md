
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000280')]      |
| SIG_REGION                | [('0x80002204', '0x80002300', '63 words')]      |
| COV_LABELS                | lui      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/lui-01.S/lui-01.S    |
| Total Number of coverpoints| 90     |
| Total Coverpoints Hit     | 87      |
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
      [0x80000278]:lui a0, 1048447
      [0x8000027c]:sw a0, 200(ra)
 -- Signature Address: 0x800022fc Data: 0xFFF7F000
 -- Redundant Coverpoints hit by the op
      - opcode : lui
      - rd : x10
      - imm_val == 1048447
      - imm_val > 0






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

|s.no|        signature         |                                  coverpoints                                   |                               code                                |
|---:|--------------------------|--------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFFF000|- opcode : lui<br> - rd : x3<br> - imm_val == ((2**20)-1)<br> - imm_val > 0<br> |[0x80000080]:lui gp, 1048575<br> [0x80000084]:sw gp, 0(tp)<br>     |
|   2|[0x80002208]<br>0x7FFFF000|- rd : x2<br> - imm_val == 524287<br>                                           |[0x80000088]:lui sp, 524287<br> [0x8000008c]:sw sp, 4(tp)<br>      |
|   3|[0x8000220c]<br>0xBFFFF000|- rd : x1<br> - imm_val == 786431<br>                                           |[0x80000090]:lui ra, 786431<br> [0x80000094]:sw ra, 8(tp)<br>      |
|   4|[0x80002210]<br>0xDFFFF000|- rd : x8<br> - imm_val == 917503<br>                                           |[0x80000098]:lui fp, 917503<br> [0x8000009c]:sw fp, 12(tp)<br>     |
|   5|[0x80002214]<br>0xEFFFF000|- rd : x14<br> - imm_val == 983039<br>                                          |[0x800000a0]:lui a4, 983039<br> [0x800000a4]:sw a4, 16(tp)<br>     |
|   6|[0x80002218]<br>0xF7FFF000|- rd : x7<br> - imm_val == 1015807<br>                                          |[0x800000a8]:lui t2, 1015807<br> [0x800000ac]:sw t2, 20(tp)<br>    |
|   7|[0x8000221c]<br>0xFBFFF000|- rd : x13<br> - imm_val == 1032191<br>                                         |[0x800000b0]:lui a3, 1032191<br> [0x800000b4]:sw a3, 24(tp)<br>    |
|   8|[0x80002220]<br>0xFDFFF000|- rd : x12<br> - imm_val == 1040383<br>                                         |[0x800000b8]:lui a2, 1040383<br> [0x800000bc]:sw a2, 28(tp)<br>    |
|   9|[0x80002224]<br>0xFEFFF000|- rd : x15<br> - imm_val == 1044479<br>                                         |[0x800000c0]:lui a5, 1044479<br> [0x800000c4]:sw a5, 32(tp)<br>    |
|  10|[0x80002228]<br>0xFF7FF000|- rd : x10<br> - imm_val == 1046527<br>                                         |[0x800000c8]:lui a0, 1046527<br> [0x800000cc]:sw a0, 36(tp)<br>    |
|  11|[0x8000222c]<br>0xFFBFF000|- rd : x6<br> - imm_val == 1047551<br>                                          |[0x800000d0]:lui t1, 1047551<br> [0x800000d4]:sw t1, 40(tp)<br>    |
|  12|[0x80002230]<br>0xFFDFF000|- rd : x9<br> - imm_val == 1048063<br>                                          |[0x800000d8]:lui s1, 1048063<br> [0x800000dc]:sw s1, 44(tp)<br>    |
|  13|[0x80002234]<br>0xFFEFF000|- rd : x4<br> - imm_val == 1048319<br>                                          |[0x800000e8]:lui tp, 1048319<br> [0x800000ec]:sw tp, 0(ra)<br>     |
|  14|[0x80002238]<br>0x00000000|- rd : x0<br> - imm_val == 1048447<br>                                          |[0x800000f0]:lui zero, 1048447<br> [0x800000f4]:sw zero, 4(ra)<br> |
|  15|[0x8000223c]<br>0xFFFBF000|- rd : x5<br> - imm_val == 1048511<br>                                          |[0x800000f8]:lui t0, 1048511<br> [0x800000fc]:sw t0, 8(ra)<br>     |
|  16|[0x80002240]<br>0xFFFDF000|- rd : x11<br> - imm_val == 1048543<br>                                         |[0x80000100]:lui a1, 1048543<br> [0x80000104]:sw a1, 12(ra)<br>    |
|  17|[0x80002244]<br>0xFFFEF000|- imm_val == 1048559<br>                                                        |[0x80000108]:lui a0, 1048559<br> [0x8000010c]:sw a0, 16(ra)<br>    |
|  18|[0x80002248]<br>0xFFFF7000|- imm_val == 1048567<br>                                                        |[0x80000110]:lui a0, 1048567<br> [0x80000114]:sw a0, 20(ra)<br>    |
|  19|[0x8000224c]<br>0xFFFFB000|- imm_val == 1048571<br>                                                        |[0x80000118]:lui a0, 1048571<br> [0x8000011c]:sw a0, 24(ra)<br>    |
|  20|[0x80002250]<br>0xFFFFD000|- imm_val == 1048573<br>                                                        |[0x80000120]:lui a0, 1048573<br> [0x80000124]:sw a0, 28(ra)<br>    |
|  21|[0x80002254]<br>0xFFFFE000|- imm_val == 1048574<br>                                                        |[0x80000128]:lui a0, 1048574<br> [0x8000012c]:sw a0, 32(ra)<br>    |
|  22|[0x80002258]<br>0x80000000|- imm_val == 524288<br>                                                         |[0x80000130]:lui a0, 524288<br> [0x80000134]:sw a0, 36(ra)<br>     |
|  23|[0x8000225c]<br>0x40000000|- imm_val == 262144<br>                                                         |[0x80000138]:lui a0, 262144<br> [0x8000013c]:sw a0, 40(ra)<br>     |
|  24|[0x80002260]<br>0x20000000|- imm_val == 131072<br>                                                         |[0x80000140]:lui a0, 131072<br> [0x80000144]:sw a0, 44(ra)<br>     |
|  25|[0x80002264]<br>0x10000000|- imm_val == 65536<br>                                                          |[0x80000148]:lui a0, 65536<br> [0x8000014c]:sw a0, 48(ra)<br>      |
|  26|[0x80002268]<br>0x08000000|- imm_val == 32768<br>                                                          |[0x80000150]:lui a0, 32768<br> [0x80000154]:sw a0, 52(ra)<br>      |
|  27|[0x8000226c]<br>0x04000000|- imm_val == 16384<br>                                                          |[0x80000158]:lui a0, 16384<br> [0x8000015c]:sw a0, 56(ra)<br>      |
|  28|[0x80002270]<br>0x02000000|- imm_val == 8192<br>                                                           |[0x80000160]:lui a0, 8192<br> [0x80000164]:sw a0, 60(ra)<br>       |
|  29|[0x80002274]<br>0x01000000|- imm_val == 4096<br>                                                           |[0x80000168]:lui a0, 4096<br> [0x8000016c]:sw a0, 64(ra)<br>       |
|  30|[0x80002278]<br>0x00800000|- imm_val == 2048<br>                                                           |[0x80000170]:lui a0, 2048<br> [0x80000174]:sw a0, 68(ra)<br>       |
|  31|[0x8000227c]<br>0x00400000|- imm_val == 1024<br> - imm_val==1024<br>                                       |[0x80000178]:lui a0, 1024<br> [0x8000017c]:sw a0, 72(ra)<br>       |
|  32|[0x80002280]<br>0x00200000|- imm_val == 512<br>                                                            |[0x80000180]:lui a0, 512<br> [0x80000184]:sw a0, 76(ra)<br>        |
|  33|[0x80002284]<br>0x00100000|- imm_val == 256<br>                                                            |[0x80000188]:lui a0, 256<br> [0x8000018c]:sw a0, 80(ra)<br>        |
|  34|[0x80002288]<br>0x00080000|- imm_val == 128<br>                                                            |[0x80000190]:lui a0, 128<br> [0x80000194]:sw a0, 84(ra)<br>        |
|  35|[0x8000228c]<br>0x00040000|- imm_val == 64<br>                                                             |[0x80000198]:lui a0, 64<br> [0x8000019c]:sw a0, 88(ra)<br>         |
|  36|[0x80002290]<br>0x00020000|- imm_val == 32<br>                                                             |[0x800001a0]:lui a0, 32<br> [0x800001a4]:sw a0, 92(ra)<br>         |
|  37|[0x80002294]<br>0x00010000|- imm_val == 16<br>                                                             |[0x800001a8]:lui a0, 16<br> [0x800001ac]:sw a0, 96(ra)<br>         |
|  38|[0x80002298]<br>0x55555000|- imm_val==349525<br> - imm_val == 349525<br>                                   |[0x800001b0]:lui a0, 349525<br> [0x800001b4]:sw a0, 100(ra)<br>    |
|  39|[0x8000229c]<br>0x00003000|- imm_val==3<br>                                                                |[0x800001b8]:lui a0, 3<br> [0x800001bc]:sw a0, 104(ra)<br>         |
|  40|[0x800022a0]<br>0xAAAAA000|- imm_val==699050<br> - imm_val == 699050<br>                                   |[0x800001c0]:lui a0, 699050<br> [0x800001c4]:sw a0, 108(ra)<br>    |
|  41|[0x800022a4]<br>0x00000000|- imm_val==0<br> - imm_val == 0<br>                                             |[0x800001c8]:lui a0, 0<br> [0x800001cc]:sw a0, 112(ra)<br>         |
|  42|[0x800022a8]<br>0x00008000|- imm_val == 8<br>                                                              |[0x800001d0]:lui a0, 8<br> [0x800001d4]:sw a0, 116(ra)<br>         |
|  43|[0x800022ac]<br>0x00004000|- imm_val == 4<br> - imm_val==4<br>                                             |[0x800001d8]:lui a0, 4<br> [0x800001dc]:sw a0, 120(ra)<br>         |
|  44|[0x800022b0]<br>0x00002000|- imm_val == 2<br> - imm_val==2<br>                                             |[0x800001e0]:lui a0, 2<br> [0x800001e4]:sw a0, 124(ra)<br>         |
|  45|[0x800022b4]<br>0x00001000|- imm_val == 1<br> - imm_val==1<br>                                             |[0x800001e8]:lui a0, 1<br> [0x800001ec]:sw a0, 128(ra)<br>         |
|  46|[0x800022b8]<br>0x002D5000|- imm_val==725<br>                                                              |[0x800001f0]:lui a0, 725<br> [0x800001f4]:sw a0, 132(ra)<br>       |
|  47|[0x800022bc]<br>0x66667000|- imm_val==419431<br>                                                           |[0x800001f8]:lui a0, 419431<br> [0x800001fc]:sw a0, 136(ra)<br>    |
|  48|[0x800022c0]<br>0x33334000|- imm_val==209716<br>                                                           |[0x80000200]:lui a0, 209716<br> [0x80000204]:sw a0, 140(ra)<br>    |
|  49|[0x800022c4]<br>0x00006000|- imm_val==6<br>                                                                |[0x80000208]:lui a0, 6<br> [0x8000020c]:sw a0, 144(ra)<br>         |
|  50|[0x800022c8]<br>0xAAAAB000|- imm_val==699051<br>                                                           |[0x80000210]:lui a0, 699051<br> [0x80000214]:sw a0, 148(ra)<br>    |
|  51|[0x800022cc]<br>0x55556000|- imm_val==349526<br>                                                           |[0x80000218]:lui a0, 349526<br> [0x8000021c]:sw a0, 152(ra)<br>    |
|  52|[0x800022d0]<br>0x003FE000|- imm_val==1022<br>                                                             |[0x80000220]:lui a0, 1022<br> [0x80000224]:sw a0, 156(ra)<br>      |
|  53|[0x800022d4]<br>0x002D3000|- imm_val==723<br>                                                              |[0x80000228]:lui a0, 723<br> [0x8000022c]:sw a0, 160(ra)<br>       |
|  54|[0x800022d8]<br>0x66665000|- imm_val==419429<br>                                                           |[0x80000230]:lui a0, 419429<br> [0x80000234]:sw a0, 164(ra)<br>    |
|  55|[0x800022dc]<br>0x33332000|- imm_val==209714<br>                                                           |[0x80000238]:lui a0, 209714<br> [0x8000023c]:sw a0, 168(ra)<br>    |
|  56|[0x800022e0]<br>0xAAAA9000|- imm_val==699049<br>                                                           |[0x80000240]:lui a0, 699049<br> [0x80000244]:sw a0, 172(ra)<br>    |
|  57|[0x800022e4]<br>0x55554000|- imm_val==349524<br>                                                           |[0x80000248]:lui a0, 349524<br> [0x8000024c]:sw a0, 176(ra)<br>    |
|  58|[0x800022e8]<br>0x003FF000|- imm_val==1023<br>                                                             |[0x80000250]:lui a0, 1023<br> [0x80000254]:sw a0, 180(ra)<br>      |
|  59|[0x800022ec]<br>0x002D4000|- imm_val==724<br>                                                              |[0x80000258]:lui a0, 724<br> [0x8000025c]:sw a0, 184(ra)<br>       |
|  60|[0x800022f0]<br>0x66666000|- imm_val==419430<br>                                                           |[0x80000260]:lui a0, 419430<br> [0x80000264]:sw a0, 188(ra)<br>    |
|  61|[0x800022f4]<br>0x33333000|- imm_val==209715<br>                                                           |[0x80000268]:lui a0, 209715<br> [0x8000026c]:sw a0, 192(ra)<br>    |
|  62|[0x800022f8]<br>0x00005000|- imm_val==5<br>                                                                |[0x80000270]:lui a0, 5<br> [0x80000274]:sw a0, 196(ra)<br>         |
