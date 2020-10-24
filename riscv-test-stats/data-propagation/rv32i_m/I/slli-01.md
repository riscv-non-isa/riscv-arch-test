
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004d0')]      |
| SIG_REGION                | [('0x80002210', '0x800023b0')]      |
| COV_LABELS                | ('slli',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Unique Coverpoints  | 156      |
| Total Signature Updates   | 70      |
| Ops w/o unique coverpoints | 2      |
| Sig Updates w/o Coverpoints | 0    |

## Report Table

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

|s.no|        signature         |                                                                    coverpoints                                                                    |               code                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
|   1|[0x80002210]<br>0xFFFFDF80|- opcode : slli<br> - rs1 : x22<br> - rd : x12<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -65<br>       |[0x80000104]:slli a2, s6, 7<br>    |
|   2|[0x80002214]<br>0x00000000|- rs1 : x14<br> - rd : x14<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 65536<br> - imm_val == 21<br>     |[0x80000110]:slli a4, a4, 21<br>   |
|   3|[0x80002218]<br>0xFFFF7FFF|- rs1 : x11<br> - rd : x23<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -32769<br>                                                          |[0x80000120]:slli s7, a1, 0<br>    |
|   4|[0x8000221c]<br>0x00000100|- rs1 : x20<br> - rd : x4<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 256<br>                                                              |[0x8000012c]:slli tp, s4, 0<br>    |
|   5|[0x80002220]<br>0x80000000|- rs1 : x18<br> - rd : x24<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -536870913<br>                                               |[0x8000013c]:slli s8, s2, 31<br>   |
|   6|[0x80002224]<br>0x00000000|- rs1 : x25<br> - rd : x18<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 16384<br>                                                    |[0x80000148]:slli s2, s9, 31<br>   |
|   7|[0x80002228]<br>0x00100000|- rs1 : x24<br> - rd : x31<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 16<br> - imm_val == 16<br>                 |[0x80000154]:slli t6, s8, 16<br>   |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x0<br> - rd : x29<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - imm_val == 2<br>                                            |[0x80000164]:slli t4, zero, 2<br>  |
|   9|[0x80002230]<br>0x00000000|- rs1 : x19<br> - rd : x15<br> - imm_val == 1<br>                                                                                                  |[0x80000170]:slli a5, s3, 1<br>    |
|  10|[0x80002234]<br>0xFFFFFF00|- rs1 : x21<br> - rd : x11<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 8<br> |[0x80000180]:slli a1, s5, 8<br>    |
|  11|[0x80002238]<br>0x00000008|- rs1 : x28<br> - rd : x26<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                           |[0x8000018c]:slli s10, t3, 3<br>   |
|  12|[0x8000223c]<br>0xFDFFFFF0|- rs1 : x3<br> - rd : x7<br> - rs1_val == -2097153<br> - imm_val == 4<br>                                                                          |[0x8000019c]:slli t2, gp, 4<br>    |
|  13|[0x80002240]<br>0xC0000000|- rs1 : x27<br> - rd : x17<br> - rs1_val == -1025<br> - imm_val == 30<br>                                                                          |[0x800001a8]:slli a7, s11, 30<br>  |
|  14|[0x80002244]<br>0x20000000|- rs1 : x6<br> - rd : x3<br> - imm_val == 29<br>                                                                                                   |[0x800001b4]:slli gp, t1, 29<br>   |
|  15|[0x80002248]<br>0xC8000000|- rs1 : x17<br> - rd : x20<br> - imm_val == 27<br>                                                                                                 |[0x800001c0]:slli s4, a7, 27<br>   |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x8<br> - rd : x0<br> - rs1_val == 2<br> - imm_val == 23<br>                                                                                |[0x800001cc]:slli zero, fp, 23<br> |
|  17|[0x80002250]<br>0xFEFF8000|- rs1 : x5<br> - rd : x22<br> - rs1_val == -513<br> - imm_val == 15<br>                                                                            |[0x800001d8]:slli s6, t0, 15<br>   |
|  18|[0x80002254]<br>0xFFFBFC00|- rs1 : x4<br> - rd : x1<br> - rs1_val == -257<br> - imm_val == 10<br>                                                                             |[0x800001e4]:slli ra, tp, 10<br>   |
|  19|[0x80002258]<br>0x00001000|- rs1 : x9<br> - rd : x30<br> - rs1_val == 4<br>                                                                                                   |[0x800001f0]:slli t5, s1, 10<br>   |
|  20|[0x8000225c]<br>0x00004000|- rs1 : x10<br> - rd : x6<br> - rs1_val == 8<br>                                                                                                   |[0x800001fc]:slli t1, a0, 11<br>   |
|  21|[0x80002260]<br>0x00004000|- rs1 : x16<br> - rd : x19<br> - rs1_val == 32<br>                                                                                                 |[0x80000210]:slli s3, a6, 9<br>    |
|  22|[0x80002264]<br>0x00000400|- rs1 : x29<br> - rd : x25<br> - rs1_val == 64<br>                                                                                                 |[0x8000021c]:slli s9, t4, 4<br>    |
|  23|[0x80002268]<br>0x40000000|- rs1 : x13<br> - rd : x21<br> - rs1_val == 128<br>                                                                                                |[0x80000228]:slli s5, a3, 23<br>   |
|  24|[0x8000226c]<br>0x00040000|- rs1 : x7<br> - rd : x9<br> - rs1_val == 512<br>                                                                                                  |[0x80000234]:slli s1, t2, 9<br>    |
|  25|[0x80002270]<br>0x80000000|- rs1 : x23<br> - rd : x13<br> - rs1_val == 1024<br>                                                                                               |[0x80000240]:slli a3, s7, 21<br>   |
|  26|[0x80002274]<br>0x00000800|- rs1 : x1<br> - rd : x5<br> - rs1_val == 2048<br>                                                                                                 |[0x80000250]:slli t0, ra, 0<br>    |
|  27|[0x80002278]<br>0x00010000|- rs1 : x30<br> - rd : x27<br> - rs1_val == 4096<br>                                                                                               |[0x8000025c]:slli s11, t5, 4<br>   |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x26<br> - rd : x28<br> - rs1_val == 8192<br>                                                                                               |[0x80000268]:slli t3, s10, 27<br>  |
|  29|[0x80002280]<br>0x00000000|- rs1 : x31<br> - rd : x16<br> - rs1_val == 32768<br>                                                                                              |[0x80000274]:slli a6, t6, 29<br>   |
|  30|[0x80002284]<br>0x10000000|- rs1 : x15<br> - rd : x10<br> - rs1_val == 131072<br>                                                                                             |[0x80000280]:slli a0, a5, 11<br>   |
|  31|[0x80002288]<br>0x80000000|- rs1 : x12<br> - rd : x2<br> - rs1_val == 262144<br>                                                                                              |[0x8000028c]:slli sp, a2, 13<br>   |
|  32|[0x8000228c]<br>0x20000000|- rs1 : x2<br> - rd : x8<br> - rs1_val == 524288<br>                                                                                               |[0x80000298]:slli fp, sp, 10<br>   |
|  33|[0x80002290]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                                           |[0x800002a4]:slli a1, a0, 21<br>   |
|  34|[0x80002294]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                           |[0x800002b0]:slli a1, a0, 27<br>   |
|  35|[0x80002298]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                           |[0x800002bc]:slli a1, a0, 30<br>   |
|  36|[0x8000229c]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                                           |[0x800002c8]:slli a1, a0, 29<br>   |
|  37|[0x800022a0]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                          |[0x800002d4]:slli a1, a0, 13<br>   |
|  38|[0x800022a4]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                          |[0x800002e0]:slli a1, a0, 23<br>   |
|  39|[0x800022a8]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                             |[0x800002f0]:slli a1, a0, 0<br>    |
|  40|[0x800022ac]<br>0xFFE00000|- rs1_val == -4097<br>                                                                                                                             |[0x80000300]:slli a1, a0, 21<br>   |
|  41|[0x800022b0]<br>0xFFBFFE00|- rs1_val == -8193<br>                                                                                                                             |[0x80000310]:slli a1, a0, 9<br>    |
|  42|[0x800022b4]<br>0x7FFE0000|- rs1_val == -16385<br>                                                                                                                            |[0x80000320]:slli a1, a0, 17<br>   |
|  43|[0x800022b8]<br>0xFEFFFF00|- rs1_val == -65537<br>                                                                                                                            |[0x80000330]:slli a1, a0, 8<br>    |
|  44|[0x800022bc]<br>0xEFFFF800|- rs1_val == -131073<br>                                                                                                                           |[0x80000340]:slli a1, a0, 11<br>   |
|  45|[0x800022c0]<br>0xFDFFFF80|- rs1_val == -262145<br>                                                                                                                           |[0x80000350]:slli a1, a0, 7<br>    |
|  46|[0x800022c4]<br>0xFF7FFFF0|- rs1_val == -524289<br>                                                                                                                           |[0x80000360]:slli a1, a0, 4<br>    |
|  47|[0x800022c8]<br>0xFFFF8000|- rs1_val == -1048577<br>                                                                                                                          |[0x80000370]:slli a1, a0, 15<br>   |
|  48|[0x800022cc]<br>0xFF800000|- rs1_val == -4194305<br>                                                                                                                          |[0x80000380]:slli a1, a0, 23<br>   |
|  49|[0x800022d0]<br>0xF7FFFFF0|- rs1_val == -8388609<br>                                                                                                                          |[0x80000390]:slli a1, a0, 4<br>    |
|  50|[0x800022d4]<br>0xFFFE0000|- rs1_val == -16777217<br>                                                                                                                         |[0x800003a0]:slli a1, a0, 17<br>   |
|  51|[0x800022d8]<br>0xBFFFFFE0|- rs1_val == -33554433<br>                                                                                                                         |[0x800003b0]:slli a1, a0, 5<br>    |
|  52|[0x800022dc]<br>0xFFFFF000|- rs1_val == -67108865<br>                                                                                                                         |[0x800003c0]:slli a1, a0, 12<br>   |
|  53|[0x800022e0]<br>0xFFFF8000|- rs1_val == -134217729<br>                                                                                                                        |[0x800003d0]:slli a1, a0, 15<br>   |
|  54|[0x800022e4]<br>0xFFFFFFF0|- rs1_val == -268435457<br>                                                                                                                        |[0x800003e0]:slli a1, a0, 4<br>    |
|  55|[0x800022e8]<br>0xFFFFFEE0|- rs1_val == -9<br>                                                                                                                                |[0x800003ec]:slli a1, a0, 5<br>    |
|  56|[0x800022ec]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                          |[0x800003f8]:slli a1, a0, 12<br>   |
|  57|[0x800022f0]<br>0x10000000|- rs1_val == 134217728<br>                                                                                                                         |[0x80000404]:slli a1, a0, 1<br>    |
|  58|[0x800022f4]<br>0x80000000|- rs1_val == 268435456<br>                                                                                                                         |[0x80000410]:slli a1, a0, 3<br>    |
|  59|[0x800022f8]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                         |[0x8000041c]:slli a1, a0, 14<br>   |
|  60|[0x800022fc]<br>0xFFFE0000|- rs1_val == -1073741825<br>                                                                                                                       |[0x8000042c]:slli a1, a0, 17<br>   |
|  61|[0x80002300]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                        |[0x80000438]:slli a1, a0, 4<br>    |
|  62|[0x80002304]<br>0x40000000|- rs1_val == 1431655765<br>                                                                                                                        |[0x80000448]:slli a1, a0, 30<br>   |
|  63|[0x80002308]<br>0xFFF80000|- rs1_val == -2<br>                                                                                                                                |[0x80000454]:slli a1, a0, 18<br>   |
|  64|[0x8000230c]<br>0xAAAAAAA0|- rs1_val == -1431655766<br>                                                                                                                       |[0x80000464]:slli a1, a0, 4<br>    |
|  65|[0x80002310]<br>0xFFFFFFE8|- rs1_val == -3<br>                                                                                                                                |[0x80000470]:slli a1, a0, 3<br>    |
|  66|[0x80002314]<br>0xFFFFB000|- rs1_val == -5<br>                                                                                                                                |[0x8000047c]:slli a1, a0, 12<br>   |
|  67|[0x80002318]<br>0xFFFFFF78|- rs1_val == -17<br>                                                                                                                               |[0x80000488]:slli a1, a0, 3<br>    |
|  68|[0x8000231c]<br>0xFFFFEF80|- rs1_val == -33<br>                                                                                                                               |[0x80000494]:slli a1, a0, 7<br>    |
|  69|[0x80002320]<br>0xFFFFFEFE|- rs1_val == -129<br>                                                                                                                              |[0x800004a0]:slli a1, a0, 1<br>    |
|  70|[0x80002328]<br>0x00000000|- rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                                   |[0x800004b8]:slli a1, a0, 2<br>    |
