
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800003f0')]      |
| SIG_REGION                | [('0x80002210', '0x800023a8')]      |
| COV_LABELS                | ('caddi16sp',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Unique Coverpoints  | 91      |
| Total Signature Updates   | 70      |
| Ops w/o unique coverpoints | 0      |
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

|s.no|        signature         |                                                                 coverpoints                                                                 |             code              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|   1|[0x80002210]<br>0xFFFFFE40|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -512<br> - rs1_val == 64<br> |[0x80000100]:c.addi16sp 32<br> |
|   2|[0x80002214]<br>0x00000210|- rs1_val > 0 and imm_val > 0<br> - imm_val == 496<br> - rs1_val == 32<br>                                                                   |[0x8000010a]:c.addi16sp 31<br> |
|   3|[0x80002218]<br>0x800001F0|- rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                               |[0x80000114]:c.addi16sp 31<br> |
|   4|[0x8000221c]<br>0xFFFFFE00|- rs1_val == 0<br>                                                                                                                           |[0x8000011c]:c.addi16sp 32<br> |
|   5|[0x80002220]<br>0x7FFFFFEF|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                 |[0x80000128]:c.addi16sp 63<br> |
|   6|[0x80002224]<br>0xFFFFFFC1|- rs1_val == 1<br>                                                                                                                           |[0x80000130]:c.addi16sp 60<br> |
|   7|[0x80002228]<br>0x00000200|- rs1_val == imm_val<br> - rs1_val == 256<br> - imm_val == 256<br>                                                                           |[0x8000013a]:c.addi16sp 16<br> |
|   8|[0x8000222c]<br>0xFFFFFEE7|- rs1_val < 0 and imm_val < 0<br> - rs1_val == -9<br> - imm_val == -272<br>                                                                  |[0x80000144]:c.addi16sp 47<br> |
|   9|[0x80002230]<br>0x01000010|- rs1_val == 16777216<br> - imm_val == 16<br>                                                                                                |[0x8000014e]:c.addi16sp 1<br>  |
|  10|[0x80002234]<br>0xAAAAAACA|- rs1_val == -1431655766<br> - imm_val == 32<br>                                                                                             |[0x8000015c]:c.addi16sp 2<br>  |
|  11|[0x80002238]<br>0xF000003F|- rs1_val == -268435457<br> - imm_val == 64<br>                                                                                              |[0x80000168]:c.addi16sp 4<br>  |
|  12|[0x8000223c]<br>0x8000007F|- imm_val == 128<br>                                                                                                                         |[0x80000174]:c.addi16sp 8<br>  |
|  13|[0x80002240]<br>0xFFFFFFDE|- rs1_val == -2<br> - imm_val == -32<br>                                                                                                     |[0x8000017e]:c.addi16sp 62<br> |
|  14|[0x80002244]<br>0x00000010|- imm_val == -48<br>                                                                                                                         |[0x80000188]:c.addi16sp 61<br> |
|  15|[0x80002248]<br>0xFEFFFFAF|- rs1_val == -16777217<br> - imm_val == -80<br>                                                                                              |[0x80000194]:c.addi16sp 59<br> |
|  16|[0x8000224c]<br>0xFF7FFF6F|- rs1_val == -8388609<br> - imm_val == -144<br>                                                                                              |[0x800001a0]:c.addi16sp 55<br> |
|  17|[0x80002250]<br>0x0000014C|- imm_val == 336<br>                                                                                                                         |[0x800001aa]:c.addi16sp 21<br> |
|  18|[0x80002254]<br>0xFFFFFD9F|- rs1_val == -257<br> - imm_val == -352<br>                                                                                                  |[0x800001b4]:c.addi16sp 42<br> |
|  19|[0x80002258]<br>0x00000012|- rs1_val == 2<br>                                                                                                                           |[0x800001bc]:c.addi16sp 1<br>  |
|  20|[0x8000225c]<br>0x00000054|- rs1_val == 4<br>                                                                                                                           |[0x800001c4]:c.addi16sp 5<br>  |
|  21|[0x80002260]<br>0x00000058|- rs1_val == 8<br>                                                                                                                           |[0x800001cc]:c.addi16sp 5<br>  |
|  22|[0x80002264]<br>0xFFFFFFD0|- rs1_val == 16<br>                                                                                                                          |[0x800001d4]:c.addi16sp 60<br> |
|  23|[0x80002268]<br>0x00000050|- rs1_val == 128<br>                                                                                                                         |[0x800001de]:c.addi16sp 61<br> |
|  24|[0x8000226c]<br>0x00000260|- rs1_val == 512<br>                                                                                                                         |[0x800001e8]:c.addi16sp 6<br>  |
|  25|[0x80002270]<br>0x000005F0|- rs1_val == 1024<br>                                                                                                                        |[0x800001f2]:c.addi16sp 31<br> |
|  26|[0x80002274]<br>0x00000850|- rs1_val == 2048<br>                                                                                                                        |[0x80000200]:c.addi16sp 5<br>  |
|  27|[0x80002278]<br>0x00001100|- rs1_val == 4096<br>                                                                                                                        |[0x8000020a]:c.addi16sp 16<br> |
|  28|[0x8000227c]<br>0x00001F60|- rs1_val == 8192<br>                                                                                                                        |[0x80000214]:c.addi16sp 54<br> |
|  29|[0x80002280]<br>0x00004040|- rs1_val == 16384<br>                                                                                                                       |[0x8000021e]:c.addi16sp 4<br>  |
|  30|[0x80002284]<br>0x00008040|- rs1_val == 32768<br>                                                                                                                       |[0x80000228]:c.addi16sp 4<br>  |
|  31|[0x80002288]<br>0x0000FFB0|- rs1_val == 65536<br>                                                                                                                       |[0x80000232]:c.addi16sp 59<br> |
|  32|[0x8000228c]<br>0x00020040|- rs1_val == 131072<br>                                                                                                                      |[0x8000023c]:c.addi16sp 4<br>  |
|  33|[0x80002290]<br>0x00040100|- rs1_val == 262144<br>                                                                                                                      |[0x80000246]:c.addi16sp 16<br> |
|  34|[0x80002294]<br>0x00080060|- rs1_val == 524288<br>                                                                                                                      |[0x80000250]:c.addi16sp 6<br>  |
|  35|[0x80002298]<br>0x000FFF90|- rs1_val == 1048576<br>                                                                                                                     |[0x8000025a]:c.addi16sp 57<br> |
|  36|[0x8000229c]<br>0x001FFFB0|- rs1_val == 2097152<br>                                                                                                                     |[0x80000264]:c.addi16sp 59<br> |
|  37|[0x800022a0]<br>0x003FFFF0|- rs1_val == 4194304<br>                                                                                                                     |[0x8000026e]:c.addi16sp 63<br> |
|  38|[0x800022a4]<br>0x007FFE00|- rs1_val == 8388608<br>                                                                                                                     |[0x80000278]:c.addi16sp 32<br> |
|  39|[0x800022a8]<br>0x01FFFEF0|- rs1_val == 33554432<br>                                                                                                                    |[0x80000282]:c.addi16sp 47<br> |
|  40|[0x800022ac]<br>0xFFFFFE4F|- rs1_val == -513<br>                                                                                                                        |[0x8000028c]:c.addi16sp 5<br>  |
|  41|[0x800022b0]<br>0xFFFFFAEF|- rs1_val == -1025<br>                                                                                                                       |[0x80000296]:c.addi16sp 47<br> |
|  42|[0x800022b4]<br>0xFFFFF7CF|- rs1_val == -2049<br>                                                                                                                       |[0x800002a4]:c.addi16sp 61<br> |
|  43|[0x800022b8]<br>0xFFFFEFEF|- rs1_val == -4097<br>                                                                                                                       |[0x800002b0]:c.addi16sp 63<br> |
|  44|[0x800022bc]<br>0xFFFFDEFF|- rs1_val == -8193<br>                                                                                                                       |[0x800002bc]:c.addi16sp 48<br> |
|  45|[0x800022c0]<br>0xFFFFBF6F|- rs1_val == -16385<br>                                                                                                                      |[0x800002c8]:c.addi16sp 55<br> |
|  46|[0x800022c4]<br>0xFFFF7EFF|- rs1_val == -32769<br>                                                                                                                      |[0x800002d4]:c.addi16sp 48<br> |
|  47|[0x800022c8]<br>0xFFFEFF6F|- rs1_val == -65537<br>                                                                                                                      |[0x800002e0]:c.addi16sp 55<br> |
|  48|[0x800022cc]<br>0xFFFE004F|- rs1_val == -131073<br>                                                                                                                     |[0x800002ec]:c.addi16sp 5<br>  |
|  49|[0x800022d0]<br>0xFFFC00FF|- rs1_val == -262145<br>                                                                                                                     |[0x800002f8]:c.addi16sp 16<br> |
|  50|[0x800022d4]<br>0xFFF801EF|- rs1_val == -524289<br>                                                                                                                     |[0x80000304]:c.addi16sp 31<br> |
|  51|[0x800022d8]<br>0xFFF001EF|- rs1_val == -1048577<br>                                                                                                                    |[0x80000310]:c.addi16sp 31<br> |
|  52|[0x800022dc]<br>0xFFDFFFAF|- rs1_val == -2097153<br>                                                                                                                    |[0x8000031c]:c.addi16sp 59<br> |
|  53|[0x800022e0]<br>0xFFC0000F|- rs1_val == -4194305<br>                                                                                                                    |[0x80000328]:c.addi16sp 1<br>  |
|  54|[0x800022e4]<br>0xFDFFFF5F|- rs1_val == -33554433<br>                                                                                                                   |[0x80000334]:c.addi16sp 54<br> |
|  55|[0x800022e8]<br>0xFBFFFDFF|- rs1_val == -67108865<br>                                                                                                                   |[0x80000340]:c.addi16sp 32<br> |
|  56|[0x800022ec]<br>0x04000030|- rs1_val == 67108864<br>                                                                                                                    |[0x8000034a]:c.addi16sp 3<br>  |
|  57|[0x800022f0]<br>0xF7FFFDFF|- rs1_val == -134217729<br>                                                                                                                  |[0x80000356]:c.addi16sp 32<br> |
|  58|[0x800022f4]<br>0x07FFFEA0|- rs1_val == 134217728<br>                                                                                                                   |[0x80000360]:c.addi16sp 42<br> |
|  59|[0x800022f8]<br>0x0FFFFFD0|- rs1_val == 268435456<br>                                                                                                                   |[0x8000036a]:c.addi16sp 61<br> |
|  60|[0x800022fc]<br>0xDFFFFF5F|- rs1_val == -536870913<br>                                                                                                                  |[0x80000376]:c.addi16sp 54<br> |
|  61|[0x80002300]<br>0x20000090|- rs1_val == 536870912<br>                                                                                                                   |[0x80000380]:c.addi16sp 9<br>  |
|  62|[0x80002304]<br>0xBFFFFFDF|- rs1_val == -1073741825<br>                                                                                                                 |[0x8000038c]:c.addi16sp 62<br> |
|  63|[0x80002308]<br>0x3FFFFEF0|- rs1_val == 1073741824<br>                                                                                                                  |[0x80000396]:c.addi16sp 47<br> |
|  64|[0x8000230c]<br>0x555556A5|- rs1_val == 1431655765<br>                                                                                                                  |[0x800003a4]:c.addi16sp 21<br> |
|  65|[0x80002310]<br>0xFFFFFF5D|- rs1_val == -3<br>                                                                                                                          |[0x800003ae]:c.addi16sp 54<br> |
|  66|[0x80002314]<br>0xFFFFFF6B|- rs1_val == -5<br>                                                                                                                          |[0x800003b8]:c.addi16sp 55<br> |
|  67|[0x80002318]<br>0xFFFFFF4F|- rs1_val == -17<br>                                                                                                                         |[0x800003c2]:c.addi16sp 54<br> |
|  68|[0x8000231c]<br>0x0000002F|- rs1_val == -33<br>                                                                                                                         |[0x800003cc]:c.addi16sp 5<br>  |
|  69|[0x80002320]<br>0xFFFFFF9F|- rs1_val == -65<br>                                                                                                                         |[0x800003d6]:c.addi16sp 62<br> |
|  70|[0x80002324]<br>0xFFFFFE6F|- rs1_val == -129<br>                                                                                                                        |[0x800003e0]:c.addi16sp 47<br> |
