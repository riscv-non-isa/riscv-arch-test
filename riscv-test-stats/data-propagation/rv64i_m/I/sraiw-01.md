
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x80000390', '0x80000c50')]      |
| SIG_REGION  | [('0x80002210', '0x80002768')]      |
| COV_LABELS  | ('sraiw',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/sraiw-01.S/sraiw-01.S    |

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

|            signature             |                                                             coverpoints                                                             |               code                |
|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
|[0x80002210]<br>0x0000000000000000|- rs1 : 0<br> - rd : 19<br> - rs1 != rd<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br> - imm_val == 29<br>                 |[0x800003a4]:srai s3, zero, 29<br> |
|[0x80002218]<br>0x0000000000000000|- rs1 : 17<br> - rd : 17<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br>                                      |[0x800003b0]:srai a7, a7, 9<br>    |
|[0x80002220]<br>0xFFFFFFFFF7FFFFFF|- rs1 : 10<br> - rd : 16<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -134217729<br>                                          |[0x800003c0]:srai a6, a0, 0<br>    |
|[0x80002228]<br>0x0000000000000000|- rs1 : 7<br> - rd : 11<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 281474976710656<br>                                      |[0x800003d0]:srai a1, t2, 0<br>    |
|[0x80002230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : 2<br> - rd : 30<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val < 0 and imm_val == 31<br>                   |[0x800003dc]:srai t5, sp, 31<br>   |
|[0x80002238]<br>0x0000000000000000|- rs1 : 29<br> - rd : 1<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 65536<br>                                               |[0x800003e8]:srai ra, t4, 31<br>   |
|[0x80002240]<br>0x0000000000000000|- rs1 : 30<br> - rd : 8<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br>                                                |[0x800003f4]:srai fp, t5, 5<br>    |
|[0x80002248]<br>0x0000000000000000|- rs1 : 15<br> - rd : 14<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br> |[0x80000404]:srai a4, a5, 7<br>    |
|[0x80002250]<br>0x0000000000000000|- rs1 : 23<br> - rd : 26<br>                                                                                                         |[0x80000410]:srai s10, s7, 6<br>   |
|[0x80002258]<br>0xFFFFFFFFFFFFFFFF|- rs1 : 27<br> - rd : 22<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br> |[0x80000424]:srai s6, s11, 7<br>   |
|[0x80002260]<br>0x0000000000000000|- rs1 : 1<br> - rd : 28<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br>                                  |[0x80000430]:srai t3, ra, 29<br>   |
|[0x80002268]<br>0xFFFFFFFFDFFFFFFF|- rs1 : 9<br> - rd : 21<br> - rs1_val == -1073741825<br> - imm_val == 1<br>                                                          |[0x80000440]:srai s5, s1, 1<br>    |
|[0x80002270]<br>0x0000000000000000|- rs1 : 22<br> - rd : 31<br> - rs1_val == 8796093022208<br> - imm_val == 2<br>                                                       |[0x80000450]:srai t6, s6, 2<br>    |
|[0x80002278]<br>0x0000000000000000|- rs1 : 5<br> - rd : 29<br> - rs1_val == 2199023255552<br> - imm_val == 4<br>                                                        |[0x80000460]:srai t4, t0, 4<br>    |
|[0x80002280]<br>0x0000000000000000|- rs1 : 28<br> - rd : 0<br> - rs1_val == -65<br> - imm_val == 8<br>                                                                  |[0x8000046c]:srai zero, t3, 8<br>  |
|[0x80002288]<br>0xFFFFFFFFFFFFFFFF|- rs1 : 12<br> - rd : 18<br> - rs1_val == -4398046511105<br> - imm_val == 16<br>                                                     |[0x80000480]:srai s2, a2, 16<br>   |
|[0x80002290]<br>0x0000000000000000|- rs1 : 4<br> - rd : 12<br> - rs1_val == 18014398509481984<br> - imm_val == 30<br>                                                   |[0x80000490]:srai a2, tp, 30<br>   |
|[0x80002298]<br>0x0000000000000000|- rs1 : 16<br> - rd : 9<br> - rs1_val == 512<br> - imm_val == 27<br>                                                                 |[0x8000049c]:srai s1, a6, 27<br>   |
|[0x800022a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : 14<br> - rd : 3<br> - rs1_val == -2<br> - imm_val == 23<br>                                                                  |[0x800004a8]:srai gp, a4, 23<br>   |
|[0x800022a8]<br>0xFFFFFFFFFFFFEFFF|- rs1 : 25<br> - rd : 23<br> - imm_val == 15<br>                                                                                     |[0x800004b8]:srai s7, s9, 15<br>   |
|[0x800022b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : 21<br> - rd : 13<br> - imm_val == 21<br>                                                                                     |[0x800004c4]:srai a3, s5, 21<br>   |
|[0x800022b8]<br>0xFFFFFFFFFFEAAAAA|- rs1 : 6<br> - rd : 24<br> - rs1_val == -6148914691236517206<br> - imm_val == 10<br>                                                |[0x800004f4]:srai s8, t1, 10<br>   |
|[0x800022c0]<br>0x0000000000000000|- rs1 : 18<br> - rd : 10<br> - rs1_val == 2<br>                                                                                      |[0x80000500]:srai a0, s2, 30<br>   |
|[0x800022c8]<br>0x0000000000000000|- rs1 : 11<br> - rd : 6<br> - rs1_val == 4<br>                                                                                       |[0x8000050c]:srai t1, a1, 3<br>    |
|[0x800022d0]<br>0x0000000000000000|- rs1 : 8<br> - rd : 7<br> - rs1_val == 8<br>                                                                                        |[0x80000518]:srai t2, fp, 9<br>    |
|[0x800022d8]<br>0x0000000000000000|- rs1 : 26<br> - rd : 5<br> - rs1_val == 16<br>                                                                                      |[0x80000524]:srai t0, s10, 29<br>  |
|[0x800022e0]<br>0x0000000000000000|- rs1 : 19<br> - rd : 2<br> - rs1_val == 32<br>                                                                                      |[0x80000530]:srai sp, s3, 27<br>   |
|[0x800022e8]<br>0x0000000000000000|- rs1 : 13<br> - rd : 20<br> - rs1_val == 64<br>                                                                                     |[0x8000053c]:srai s4, a3, 27<br>   |
|[0x800022f0]<br>0x0000000000000000|- rs1 : 20<br> - rd : 25<br> - rs1_val == 128<br>                                                                                    |[0x80000548]:srai s9, s4, 31<br>   |
|[0x800022f8]<br>0x0000000000000000|- rs1 : 24<br> - rd : 4<br> - rs1_val == 256<br>                                                                                     |[0x80000554]:srai tp, s8, 16<br>   |
|[0x80002300]<br>0x0000000000000000|- rs1 : 3<br> - rd : 27<br> - rs1_val == 1024<br>                                                                                    |[0x80000560]:srai s11, gp, 13<br>  |
|[0x80002308]<br>0x0000000000000000|- rs1 : 31<br> - rd : 15<br> - rs1_val == 2048<br>                                                                                   |[0x80000570]:srai a5, t6, 16<br>   |
|[0x80002310]<br>0x0000000000000020|- rs1_val == 4096<br>                                                                                                                |[0x8000057c]:srai a1, a0, 7<br>    |
|[0x80002318]<br>0x0000000000000000|- rs1_val == 8192<br>                                                                                                                |[0x80000588]:srai a1, a0, 31<br>   |
|[0x80002320]<br>0x0000000000000001|- rs1_val == 16384<br>                                                                                                               |[0x80000594]:srai a1, a0, 14<br>   |
|[0x80002328]<br>0x0000000000004000|- rs1_val == 32768<br>                                                                                                               |[0x800005a0]:srai a1, a0, 1<br>    |
|[0x80002330]<br>0x0000000000020000|- rs1_val == 131072<br>                                                                                                              |[0x800005ac]:srai a1, a0, 0<br>    |
|[0x80002338]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                              |[0x800005b8]:srai a1, a0, 23<br>   |
|[0x80002340]<br>0x0000000000000800|- rs1_val == 524288<br>                                                                                                              |[0x800005c4]:srai a1, a0, 8<br>    |
|[0x80002348]<br>0x0000000000000010|- rs1_val == 1048576<br>                                                                                                             |[0x800005d0]:srai a1, a0, 16<br>   |
|[0x80002350]<br>0x0000000000000200|- rs1_val == 2097152<br>                                                                                                             |[0x800005dc]:srai a1, a0, 12<br>   |
|[0x80002358]<br>0x0000000000000400|- rs1_val == 4194304<br>                                                                                                             |[0x800005e8]:srai a1, a0, 12<br>   |
|[0x80002360]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                             |[0x800005f4]:srai a1, a0, 31<br>   |
|[0x80002368]<br>0x0000000000100000|- rs1_val == 16777216<br>                                                                                                            |[0x80000600]:srai a1, a0, 4<br>    |
|[0x80002370]<br>0x0000000000080000|- rs1_val == 33554432<br>                                                                                                            |[0x8000060c]:srai a1, a0, 6<br>    |
|[0x80002378]<br>0x0000000000001000|- rs1_val == 67108864<br>                                                                                                            |[0x80000618]:srai a1, a0, 14<br>   |
|[0x80002380]<br>0x0000000000000200|- rs1_val == 134217728<br>                                                                                                           |[0x80000624]:srai a1, a0, 18<br>   |
|[0x80002388]<br>0x0000000000002000|- rs1_val == 268435456<br>                                                                                                           |[0x80000630]:srai a1, a0, 15<br>   |
|[0x80002390]<br>0x0000000000020000|- rs1_val == 536870912<br>                                                                                                           |[0x8000063c]:srai a1, a0, 12<br>   |
|[0x80002398]<br>0x0000000000080000|- rs1_val == 1073741824<br>                                                                                                          |[0x80000648]:srai a1, a0, 11<br>   |
|[0x800023a0]<br>0xFFFFFFFFF0000000|- rs1_val == 2147483648<br>                                                                                                          |[0x80000658]:srai a1, a0, 3<br>    |
|[0x800023a8]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                          |[0x80000668]:srai a1, a0, 9<br>    |
|[0x800023b0]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                          |[0x80000678]:srai a1, a0, 7<br>    |
|[0x800023b8]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                         |[0x80000688]:srai a1, a0, 30<br>   |
|[0x800023c0]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                         |[0x80000698]:srai a1, a0, 0<br>    |
|[0x800023c8]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                         |[0x800006a8]:srai a1, a0, 21<br>   |
|[0x800023d0]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                        |[0x800006b8]:srai a1, a0, 3<br>    |
|[0x800023d8]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                        |[0x800006c8]:srai a1, a0, 19<br>   |
|[0x800023e0]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                        |[0x800006d8]:srai a1, a0, 9<br>    |
|[0x800023e8]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                       |[0x800006e8]:srai a1, a0, 11<br>   |
|[0x800023f0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                       |[0x800006f8]:srai a1, a0, 14<br>   |
|[0x800023f8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                      |[0x80000708]:srai a1, a0, 29<br>   |
|[0x80002400]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                      |[0x80000718]:srai a1, a0, 29<br>   |
|[0x80002408]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                      |[0x80000728]:srai a1, a0, 5<br>    |
|[0x80002410]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                     |[0x80000738]:srai a1, a0, 12<br>   |
|[0x80002418]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                     |[0x80000748]:srai a1, a0, 6<br>    |
|[0x80002420]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                    |[0x80000758]:srai a1, a0, 16<br>   |
|[0x80002428]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                    |[0x80000768]:srai a1, a0, 21<br>   |
|[0x80002430]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                    |[0x80000778]:srai a1, a0, 4<br>    |
|[0x80002438]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                    |[0x80000788]:srai a1, a0, 30<br>   |
|[0x80002440]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                   |[0x80000798]:srai a1, a0, 29<br>   |
|[0x80002448]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                   |[0x800007a8]:srai a1, a0, 6<br>    |
|[0x80002450]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                  |[0x800007b8]:srai a1, a0, 12<br>   |
|[0x80002458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                      |[0x800007cc]:srai a1, a0, 27<br>   |
|[0x80002460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                      |[0x800007e0]:srai a1, a0, 3<br>    |
|[0x80002468]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                     |[0x800007f4]:srai a1, a0, 5<br>    |
|[0x80002470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                     |[0x80000808]:srai a1, a0, 11<br>   |
|[0x80002478]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                     |[0x8000081c]:srai a1, a0, 31<br>   |
|[0x80002480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                    |[0x80000830]:srai a1, a0, 6<br>    |
|[0x80002488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                    |[0x80000844]:srai a1, a0, 10<br>   |
|[0x80002490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                    |[0x80000858]:srai a1, a0, 9<br>    |
|[0x80002498]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                   |[0x8000086c]:srai a1, a0, 2<br>    |
|[0x800024a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                   |[0x80000880]:srai a1, a0, 7<br>    |
|[0x800024a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                   |[0x80000894]:srai a1, a0, 10<br>   |
|[0x800024b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                   |[0x800008a8]:srai a1, a0, 21<br>   |
|[0x800024b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                  |[0x800008bc]:srai a1, a0, 18<br>   |
|[0x800024c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                  |[0x800008d0]:srai a1, a0, 9<br>    |
|[0x800024c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                  |[0x800008e4]:srai a1, a0, 16<br>   |
|[0x800024d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                 |[0x800008f8]:srai a1, a0, 2<br>    |
|[0x800024d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                 |[0x8000090c]:srai a1, a0, 18<br>   |
|[0x800024e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                 |[0x80000920]:srai a1, a0, 18<br>   |
|[0x800024e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                |[0x80000934]:srai a1, a0, 12<br>   |
|[0x800024f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                |[0x80000948]:srai a1, a0, 12<br>   |
|[0x800024f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                |[0x8000095c]:srai a1, a0, 23<br>   |
|[0x80002500]<br>0x0000000000002AAA|- rs1_val == 6148914691236517205<br>                                                                                                 |[0x80000984]:srai a1, a0, 17<br>   |
|[0x80002508]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                  |[0x80000994]:srai a1, a0, 8<br>    |
|[0x80002510]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                  |[0x800009a4]:srai a1, a0, 16<br>   |
|[0x80002518]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                 |[0x800009b4]:srai a1, a0, 0<br>    |
|[0x80002520]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                 |[0x800009c4]:srai a1, a0, 6<br>    |
|[0x80002528]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                 |[0x800009d4]:srai a1, a0, 11<br>   |
|[0x80002530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                  |[0x800009e0]:srai a1, a0, 14<br>   |
|[0x80002538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                  |[0x800009ec]:srai a1, a0, 11<br>   |
|[0x80002540]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                  |[0x800009f8]:srai a1, a0, 4<br>    |
|[0x80002548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                 |[0x80000a04]:srai a1, a0, 19<br>   |
|[0x80002550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                 |[0x80000a10]:srai a1, a0, 30<br>   |
|[0x80002558]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -129<br>                                                                                                                |[0x80000a1c]:srai a1, a0, 0<br>    |
|[0x80002560]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -257<br>                                                                                                                |[0x80000a28]:srai a1, a0, 1<br>    |
|[0x80002568]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                |[0x80000a34]:srai a1, a0, 31<br>   |
|[0x80002570]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                               |[0x80000a40]:srai a1, a0, 21<br>   |
|[0x80002578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                               |[0x80000a50]:srai a1, a0, 13<br>   |
|[0x80002580]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                               |[0x80000a60]:srai a1, a0, 16<br>   |
|[0x80002588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                               |[0x80000a70]:srai a1, a0, 23<br>   |
|[0x80002590]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -16385<br>                                                                                                              |[0x80000a80]:srai a1, a0, 6<br>    |
|[0x80002598]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -32769<br>                                                                                                              |[0x80000a90]:srai a1, a0, 16<br>   |
|[0x800025a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65537<br>                                                                                                              |[0x80000aa0]:srai a1, a0, 31<br>   |
|[0x800025a8]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -131073<br>                                                                                                             |[0x80000ab0]:srai a1, a0, 11<br>   |
|[0x800025b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -262145<br>                                                                                                             |[0x80000ac0]:srai a1, a0, 31<br>   |
|[0x800025b8]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -524289<br>                                                                                                             |[0x80000ad0]:srai a1, a0, 5<br>    |
|[0x800025c0]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -1048577<br>                                                                                                            |[0x80000ae0]:srai a1, a0, 12<br>   |
|[0x800025c8]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -2097153<br>                                                                                                            |[0x80000af0]:srai a1, a0, 19<br>   |
|[0x800025d0]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -4194305<br>                                                                                                            |[0x80000b00]:srai a1, a0, 5<br>    |
|[0x800025d8]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -8388609<br>                                                                                                            |[0x80000b10]:srai a1, a0, 10<br>   |
|[0x800025e0]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -16777217<br>                                                                                                           |[0x80000b20]:srai a1, a0, 17<br>   |
|[0x800025e8]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                           |[0x80000b30]:srai a1, a0, 0<br>    |
|[0x800025f0]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -67108865<br>                                                                                                           |[0x80000b40]:srai a1, a0, 10<br>   |
|[0x800025f8]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -268435457<br>                                                                                                          |[0x80000b50]:srai a1, a0, 17<br>   |
|[0x80002600]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -536870913<br>                                                                                                          |[0x80000b60]:srai a1, a0, 29<br>   |
|[0x80002608]<br>0x000000000007FFFF|- rs1_val == -2147483649<br>                                                                                                         |[0x80000b74]:srai a1, a0, 12<br>   |
|[0x80002610]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                         |[0x80000b88]:srai a1, a0, 5<br>    |
|[0x80002618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                         |[0x80000b9c]:srai a1, a0, 2<br>    |
|[0x80002620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                        |[0x80000bb0]:srai a1, a0, 12<br>   |
|[0x80002628]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                        |[0x80000bc4]:srai a1, a0, 17<br>   |
|[0x80002630]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                        |[0x80000bd8]:srai a1, a0, 31<br>   |
|[0x80002638]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                       |[0x80000bec]:srai a1, a0, 12<br>   |
|[0x80002640]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                       |[0x80000c00]:srai a1, a0, 5<br>    |
|[0x80002648]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                      |[0x80000c14]:srai a1, a0, 11<br>   |
|[0x80002650]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                       |[0x80000c28]:srai a1, a0, 29<br>   |
