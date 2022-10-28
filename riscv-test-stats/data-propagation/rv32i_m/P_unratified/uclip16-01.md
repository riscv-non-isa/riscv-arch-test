
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000570')]      |
| SIG_REGION                | [('0x80002210', '0x800023e0', '116 words')]      |
| COV_LABELS                | uclip16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uclip16-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 57      |
| STAT1                     | 56      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000054c]:UCLIP16 t6, t5, 9
      [0x80000550]:csrrs t5, vxsat, zero
      [0x80000554]:sw t6, 280(gp)
 -- Signature Address: 0x800023c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : uclip16
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 9
      - rs1_h1_val == 0
      - rs1_h0_val == 65023






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

|s.no|        signature         |                                                               coverpoints                                                               |                                                     code                                                     |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : uclip16<br> - rs1 : x11<br> - rd : x11<br> - rs1 == rd<br> - rs1_h0_val == 0<br> - imm_val == 7<br> - rs1_h1_val == 65503<br> |[0x80000110]:UCLIP16 a1, a1, 7<br> [0x80000114]:csrrs a1, vxsat, zero<br> [0x80000118]:sw a1, 0(t0)<br>       |
|   2|[0x80002218]<br>0x00000011|- rs1 : x16<br> - rd : x26<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h1_val == 65527<br>                                             |[0x80000124]:UCLIP16 s10, a6, 15<br> [0x80000128]:csrrs a6, vxsat, zero<br> [0x8000012c]:sw s10, 8(t0)<br>    |
|   3|[0x80002220]<br>0x00000000|- rs1 : x17<br> - rd : x6<br> - imm_val == 14<br> - rs1_h1_val == 0<br> - rs1_h0_val == 64511<br>                                        |[0x80000138]:UCLIP16 t1, a7, 14<br> [0x8000013c]:csrrs a7, vxsat, zero<br> [0x80000140]:sw t1, 16(t0)<br>     |
|   4|[0x80002228]<br>0x00100005|- rs1 : x18<br> - rd : x10<br> - imm_val == 13<br> - rs1_h1_val == 16<br>                                                                |[0x8000014c]:UCLIP16 a0, s2, 13<br> [0x80000150]:csrrs s2, vxsat, zero<br> [0x80000154]:sw a0, 24(t0)<br>     |
|   5|[0x80002230]<br>0x01000000|- rs1 : x14<br> - rd : x20<br> - imm_val == 12<br> - rs1_h1_val == 256<br> - rs1_h0_val == 61439<br>                                     |[0x80000160]:UCLIP16 s4, a4, 12<br> [0x80000164]:csrrs a4, vxsat, zero<br> [0x80000168]:sw s4, 32(t0)<br>     |
|   6|[0x80002238]<br>0x00090000|- rs1 : x10<br> - rd : x15<br> - imm_val == 11<br> - rs1_h0_val == 65279<br>                                                             |[0x80000174]:UCLIP16 a5, a0, 11<br> [0x80000178]:csrrs a0, vxsat, zero<br> [0x8000017c]:sw a5, 40(t0)<br>     |
|   7|[0x80002240]<br>0x000F000B|- rs1 : x28<br> - rd : x3<br> - imm_val == 10<br>                                                                                        |[0x80000188]:UCLIP16 gp, t3, 10<br> [0x8000018c]:csrrs t3, vxsat, zero<br> [0x80000190]:sw gp, 48(t0)<br>     |
|   8|[0x80002248]<br>0x00000000|- rs1 : x1<br> - rd : x0<br> - imm_val == 9<br> - rs1_h0_val == 65023<br>                                                                |[0x8000019c]:UCLIP16 zero, ra, 9<br> [0x800001a0]:csrrs ra, vxsat, zero<br> [0x800001a4]:sw zero, 56(t0)<br>  |
|   9|[0x80002250]<br>0x00FF00FF|- rs1 : x25<br> - rd : x9<br> - imm_val == 8<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 8192<br>                                       |[0x800001ac]:UCLIP16 s1, s9, 8<br> [0x800001b0]:csrrs s9, vxsat, zero<br> [0x800001b4]:sw s1, 64(t0)<br>      |
|  10|[0x80002258]<br>0x00000010|- rs1 : x27<br> - rd : x13<br> - imm_val == 6<br> - rs1_h0_val == 16<br>                                                                 |[0x800001c0]:UCLIP16 a3, s11, 6<br> [0x800001c4]:csrrs s11, vxsat, zero<br> [0x800001c8]:sw a3, 72(t0)<br>    |
|  11|[0x80002260]<br>0x00000000|- rs1 : x21<br> - rd : x23<br> - imm_val == 5<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 65407<br>                                    |[0x800001d4]:UCLIP16 s7, s5, 5<br> [0x800001d8]:csrrs s5, vxsat, zero<br> [0x800001dc]:sw s7, 80(t0)<br>      |
|  12|[0x80002268]<br>0x000F0000|- rs1 : x26<br> - rd : x30<br> - imm_val == 4<br> - rs1_h0_val == 57343<br>                                                              |[0x800001e8]:UCLIP16 t5, s10, 4<br> [0x800001ec]:csrrs s10, vxsat, zero<br> [0x800001f0]:sw t5, 88(t0)<br>    |
|  13|[0x80002270]<br>0x00070007|- rs1 : x15<br> - rd : x22<br> - imm_val == 3<br> - rs1_h0_val == 8<br>                                                                  |[0x800001fc]:UCLIP16 s6, a5, 3<br> [0x80000200]:csrrs a5, vxsat, zero<br> [0x80000204]:sw s6, 96(t0)<br>      |
|  14|[0x80002278]<br>0x00030000|- rs1 : x6<br> - rd : x8<br> - imm_val == 2<br> - rs1_h0_val == 65535<br>                                                                |[0x80000210]:UCLIP16 fp, t1, 2<br> [0x80000214]:csrrs t1, vxsat, zero<br> [0x80000218]:sw fp, 104(t0)<br>     |
|  15|[0x80002280]<br>0x00010000|- rs1 : x8<br> - rd : x2<br> - imm_val == 1<br> - rs1_h0_val == 43690<br>                                                                |[0x80000224]:UCLIP16 sp, fp, 1<br> [0x80000228]:csrrs fp, vxsat, zero<br> [0x8000022c]:sw sp, 112(t0)<br>     |
|  16|[0x80002288]<br>0x00000000|- rs1 : x19<br> - rd : x25<br> - imm_val == 0<br> - rs1_h0_val == 65503<br>                                                              |[0x80000238]:UCLIP16 s9, s3, 0<br> [0x8000023c]:csrrs s3, vxsat, zero<br> [0x80000240]:sw s9, 120(t0)<br>     |
|  17|[0x80002290]<br>0x00000007|- rs1 : x23<br> - rd : x16<br> - rs1_h1_val == 43690<br>                                                                                 |[0x8000024c]:UCLIP16 a6, s7, 12<br> [0x80000250]:csrrs s7, vxsat, zero<br> [0x80000254]:sw a6, 128(t0)<br>    |
|  18|[0x80002298]<br>0x001F0010|- rs1 : x3<br> - rd : x7<br> - rs1_h1_val == 21845<br>                                                                                   |[0x80000260]:UCLIP16 t2, gp, 5<br> [0x80000264]:csrrs gp, vxsat, zero<br> [0x80000268]:sw t2, 136(t0)<br>     |
|  19|[0x800022a0]<br>0x003F003F|- rs1 : x29<br> - rd : x4<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 32767<br>                                                        |[0x80000274]:UCLIP16 tp, t4, 6<br> [0x80000278]:csrrs t4, vxsat, zero<br> [0x8000027c]:sw tp, 144(t0)<br>     |
|  20|[0x800022a8]<br>0x00000000|- rs1 : x12<br> - rd : x27<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 65527<br>                                                       |[0x80000288]:UCLIP16 s11, a2, 15<br> [0x8000028c]:csrrs a2, vxsat, zero<br> [0x80000290]:sw s11, 152(t0)<br>  |
|  21|[0x800022b0]<br>0x00000001|- rs1 : x5<br> - rd : x14<br> - rs1_h1_val == 57343<br>                                                                                  |[0x800002a4]:UCLIP16 a4, t0, 1<br> [0x800002a8]:csrrs t0, vxsat, zero<br> [0x800002ac]:sw a4, 0(gp)<br>       |
|  22|[0x800022b8]<br>0x00000008|- rs1 : x24<br> - rd : x29<br> - rs1_h1_val == 61439<br>                                                                                 |[0x800002b8]:UCLIP16 t4, s8, 8<br> [0x800002bc]:csrrs s8, vxsat, zero<br> [0x800002c0]:sw t4, 8(gp)<br>       |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x0<br> - rd : x1<br>                                                                                                             |[0x800002cc]:UCLIP16 ra, zero, 15<br> [0x800002d0]:csrrs zero, vxsat, zero<br> [0x800002d4]:sw ra, 16(gp)<br> |
|  24|[0x800022c8]<br>0x00000010|- rs1 : x31<br> - rd : x19<br> - rs1_h1_val == 64511<br>                                                                                 |[0x800002e0]:UCLIP16 s3, t6, 13<br> [0x800002e4]:csrrs t6, vxsat, zero<br> [0x800002e8]:sw s3, 24(gp)<br>     |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x9<br> - rd : x21<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 49151<br>                                                        |[0x800002f4]:UCLIP16 s5, s1, 0<br> [0x800002f8]:csrrs s1, vxsat, zero<br> [0x800002fc]:sw s5, 32(gp)<br>      |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x7<br> - rd : x31<br> - rs1_h1_val == 65407<br>                                                                                  |[0x80000308]:UCLIP16 t6, t2, 9<br> [0x8000030c]:csrrs t2, vxsat, zero<br> [0x80000310]:sw t6, 40(gp)<br>      |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x2<br> - rd : x5<br> - rs1_h1_val == 65471<br>                                                                                   |[0x80000318]:UCLIP16 t0, sp, 13<br> [0x8000031c]:csrrs sp, vxsat, zero<br> [0x80000320]:sw t0, 48(gp)<br>     |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x30<br> - rd : x24<br> - rs1_h1_val == 65519<br>                                                                                 |[0x8000032c]:UCLIP16 s8, t5, 6<br> [0x80000330]:csrrs t5, vxsat, zero<br> [0x80000334]:sw s8, 56(gp)<br>      |
|  29|[0x800022f0]<br>0x00000000|- rs1 : x13<br> - rd : x12<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 65531<br>                                                       |[0x80000340]:UCLIP16 a2, a3, 11<br> [0x80000344]:csrrs a3, vxsat, zero<br> [0x80000348]:sw a2, 64(gp)<br>     |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x4<br> - rd : x28<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 32768<br>                                                        |[0x80000350]:UCLIP16 t3, tp, 7<br> [0x80000354]:csrrs tp, vxsat, zero<br> [0x80000358]:sw t3, 72(gp)<br>      |
|  31|[0x80002300]<br>0x00000001|- rs1 : x22<br> - rd : x18<br> - rs1_h1_val == 65534<br> - rs1_h0_val == 1<br>                                                           |[0x80000364]:UCLIP16 s2, s6, 12<br> [0x80000368]:csrrs s6, vxsat, zero<br> [0x8000036c]:sw s2, 80(gp)<br>     |
|  32|[0x80002308]<br>0x00010000|- rs1 : x20<br> - rd : x17<br> - rs1_h0_val == 65471<br>                                                                                 |[0x80000378]:UCLIP16 a7, s4, 1<br> [0x8000037c]:csrrs s4, vxsat, zero<br> [0x80000380]:sw a7, 88(gp)<br>      |
|  33|[0x80002310]<br>0x00000000|- rs1_h0_val == 65519<br>                                                                                                                |[0x8000038c]:UCLIP16 t6, t5, 4<br> [0x80000390]:csrrs t5, vxsat, zero<br> [0x80000394]:sw t6, 96(gp)<br>      |
|  34|[0x80002318]<br>0x00000000|- rs1_h0_val == 65533<br>                                                                                                                |[0x800003a0]:UCLIP16 t6, t5, 5<br> [0x800003a4]:csrrs t5, vxsat, zero<br> [0x800003a8]:sw t6, 104(gp)<br>     |
|  35|[0x80002320]<br>0x0001001F|- rs1_h1_val == 1<br> - rs1_h0_val == 16384<br>                                                                                          |[0x800003b0]:UCLIP16 t6, t5, 5<br> [0x800003b4]:csrrs t5, vxsat, zero<br> [0x800003b8]:sw t6, 112(gp)<br>     |
|  36|[0x80002328]<br>0x0002000F|- rs1_h1_val == 2<br> - rs1_h0_val == 4096<br>                                                                                           |[0x800003c0]:UCLIP16 t6, t5, 4<br> [0x800003c4]:csrrs t5, vxsat, zero<br> [0x800003c8]:sw t6, 120(gp)<br>     |
|  37|[0x80002330]<br>0x00000800|- rs1_h0_val == 2048<br>                                                                                                                 |[0x800003d4]:UCLIP16 t6, t5, 14<br> [0x800003d8]:csrrs t5, vxsat, zero<br> [0x800003dc]:sw t6, 128(gp)<br>    |
|  38|[0x80002338]<br>0x003F003F|- rs1_h0_val == 1024<br>                                                                                                                 |[0x800003e8]:UCLIP16 t6, t5, 6<br> [0x800003ec]:csrrs t5, vxsat, zero<br> [0x800003f0]:sw t6, 136(gp)<br>     |
|  39|[0x80002340]<br>0x0009000F|- rs1_h0_val == 512<br>                                                                                                                  |[0x800003fc]:UCLIP16 t6, t5, 4<br> [0x80000400]:csrrs t5, vxsat, zero<br> [0x80000404]:sw t6, 144(gp)<br>     |
|  40|[0x80002348]<br>0x00070007|- rs1_h1_val == 32<br> - rs1_h0_val == 256<br>                                                                                           |[0x80000410]:UCLIP16 t6, t5, 3<br> [0x80000414]:csrrs t5, vxsat, zero<br> [0x80000418]:sw t6, 152(gp)<br>     |
|  41|[0x80002350]<br>0x000F000F|- rs1_h1_val == 128<br> - rs1_h0_val == 128<br>                                                                                          |[0x80000424]:UCLIP16 t6, t5, 4<br> [0x80000428]:csrrs t5, vxsat, zero<br> [0x8000042c]:sw t6, 160(gp)<br>     |
|  42|[0x80002358]<br>0x007F0040|- rs1_h1_val == 8192<br> - rs1_h0_val == 64<br>                                                                                          |[0x80000438]:UCLIP16 t6, t5, 7<br> [0x8000043c]:csrrs t5, vxsat, zero<br> [0x80000440]:sw t6, 168(gp)<br>     |
|  43|[0x80002360]<br>0x00000000|- rs1_h1_val == 32768<br>                                                                                                                |[0x8000044c]:UCLIP16 t6, t5, 14<br> [0x80000450]:csrrs t5, vxsat, zero<br> [0x80000454]:sw t6, 176(gp)<br>    |
|  44|[0x80002368]<br>0x07FF0000|- rs1_h1_val == 16384<br> - rs1_h0_val == 65534<br>                                                                                      |[0x80000460]:UCLIP16 t6, t5, 11<br> [0x80000464]:csrrs t5, vxsat, zero<br> [0x80000468]:sw t6, 184(gp)<br>    |
|  45|[0x80002370]<br>0x03FF000C|- rs1_h1_val == 4096<br>                                                                                                                 |[0x80000474]:UCLIP16 t6, t5, 10<br> [0x80000478]:csrrs t5, vxsat, zero<br> [0x8000047c]:sw t6, 192(gp)<br>    |
|  46|[0x80002378]<br>0x00000000|- rs1_h1_val == 2048<br>                                                                                                                 |[0x80000488]:UCLIP16 t6, t5, 0<br> [0x8000048c]:csrrs t5, vxsat, zero<br> [0x80000490]:sw t6, 200(gp)<br>     |
|  47|[0x80002380]<br>0x001F0011|- rs1_h1_val == 512<br>                                                                                                                  |[0x8000049c]:UCLIP16 t6, t5, 5<br> [0x800004a0]:csrrs t5, vxsat, zero<br> [0x800004a4]:sw t6, 208(gp)<br>     |
|  48|[0x80002388]<br>0x00400000|- rs1_h1_val == 64<br>                                                                                                                   |[0x800004b0]:UCLIP16 t6, t5, 12<br> [0x800004b4]:csrrs t5, vxsat, zero<br> [0x800004b8]:sw t6, 216(gp)<br>    |
|  49|[0x80002390]<br>0x00080000|- rs1_h1_val == 8<br>                                                                                                                    |[0x800004c4]:UCLIP16 t6, t5, 12<br> [0x800004c8]:csrrs t5, vxsat, zero<br> [0x800004cc]:sw t6, 224(gp)<br>    |
|  50|[0x80002398]<br>0x00040000|- rs1_h1_val == 4<br> - rs1_h0_val == 63487<br>                                                                                          |[0x800004d8]:UCLIP16 t6, t5, 8<br> [0x800004dc]:csrrs t5, vxsat, zero<br> [0x800004e0]:sw t6, 232(gp)<br>     |
|  51|[0x800023a0]<br>0x04000020|- rs1_h0_val == 32<br>                                                                                                                   |[0x800004ec]:UCLIP16 t6, t5, 12<br> [0x800004f0]:csrrs t5, vxsat, zero<br> [0x800004f4]:sw t6, 240(gp)<br>    |
|  52|[0x800023a8]<br>0x0000000A|- rs1_h1_val == 65535<br>                                                                                                                |[0x80000500]:UCLIP16 t6, t5, 11<br> [0x80000504]:csrrs t5, vxsat, zero<br> [0x80000508]:sw t6, 248(gp)<br>    |
|  53|[0x800023b0]<br>0x00000004|- rs1_h0_val == 4<br>                                                                                                                    |[0x80000510]:UCLIP16 t6, t5, 4<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 256(gp)<br>     |
|  54|[0x800023b8]<br>0x003F0002|- rs1_h0_val == 2<br>                                                                                                                    |[0x80000524]:UCLIP16 t6, t5, 6<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 264(gp)<br>     |
|  55|[0x800023c0]<br>0x0000007F|- rs1_h0_val == 21845<br>                                                                                                                |[0x80000538]:UCLIP16 t6, t5, 7<br> [0x8000053c]:csrrs t5, vxsat, zero<br> [0x80000540]:sw t6, 272(gp)<br>     |
|  56|[0x800023d0]<br>0x00000000|- rs1_h1_val == 63487<br>                                                                                                                |[0x80000560]:UCLIP16 t6, t5, 15<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 288(gp)<br>    |
