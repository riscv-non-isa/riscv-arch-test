
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x800003c0')]      |
| SIG_REGION  | [('0x80002210', '0x800023a4')]      |
| COV_LABELS  | ('candi',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/candi-01.S/candi-01.S    |

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

|        signature         |                                                                         coverpoints                                                                         |             code              |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|[0x80002210]<br>0x80000000|- opcode : c.andi<br> - rs1 : 11<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br> |[0x80000100]:c.andi a1, 57<br> |
|[0x80002214]<br>0x00000000|- rs1 : 8<br> - rs1_val == 0<br>                                                                                                                             |[0x80000108]:c.andi s0, 15<br> |
|[0x80002218]<br>0x00000008|- rs1 : 14<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == 8<br> - rs1_val == 2147483647<br>                             |[0x80000114]:c.andi a4, 8<br>  |
|[0x8000221c]<br>0x00000001|- rs1 : 9<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 1<br>                                                                                           |[0x8000011c]:c.andi s1, 63<br> |
|[0x80002220]<br>0x10000000|- rs1 : 15<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == 268435456<br>                                                                  |[0x80000126]:c.andi a5, 32<br> |
|[0x80002224]<br>0x00000000|- rs1 : 10<br> - imm_val == 0<br> - rs1_val == 16<br>                                                                                                        |[0x8000012e]:c.andi a0, 0<br>  |
|[0x80002228]<br>0x00000018|- rs1 : 13<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                                                           |[0x80000138]:c.andi a3, 31<br> |
|[0x8000222c]<br>0x00000000|- rs1 : 12<br> - imm_val == 1<br> - rs1_val == 524288<br>                                                                                                    |[0x80000142]:c.andi a2, 1<br>  |
|[0x80002230]<br>0x00000002|- rs1_val == imm_val<br> - imm_val == 2<br> - rs1_val == 2<br>                                                                                               |[0x8000014a]:c.andi a0, 2<br>  |
|[0x80002234]<br>0x00000004|- rs1_val == 4<br>                                                                                                                                           |[0x80000152]:c.andi a0, 5<br>  |
|[0x80002238]<br>0x00000008|- imm_val == -17<br> - rs1_val == 8<br>                                                                                                                      |[0x8000015a]:c.andi a0, 47<br> |
|[0x8000223c]<br>0x00000020|- imm_val == -22<br> - rs1_val == 32<br>                                                                                                                     |[0x80000164]:c.andi a0, 42<br> |
|[0x80002240]<br>0x00000040|- rs1_val == 64<br>                                                                                                                                          |[0x8000016e]:c.andi a0, 58<br> |
|[0x80002244]<br>0x00000000|- rs1_val == 128<br>                                                                                                                                         |[0x80000178]:c.andi a0, 3<br>  |
|[0x80002248]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                         |[0x80000182]:c.andi a0, 31<br> |
|[0x8000224c]<br>0x00000200|- rs1_val == 512<br>                                                                                                                                         |[0x8000018c]:c.andi a0, 48<br> |
|[0x80002250]<br>0x00000400|- imm_val == -9<br> - rs1_val == 1024<br>                                                                                                                    |[0x80000196]:c.andi a0, 55<br> |
|[0x80002254]<br>0x00000800|- rs1_val == 2048<br>                                                                                                                                        |[0x800001a2]:c.andi a0, 57<br> |
|[0x80002258]<br>0x00001000|- rs1_val == 4096<br>                                                                                                                                        |[0x800001aa]:c.andi a0, 48<br> |
|[0x8000225c]<br>0x00000000|- rs1_val == 8192<br>                                                                                                                                        |[0x800001b2]:c.andi a0, 15<br> |
|[0x80002260]<br>0x00004000|- rs1_val == 16384<br>                                                                                                                                       |[0x800001ba]:c.andi a0, 58<br> |
|[0x80002264]<br>0x00000000|- rs1_val == 32768<br>                                                                                                                                       |[0x800001c2]:c.andi a0, 0<br>  |
|[0x80002268]<br>0x00000000|- rs1_val == 65536<br>                                                                                                                                       |[0x800001ca]:c.andi a0, 5<br>  |
|[0x8000226c]<br>0x00000000|- imm_val == 16<br> - rs1_val == 131072<br>                                                                                                                  |[0x800001d4]:c.andi a0, 16<br> |
|[0x80002270]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                      |[0x800001de]:c.andi a0, 16<br> |
|[0x80002274]<br>0x00100000|- rs1_val == 1048576<br>                                                                                                                                     |[0x800001e8]:c.andi a0, 42<br> |
|[0x80002278]<br>0x00200000|- rs1_val == 2097152<br>                                                                                                                                     |[0x800001f2]:c.andi a0, 63<br> |
|[0x8000227c]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                     |[0x800001fc]:c.andi a0, 9<br>  |
|[0x80002280]<br>0x00800000|- rs1_val == 8388608<br>                                                                                                                                     |[0x80000206]:c.andi a0, 58<br> |
|[0x80002284]<br>0x01000000|- rs1_val == 16777216<br>                                                                                                                                    |[0x80000210]:c.andi a0, 32<br> |
|[0x80002288]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                    |[0x8000021a]:c.andi a0, 9<br>  |
|[0x8000228c]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                    |[0x80000224]:c.andi a0, 1<br>  |
|[0x80002290]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                                                   |[0x8000022e]:c.andi a0, 32<br> |
|[0x80002294]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                                                   |[0x80000238]:c.andi a0, 55<br> |
|[0x80002298]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                  |[0x80000242]:c.andi a0, 8<br>  |
|[0x8000229c]<br>0x00000006|- rs1_val == -2<br>                                                                                                                                          |[0x8000024c]:c.andi a0, 6<br>  |
|[0x800022a0]<br>0x0000000D|- rs1_val == -3<br>                                                                                                                                          |[0x80000256]:c.andi a0, 15<br> |
|[0x800022a4]<br>0x00000000|- imm_val == 4<br> - rs1_val == -5<br>                                                                                                                       |[0x80000260]:c.andi a0, 4<br>  |
|[0x800022a8]<br>0xFFFFFFE0|- rs1_val == -9<br>                                                                                                                                          |[0x8000026a]:c.andi a0, 32<br> |
|[0x800022ac]<br>0xFFFFFFED|- imm_val == -3<br> - rs1_val == -17<br>                                                                                                                     |[0x80000274]:c.andi a0, 61<br> |
|[0x800022b0]<br>0x0000000F|- rs1_val == -33<br>                                                                                                                                         |[0x8000027e]:c.andi a0, 15<br> |
|[0x800022b4]<br>0x00000000|- rs1_val == -524289<br>                                                                                                                                     |[0x8000028a]:c.andi a0, 0<br>  |
|[0x800022b8]<br>0xFFEFFFF9|- rs1_val == -1048577<br>                                                                                                                                    |[0x80000296]:c.andi a0, 57<br> |
|[0x800022bc]<br>0x00000003|- rs1_val == -2097153<br>                                                                                                                                    |[0x800002a2]:c.andi a0, 3<br>  |
|[0x800022c0]<br>0x00000007|- rs1_val == -4194305<br>                                                                                                                                    |[0x800002ae]:c.andi a0, 7<br>  |
|[0x800022c4]<br>0x00000008|- rs1_val == -8388609<br>                                                                                                                                    |[0x800002ba]:c.andi a0, 8<br>  |
|[0x800022c8]<br>0x00000009|- rs1_val == -16777217<br>                                                                                                                                   |[0x800002c6]:c.andi a0, 9<br>  |
|[0x800022cc]<br>0x0000000F|- rs1_val == -33554433<br>                                                                                                                                   |[0x800002d2]:c.andi a0, 15<br> |
|[0x800022d0]<br>0x0000000F|- rs1_val == -67108865<br>                                                                                                                                   |[0x800002de]:c.andi a0, 15<br> |
|[0x800022d4]<br>0xF7FFFFF6|- rs1_val == -134217729<br>                                                                                                                                  |[0x800002ea]:c.andi a0, 54<br> |
|[0x800022d8]<br>0xEFFFFFEF|- rs1_val == -268435457<br>                                                                                                                                  |[0x800002f6]:c.andi a0, 47<br> |
|[0x800022dc]<br>0xDFFFFFFB|- imm_val == -5<br> - rs1_val == -536870913<br>                                                                                                              |[0x80000302]:c.andi a0, 59<br> |
|[0x800022e0]<br>0x00000015|- imm_val == 21<br> - rs1_val == -1073741825<br>                                                                                                             |[0x8000030e]:c.andi a0, 21<br> |
|[0x800022e4]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                  |[0x8000031c]:c.andi a0, 1<br>  |
|[0x800022e8]<br>0xFFFFDFF0|- rs1_val == -8193<br>                                                                                                                                       |[0x80000326]:c.andi a0, 48<br> |
|[0x800022ec]<br>0xAAAAAAAA|- rs1_val == -1431655766<br>                                                                                                                                 |[0x80000334]:c.andi a0, 59<br> |
|[0x800022f0]<br>0xFFFFFFAA|- rs1_val == -65<br>                                                                                                                                         |[0x8000033e]:c.andi a0, 42<br> |
|[0x800022f4]<br>0xFFFFFFBE|- imm_val == -2<br>                                                                                                                                          |[0x80000348]:c.andi a0, 62<br> |
|[0x800022f8]<br>0x00000002|- rs1_val == -129<br>                                                                                                                                        |[0x80000352]:c.andi a0, 2<br>  |
|[0x800022fc]<br>0x00000015|- rs1_val == -257<br>                                                                                                                                        |[0x8000035c]:c.andi a0, 21<br> |
|[0x80002300]<br>0xFFFFFDF6|- rs1_val == -513<br>                                                                                                                                        |[0x80000366]:c.andi a0, 54<br> |
|[0x80002304]<br>0x00000002|- rs1_val == -1025<br>                                                                                                                                       |[0x80000370]:c.andi a0, 2<br>  |
|[0x80002308]<br>0x00000003|- rs1_val == -2049<br>                                                                                                                                       |[0x8000037c]:c.andi a0, 3<br>  |
|[0x8000230c]<br>0xFFFFEFE0|- rs1_val == -4097<br>                                                                                                                                       |[0x80000386]:c.andi a0, 32<br> |
|[0x80002310]<br>0xFFFFBFEA|- rs1_val == -16385<br>                                                                                                                                      |[0x80000390]:c.andi a0, 42<br> |
|[0x80002314]<br>0x00000006|- rs1_val == -32769<br>                                                                                                                                      |[0x8000039a]:c.andi a0, 6<br>  |
|[0x80002318]<br>0xFFFEFFE0|- rs1_val == -65537<br>                                                                                                                                      |[0x800003a4]:c.andi a0, 32<br> |
|[0x8000231c]<br>0xFFFDFFFB|- rs1_val == -131073<br>                                                                                                                                     |[0x800003ae]:c.andi a0, 59<br> |
|[0x80002320]<br>0x00000004|- rs1_val == -262145<br>                                                                                                                                     |[0x800003ba]:c.andi a0, 4<br>  |
