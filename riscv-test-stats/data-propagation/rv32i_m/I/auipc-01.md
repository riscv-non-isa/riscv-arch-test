
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800003a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002314')]      |
| COV_LABELS                | ('auipc',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/auipc-01.S/auipc-01.S    |
| Total Unique Coverpoints  | 36      |
| Total Signature Updates   | 30      |
| Ops w/o unique coverpoints | 3      |
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

|s.no|        signature         |                                             coverpoints                                              |                                                                                            code                                                                                            |
|---:|--------------------------|------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : auipc<br> - rd : x9<br> - imm_val > 0<br> - rd : x21<br> - imm_val == 0<br> - rd : x11<br> |[0x800000f8]:auipc s1, 2<br> [0x800000fc]:addi s1, s1, 280<br> [0x80000100]:auipc s5, 0<br> [0x80000104]:auipc a1, 0<br> [0x80000108]:addi a1, a1, 4092<br> [0x8000010c]:sub s5, s5, a1<br> |
|   2|[0x80002214]<br>0x00002000|- rd : x27<br>                                                                                        |[0x80000114]:auipc s11, 2<br> [0x80000118]:auipc a1, 0<br> [0x8000011c]:addi a1, a1, 4092<br> [0x80000120]:sub s11, s11, a1<br>                                                             |
|   3|[0x80002218]<br>0xFFFFF000|- rd : x19<br> - imm_val == ((2**20)-1)<br>                                                           |[0x80000128]:auipc s3, 1048575<br> [0x8000012c]:auipc a1, 0<br> [0x80000130]:addi a1, a1, 4092<br> [0x80000134]:sub s3, s3, a1<br>                                                          |
|   4|[0x8000221c]<br>0x00000000|- rd : x7<br>                                                                                         |[0x8000013c]:auipc t2, 0<br> [0x80000140]:auipc a1, 0<br> [0x80000144]:addi a1, a1, 4092<br> [0x80000148]:sub t2, t2, a1<br>                                                                |
|   5|[0x80002220]<br>0x00000000|- rd : x0<br>                                                                                         |[0x80000150]:auipc zero, 0<br> [0x80000154]:auipc a1, 0<br> [0x80000158]:addi a1, a1, 4092<br> [0x8000015c]:sub zero, zero, a1<br>                                                          |
|   6|[0x80002224]<br>0x00000000|- rd : x6<br>                                                                                         |[0x80000164]:auipc t1, 0<br> [0x80000168]:auipc a1, 0<br> [0x8000016c]:addi a1, a1, 4092<br> [0x80000170]:sub t1, t1, a1<br>                                                                |
|   7|[0x80002228]<br>0x00000000|- rd : x23<br>                                                                                        |[0x80000178]:auipc s7, 0<br> [0x8000017c]:auipc a1, 0<br> [0x80000180]:addi a1, a1, 4092<br> [0x80000184]:sub s7, s7, a1<br>                                                                |
|   8|[0x8000222c]<br>0x00000000|- rd : x16<br>                                                                                        |[0x8000018c]:auipc a6, 0<br> [0x80000190]:auipc a1, 0<br> [0x80000194]:addi a1, a1, 4092<br> [0x80000198]:sub a6, a6, a1<br>                                                                |
|   9|[0x80002230]<br>0x00000000|- rd : x18<br>                                                                                        |[0x800001a0]:auipc s2, 0<br> [0x800001a4]:auipc a1, 0<br> [0x800001a8]:addi a1, a1, 4092<br> [0x800001ac]:sub s2, s2, a1<br>                                                                |
|  10|[0x80002234]<br>0x00000000|- rd : x4<br>                                                                                         |[0x800001b4]:auipc tp, 0<br> [0x800001b8]:auipc a1, 0<br> [0x800001bc]:addi a1, a1, 4092<br> [0x800001c0]:sub tp, tp, a1<br>                                                                |
|  11|[0x80002238]<br>0x00000000|- rd : x2<br>                                                                                         |[0x800001c8]:auipc sp, 0<br> [0x800001cc]:auipc a1, 0<br> [0x800001d0]:addi a1, a1, 4092<br> [0x800001d4]:sub sp, sp, a1<br>                                                                |
|  12|[0x8000223c]<br>0x00000000|- rd : x26<br>                                                                                        |[0x800001dc]:auipc s10, 0<br> [0x800001e0]:auipc a1, 0<br> [0x800001e4]:addi a1, a1, 4092<br> [0x800001e8]:sub s10, s10, a1<br>                                                             |
|  13|[0x80002240]<br>0x00000000|- rd : x15<br>                                                                                        |[0x800001f0]:auipc a5, 0<br> [0x800001f4]:auipc a1, 0<br> [0x800001f8]:addi a1, a1, 4092<br> [0x800001fc]:sub a5, a5, a1<br>                                                                |
|  14|[0x80002244]<br>0x00000000|- rd : x13<br>                                                                                        |[0x80000204]:auipc a3, 0<br> [0x80000208]:auipc a1, 0<br> [0x8000020c]:addi a1, a1, 4092<br> [0x80000210]:sub a3, a3, a1<br>                                                                |
|  15|[0x80002248]<br>0x00000000|- rd : x20<br>                                                                                        |[0x80000218]:auipc s4, 0<br> [0x8000021c]:auipc a1, 0<br> [0x80000220]:addi a1, a1, 4092<br> [0x80000224]:sub s4, s4, a1<br>                                                                |
|  16|[0x8000224c]<br>0x00000000|- rd : x5<br>                                                                                         |[0x8000022c]:auipc t0, 0<br> [0x80000230]:auipc a1, 0<br> [0x80000234]:addi a1, a1, 4092<br> [0x80000238]:sub t0, t0, a1<br>                                                                |
|  17|[0x80002250]<br>0x00000000|- rd : x25<br>                                                                                        |[0x80000240]:auipc s9, 0<br> [0x80000244]:auipc a1, 0<br> [0x80000248]:addi a1, a1, 4092<br> [0x8000024c]:sub s9, s9, a1<br>                                                                |
|  18|[0x80002254]<br>0x00000000|- rd : x1<br>                                                                                         |[0x80000254]:auipc ra, 0<br> [0x80000258]:auipc a1, 0<br> [0x8000025c]:addi a1, a1, 4092<br> [0x80000260]:sub ra, ra, a1<br>                                                                |
|  19|[0x80002258]<br>0x00000000|- rd : x31<br>                                                                                        |[0x80000268]:auipc t6, 0<br> [0x8000026c]:auipc a1, 0<br> [0x80000270]:addi a1, a1, 4092<br> [0x80000274]:sub t6, t6, a1<br>                                                                |
|  20|[0x8000225c]<br>0x00000000|- rd : x24<br>                                                                                        |[0x8000027c]:auipc s8, 0<br> [0x80000280]:auipc a1, 0<br> [0x80000284]:addi a1, a1, 4092<br> [0x80000288]:sub s8, s8, a1<br>                                                                |
|  21|[0x80002260]<br>0x00000000|- rd : x8<br>                                                                                         |[0x80000290]:auipc fp, 0<br> [0x80000294]:auipc a1, 0<br> [0x80000298]:addi a1, a1, 4092<br> [0x8000029c]:sub fp, fp, a1<br>                                                                |
|  22|[0x80002264]<br>0x00000000|- rd : x17<br>                                                                                        |[0x800002a4]:auipc a7, 0<br> [0x800002a8]:auipc a1, 0<br> [0x800002ac]:addi a1, a1, 4092<br> [0x800002b0]:sub a7, a7, a1<br>                                                                |
|  23|[0x80002268]<br>0x00000000|- rd : x30<br>                                                                                        |[0x800002b8]:auipc t5, 0<br> [0x800002bc]:auipc a1, 0<br> [0x800002c0]:addi a1, a1, 4092<br> [0x800002c4]:sub t5, t5, a1<br>                                                                |
|  24|[0x8000226c]<br>0x00000000|- rd : x12<br>                                                                                        |[0x800002cc]:auipc a2, 0<br> [0x800002d0]:auipc a1, 0<br> [0x800002d4]:addi a1, a1, 4092<br> [0x800002d8]:sub a2, a2, a1<br>                                                                |
|  25|[0x80002270]<br>0x00000000|- rd : x3<br>                                                                                         |[0x800002e0]:auipc gp, 0<br> [0x800002e4]:auipc a1, 0<br> [0x800002e8]:addi a1, a1, 4092<br> [0x800002ec]:sub gp, gp, a1<br>                                                                |
|  26|[0x80002274]<br>0x00000000|- rd : x10<br>                                                                                        |[0x800002f4]:auipc a0, 0<br> [0x800002f8]:auipc a1, 0<br> [0x800002fc]:addi a1, a1, 4092<br> [0x80000300]:sub a0, a0, a1<br>                                                                |
|  27|[0x80002278]<br>0x00000000|- rd : x22<br>                                                                                        |[0x80000308]:auipc s6, 0<br> [0x8000030c]:auipc a1, 0<br> [0x80000310]:addi a1, a1, 4092<br> [0x80000314]:sub s6, s6, a1<br>                                                                |
|  28|[0x8000227c]<br>0x00000000|- rd : x29<br>                                                                                        |[0x8000031c]:auipc t4, 0<br> [0x80000320]:auipc a1, 0<br> [0x80000324]:addi a1, a1, 4092<br> [0x80000328]:sub t4, t4, a1<br>                                                                |
|  29|[0x80002280]<br>0x00000000|- rd : x28<br>                                                                                        |[0x80000330]:auipc t3, 0<br> [0x80000334]:auipc sp, 0<br> [0x80000338]:addi sp, sp, 4092<br> [0x8000033c]:sub t3, t3, sp<br>                                                                |
|  30|[0x8000228c]<br>0x00000000|- rd : x14<br>                                                                                        |[0x80000374]:auipc a4, 0<br> [0x80000378]:auipc sp, 0<br> [0x8000037c]:addi sp, sp, 4092<br> [0x80000380]:sub a4, a4, sp<br>                                                                |
