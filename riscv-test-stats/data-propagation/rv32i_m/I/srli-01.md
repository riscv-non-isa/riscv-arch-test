
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005c0')]      |
| SIG_REGION                | [('0x80002204', '0x80002360', '87 words')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 178     |
| Total Coverpoints Hit     | 178      |
| Total Signature Updates   | 87      |
| STAT1                     | 86      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ac]:srli a1, a0, 7
      [0x800005b0]:sw a1, 268(tp)
 -- Signature Address: 0x8000235c Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 524288






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

|s.no|        signature         |                                                                                                                 coverpoints                                                                                                                 |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00008000|- opcode : srli<br> - rs1 : x30<br> - rd : x24<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 16<br> |[0x80000104]:srli s8, t5, 16<br> [0x80000108]:sw s8, 0(a4)<br>     |
|   2|[0x80002208]<br>0x00000000|- rs1 : x15<br> - rd : x15<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 8<br>                                                                                                                       |[0x80000110]:srli a5, a5, 14<br> [0x80000114]:sw a5, 4(a4)<br>     |
|   3|[0x8000220c]<br>0xFFFFBFFF|- rs1 : x19<br> - rd : x31<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -16385<br>                                                                                                                                                    |[0x80000120]:srli t6, s3, 0<br> [0x80000124]:sw t6, 8(a4)<br>      |
|   4|[0x80002210]<br>0x00000002|- rs1 : x29<br> - rd : x8<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                         |[0x8000012c]:srli fp, t4, 0<br> [0x80000130]:sw fp, 12(a4)<br>     |
|   5|[0x80002214]<br>0x00000001|- rs1 : x1<br> - rd : x6<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -134217729<br>                                                                                                                                           |[0x8000013c]:srli t1, ra, 31<br> [0x80000140]:sw t1, 16(a4)<br>    |
|   6|[0x80002218]<br>0x00000000|- rs1 : x10<br> - rd : x5<br> - rs1_val > 0 and imm_val == (xlen-1)<br>                                                                                                                                                                      |[0x80000148]:srli t0, a0, 31<br> [0x8000014c]:sw t0, 20(a4)<br>    |
|   7|[0x8000221c]<br>0x00000000|- rs1 : x4<br> - rd : x9<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val==6<br>                                                                                                                                    |[0x80000154]:srli s1, tp, 6<br> [0x80000158]:sw s1, 24(a4)<br>     |
|   8|[0x80002220]<br>0x00000000|- rs1 : x31<br> - rd : x29<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                                                                                                                       |[0x80000160]:srli t4, t6, 6<br> [0x80000164]:sw t4, 28(a4)<br>     |
|   9|[0x80002224]<br>0x3FFFFFFF|- rs1 : x9<br> - rd : x21<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 1<br>                                                                                            |[0x80000170]:srli s5, s1, 1<br> [0x80000174]:sw s5, 32(a4)<br>     |
|  10|[0x80002228]<br>0x00000000|- rs1 : x18<br> - rd : x22<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 10<br>                                                                                                                 |[0x8000017c]:srli s6, s2, 10<br> [0x80000180]:sw s6, 36(a4)<br>    |
|  11|[0x8000222c]<br>0x00000000|- rs1 : x24<br> - rd : x16<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                                                           |[0x80000188]:srli a6, s8, 19<br> [0x8000018c]:sw a6, 40(a4)<br>    |
|  12|[0x80002230]<br>0x00000001|- rs1 : x8<br> - rd : x26<br> - rs1_val == 16<br> - imm_val == 4<br>                                                                                                                                                                         |[0x80000194]:srli s10, fp, 4<br> [0x80000198]:sw s10, 44(a4)<br>   |
|  13|[0x80002234]<br>0x00000000|- rs1 : x13<br> - rd : x4<br> - rs1_val == 32<br>                                                                                                                                                                                            |[0x800001a0]:srli tp, a3, 19<br> [0x800001a4]:sw tp, 48(a4)<br>    |
|  14|[0x80002238]<br>0x00000000|- rs1 : x0<br> - rd : x10<br>                                                                                                                                                                                                                |[0x800001ac]:srli a0, zero, 4<br> [0x800001b0]:sw a0, 52(a4)<br>   |
|  15|[0x8000223c]<br>0x00000000|- rs1 : x23<br> - rd : x17<br> - rs1_val == 128<br> - imm_val == 30<br>                                                                                                                                                                      |[0x800001b8]:srli a7, s7, 30<br> [0x800001bc]:sw a7, 56(a4)<br>    |
|  16|[0x80002240]<br>0x00000000|- rs1 : x2<br> - rd : x7<br> - rs1_val == 256<br>                                                                                                                                                                                            |[0x800001c4]:srli t2, sp, 11<br> [0x800001c8]:sw t2, 60(a4)<br>    |
|  17|[0x80002244]<br>0x00000001|- rs1 : x11<br> - rd : x3<br> - rs1_val == 512<br>                                                                                                                                                                                           |[0x800001d0]:srli gp, a1, 9<br> [0x800001d4]:sw gp, 64(a4)<br>     |
|  18|[0x80002248]<br>0x00000008|- rs1 : x28<br> - rd : x19<br> - rs1_val == 1024<br>                                                                                                                                                                                         |[0x800001dc]:srli s3, t3, 7<br> [0x800001e0]:sw s3, 68(a4)<br>     |
|  19|[0x8000224c]<br>0x00000100|- rs1 : x12<br> - rd : x27<br> - rs1_val == 2048<br>                                                                                                                                                                                         |[0x800001ec]:srli s11, a2, 3<br> [0x800001f0]:sw s11, 72(a4)<br>   |
|  20|[0x80002250]<br>0x00000008|- rs1 : x14<br> - rd : x12<br> - rs1_val == 4096<br>                                                                                                                                                                                         |[0x80000200]:srli a2, a4, 9<br> [0x80000204]:sw a2, 0(tp)<br>      |
|  21|[0x80002254]<br>0x00000000|- rs1 : x3<br> - rd : x30<br> - rs1_val == 8192<br>                                                                                                                                                                                          |[0x8000020c]:srli t5, gp, 19<br> [0x80000210]:sw t5, 4(tp)<br>     |
|  22|[0x80002258]<br>0x00000000|- rs1 : x22<br> - rd : x2<br> - rs1_val == 16384<br>                                                                                                                                                                                         |[0x80000218]:srli sp, s6, 30<br> [0x8000021c]:sw sp, 8(tp)<br>     |
|  23|[0x8000225c]<br>0x00000001|- rs1 : x7<br> - rd : x23<br> - rs1_val == 32768<br> - imm_val == 15<br>                                                                                                                                                                     |[0x80000224]:srli s7, t2, 15<br> [0x80000228]:sw s7, 12(tp)<br>    |
|  24|[0x80002260]<br>0x00000000|- rs1 : x26<br> - rd : x1<br> - rs1_val == 65536<br> - imm_val == 21<br>                                                                                                                                                                     |[0x80000230]:srli ra, s10, 21<br> [0x80000234]:sw ra, 16(tp)<br>   |
|  25|[0x80002264]<br>0x00000010|- rs1 : x21<br> - rd : x25<br> - rs1_val == 131072<br>                                                                                                                                                                                       |[0x8000023c]:srli s9, s5, 13<br> [0x80000240]:sw s9, 20(tp)<br>    |
|  26|[0x80002268]<br>0x00002000|- rs1 : x5<br> - rd : x20<br> - rs1_val == 262144<br>                                                                                                                                                                                        |[0x80000248]:srli s4, t0, 5<br> [0x8000024c]:sw s4, 24(tp)<br>     |
|  27|[0x8000226c]<br>0x00000000|- rs1 : x25<br> - rd : x0<br> - rs1_val == 524288<br>                                                                                                                                                                                        |[0x80000254]:srli zero, s9, 7<br> [0x80000258]:sw zero, 28(tp)<br> |
|  28|[0x80002270]<br>0x00000000|- rs1 : x16<br> - rd : x18<br> - rs1_val == 1048576<br>                                                                                                                                                                                      |[0x80000260]:srli s2, a6, 21<br> [0x80000264]:sw s2, 32(tp)<br>    |
|  29|[0x80002274]<br>0x00000000|- rs1 : x17<br> - rd : x28<br> - rs1_val == 2097152<br> - imm_val == 29<br>                                                                                                                                                                  |[0x8000026c]:srli t3, a7, 29<br> [0x80000270]:sw t3, 36(tp)<br>    |
|  30|[0x80002278]<br>0x00004000|- rs1 : x27<br> - rd : x11<br> - rs1_val == 4194304<br> - imm_val == 8<br>                                                                                                                                                                   |[0x80000278]:srli a1, s11, 8<br> [0x8000027c]:sw a1, 40(tp)<br>    |
|  31|[0x8000227c]<br>0x00010000|- rs1 : x20<br> - rd : x13<br> - rs1_val == 8388608<br>                                                                                                                                                                                      |[0x80000284]:srli a3, s4, 7<br> [0x80000288]:sw a3, 44(tp)<br>     |
|  32|[0x80002280]<br>0x00010000|- rs1 : x6<br> - rd : x14<br> - rs1_val == 16777216<br>                                                                                                                                                                                      |[0x80000290]:srli a4, t1, 8<br> [0x80000294]:sw a4, 48(tp)<br>     |
|  33|[0x80002284]<br>0x00000010|- rs1_val == 33554432<br>                                                                                                                                                                                                                    |[0x8000029c]:srli a1, a0, 21<br> [0x800002a0]:sw a1, 52(tp)<br>    |
|  34|[0x80002288]<br>0x00000080|- rs1_val == 67108864<br>                                                                                                                                                                                                                    |[0x800002a8]:srli a1, a0, 19<br> [0x800002ac]:sw a1, 56(tp)<br>    |
|  35|[0x8000228c]<br>0x00200000|- rs1_val == 134217728<br>                                                                                                                                                                                                                   |[0x800002b4]:srli a1, a0, 6<br> [0x800002b8]:sw a1, 60(tp)<br>     |
|  36|[0x80002290]<br>0x04000000|- rs1_val == 268435456<br> - imm_val == 2<br>                                                                                                                                                                                                |[0x800002c0]:srli a1, a0, 2<br> [0x800002c4]:sw a1, 64(tp)<br>     |
|  37|[0x80002294]<br>0x00008000|- rs1_val == 536870912<br>                                                                                                                                                                                                                   |[0x800002cc]:srli a1, a0, 14<br> [0x800002d0]:sw a1, 68(tp)<br>    |
|  38|[0x80002298]<br>0x00010000|- rs1_val == 1073741824<br>                                                                                                                                                                                                                  |[0x800002d8]:srli a1, a0, 14<br> [0x800002dc]:sw a1, 72(tp)<br>    |
|  39|[0x8000229c]<br>0x0001FFFF|- rs1_val == -2<br>                                                                                                                                                                                                                          |[0x800002e4]:srli a1, a0, 15<br> [0x800002e8]:sw a1, 76(tp)<br>    |
|  40|[0x800022a0]<br>0x000001FF|- rs1_val == -3<br> - imm_val == 23<br>                                                                                                                                                                                                      |[0x800002f0]:srli a1, a0, 23<br> [0x800002f4]:sw a1, 80(tp)<br>    |
|  41|[0x800022a4]<br>0x00000003|- rs1_val == -5<br>                                                                                                                                                                                                                          |[0x800002fc]:srli a1, a0, 30<br> [0x80000300]:sw a1, 84(tp)<br>    |
|  42|[0x800022a8]<br>0x00000007|- rs1_val == -9<br>                                                                                                                                                                                                                          |[0x80000308]:srli a1, a0, 29<br> [0x8000030c]:sw a1, 88(tp)<br>    |
|  43|[0x800022ac]<br>0x000FFFFF|- rs1_val == -17<br>                                                                                                                                                                                                                         |[0x80000314]:srli a1, a0, 12<br> [0x80000318]:sw a1, 92(tp)<br>    |
|  44|[0x800022b0]<br>0x000001FF|- rs1_val == -33<br>                                                                                                                                                                                                                         |[0x80000320]:srli a1, a0, 23<br> [0x80000324]:sw a1, 96(tp)<br>    |
|  45|[0x800022b4]<br>0x1FFFFFF7|- rs1_val == -65<br>                                                                                                                                                                                                                         |[0x8000032c]:srli a1, a0, 3<br> [0x80000330]:sw a1, 100(tp)<br>    |
|  46|[0x800022b8]<br>0x0001FFFF|- rs1_val == -129<br>                                                                                                                                                                                                                        |[0x80000338]:srli a1, a0, 15<br> [0x8000033c]:sw a1, 104(tp)<br>   |
|  47|[0x800022bc]<br>0x000001FF|- rs1_val == -257<br>                                                                                                                                                                                                                        |[0x80000344]:srli a1, a0, 23<br> [0x80000348]:sw a1, 108(tp)<br>   |
|  48|[0x800022c0]<br>0x3FFFFF7F|- rs1_val == -513<br>                                                                                                                                                                                                                        |[0x80000350]:srli a1, a0, 2<br> [0x80000354]:sw a1, 112(tp)<br>    |
|  49|[0x800022c4]<br>0x00000001|- rs1_val == -1025<br>                                                                                                                                                                                                                       |[0x8000035c]:srli a1, a0, 31<br> [0x80000360]:sw a1, 116(tp)<br>   |
|  50|[0x800022c8]<br>0x000001FF|- rs1_val == -2049<br>                                                                                                                                                                                                                       |[0x8000036c]:srli a1, a0, 23<br> [0x80000370]:sw a1, 120(tp)<br>   |
|  51|[0x800022cc]<br>0x000007FF|- rs1_val == -4097<br>                                                                                                                                                                                                                       |[0x8000037c]:srli a1, a0, 21<br> [0x80000380]:sw a1, 124(tp)<br>   |
|  52|[0x800022d0]<br>0x00003FFF|- rs1_val == -8193<br>                                                                                                                                                                                                                       |[0x8000038c]:srli a1, a0, 18<br> [0x80000390]:sw a1, 128(tp)<br>   |
|  53|[0x800022d4]<br>0x00007FFF|- rs1_val == -32769<br>                                                                                                                                                                                                                      |[0x8000039c]:srli a1, a0, 17<br> [0x800003a0]:sw a1, 132(tp)<br>   |
|  54|[0x800022d8]<br>0x00007FFF|- rs1_val == -65537<br>                                                                                                                                                                                                                      |[0x800003ac]:srli a1, a0, 17<br> [0x800003b0]:sw a1, 136(tp)<br>   |
|  55|[0x800022dc]<br>0x03FFF7FF|- rs1_val == -131073<br>                                                                                                                                                                                                                     |[0x800003bc]:srli a1, a0, 6<br> [0x800003c0]:sw a1, 140(tp)<br>    |
|  56|[0x800022e0]<br>0x0007FFDF|- rs1_val == -262145<br>                                                                                                                                                                                                                     |[0x800003cc]:srli a1, a0, 13<br> [0x800003d0]:sw a1, 144(tp)<br>   |
|  57|[0x800022e4]<br>0x00003FFD|- rs1_val == -524289<br>                                                                                                                                                                                                                     |[0x800003dc]:srli a1, a0, 18<br> [0x800003e0]:sw a1, 148(tp)<br>   |
|  58|[0x800022e8]<br>0x00007FEF|- rs1_val == -2097153<br>                                                                                                                                                                                                                    |[0x800003ec]:srli a1, a0, 17<br> [0x800003f0]:sw a1, 152(tp)<br>   |
|  59|[0x800022ec]<br>0x007FDFFF|- rs1_val == -4194305<br>                                                                                                                                                                                                                    |[0x800003fc]:srli a1, a0, 9<br> [0x80000400]:sw a1, 156(tp)<br>    |
|  60|[0x800022f0]<br>0x00001FEF|- rs1_val == -8388609<br>                                                                                                                                                                                                                    |[0x8000040c]:srli a1, a0, 19<br> [0x80000410]:sw a1, 160(tp)<br>   |
|  61|[0x800022f4]<br>0x00007F7F|- rs1_val == -16777217<br>                                                                                                                                                                                                                   |[0x8000041c]:srli a1, a0, 17<br> [0x80000420]:sw a1, 164(tp)<br>   |
|  62|[0x800022f8]<br>0x000001FB|- rs1_val == -33554433<br>                                                                                                                                                                                                                   |[0x8000042c]:srli a1, a0, 23<br> [0x80000430]:sw a1, 168(tp)<br>   |
|  63|[0x800022fc]<br>0x0000001F|- rs1_val == -67108865<br> - imm_val == 27<br>                                                                                                                                                                                               |[0x8000043c]:srli a1, a0, 27<br> [0x80000440]:sw a1, 172(tp)<br>   |
|  64|[0x80002300]<br>0x1DFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                                                  |[0x8000044c]:srli a1, a0, 3<br> [0x80000450]:sw a1, 176(tp)<br>    |
|  65|[0x80002304]<br>0x0DFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                                  |[0x8000045c]:srli a1, a0, 4<br> [0x80000460]:sw a1, 180(tp)<br>    |
|  66|[0x80002308]<br>0x00000002|- rs1_val == -1073741825<br>                                                                                                                                                                                                                 |[0x8000046c]:srli a1, a0, 30<br> [0x80000470]:sw a1, 184(tp)<br>   |
|  67|[0x8000230c]<br>0x00000002|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                                                                                        |[0x8000047c]:srli a1, a0, 29<br> [0x80000480]:sw a1, 188(tp)<br>   |
|  68|[0x80002310]<br>0x00000001|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                                                                                                      |[0x8000048c]:srli a1, a0, 31<br> [0x80000490]:sw a1, 192(tp)<br>   |
|  69|[0x80002314]<br>0x00000000|- rs1_val==3<br>                                                                                                                                                                                                                             |[0x80000498]:srli a1, a0, 8<br> [0x8000049c]:sw a1, 196(tp)<br>    |
|  70|[0x80002318]<br>0x00000002|- rs1_val==5<br>                                                                                                                                                                                                                             |[0x800004a4]:srli a1, a0, 1<br> [0x800004a8]:sw a1, 200(tp)<br>    |
|  71|[0x8000231c]<br>0x00066666|- rs1_val==1717986919<br>                                                                                                                                                                                                                    |[0x800004b4]:srli a1, a0, 12<br> [0x800004b8]:sw a1, 204(tp)<br>   |
|  72|[0x80002320]<br>0x1FFFE95F|- rs1_val==-46339<br>                                                                                                                                                                                                                        |[0x800004c4]:srli a1, a0, 3<br> [0x800004c8]:sw a1, 208(tp)<br>    |
|  73|[0x80002324]<br>0x00000000|- rs1_val==46341<br>                                                                                                                                                                                                                         |[0x800004d4]:srli a1, a0, 27<br> [0x800004d8]:sw a1, 212(tp)<br>   |
|  74|[0x80002328]<br>0x00000000|- rs1_val==858993459<br>                                                                                                                                                                                                                     |[0x800004e4]:srli a1, a0, 30<br> [0x800004e8]:sw a1, 216(tp)<br>   |
|  75|[0x8000232c]<br>0x03333333|- rs1_val==1717986918<br>                                                                                                                                                                                                                    |[0x800004f4]:srli a1, a0, 5<br> [0x800004f8]:sw a1, 220(tp)<br>    |
|  76|[0x80002330]<br>0x0000FFFF|- rs1_val==-46340<br>                                                                                                                                                                                                                        |[0x80000504]:srli a1, a0, 16<br> [0x80000508]:sw a1, 224(tp)<br>   |
|  77|[0x80002334]<br>0x00000003|- rs1_val == -1048577<br>                                                                                                                                                                                                                    |[0x80000514]:srli a1, a0, 30<br> [0x80000518]:sw a1, 228(tp)<br>   |
|  78|[0x80002338]<br>0x00000005|- rs1_val==46340<br>                                                                                                                                                                                                                         |[0x80000524]:srli a1, a0, 13<br> [0x80000528]:sw a1, 232(tp)<br>   |
|  79|[0x8000233c]<br>0x01555555|- rs1_val==1431655764<br>                                                                                                                                                                                                                    |[0x80000534]:srli a1, a0, 6<br> [0x80000538]:sw a1, 236(tp)<br>    |
|  80|[0x80002340]<br>0x06666666|- rs1_val==858993458<br>                                                                                                                                                                                                                     |[0x80000544]:srli a1, a0, 3<br> [0x80000548]:sw a1, 240(tp)<br>    |
|  81|[0x80002344]<br>0x19999999|- rs1_val==1717986917<br>                                                                                                                                                                                                                    |[0x80000554]:srli a1, a0, 2<br> [0x80000558]:sw a1, 244(tp)<br>    |
|  82|[0x80002348]<br>0x0000002D|- rs1_val==46339<br>                                                                                                                                                                                                                         |[0x80000564]:srli a1, a0, 10<br> [0x80000568]:sw a1, 248(tp)<br>   |
|  83|[0x8000234c]<br>0x0002AAAA|- rs1_val==1431655766<br>                                                                                                                                                                                                                    |[0x80000574]:srli a1, a0, 13<br> [0x80000578]:sw a1, 252(tp)<br>   |
|  84|[0x80002350]<br>0x00001555|- rs1_val==-1431655765<br>                                                                                                                                                                                                                   |[0x80000584]:srli a1, a0, 19<br> [0x80000588]:sw a1, 256(tp)<br>   |
|  85|[0x80002354]<br>0x06666666|- rs1_val==858993460<br>                                                                                                                                                                                                                     |[0x80000594]:srli a1, a0, 3<br> [0x80000598]:sw a1, 260(tp)<br>    |
|  86|[0x80002358]<br>0x00000004|- rs1_val == 64<br>                                                                                                                                                                                                                          |[0x800005a0]:srli a1, a0, 4<br> [0x800005a4]:sw a1, 264(tp)<br>    |
