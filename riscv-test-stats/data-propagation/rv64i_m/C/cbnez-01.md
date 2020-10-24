
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x800002ce', '0x800026a0')]      |
| SIG_REGION  | [('0x80004210', '0x80004738')]      |
| COV_LABELS  | ('cbnez',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |

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

<style>
table th:first-of-type {
    width: 5%;
}
table th:nth-of-type(2) {
    width: 40%;
}
table th:nth-of-type(3) {
    width: 55%;
}
</style>

|            signature             |                                     coverpoints                                     |                                              code                                               |
|----------------------------------|-------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
|[0x80004210]<br>0x0000000000000003|- rs1 : 14<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 281474976710656<br>    |[0x800002e6]:c.bnez a4, 9<br> [0x800002f8]:c.li sp, 3<br>                                        |
|[0x80004218]<br>0x0000000000000003|- rs1 : 8<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -281474976710657<br>    |[0x80000310]:c.bnez s0, 5<br> [0x8000031a]:c.li sp, 3<br>                                        |
|[0x80004220]<br>0x0000000000000002|- rs1 : 11<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                 |[0x8000032c]:c.bnez a1, 5<br> [0x8000032e]:addi sp, zero, 2<br> [0x80000332]:jal zero, 6<br>     |
|[0x80004228]<br>0x0000000000000001|- rs1 : 10<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 1048576<br>            |[0x80000354]:c.bnez a0, 247<br> [0x80000342]:addi sp, zero, 1<br> [0x80000346]:jal zero, 26<br>  |
|[0x80004230]<br>0x0000000000000001|- rs1 : 12<br> - rs1_val < 0 and imm_val < 0<br>                                     |[0x80000370]:c.bnez a2, 252<br> [0x80000368]:addi sp, zero, 1<br> [0x8000036c]:jal zero, 16<br>  |
|[0x80004238]<br>0x0000000000000002|- rs1 : 15<br> - rs1_val == 0 and imm_val < 0<br>                                    |[0x8000038c]:c.bnez a5, 252<br> [0x8000038e]:addi sp, zero, 2<br> [0x80000392]:jal zero, 6<br>   |
|[0x80004240]<br>0x0000000000000003|- rs1 : 9<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>  |[0x800003ac]:c.bnez s1, 5<br> [0x800003b6]:c.li sp, 3<br>                                        |
|[0x80004248]<br>0x0000000000000003|- rs1 : 13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br> |[0x800003ce]:c.bnez a3, 5<br> [0x800003d8]:c.li sp, 3<br>                                        |
|[0x80004250]<br>0x0000000000000003|- rs1_val == 1<br>                                                                   |[0x800003ea]:c.bnez a0, 32<br> [0x8000042a]:c.li sp, 3<br>                                       |
|[0x80004258]<br>0x0000000000000003|- rs1_val == 2<br>                                                                   |[0x8000043c]:c.bnez a0, 6<br> [0x80000448]:c.li sp, 3<br>                                        |
|[0x80004260]<br>0x0000000000000003|- rs1_val == 4<br>                                                                   |[0x8000045a]:c.bnez a0, 32<br> [0x8000049a]:c.li sp, 3<br>                                       |
|[0x80004268]<br>0x0000000000000001|- rs1_val == 8<br>                                                                   |[0x80000524]:c.bnez a0, 192<br> [0x800004a4]:addi sp, zero, 1<br> [0x800004a8]:jal zero, 136<br> |
|[0x80004270]<br>0x0000000000000003|- rs1_val == 16<br>                                                                  |[0x80000540]:c.bnez a0, 9<br> [0x80000552]:c.li sp, 3<br>                                        |
|[0x80004278]<br>0x0000000000000003|- rs1_val == 32<br>                                                                  |[0x80000566]:c.bnez a0, 9<br> [0x80000578]:c.li sp, 3<br>                                        |
|[0x80004280]<br>0x0000000000000001|- rs1_val == 64<br>                                                                  |[0x80000592]:c.bnez a0, 249<br> [0x80000584]:addi sp, zero, 1<br> [0x80000588]:jal zero, 22<br>  |
|[0x80004288]<br>0x0000000000000003|- rs1_val == 128<br>                                                                 |[0x800005b0]:c.bnez a0, 85<br> [0x8000065a]:c.li sp, 3<br>                                       |
|[0x80004290]<br>0x0000000000000001|- rs1_val == 256<br>                                                                 |[0x8000066e]:c.bnez a0, 252<br> [0x80000666]:addi sp, zero, 1<br> [0x8000066a]:jal zero, 16<br>  |
|[0x80004298]<br>0x0000000000000001|- rs1_val == 512<br>                                                                 |[0x80000730]:c.bnez a0, 170<br> [0x80000684]:addi sp, zero, 1<br> [0x80000688]:jal zero, 180<br> |
|[0x800042a0]<br>0x0000000000000003|- rs1_val == 1024<br>                                                                |[0x8000074e]:c.bnez a0, 8<br> [0x8000075e]:c.li sp, 3<br>                                        |
|[0x800042a8]<br>0x0000000000000001|- rs1_val == 2048<br>                                                                |[0x8000077c]:c.bnez a0, 248<br> [0x8000076c]:addi sp, zero, 1<br> [0x80000770]:jal zero, 24<br>  |
|[0x800042b0]<br>0x0000000000000001|- rs1_val == 4096<br>                                                                |[0x80000798]:c.bnez a0, 252<br> [0x80000790]:addi sp, zero, 1<br> [0x80000794]:jal zero, 16<br>  |
|[0x800042b8]<br>0x0000000000000001|- rs1_val == 8192<br>                                                                |[0x800007b4]:c.bnez a0, 252<br> [0x800007ac]:addi sp, zero, 1<br> [0x800007b0]:jal zero, 16<br>  |
|[0x800042c0]<br>0x0000000000000003|- rs1_val == 16384<br>                                                               |[0x800007d0]:c.bnez a0, 32<br> [0x80000810]:c.li sp, 3<br>                                       |
|[0x800042c8]<br>0x0000000000000003|- rs1_val == 32768<br>                                                               |[0x80000822]:c.bnez a0, 8<br> [0x80000832]:c.li sp, 3<br>                                        |
|[0x800042d0]<br>0x0000000000000001|- rs1_val == 65536<br>                                                               |[0x80000850]:c.bnez a0, 246<br> [0x8000083c]:addi sp, zero, 1<br> [0x80000840]:jal zero, 28<br>  |
|[0x800042d8]<br>0x0000000000000003|- rs1_val == 131072<br>                                                              |[0x8000086e]:c.bnez a0, 63<br> [0x800008ec]:c.li sp, 3<br>                                       |
|[0x800042e0]<br>0x0000000000000001|- rs1_val == 262144<br>                                                              |[0x80000906]:c.bnez a0, 249<br> [0x800008f8]:addi sp, zero, 1<br> [0x800008fc]:jal zero, 22<br>  |
|[0x800042e8]<br>0x0000000000000003|- rs1_val == 524288<br>                                                              |[0x80000924]:c.bnez a0, 64<br> [0x800009a4]:c.li sp, 3<br>                                       |
|[0x800042f0]<br>0x0000000000000003|- rs1_val == 2097152<br>                                                             |[0x800009b8]:c.bnez a0, 63<br> [0x80000a36]:c.li sp, 3<br>                                       |
|[0x800042f8]<br>0x0000000000000001|- rs1_val == 4194304<br>                                                             |[0x80000a84]:c.bnez a0, 223<br> [0x80000a42]:addi sp, zero, 1<br> [0x80000a46]:jal zero, 74<br>  |
|[0x80004300]<br>0x0000000000000003|- rs1_val == 8388608<br>                                                             |[0x80000aa2]:c.bnez a0, 6<br> [0x80000aae]:c.li sp, 3<br>                                        |
|[0x80004308]<br>0x0000000000000001|- rs1_val == 16777216<br>                                                            |[0x80000afc]:c.bnez a0, 223<br> [0x80000aba]:addi sp, zero, 1<br> [0x80000abe]:jal zero, 74<br>  |
|[0x80004310]<br>0x0000000000000001|- rs1_val == 33554432<br>                                                            |[0x80000b54]:c.bnez a0, 223<br> [0x80000b12]:addi sp, zero, 1<br> [0x80000b16]:jal zero, 74<br>  |
|[0x80004318]<br>0x0000000000000001|- rs1_val == 67108864<br>                                                            |[0x80000bec]:c.bnez a0, 191<br> [0x80000b6a]:addi sp, zero, 1<br> [0x80000b6e]:jal zero, 138<br> |
|[0x80004320]<br>0x0000000000000001|- rs1_val == 134217728<br>                                                           |[0x80000c16]:c.bnez a0, 246<br> [0x80000c02]:addi sp, zero, 1<br> [0x80000c06]:jal zero, 28<br>  |
|[0x80004328]<br>0x0000000000000003|- rs1_val == 268435456<br>                                                           |[0x80000c34]:c.bnez a0, 5<br> [0x80000c3e]:c.li sp, 3<br>                                        |
|[0x80004330]<br>0x0000000000000003|- rs1_val == 536870912<br>                                                           |[0x80000c52]:c.bnez a0, 5<br> [0x80000c5c]:c.li sp, 3<br>                                        |
|[0x80004338]<br>0x0000000000000001|- rs1_val == 1073741824<br>                                                          |[0x80000c7c]:c.bnez a0, 246<br> [0x80000c68]:addi sp, zero, 1<br> [0x80000c6c]:jal zero, 28<br>  |
|[0x80004340]<br>0x0000000000000003|- rs1_val == 2147483648<br>                                                          |[0x80000c9c]:c.bnez a0, 7<br> [0x80000caa]:c.li sp, 3<br>                                        |
|[0x80004348]<br>0x0000000000000001|- rs1_val == 4294967296<br>                                                          |[0x80000cc6]:c.bnez a0, 249<br> [0x80000cb8]:addi sp, zero, 1<br> [0x80000cbc]:jal zero, 22<br>  |
|[0x80004350]<br>0x0000000000000003|- rs1_val == 8589934592<br>                                                          |[0x80000ce6]:c.bnez a0, 8<br> [0x80000cf6]:c.li sp, 3<br>                                        |
|[0x80004358]<br>0x0000000000000003|- rs1_val == 17179869184<br>                                                         |[0x80000d0c]:c.bnez a0, 85<br> [0x80000db6]:c.li sp, 3<br>                                       |
|[0x80004360]<br>0x0000000000000001|- rs1_val == 34359738368<br>                                                         |[0x80000dd8]:c.bnez a0, 246<br> [0x80000dc4]:addi sp, zero, 1<br> [0x80000dc8]:jal zero, 28<br>  |
|[0x80004368]<br>0x0000000000000001|- rs1_val == 68719476736<br>                                                         |[0x80000dfc]:c.bnez a0, 250<br> [0x80000df0]:addi sp, zero, 1<br> [0x80000df4]:jal zero, 20<br>  |
|[0x80004370]<br>0x0000000000000003|- rs1_val == 137438953472<br>                                                        |[0x80000e1c]:c.bnez a0, 63<br> [0x80000e9a]:c.li sp, 3<br>                                       |
|[0x80004378]<br>0x0000000000000001|- rs1_val == 274877906944<br>                                                        |[0x80000eb8]:c.bnez a0, 248<br> [0x80000ea8]:addi sp, zero, 1<br> [0x80000eac]:jal zero, 24<br>  |
|[0x80004380]<br>0x0000000000000003|- rs1_val == 549755813888<br>                                                        |[0x80000ed8]:c.bnez a0, 5<br> [0x80000ee2]:c.li sp, 3<br>                                        |
|[0x80004388]<br>0x0000000000000001|- rs1_val == 1099511627776<br>                                                       |[0x80000ef8]:c.bnez a0, 252<br> [0x80000ef0]:addi sp, zero, 1<br> [0x80000ef4]:jal zero, 16<br>  |
|[0x80004390]<br>0x0000000000000001|- rs1_val == 2199023255552<br>                                                       |[0x80000fbc]:c.bnez a0, 170<br> [0x80000f10]:addi sp, zero, 1<br> [0x80000f14]:jal zero, 180<br> |
|[0x80004398]<br>0x0000000000000003|- rs1_val == 4398046511104<br>                                                       |[0x80000fdc]:c.bnez a0, 16<br> [0x80000ffc]:c.li sp, 3<br>                                       |
|[0x800043a0]<br>0x0000000000000001|- rs1_val == 8796093022208<br>                                                       |[0x8000101c]:c.bnez a0, 247<br> [0x8000100a]:addi sp, zero, 1<br> [0x8000100e]:jal zero, 26<br>  |
|[0x800043a8]<br>0x0000000000000001|- rs1_val == 17592186044416<br>                                                      |[0x80001044]:c.bnez a0, 248<br> [0x80001034]:addi sp, zero, 1<br> [0x80001038]:jal zero, 24<br>  |
|[0x800043b0]<br>0x0000000000000001|- rs1_val == 35184372088832<br>                                                      |[0x80001064]:c.bnez a0, 252<br> [0x8000105c]:addi sp, zero, 1<br> [0x80001060]:jal zero, 16<br>  |
|[0x800043b8]<br>0x0000000000000003|- rs1_val == 70368744177664<br>                                                      |[0x80001084]:c.bnez a0, 32<br> [0x800010c4]:c.li sp, 3<br>                                       |
|[0x800043c0]<br>0x0000000000000001|- rs1_val == 140737488355328<br>                                                     |[0x800010dc]:c.bnez a0, 251<br> [0x800010d2]:addi sp, zero, 1<br> [0x800010d6]:jal zero, 18<br>  |
|[0x800043c8]<br>0x0000000000000001|- rs1_val == 562949953421312<br>                                                     |[0x80001106]:c.bnez a0, 247<br> [0x800010f4]:addi sp, zero, 1<br> [0x800010f8]:jal zero, 26<br>  |
|[0x800043d0]<br>0x0000000000000001|- rs1_val == 1125899906842624<br>                                                    |[0x80001132]:c.bnez a0, 246<br> [0x8000111e]:addi sp, zero, 1<br> [0x80001122]:jal zero, 28<br>  |
|[0x800043d8]<br>0x0000000000000003|- rs1_val == 2251799813685248<br>                                                    |[0x80001152]:c.bnez a0, 64<br> [0x800011d2]:c.li sp, 3<br>                                       |
|[0x800043e0]<br>0x0000000000000003|- rs1_val == 4503599627370496<br>                                                    |[0x800011e8]:c.bnez a0, 8<br> [0x800011f8]:c.li sp, 3<br>                                        |
|[0x800043e8]<br>0x0000000000000003|- rs1_val == 9007199254740992<br>                                                    |[0x8000120e]:c.bnez a0, 7<br> [0x8000121c]:c.li sp, 3<br>                                        |
|[0x800043f0]<br>0x0000000000000003|- rs1_val == 18014398509481984<br>                                                   |[0x80001232]:c.bnez a0, 64<br> [0x800012b2]:c.li sp, 3<br>                                       |
|[0x800043f8]<br>0x0000000000000003|- rs1_val == 36028797018963968<br>                                                   |[0x800012c8]:c.bnez a0, 5<br> [0x800012d2]:c.li sp, 3<br>                                        |
|[0x80004400]<br>0x0000000000000003|- rs1_val == 72057594037927936<br>                                                   |[0x800012e8]:c.bnez a0, 5<br> [0x800012f2]:c.li sp, 3<br>                                        |
|[0x80004408]<br>0x0000000000000001|- rs1_val == 144115188075855872<br>                                                  |[0x8000130e]:c.bnez a0, 249<br> [0x80001300]:addi sp, zero, 1<br> [0x80001304]:jal zero, 22<br>  |
|[0x80004410]<br>0x0000000000000003|- rs1_val == 288230376151711744<br>                                                  |[0x8000132e]:c.bnez a0, 6<br> [0x8000133a]:c.li sp, 3<br>                                        |
|[0x80004418]<br>0x0000000000000003|- rs1_val == 576460752303423488<br>                                                  |[0x80001350]:c.bnez a0, 5<br> [0x8000135a]:c.li sp, 3<br>                                        |
|[0x80004420]<br>0x0000000000000001|- rs1_val == 1152921504606846976<br>                                                 |[0x8000137c]:c.bnez a0, 246<br> [0x80001368]:addi sp, zero, 1<br> [0x8000136c]:jal zero, 28<br>  |
|[0x80004428]<br>0x0000000000000003|- rs1_val == 2305843009213693952<br>                                                 |[0x8000139c]:c.bnez a0, 64<br> [0x8000141c]:c.li sp, 3<br>                                       |
|[0x80004430]<br>0x0000000000000001|- rs1_val == 4611686018427387904<br>                                                 |[0x80001432]:c.bnez a0, 252<br> [0x8000142a]:addi sp, zero, 1<br> [0x8000142e]:jal zero, 16<br>  |
|[0x80004438]<br>0x0000000000000003|- rs1_val == -2<br>                                                                  |[0x8000144e]:c.bnez a0, 5<br> [0x80001458]:c.li sp, 3<br>                                        |
|[0x80004440]<br>0x0000000000000001|- rs1_val == -36028797018963969<br>                                                  |[0x80001514]:c.bnez a0, 170<br> [0x80001468]:addi sp, zero, 1<br> [0x8000146c]:jal zero, 180<br> |
|[0x80004448]<br>0x0000000000000001|- rs1_val == -72057594037927937<br>                                                  |[0x80001536]:c.bnez a0, 252<br> [0x8000152e]:addi sp, zero, 1<br> [0x80001532]:jal zero, 16<br>  |
|[0x80004450]<br>0x0000000000000003|- rs1_val == -144115188075855873<br>                                                 |[0x80001558]:c.bnez a0, 5<br> [0x80001562]:c.li sp, 3<br>                                        |
|[0x80004458]<br>0x0000000000000001|- rs1_val == -288230376151711745<br>                                                 |[0x8000157e]:c.bnez a0, 250<br> [0x80001572]:addi sp, zero, 1<br> [0x80001576]:jal zero, 20<br>  |
|[0x80004460]<br>0x0000000000000003|- rs1_val == -576460752303423489<br>                                                 |[0x800015a0]:c.bnez a0, 63<br> [0x8000161e]:c.li sp, 3<br>                                       |
|[0x80004468]<br>0x0000000000000001|- rs1_val == -1152921504606846977<br>                                                |[0x80001636]:c.bnez a0, 252<br> [0x8000162e]:addi sp, zero, 1<br> [0x80001632]:jal zero, 16<br>  |
|[0x80004470]<br>0x0000000000000001|- rs1_val == -2305843009213693953<br>                                                |[0x80001658]:c.bnez a0, 252<br> [0x80001650]:addi sp, zero, 1<br> [0x80001654]:jal zero, 16<br>  |
|[0x80004478]<br>0x0000000000000003|- rs1_val == -4611686018427387905<br>                                                |[0x8000167a]:c.bnez a0, 63<br> [0x800016f8]:c.li sp, 3<br>                                       |
|[0x80004480]<br>0x0000000000000003|- rs1_val == 6148914691236517205<br>                                                 |[0x80001722]:c.bnez a0, 85<br> [0x800017cc]:c.li sp, 3<br>                                       |
|[0x80004488]<br>0x0000000000000003|- rs1_val == -6148914691236517206<br>                                                |[0x800017f6]:c.bnez a0, 16<br> [0x80001816]:c.li sp, 3<br>                                       |
|[0x80004490]<br>0x0000000000000003|- rs1_val == -3<br>                                                                  |[0x80001828]:c.bnez a0, 5<br> [0x80001832]:c.li sp, 3<br>                                        |
|[0x80004498]<br>0x0000000000000001|- rs1_val == -5<br>                                                                  |[0x800018bc]:c.bnez a0, 192<br> [0x8000183c]:addi sp, zero, 1<br> [0x80001840]:jal zero, 136<br> |
|[0x800044a0]<br>0x0000000000000003|- rs1_val == -9<br>                                                                  |[0x800018d8]:c.bnez a0, 85<br> [0x80001982]:c.li sp, 3<br>                                       |
|[0x800044a8]<br>0x0000000000000003|- rs1_val == -17<br>                                                                 |[0x80001994]:c.bnez a0, 5<br> [0x8000199e]:c.li sp, 3<br>                                        |
|[0x800044b0]<br>0x0000000000000001|- rs1_val == -33<br>                                                                 |[0x800019be]:c.bnez a0, 246<br> [0x800019aa]:addi sp, zero, 1<br> [0x800019ae]:jal zero, 28<br>  |
|[0x800044b8]<br>0x0000000000000001|- rs1_val == -65<br>                                                                 |[0x800019de]:c.bnez a0, 251<br> [0x800019d4]:addi sp, zero, 1<br> [0x800019d8]:jal zero, 18<br>  |
|[0x800044c0]<br>0x0000000000000001|- rs1_val == -129<br>                                                                |[0x800019fe]:c.bnez a0, 251<br> [0x800019f4]:addi sp, zero, 1<br> [0x800019f8]:jal zero, 18<br>  |
|[0x800044c8]<br>0x0000000000000001|- rs1_val == -257<br>                                                                |[0x80001a1c]:c.bnez a0, 252<br> [0x80001a14]:addi sp, zero, 1<br> [0x80001a18]:jal zero, 16<br>  |
|[0x800044d0]<br>0x0000000000000001|- rs1_val == -513<br>                                                                |[0x80001a3c]:c.bnez a0, 251<br> [0x80001a32]:addi sp, zero, 1<br> [0x80001a36]:jal zero, 18<br>  |
|[0x800044d8]<br>0x0000000000000003|- rs1_val == -1025<br>                                                               |[0x80001a5a]:c.bnez a0, 5<br> [0x80001a64]:c.li sp, 3<br>                                        |
|[0x800044e0]<br>0x0000000000000003|- rs1_val == -2049<br>                                                               |[0x80001a7a]:c.bnez a0, 8<br> [0x80001a8a]:c.li sp, 3<br>                                        |
|[0x800044e8]<br>0x0000000000000003|- rs1_val == -4097<br>                                                               |[0x80001a9e]:c.bnez a0, 16<br> [0x80001abe]:c.li sp, 3<br>                                       |
|[0x800044f0]<br>0x0000000000000003|- rs1_val == -8193<br>                                                               |[0x80001ad2]:c.bnez a0, 63<br> [0x80001b50]:c.li sp, 3<br>                                       |
|[0x800044f8]<br>0x0000000000000001|- rs1_val == -16385<br>                                                              |[0x80001b64]:c.bnez a0, 252<br> [0x80001b5c]:addi sp, zero, 1<br> [0x80001b60]:jal zero, 16<br>  |
|[0x80004500]<br>0x0000000000000001|- rs1_val == -32769<br>                                                              |[0x80001b8e]:c.bnez a0, 246<br> [0x80001b7a]:addi sp, zero, 1<br> [0x80001b7e]:jal zero, 28<br>  |
|[0x80004508]<br>0x0000000000000003|- rs1_val == -65537<br>                                                              |[0x80001bac]:c.bnez a0, 5<br> [0x80001bb6]:c.li sp, 3<br>                                        |
|[0x80004510]<br>0x0000000000000001|- rs1_val == -131073<br>                                                             |[0x80001bca]:c.bnez a0, 252<br> [0x80001bc2]:addi sp, zero, 1<br> [0x80001bc6]:jal zero, 16<br>  |
|[0x80004518]<br>0x0000000000000003|- rs1_val == -262145<br>                                                             |[0x80001bea]:c.bnez a0, 5<br> [0x80001bf4]:c.li sp, 3<br>                                        |
|[0x80004520]<br>0x0000000000000001|- rs1_val == -524289<br>                                                             |[0x80001c0a]:c.bnez a0, 252<br> [0x80001c02]:addi sp, zero, 1<br> [0x80001c06]:jal zero, 16<br>  |
|[0x80004528]<br>0x0000000000000001|- rs1_val == -1048577<br>                                                            |[0x80001ca4]:c.bnez a0, 191<br> [0x80001c22]:addi sp, zero, 1<br> [0x80001c26]:jal zero, 138<br> |
|[0x80004530]<br>0x0000000000000001|- rs1_val == -2097153<br>                                                            |[0x80001d3c]:c.bnez a0, 192<br> [0x80001cbc]:addi sp, zero, 1<br> [0x80001cc0]:jal zero, 136<br> |
|[0x80004538]<br>0x0000000000000001|- rs1_val == -4194305<br>                                                            |[0x80001d62]:c.bnez a0, 249<br> [0x80001d54]:addi sp, zero, 1<br> [0x80001d58]:jal zero, 22<br>  |
|[0x80004540]<br>0x0000000000000003|- rs1_val == -8388609<br>                                                            |[0x80001d82]:c.bnez a0, 64<br> [0x80001e02]:c.li sp, 3<br>                                       |
|[0x80004548]<br>0x0000000000000003|- rs1_val == -16777217<br>                                                           |[0x80001e18]:c.bnez a0, 5<br> [0x80001e22]:c.li sp, 3<br>                                        |
|[0x80004550]<br>0x0000000000000001|- rs1_val == -33554433<br>                                                           |[0x80001e3e]:c.bnez a0, 249<br> [0x80001e30]:addi sp, zero, 1<br> [0x80001e34]:jal zero, 22<br>  |
|[0x80004558]<br>0x0000000000000001|- rs1_val == -67108865<br>                                                           |[0x80001e60]:c.bnez a0, 251<br> [0x80001e56]:addi sp, zero, 1<br> [0x80001e5a]:jal zero, 18<br>  |
|[0x80004560]<br>0x0000000000000001|- rs1_val == -134217729<br>                                                          |[0x80001e88]:c.bnez a0, 248<br> [0x80001e78]:addi sp, zero, 1<br> [0x80001e7c]:jal zero, 24<br>  |
|[0x80004568]<br>0x0000000000000003|- rs1_val == -268435457<br>                                                          |[0x80001ea8]:c.bnez a0, 5<br> [0x80001eb2]:c.li sp, 3<br>                                        |
|[0x80004570]<br>0x0000000000000003|- rs1_val == -536870913<br>                                                          |[0x80001ec8]:c.bnez a0, 16<br> [0x80001ee8]:c.li sp, 3<br>                                       |
|[0x80004578]<br>0x0000000000000001|- rs1_val == -1073741825<br>                                                         |[0x80001f0a]:c.bnez a0, 246<br> [0x80001ef6]:addi sp, zero, 1<br> [0x80001efa]:jal zero, 28<br>  |
|[0x80004580]<br>0x0000000000000001|- rs1_val == -2147483649<br>                                                         |[0x80001fa6]:c.bnez a0, 191<br> [0x80001f24]:addi sp, zero, 1<br> [0x80001f28]:jal zero, 138<br> |
|[0x80004588]<br>0x0000000000000003|- rs1_val == -4294967297<br>                                                         |[0x80001fc8]:c.bnez a0, 5<br> [0x80001fd2]:c.li sp, 3<br>                                        |
|[0x80004590]<br>0x0000000000000001|- rs1_val == -8589934593<br>                                                         |[0x80001fea]:c.bnez a0, 252<br> [0x80001fe2]:addi sp, zero, 1<br> [0x80001fe6]:jal zero, 16<br>  |
|[0x80004598]<br>0x0000000000000003|- rs1_val == -17179869185<br>                                                        |[0x8000200c]:c.bnez a0, 6<br> [0x80002018]:c.li sp, 3<br>                                        |
|[0x800045a0]<br>0x0000000000000003|- rs1_val == -34359738369<br>                                                        |[0x80002030]:c.bnez a0, 85<br> [0x800020da]:c.li sp, 3<br>                                       |
|[0x800045a8]<br>0x0000000000000003|- rs1_val == -68719476737<br>                                                        |[0x800020f2]:c.bnez a0, 32<br> [0x80002132]:c.li sp, 3<br>                                       |
|[0x800045b0]<br>0x0000000000000003|- rs1_val == -137438953473<br>                                                       |[0x8000214a]:c.bnez a0, 8<br> [0x8000215a]:c.li sp, 3<br>                                        |
|[0x800045b8]<br>0x0000000000000003|- rs1_val == -274877906945<br>                                                       |[0x80002172]:c.bnez a0, 5<br> [0x8000217c]:c.li sp, 3<br>                                        |
|[0x800045c0]<br>0x0000000000000001|- rs1_val == -549755813889<br>                                                       |[0x80002238]:c.bnez a0, 170<br> [0x8000218c]:addi sp, zero, 1<br> [0x80002190]:jal zero, 180<br> |
|[0x800045c8]<br>0x0000000000000001|- rs1_val == -1099511627777<br>                                                      |[0x800022d4]:c.bnez a0, 191<br> [0x80002252]:addi sp, zero, 1<br> [0x80002256]:jal zero, 138<br> |
|[0x800045d0]<br>0x0000000000000003|- rs1_val == -2199023255553<br>                                                      |[0x800022f6]:c.bnez a0, 63<br> [0x80002374]:c.li sp, 3<br>                                       |
|[0x800045d8]<br>0x0000000000000003|- rs1_val == -4398046511105<br>                                                      |[0x8000238c]:c.bnez a0, 16<br> [0x800023ac]:c.li sp, 3<br>                                       |
|[0x800045e0]<br>0x0000000000000001|- rs1_val == -8796093022209<br>                                                      |[0x8000243c]:c.bnez a0, 192<br> [0x800023bc]:addi sp, zero, 1<br> [0x800023c0]:jal zero, 136<br> |
|[0x800045e8]<br>0x0000000000000003|- rs1_val == -17592186044417<br>                                                     |[0x8000245e]:c.bnez a0, 5<br> [0x80002468]:c.li sp, 3<br>                                        |
|[0x800045f0]<br>0x0000000000000003|- rs1_val == -35184372088833<br>                                                     |[0x80002480]:c.bnez a0, 8<br> [0x80002490]:c.li sp, 3<br>                                        |
|[0x800045f8]<br>0x0000000000000001|- rs1_val == -70368744177665<br>                                                     |[0x800024e2]:c.bnez a0, 223<br> [0x800024a0]:addi sp, zero, 1<br> [0x800024a4]:jal zero, 74<br>  |
|[0x80004600]<br>0x0000000000000003|- rs1_val == -140737488355329<br>                                                    |[0x80002504]:c.bnez a0, 5<br> [0x8000250e]:c.li sp, 3<br>                                        |
|[0x80004608]<br>0x0000000000000001|- rs1_val == -562949953421313<br>                                                    |[0x80002526]:c.bnez a0, 252<br> [0x8000251e]:addi sp, zero, 1<br> [0x80002522]:jal zero, 16<br>  |
|[0x80004610]<br>0x0000000000000003|- rs1_val == -1125899906842625<br>                                                   |[0x80002548]:c.bnez a0, 5<br> [0x80002552]:c.li sp, 3<br>                                        |
|[0x80004618]<br>0x0000000000000003|- rs1_val == -2251799813685249<br>                                                   |[0x8000256a]:c.bnez a0, 6<br> [0x80002576]:c.li sp, 3<br>                                        |
|[0x80004620]<br>0x0000000000000001|- rs1_val == -4503599627370497<br>                                                   |[0x8000259a]:c.bnez a0, 246<br> [0x80002586]:addi sp, zero, 1<br> [0x8000258a]:jal zero, 28<br>  |
|[0x80004628]<br>0x0000000000000001|- rs1_val == -9007199254740993<br>                                                   |[0x800025f6]:c.bnez a0, 223<br> [0x800025b4]:addi sp, zero, 1<br> [0x800025b8]:jal zero, 74<br>  |
|[0x80004630]<br>0x0000000000000001|- rs1_val == -18014398509481985<br>                                                  |[0x80002690]:c.bnez a0, 192<br> [0x80002610]:addi sp, zero, 1<br> [0x80002614]:jal zero, 136<br> |
