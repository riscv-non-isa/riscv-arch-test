
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000520')]      |
| SIG_REGION                | [('0x80002210', '0x800023c8')]      |
| COV_LABELS                | ('sltiu',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sltiu-01.S/sltiu-01.S    |
| Total Unique Coverpoints  | 165      |
| Total Signature Updates   | 76      |
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

|s.no|        signature         |                                                                         coverpoints                                                                         |                 code                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : sltiu<br> - rs1 : x20<br> - rd : x6<br> - rs1 != rd<br> - rs1_val == imm_val and rs1_val > 0 and imm_val > 0<br>                                  |[0x80000104]:sltiu t1, s4, 12<br>     |
|   2|[0x80002214]<br>0x00000000|- rs1 : x11<br> - rd : x11<br> - rs1 == rd<br> - rs1_val == (2**(xlen)-1)<br> - rs1_val != imm_val and rs1_val > 0 and imm_val > 0<br> - imm_val == 3071<br> |[0x80000110]:sltiu a1, a1, 3071<br>   |
|   3|[0x80002218]<br>0x00000001|- rs1 : x5<br> - rd : x27<br> - rs1_val == 0<br>                                                                                                             |[0x8000011c]:sltiu s11, t0, 11<br>    |
|   4|[0x8000221c]<br>0x00000001|- rs1 : x2<br> - rd : x25<br> - rs1_val == 1<br>                                                                                                             |[0x80000128]:sltiu s9, sp, 14<br>     |
|   5|[0x80002220]<br>0x00000000|- rs1 : x10<br> - rd : x26<br> - imm_val == 0<br> - rs1_val == 4293918719<br>                                                                                |[0x80000138]:sltiu s10, a0, 0<br>     |
|   6|[0x80002224]<br>0x00000001|- rs1 : x21<br> - rd : x5<br> - imm_val == (2**(12)-1)<br> - rs1_val == 256<br>                                                                              |[0x80000144]:sltiu t0, s5, 4095<br>   |
|   7|[0x80002228]<br>0x00000000|- rs1 : x1<br> - rd : x24<br> - imm_val == 1<br>                                                                                                             |[0x80000150]:sltiu s8, ra, 1<br>      |
|   8|[0x8000222c]<br>0x00000001|- rs1 : x4<br> - rd : x23<br> - rs1_val == 2<br>                                                                                                             |[0x8000015c]:sltiu s7, tp, 5<br>      |
|   9|[0x80002230]<br>0x00000001|- rs1 : x29<br> - rd : x13<br> - rs1_val == 4<br>                                                                                                            |[0x80000168]:sltiu a3, t4, 17<br>     |
|  10|[0x80002234]<br>0x00000001|- rs1 : x18<br> - rd : x19<br> - imm_val == 4087<br> - rs1_val == 8<br>                                                                                      |[0x80000174]:sltiu s3, s2, 4087<br>   |
|  11|[0x80002238]<br>0x00000001|- rs1 : x15<br> - rd : x31<br> - imm_val == 512<br> - rs1_val == 16<br>                                                                                      |[0x80000180]:sltiu t6, a5, 512<br>    |
|  12|[0x8000223c]<br>0x00000001|- rs1 : x23<br> - rd : x20<br> - imm_val == 1024<br> - rs1_val == 32<br>                                                                                     |[0x8000018c]:sltiu s4, s7, 1024<br>   |
|  13|[0x80002240]<br>0x00000001|- rs1 : x8<br> - rd : x2<br> - imm_val == 2047<br> - rs1_val == 64<br>                                                                                       |[0x80000198]:sltiu sp, fp, 2047<br>   |
|  14|[0x80002244]<br>0x00000000|- rs1 : x27<br> - rd : x7<br> - rs1_val == 128<br>                                                                                                           |[0x800001a4]:sltiu t2, s11, 15<br>    |
|  15|[0x80002248]<br>0x00000000|- rs1 : x13<br> - rd : x3<br> - rs1_val == 512<br>                                                                                                           |[0x800001b0]:sltiu gp, a3, 0<br>      |
|  16|[0x8000224c]<br>0x00000001|- rs1 : x3<br> - rd : x10<br> - imm_val == 3967<br> - rs1_val == 1024<br>                                                                                    |[0x800001bc]:sltiu a0, gp, 3967<br>   |
|  17|[0x80002250]<br>0x00000000|- rs1 : x9<br> - rd : x15<br> - imm_val == 4<br> - rs1_val == 2048<br>                                                                                       |[0x800001cc]:sltiu a5, s1, 4<br>      |
|  18|[0x80002254]<br>0x00000000|- rs1 : x31<br> - rd : x18<br> - imm_val == 128<br> - rs1_val == 4096<br>                                                                                    |[0x800001d8]:sltiu s2, t6, 128<br>    |
|  19|[0x80002258]<br>0x00000000|- rs1 : x25<br> - rd : x21<br> - rs1_val == 8192<br>                                                                                                         |[0x800001e4]:sltiu s5, s9, 15<br>     |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x19<br> - rd : x28<br> - rs1_val == 16384<br>                                                                                                        |[0x800001f0]:sltiu t3, s3, 15<br>     |
|  21|[0x80002260]<br>0x00000001|- rs1 : x16<br> - rd : x14<br> - imm_val == 4094<br> - rs1_val == 32768<br>                                                                                  |[0x800001fc]:sltiu a4, a6, 4094<br>   |
|  22|[0x80002264]<br>0x00000000|- rs1 : x24<br> - rd : x16<br> - rs1_val == 65536<br>                                                                                                        |[0x80000208]:sltiu a6, s8, 14<br>     |
|  23|[0x80002268]<br>0x00000000|- rs1 : x12<br> - rd : x17<br> - rs1_val == 131072<br>                                                                                                       |[0x80000214]:sltiu a7, a2, 18<br>     |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x22<br> - rd : x0<br> - rs1_val == 262144<br>                                                                                                        |[0x80000228]:sltiu zero, s6, 4095<br> |
|  25|[0x80002270]<br>0x00000001|- rs1 : x14<br> - rd : x30<br> - imm_val == 2730<br> - rs1_val == 524288<br>                                                                                 |[0x80000234]:sltiu t5, a4, 2730<br>   |
|  26|[0x80002274]<br>0x00000000|- rs1 : x30<br> - rd : x8<br> - rs1_val == 1048576<br>                                                                                                       |[0x80000240]:sltiu fp, t5, 512<br>    |
|  27|[0x80002278]<br>0x00000001|- rs1 : x26<br> - rd : x1<br> - rs1_val == 2097152<br>                                                                                                       |[0x8000024c]:sltiu ra, s10, 4087<br>  |
|  28|[0x8000227c]<br>0x00000001|- rs1 : x0<br> - rd : x12<br> - imm_val == 64<br>                                                                                                            |[0x8000025c]:sltiu a2, zero, 64<br>   |
|  29|[0x80002280]<br>0x00000000|- rs1 : x6<br> - rd : x22<br> - rs1_val == 8388608<br>                                                                                                       |[0x80000268]:sltiu s6, t1, 1024<br>   |
|  30|[0x80002284]<br>0x00000001|- rs1 : x7<br> - rd : x9<br> - imm_val == 4093<br> - rs1_val == 16777216<br>                                                                                 |[0x80000274]:sltiu s1, t2, 4093<br>   |
|  31|[0x80002288]<br>0x00000000|- rs1 : x17<br> - rd : x4<br> - rs1_val == 33554432<br>                                                                                                      |[0x80000280]:sltiu tp, a7, 11<br>     |
|  32|[0x8000228c]<br>0x00000001|- rs1 : x28<br> - rd : x29<br> - rs1_val == 67108864<br>                                                                                                     |[0x8000028c]:sltiu t4, t3, 4094<br>   |
|  33|[0x80002290]<br>0x00000000|- imm_val == 32<br> - rs1_val == 134217728<br>                                                                                                               |[0x80000298]:sltiu a1, a0, 32<br>     |
|  34|[0x80002294]<br>0x00000001|- rs1_val == 268435456<br>                                                                                                                                   |[0x800002a4]:sltiu a1, a0, 4094<br>   |
|  35|[0x80002298]<br>0x00000001|- imm_val == 3839<br> - rs1_val == 536870912<br>                                                                                                             |[0x800002b0]:sltiu a1, a0, 3839<br>   |
|  36|[0x8000229c]<br>0x00000000|- imm_val == 256<br> - rs1_val == 1073741824<br>                                                                                                             |[0x800002bc]:sltiu a1, a0, 256<br>    |
|  37|[0x800022a0]<br>0x00000000|- rs1_val == 2147483648<br>                                                                                                                                  |[0x800002c8]:sltiu a1, a0, 14<br>     |
|  38|[0x800022a4]<br>0x00000000|- rs1_val == 4294967294<br>                                                                                                                                  |[0x800002d4]:sltiu a1, a0, 13<br>     |
|  39|[0x800022a8]<br>0x00000000|- rs1_val == 4294967293<br>                                                                                                                                  |[0x800002e0]:sltiu a1, a0, 1<br>      |
|  40|[0x800022ac]<br>0x00000000|- rs1_val == 4294967291<br>                                                                                                                                  |[0x800002ec]:sltiu a1, a0, 18<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs1_val == 4294967287<br>                                                                                                                                  |[0x800002f8]:sltiu a1, a0, 9<br>      |
|  42|[0x800022b4]<br>0x00000000|- rs1_val == 4294967279<br>                                                                                                                                  |[0x80000304]:sltiu a1, a0, 2047<br>   |
|  43|[0x800022b8]<br>0x00000000|- rs1_val == 4294967263<br>                                                                                                                                  |[0x80000310]:sltiu a1, a0, 3<br>      |
|  44|[0x800022bc]<br>0x00000000|- rs1_val == 4294967231<br>                                                                                                                                  |[0x8000031c]:sltiu a1, a0, 3967<br>   |
|  45|[0x800022c0]<br>0x00000000|- rs1_val == 4294967167<br>                                                                                                                                  |[0x80000328]:sltiu a1, a0, 13<br>     |
|  46|[0x800022c4]<br>0x00000000|- rs1_val == 4294967039<br>                                                                                                                                  |[0x80000334]:sltiu a1, a0, 512<br>    |
|  47|[0x800022c8]<br>0x00000000|- rs1_val == 4294966783<br>                                                                                                                                  |[0x80000340]:sltiu a1, a0, 1<br>      |
|  48|[0x800022cc]<br>0x00000001|- rs1_val == 4294966271<br>                                                                                                                                  |[0x8000034c]:sltiu a1, a0, 3967<br>   |
|  49|[0x800022d0]<br>0x00000001|- rs1_val == 4294965247<br>                                                                                                                                  |[0x8000035c]:sltiu a1, a0, 2730<br>   |
|  50|[0x800022d4]<br>0x00000000|- rs1_val == 4261412863<br>                                                                                                                                  |[0x8000036c]:sltiu a1, a0, 128<br>    |
|  51|[0x800022d8]<br>0x00000001|- rs1_val == 4227858431<br>                                                                                                                                  |[0x8000037c]:sltiu a1, a0, 4095<br>   |
|  52|[0x800022dc]<br>0x00000001|- rs1_val == 4160749567<br>                                                                                                                                  |[0x8000038c]:sltiu a1, a0, 3839<br>   |
|  53|[0x800022e0]<br>0x00000001|- imm_val == 2048<br> - rs1_val == 4026531839<br>                                                                                                            |[0x8000039c]:sltiu a1, a0, 2048<br>   |
|  54|[0x800022e4]<br>0x00000001|- imm_val == 4091<br> - rs1_val == 3758096383<br>                                                                                                            |[0x800003ac]:sltiu a1, a0, 4091<br>   |
|  55|[0x800022e8]<br>0x00000000|- rs1_val == 3221225471<br>                                                                                                                                  |[0x800003bc]:sltiu a1, a0, 7<br>      |
|  56|[0x800022ec]<br>0x00000000|- rs1_val == 2147483647<br>                                                                                                                                  |[0x800003cc]:sltiu a1, a0, 9<br>      |
|  57|[0x800022f0]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                  |[0x800003dc]:sltiu a1, a0, 4094<br>   |
|  58|[0x800022f4]<br>0x00000000|- imm_val == 1365<br> - rs1_val == 2863311530<br>                                                                                                            |[0x800003ec]:sltiu a1, a0, 1365<br>   |
|  59|[0x800022f8]<br>0x00000000|- imm_val == 2<br>                                                                                                                                           |[0x800003f8]:sltiu a1, a0, 2<br>      |
|  60|[0x800022fc]<br>0x00000000|- imm_val == 8<br>                                                                                                                                           |[0x80000404]:sltiu a1, a0, 8<br>      |
|  61|[0x80002300]<br>0x00000001|- imm_val == 16<br>                                                                                                                                          |[0x80000410]:sltiu a1, a0, 16<br>     |
|  62|[0x80002304]<br>0x00000001|- imm_val == 4079<br>                                                                                                                                        |[0x8000041c]:sltiu a1, a0, 4079<br>   |
|  63|[0x80002308]<br>0x00000000|- rs1_val == 4294443007<br>                                                                                                                                  |[0x8000042c]:sltiu a1, a0, 32<br>     |
|  64|[0x8000230c]<br>0x00000001|- rs1_val == 4294705151<br>                                                                                                                                  |[0x8000043c]:sltiu a1, a0, 4095<br>   |
|  65|[0x80002310]<br>0x00000001|- imm_val == 4063<br> - rs1_val == 4294963199<br>                                                                                                            |[0x8000044c]:sltiu a1, a0, 4063<br>   |
|  66|[0x80002314]<br>0x00000001|- imm_val == 3583<br> - rs1_val == 4294959103<br>                                                                                                            |[0x8000045c]:sltiu a1, a0, 3583<br>   |
|  67|[0x80002318]<br>0x00000000|- rs1_val == 4290772991<br>                                                                                                                                  |[0x8000046c]:sltiu a1, a0, 6<br>      |
|  68|[0x8000231c]<br>0x00000000|- rs1_val == 4294950911<br>                                                                                                                                  |[0x8000047c]:sltiu a1, a0, 0<br>      |
|  69|[0x80002320]<br>0x00000000|- rs1_val == 4294934527<br>                                                                                                                                  |[0x8000048c]:sltiu a1, a0, 256<br>    |
|  70|[0x80002324]<br>0x00000001|- rs1_val == 4294901759<br>                                                                                                                                  |[0x8000049c]:sltiu a1, a0, 4093<br>   |
|  71|[0x80002328]<br>0x00000001|- rs1_val == 4294836223<br>                                                                                                                                  |[0x800004ac]:sltiu a1, a0, 4079<br>   |
|  72|[0x8000232c]<br>0x00000001|- imm_val == 4031<br>                                                                                                                                        |[0x800004bc]:sltiu a1, a0, 4031<br>   |
|  73|[0x80002330]<br>0x00000001|- rs1_val == 4292870143<br>                                                                                                                                  |[0x800004cc]:sltiu a1, a0, 4093<br>   |
|  74|[0x80002334]<br>0x00000000|- rs1_val == 4286578687<br>                                                                                                                                  |[0x800004dc]:sltiu a1, a0, 7<br>      |
|  75|[0x80002338]<br>0x00000000|- rs1_val == 4278190079<br>                                                                                                                                  |[0x800004ec]:sltiu a1, a0, 5<br>      |
|  76|[0x80002344]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                     |[0x80000510]:sltiu a1, a0, 64<br>     |
