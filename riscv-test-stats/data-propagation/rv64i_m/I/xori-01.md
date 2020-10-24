
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x80000390', '0x80000c30')]      |
| SIG_REGION  | [('0x80002210', '0x80002750')]      |
| COV_LABELS  | ('xori',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/xori-01.S/xori-01.S    |

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

|            signature             |                                                                        coverpoints                                                                        |                code                 |
|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------|
|[0x80002210]<br>0x0000000000000000|- rs1 : 4<br> - rd : 0<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 4<br> - rs1_val == 4<br>                |[0x8000039c]:xori zero, tp, 4<br>    |
|[0x80002218]<br>0xFFFFFBFFFFFFFFF7|- rs1 : 21<br> - rd : 21<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 8<br> - rs1_val == -4398046511105<br> |[0x800003b0]:xori s5, s5, 8<br>      |
|[0x80002220]<br>0xFFFFFFFFFFFFFC09|- rs1 : 20<br> - rd : 6<br> - rs1_val > 0 and imm_val < 0<br>                                                                                              |[0x800003bc]:xori t1, s4, 3072<br>   |
|[0x80002228]<br>0x0000000000200000|- rs1 : 16<br> - rd : 18<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2097153<br>                                                                   |[0x800003cc]:xori s2, a6, 4095<br>   |
|[0x80002230]<br>0x7FFFFFFFFFFFFFFE|- rs1 : 5<br> - rd : 19<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -2<br> - rs1_val == -9223372036854775808<br>                                      |[0x800003dc]:xori s3, t0, 4094<br>   |
|[0x80002238]<br>0x0000000000000010|- rs1 : 12<br> - rd : 26<br> - rs1_val == 0<br> - imm_val == 16<br>                                                                                        |[0x800003e8]:xori s10, a2, 16<br>    |
|[0x80002240]<br>0x7FFFFFFFFFFFFFFA|- rs1 : 9<br> - rd : 31<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                          |[0x800003fc]:xori t6, s1, 5<br>      |
|[0x80002248]<br>0x0000000000000401|- rs1 : 25<br> - rd : 23<br> - rs1_val == 1<br> - imm_val == 1024<br>                                                                                      |[0x80000408]:xori s7, s9, 1024<br>   |
|[0x80002250]<br>0x00000004000007FF|- rs1 : 2<br> - rd : 30<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -17179869185<br>                                             |[0x8000041c]:xori t5, sp, 2048<br>   |
|[0x80002258]<br>0x0000000000000800|- rs1 : 15<br> - rd : 17<br> - imm_val == 0<br> - rs1_val == 2048<br>                                                                                      |[0x8000042c]:xori a7, a5, 0<br>      |
|[0x80002260]<br>0x00000000000007FF|- rs1 : 0<br> - rd : 14<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br>                                                                           |[0x80000440]:xori a4, zero, 2047<br> |
|[0x80002268]<br>0x0000000080000001|- rs1 : 31<br> - rd : 13<br> - imm_val == 1<br> - rs1_val == 2147483648<br>                                                                                |[0x80000450]:xori a3, t6, 1<br>      |
|[0x80002270]<br>0xFFFFFFFFFFFFF802|- rs1 : 19<br> - rd : 28<br> - rs1_val == 2<br>                                                                                                            |[0x8000045c]:xori t3, s3, 2048<br>   |
|[0x80002278]<br>0x000000000000000C|- rs1 : 18<br> - rd : 11<br> - rs1_val == 8<br>                                                                                                            |[0x80000468]:xori a1, s2, 4<br>      |
|[0x80002280]<br>0x0000000000000011|- rs1 : 24<br> - rd : 9<br> - rs1_val == 16<br>                                                                                                            |[0x80000474]:xori s1, s8, 1<br>      |
|[0x80002288]<br>0xFFFFFFFFFFFFFFD7|- rs1 : 23<br> - rd : 1<br> - imm_val == -9<br> - rs1_val == 32<br>                                                                                        |[0x80000480]:xori ra, s7, 4087<br>   |
|[0x80002290]<br>0x0000000000000515|- rs1 : 22<br> - rd : 16<br> - imm_val == 1365<br> - rs1_val == 64<br>                                                                                     |[0x8000048c]:xori a6, s6, 1365<br>   |
|[0x80002298]<br>0xFFFFFFFFFFFFF880|- rs1 : 11<br> - rd : 5<br> - rs1_val == 128<br>                                                                                                           |[0x80000498]:xori t0, a1, 2048<br>   |
|[0x800022a0]<br>0x0000000000000100|- rs1 : 29<br> - rd : 15<br> - rs1_val == 256<br>                                                                                                          |[0x800004a4]:xori a5, t4, 0<br>      |
|[0x800022a8]<br>0x0000000000000204|- rs1 : 14<br> - rd : 4<br> - rs1_val == 512<br>                                                                                                           |[0x800004b0]:xori tp, a4, 4<br>      |
|[0x800022b0]<br>0xFFFFFFFFFFFFFBBF|- rs1 : 30<br> - rd : 8<br> - imm_val == -65<br> - rs1_val == 1024<br>                                                                                     |[0x800004bc]:xori fp, t5, 4031<br>   |
|[0x800022b8]<br>0x00000000000013FF|- rs1 : 6<br> - rd : 25<br> - rs1_val == 4096<br>                                                                                                          |[0x800004c8]:xori s9, t1, 1023<br>   |
|[0x800022c0]<br>0x0000000000002005|- rs1 : 1<br> - rd : 24<br> - rs1_val == 8192<br>                                                                                                          |[0x800004d4]:xori s8, ra, 5<br>      |
|[0x800022c8]<br>0x0000000000004003|- rs1 : 10<br> - rd : 20<br> - rs1_val == 16384<br>                                                                                                        |[0x800004e0]:xori s4, a0, 3<br>      |
|[0x800022d0]<br>0x0000000000008006|- rs1 : 8<br> - rd : 2<br> - rs1_val == 32768<br>                                                                                                          |[0x800004f4]:xori sp, fp, 6<br>      |
|[0x800022d8]<br>0xFFFFFFFFFFFEFFFD|- rs1 : 17<br> - rd : 22<br> - imm_val == -3<br> - rs1_val == 65536<br>                                                                                    |[0x80000500]:xori s6, a7, 4093<br>   |
|[0x800022e0]<br>0x0000000000020000|- rs1 : 27<br> - rd : 10<br> - rs1_val == 131072<br>                                                                                                       |[0x8000050c]:xori a0, s11, 0<br>     |
|[0x800022e8]<br>0xFFFFFFFFFFFBFFFC|- rs1 : 13<br> - rd : 27<br> - rs1_val == 262144<br>                                                                                                       |[0x80000518]:xori s11, a3, 4092<br>  |
|[0x800022f0]<br>0x0000000000080040|- rs1 : 28<br> - rd : 12<br> - imm_val == 64<br> - rs1_val == 524288<br>                                                                                   |[0x80000524]:xori a2, t3, 64<br>     |
|[0x800022f8]<br>0x0000000000100004|- rs1 : 26<br> - rd : 3<br> - rs1_val == 1048576<br>                                                                                                       |[0x80000530]:xori gp, s10, 4<br>     |
|[0x80002300]<br>0x0000000000200006|- rs1 : 7<br> - rd : 29<br> - rs1_val == 2097152<br>                                                                                                       |[0x8000053c]:xori t4, t2, 6<br>      |
|[0x80002308]<br>0xFFFFFFFFFFBFFC00|- rs1 : 3<br> - rd : 7<br> - rs1_val == 4194304<br>                                                                                                        |[0x80000548]:xori t2, gp, 3072<br>   |
|[0x80002310]<br>0xFFFFFFFFFF7FFEFF|- imm_val == -257<br> - rs1_val == 8388608<br>                                                                                                             |[0x80000554]:xori a1, a0, 3839<br>   |
|[0x80002318]<br>0x0000000001000008|- rs1_val == 16777216<br>                                                                                                                                  |[0x80000560]:xori a1, a0, 8<br>      |
|[0x80002320]<br>0xFFFFFFFFFDFFFFFC|- rs1_val == 33554432<br>                                                                                                                                  |[0x8000056c]:xori a1, a0, 4092<br>   |
|[0x80002328]<br>0xFFFFFFFFFBFFFFF9|- rs1_val == 67108864<br>                                                                                                                                  |[0x80000578]:xori a1, a0, 4089<br>   |
|[0x80002330]<br>0xFFFFFFFFF7FFFFF6|- rs1_val == 134217728<br>                                                                                                                                 |[0x80000584]:xori a1, a0, 4086<br>   |
|[0x80002338]<br>0xFFFFFFFFEFFFFEFF|- rs1_val == 268435456<br>                                                                                                                                 |[0x80000590]:xori a1, a0, 3839<br>   |
|[0x80002340]<br>0xFFFFFFFFDFFFFBFF|- imm_val == -1025<br> - rs1_val == 536870912<br>                                                                                                          |[0x8000059c]:xori a1, a0, 3071<br>   |
|[0x80002348]<br>0x0000000040000080|- imm_val == 128<br> - rs1_val == 1073741824<br>                                                                                                           |[0x800005a8]:xori a1, a0, 128<br>    |
|[0x80002350]<br>0x0000000100000020|- imm_val == 32<br> - rs1_val == 4294967296<br>                                                                                                            |[0x800005b8]:xori a1, a0, 32<br>     |
|[0x80002358]<br>0x0000000200000007|- rs1_val == 8589934592<br>                                                                                                                                |[0x800005c8]:xori a1, a0, 7<br>      |
|[0x80002360]<br>0x00000004000003FF|- rs1_val == 17179869184<br>                                                                                                                               |[0x800005d8]:xori a1, a0, 1023<br>   |
|[0x80002368]<br>0xFFFFFFF7FFFFFFF7|- rs1_val == 34359738368<br>                                                                                                                               |[0x800005e8]:xori a1, a0, 4087<br>   |
|[0x80002370]<br>0x0000001000000400|- rs1_val == 68719476736<br>                                                                                                                               |[0x800005f8]:xori a1, a0, 1024<br>   |
|[0x80002378]<br>0x0000002000000001|- rs1_val == 137438953472<br>                                                                                                                              |[0x80000608]:xori a1, a0, 1<br>      |
|[0x80002380]<br>0xFFFFFFBFFFFFFDFF|- imm_val == -513<br> - rs1_val == 274877906944<br>                                                                                                        |[0x80000618]:xori a1, a0, 3583<br>   |
|[0x80002388]<br>0x0000008000000200|- imm_val == 512<br> - rs1_val == 549755813888<br>                                                                                                         |[0x80000628]:xori a1, a0, 512<br>    |
|[0x80002390]<br>0x0000010000000002|- imm_val == 2<br> - rs1_val == 1099511627776<br>                                                                                                          |[0x80000638]:xori a1, a0, 2<br>      |
|[0x80002398]<br>0xFFFFFDFFFFFFFAAA|- imm_val == -1366<br> - rs1_val == 2199023255552<br>                                                                                                      |[0x80000648]:xori a1, a0, 2730<br>   |
|[0x800023a0]<br>0xFFFFFBFFFFFFFAAA|- rs1_val == 4398046511104<br>                                                                                                                             |[0x80000658]:xori a1, a0, 2730<br>   |
|[0x800023a8]<br>0xFFFFF7FFFFFFFFFB|- imm_val == -5<br> - rs1_val == 8796093022208<br>                                                                                                         |[0x80000668]:xori a1, a0, 4091<br>   |
|[0x800023b0]<br>0xFFFFEFFFFFFFFFFC|- rs1_val == 17592186044416<br>                                                                                                                            |[0x80000678]:xori a1, a0, 4092<br>   |
|[0x800023b8]<br>0x0000200000000002|- rs1_val == 35184372088832<br>                                                                                                                            |[0x80000688]:xori a1, a0, 2<br>      |
|[0x800023c0]<br>0x0000400000000007|- rs1_val == 70368744177664<br>                                                                                                                            |[0x80000698]:xori a1, a0, 7<br>      |
|[0x800023c8]<br>0x0000800000000555|- rs1_val == 140737488355328<br>                                                                                                                           |[0x800006a8]:xori a1, a0, 1365<br>   |
|[0x800023d0]<br>0xFFFEFFFFFFFFFAAA|- rs1_val == 281474976710656<br>                                                                                                                           |[0x800006b8]:xori a1, a0, 2730<br>   |
|[0x800023d8]<br>0xFFFDFFFFFFFFFFF9|- rs1_val == 562949953421312<br>                                                                                                                           |[0x800006c8]:xori a1, a0, 4089<br>   |
|[0x800023e0]<br>0x0004000000000009|- rs1_val == 1125899906842624<br>                                                                                                                          |[0x800006d8]:xori a1, a0, 9<br>      |
|[0x800023e8]<br>0x0008000000000040|- rs1_val == 2251799813685248<br>                                                                                                                          |[0x800006e8]:xori a1, a0, 64<br>     |
|[0x800023f0]<br>0xFFEFFFFFFFFFFFFA|- rs1_val == 4503599627370496<br>                                                                                                                          |[0x800006f8]:xori a1, a0, 4090<br>   |
|[0x800023f8]<br>0xFFDFFFFFFFFFFF7F|- imm_val == -129<br> - rs1_val == 9007199254740992<br>                                                                                                    |[0x80000708]:xori a1, a0, 3967<br>   |
|[0x80002400]<br>0xFFBFFFFFFFFFFFFA|- rs1_val == 18014398509481984<br>                                                                                                                         |[0x80000718]:xori a1, a0, 4090<br>   |
|[0x80002408]<br>0x0080000000000004|- rs1_val == 36028797018963968<br>                                                                                                                         |[0x80000728]:xori a1, a0, 4<br>      |
|[0x80002410]<br>0xFEFFFFFFFFFFFEFF|- rs1_val == 72057594037927936<br>                                                                                                                         |[0x80000738]:xori a1, a0, 3839<br>   |
|[0x80002418]<br>0xFDFFFFFFFFFFFFF7|- rs1_val == 144115188075855872<br>                                                                                                                        |[0x80000748]:xori a1, a0, 4087<br>   |
|[0x80002420]<br>0xFBFFFFFFFFFFFAAA|- rs1_val == 288230376151711744<br>                                                                                                                        |[0x80000758]:xori a1, a0, 2730<br>   |
|[0x80002428]<br>0xF7FFFFFFFFFFFFEF|- imm_val == -17<br> - rs1_val == 576460752303423488<br>                                                                                                   |[0x80000768]:xori a1, a0, 4079<br>   |
|[0x80002430]<br>0xEFFFFFFFFFFFFFF8|- rs1_val == 1152921504606846976<br>                                                                                                                       |[0x80000778]:xori a1, a0, 4088<br>   |
|[0x80002438]<br>0x2000000000000006|- rs1_val == 2305843009213693952<br>                                                                                                                       |[0x80000788]:xori a1, a0, 6<br>      |
|[0x80002440]<br>0xBFFFFFFFFFFFFF7F|- rs1_val == 4611686018427387904<br>                                                                                                                       |[0x80000798]:xori a1, a0, 3967<br>   |
|[0x80002448]<br>0xFFF7FFFFFFFFFAAA|- rs1_val == -2251799813685249<br>                                                                                                                         |[0x800007ac]:xori a1, a0, 1365<br>   |
|[0x80002450]<br>0xFFEFFFFFFFFFFFFB|- rs1_val == -4503599627370497<br>                                                                                                                         |[0x800007c0]:xori a1, a0, 4<br>      |
|[0x80002458]<br>0xFFDFFFFFFFFFFFF6|- rs1_val == -9007199254740993<br>                                                                                                                         |[0x800007d4]:xori a1, a0, 9<br>      |
|[0x80002460]<br>0x0040000000000006|- rs1_val == -18014398509481985<br>                                                                                                                        |[0x800007e8]:xori a1, a0, 4089<br>   |
|[0x80002468]<br>0x0080000000000005|- rs1_val == -36028797018963969<br>                                                                                                                        |[0x800007fc]:xori a1, a0, 4090<br>   |
|[0x80002470]<br>0xFEFFFFFFFFFFFFBF|- rs1_val == -72057594037927937<br>                                                                                                                        |[0x80000810]:xori a1, a0, 64<br>     |
|[0x80002478]<br>0xFDFFFFFFFFFFFFFA|- rs1_val == -144115188075855873<br>                                                                                                                       |[0x80000824]:xori a1, a0, 5<br>      |
|[0x80002480]<br>0x0400000000000003|- rs1_val == -288230376151711745<br>                                                                                                                       |[0x80000838]:xori a1, a0, 4092<br>   |
|[0x80002488]<br>0xF7FFFFFFFFFFFFBF|- rs1_val == -576460752303423489<br>                                                                                                                       |[0x8000084c]:xori a1, a0, 64<br>     |
|[0x80002490]<br>0x1000000000000001|- rs1_val == -1152921504606846977<br>                                                                                                                      |[0x80000860]:xori a1, a0, 4094<br>   |
|[0x80002498]<br>0x2000000000000006|- rs1_val == -2305843009213693953<br>                                                                                                                      |[0x80000874]:xori a1, a0, 4089<br>   |
|[0x800024a0]<br>0xBFFFFFFFFFFFFAAA|- rs1_val == -4611686018427387905<br>                                                                                                                      |[0x80000888]:xori a1, a0, 1365<br>   |
|[0x800024a8]<br>0x5555555555555551|- rs1_val == 6148914691236517205<br>                                                                                                                       |[0x800008b0]:xori a1, a0, 4<br>      |
|[0x800024b0]<br>0xAAAAAAAAAAAAAAA3|- rs1_val == -6148914691236517206<br>                                                                                                                      |[0x800008d8]:xori a1, a0, 9<br>      |
|[0x800024b8]<br>0x0000000000100100|- imm_val == 256<br>                                                                                                                                       |[0x800008e4]:xori a1, a0, 256<br>    |
|[0x800024c0]<br>0x0000000001000020|- imm_val == -33<br> - rs1_val == -16777217<br>                                                                                                            |[0x800008f4]:xori a1, a0, 4063<br>   |
|[0x800024c8]<br>0x0000000000000011|- rs1_val == -2<br>                                                                                                                                        |[0x80000900]:xori a1, a0, 4079<br>   |
|[0x800024d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                        |[0x8000090c]:xori a1, a0, 2<br>      |
|[0x800024d8]<br>0x00000000000007FB|- rs1_val == -5<br>                                                                                                                                        |[0x80000918]:xori a1, a0, 2048<br>   |
|[0x800024e0]<br>0x0000000000000001|- rs1_val == -9<br>                                                                                                                                        |[0x80000924]:xori a1, a0, 4086<br>   |
|[0x800024e8]<br>0xFFFFFFFFFFFFFFE7|- rs1_val == -17<br>                                                                                                                                       |[0x80000930]:xori a1, a0, 8<br>      |
|[0x800024f0]<br>0xFFFFFFFFFFFFFFD6|- rs1_val == -33<br>                                                                                                                                       |[0x8000093c]:xori a1, a0, 9<br>      |
|[0x800024f8]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -65<br>                                                                                                                                       |[0x80000948]:xori a1, a0, 0<br>      |
|[0x80002500]<br>0x00000000000000C0|- rs1_val == -129<br>                                                                                                                                      |[0x80000954]:xori a1, a0, 4031<br>   |
|[0x80002508]<br>0x0000000000000106|- rs1_val == -257<br>                                                                                                                                      |[0x80000960]:xori a1, a0, 4089<br>   |
|[0x80002510]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -513<br>                                                                                                                                      |[0x8000096c]:xori a1, a0, 0<br>      |
|[0x80002518]<br>0x0000000000000420|- rs1_val == -1025<br>                                                                                                                                     |[0x80000978]:xori a1, a0, 4063<br>   |
|[0x80002520]<br>0x0000000000000807|- rs1_val == -2049<br>                                                                                                                                     |[0x80000988]:xori a1, a0, 4088<br>   |
|[0x80002528]<br>0x0000000000001200|- rs1_val == -4097<br>                                                                                                                                     |[0x80000998]:xori a1, a0, 3583<br>   |
|[0x80002530]<br>0xFFFFFFFFFFFFDFF6|- rs1_val == -8193<br>                                                                                                                                     |[0x800009a8]:xori a1, a0, 9<br>      |
|[0x80002538]<br>0xFFFFFFFFFFFFBFFB|- rs1_val == -16385<br>                                                                                                                                    |[0x800009b8]:xori a1, a0, 4<br>      |
|[0x80002540]<br>0xFFFFFFFFFFFF7DFF|- rs1_val == -32769<br>                                                                                                                                    |[0x800009c8]:xori a1, a0, 512<br>    |
|[0x80002548]<br>0xFFFFFFFFFFFEFEFF|- rs1_val == -65537<br>                                                                                                                                    |[0x800009d8]:xori a1, a0, 256<br>    |
|[0x80002550]<br>0xFFFFFFFFFFFDFFFE|- rs1_val == -131073<br>                                                                                                                                   |[0x800009e8]:xori a1, a0, 1<br>      |
|[0x80002558]<br>0x0000000000040007|- rs1_val == -262145<br>                                                                                                                                   |[0x800009f8]:xori a1, a0, 4088<br>   |
|[0x80002560]<br>0xFFFFFFFFFFF7FFFB|- rs1_val == -524289<br>                                                                                                                                   |[0x80000a08]:xori a1, a0, 4<br>      |
|[0x80002568]<br>0xFFFFFFFFFFEFFFF8|- rs1_val == -1048577<br>                                                                                                                                  |[0x80000a18]:xori a1, a0, 7<br>      |
|[0x80002570]<br>0xFFFFFFFFFFBFFFBF|- rs1_val == -4194305<br>                                                                                                                                  |[0x80000a28]:xori a1, a0, 64<br>     |
|[0x80002578]<br>0x0000000000800555|- rs1_val == -8388609<br>                                                                                                                                  |[0x80000a38]:xori a1, a0, 2730<br>   |
|[0x80002580]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                 |[0x80000a48]:xori a1, a0, 0<br>      |
|[0x80002588]<br>0xFFFFFFFFFBFFFFF8|- rs1_val == -67108865<br>                                                                                                                                 |[0x80000a58]:xori a1, a0, 7<br>      |
|[0x80002590]<br>0x0000000008000010|- rs1_val == -134217729<br>                                                                                                                                |[0x80000a68]:xori a1, a0, 4079<br>   |
|[0x80002598]<br>0xFFFFFFFFEFFFFFFB|- rs1_val == -268435457<br>                                                                                                                                |[0x80000a78]:xori a1, a0, 4<br>      |
|[0x800025a0]<br>0xFFFFFFFFDFFFFFFE|- rs1_val == -536870913<br>                                                                                                                                |[0x80000a88]:xori a1, a0, 1<br>      |
|[0x800025a8]<br>0x0000000040000020|- rs1_val == -1073741825<br>                                                                                                                               |[0x80000a98]:xori a1, a0, 4063<br>   |
|[0x800025b0]<br>0xFFFFFFFF7FFFFFFC|- rs1_val == -2147483649<br>                                                                                                                               |[0x80000aac]:xori a1, a0, 3<br>      |
|[0x800025b8]<br>0xFFFFFFFEFFFFFC00|- rs1_val == -4294967297<br>                                                                                                                               |[0x80000ac0]:xori a1, a0, 1023<br>   |
|[0x800025c0]<br>0x0000000200000004|- rs1_val == -8589934593<br>                                                                                                                               |[0x80000ad4]:xori a1, a0, 4091<br>   |
|[0x800025c8]<br>0xFFFFFFF7FFFFFFFE|- rs1_val == -34359738369<br>                                                                                                                              |[0x80000ae8]:xori a1, a0, 1<br>      |
|[0x800025d0]<br>0xFFFFFFEFFFFFFFFE|- rs1_val == -68719476737<br>                                                                                                                              |[0x80000afc]:xori a1, a0, 1<br>      |
|[0x800025d8]<br>0xFFFFFFDFFFFFFAAA|- rs1_val == -137438953473<br>                                                                                                                             |[0x80000b10]:xori a1, a0, 1365<br>   |
|[0x800025e0]<br>0x0000004000000003|- rs1_val == -274877906945<br>                                                                                                                             |[0x80000b24]:xori a1, a0, 4092<br>   |
|[0x800025e8]<br>0xFFFFFF7FFFFFFC00|- rs1_val == -549755813889<br>                                                                                                                             |[0x80000b38]:xori a1, a0, 1023<br>   |
|[0x800025f0]<br>0xFFFFFEFFFFFFFFF7|- rs1_val == -1099511627777<br>                                                                                                                            |[0x80000b4c]:xori a1, a0, 8<br>      |
|[0x800025f8]<br>0xFFFFFDFFFFFFFC00|- rs1_val == -2199023255553<br>                                                                                                                            |[0x80000b60]:xori a1, a0, 1023<br>   |
|[0x80002600]<br>0xFFFFF7FFFFFFFFFB|- rs1_val == -8796093022209<br>                                                                                                                            |[0x80000b74]:xori a1, a0, 4<br>      |
|[0x80002608]<br>0x0000100000000200|- rs1_val == -17592186044417<br>                                                                                                                           |[0x80000b88]:xori a1, a0, 3583<br>   |
|[0x80002610]<br>0xFFFFBFFFFFFFFFFD|- rs1_val == -70368744177665<br>                                                                                                                           |[0x80000b9c]:xori a1, a0, 2<br>      |
|[0x80002618]<br>0x0000800000000007|- rs1_val == -140737488355329<br>                                                                                                                          |[0x80000bb0]:xori a1, a0, 4088<br>   |
|[0x80002620]<br>0xFFFEFFFFFFFFFFF7|- rs1_val == -281474976710657<br>                                                                                                                          |[0x80000bc4]:xori a1, a0, 8<br>      |
|[0x80002628]<br>0xFFFDFFFFFFFFFFFA|- rs1_val == -562949953421313<br>                                                                                                                          |[0x80000bd8]:xori a1, a0, 5<br>      |
|[0x80002630]<br>0x0004000000000001|- rs1_val == -1125899906842625<br>                                                                                                                         |[0x80000bec]:xori a1, a0, 4094<br>   |
|[0x80002648]<br>0xFFFFDFFFFFFFF800|- rs1_val == -35184372088833<br>                                                                                                                           |[0x80000c20]:xori a1, a0, 2047<br>   |
