
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000550')]      |
| SIG_REGION                | [('0x80002210', '0x800023d0', '112 words')]      |
| COV_LABELS                | kslli16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslli16-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 55      |
| STAT1                     | 53      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c0]:KSLLI16 t6, t5, 2
      [0x800004c4]:csrrs t5, vxsat, zero
      [0x800004c8]:sw t6, 224(ra)
 -- Signature Address: 0x80002390 Data: 0x10000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslli16
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 2
      - rs1_h1_val == 1024
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000538]:KSLLI16 t6, t5, 1
      [0x8000053c]:csrrs t5, vxsat, zero
      [0x80000540]:sw t6, 272(ra)
 -- Signature Address: 0x800023c0 Data: 0xFF7E0800
 -- Redundant Coverpoints hit by the op
      - opcode : kslli16
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 1
      - rs1_h1_val == -65
      - rs1_h0_val == 1024






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

|s.no|        signature         |                                                                 coverpoints                                                                 |                                                    code                                                     |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : kslli16<br> - rs1 : x24<br> - rd : x24<br> - rs1 == rd<br> - rs1_h0_val == -32768<br> - imm_val == 5<br> - rs1_h1_val == 8192<br> |[0x80000110]:KSLLI16 s8, s8, 5<br> [0x80000114]:csrrs s8, vxsat, zero<br> [0x80000118]:sw s8, 0(a4)<br>      |
|   2|[0x80002218]<br>0x80007FFF|- rs1 : x1<br> - rd : x21<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h0_val == 16384<br>                                                  |[0x80000120]:KSLLI16 s5, ra, 15<br> [0x80000124]:csrrs ra, vxsat, zero<br> [0x80000128]:sw s5, 8(a4)<br>     |
|   3|[0x80002220]<br>0x80008000|- rs1 : x31<br> - rd : x7<br> - imm_val == 14<br> - rs1_h1_val == -17<br>                                                                    |[0x80000134]:KSLLI16 t2, t6, 14<br> [0x80000138]:csrrs t6, vxsat, zero<br> [0x8000013c]:sw t2, 16(a4)<br>    |
|   4|[0x80002228]<br>0x80007FFF|- rs1 : x23<br> - rd : x3<br> - imm_val == 13<br>                                                                                            |[0x80000148]:KSLLI16 gp, s7, 13<br> [0x8000014c]:csrrs s7, vxsat, zero<br> [0x80000150]:sw gp, 24(a4)<br>    |
|   5|[0x80002230]<br>0x80009000|- rs1 : x7<br> - rd : x20<br> - imm_val == 12<br>                                                                                            |[0x8000015c]:KSLLI16 s4, t2, 12<br> [0x80000160]:csrrs t2, vxsat, zero<br> [0x80000164]:sw s4, 32(a4)<br>    |
|   6|[0x80002238]<br>0x7FFFC800|- rs1 : x17<br> - rd : x18<br> - imm_val == 11<br> - rs1_h1_val == 2048<br>                                                                  |[0x80000170]:KSLLI16 s2, a7, 11<br> [0x80000174]:csrrs a7, vxsat, zero<br> [0x80000178]:sw s2, 40(a4)<br>    |
|   7|[0x80002240]<br>0x7FFF8000|- rs1 : x4<br> - rd : x11<br> - imm_val == 10<br> - rs1_h1_val == 32<br> - rs1_h0_val == -2049<br>                                           |[0x80000184]:KSLLI16 a1, tp, 10<br> [0x80000188]:csrrs tp, vxsat, zero<br> [0x8000018c]:sw a1, 48(a4)<br>    |
|   8|[0x80002248]<br>0x0C008000|- rs1 : x12<br> - rd : x31<br> - imm_val == 9<br> - rs1_h0_val == -8193<br>                                                                  |[0x80000198]:KSLLI16 t6, a2, 9<br> [0x8000019c]:csrrs a2, vxsat, zero<br> [0x800001a0]:sw t6, 56(a4)<br>     |
|   9|[0x80002250]<br>0x7FFFFE00|- rs1 : x6<br> - rd : x5<br> - imm_val == 8<br> - rs1_h1_val == 256<br> - rs1_h0_val == -2<br>                                               |[0x800001ac]:KSLLI16 t0, t1, 8<br> [0x800001b0]:csrrs t1, vxsat, zero<br> [0x800001b4]:sw t0, 64(a4)<br>     |
|  10|[0x80002258]<br>0xFF007FFF|- rs1 : x21<br> - rd : x4<br> - imm_val == 7<br> - rs1_h1_val == -2<br> - rs1_h0_val == 32767<br>                                            |[0x800001c0]:KSLLI16 tp, s5, 7<br> [0x800001c4]:csrrs s5, vxsat, zero<br> [0x800001c8]:sw tp, 72(a4)<br>     |
|  11|[0x80002260]<br>0x01802000|- rs1 : x18<br> - rd : x6<br> - imm_val == 6<br> - rs1_h0_val == 128<br>                                                                     |[0x800001d4]:KSLLI16 t1, s2, 6<br> [0x800001d8]:csrrs s2, vxsat, zero<br> [0x800001dc]:sw t1, 80(a4)<br>     |
|  12|[0x80002268]<br>0x7FFF2000|- rs1 : x3<br> - rd : x25<br> - imm_val == 4<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 512<br>                                           |[0x800001e8]:KSLLI16 s9, gp, 4<br> [0x800001ec]:csrrs gp, vxsat, zero<br> [0x800001f0]:sw s9, 88(a4)<br>     |
|  13|[0x80002270]<br>0x00204000|- rs1 : x2<br> - rd : x29<br> - imm_val == 3<br> - rs1_h1_val == 4<br> - rs1_h0_val == 2048<br>                                              |[0x800001fc]:KSLLI16 t4, sp, 3<br> [0x80000200]:csrrs sp, vxsat, zero<br> [0x80000204]:sw t4, 96(a4)<br>     |
|  14|[0x80002278]<br>0x00140024|- rs1 : x15<br> - rd : x27<br> - imm_val == 2<br>                                                                                            |[0x80000210]:KSLLI16 s11, a5, 2<br> [0x80000214]:csrrs a5, vxsat, zero<br> [0x80000218]:sw s11, 104(a4)<br>  |
|  15|[0x80002280]<br>0x00200004|- rs1 : x13<br> - rd : x1<br> - imm_val == 1<br> - rs1_h1_val == 16<br> - rs1_h0_val == 2<br>                                                |[0x80000224]:KSLLI16 ra, a3, 1<br> [0x80000228]:csrrs a3, vxsat, zero<br> [0x8000022c]:sw ra, 112(a4)<br>    |
|  16|[0x80002288]<br>0x3FFF0008|- rs1 : x28<br> - rd : x19<br> - imm_val == 0<br> - rs1_h0_val == 8<br>                                                                      |[0x80000238]:KSLLI16 s3, t3, 0<br> [0x8000023c]:csrrs t3, vxsat, zero<br> [0x80000240]:sw s3, 120(a4)<br>    |
|  17|[0x80002290]<br>0x80000020|- rs1 : x22<br> - rd : x17<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 16<br>                                                             |[0x8000024c]:KSLLI16 a7, s6, 1<br> [0x80000250]:csrrs s6, vxsat, zero<br> [0x80000254]:sw a7, 128(a4)<br>    |
|  18|[0x80002298]<br>0x7FFF0800|- rs1 : x11<br> - rd : x30<br> - rs1_h1_val == 32767<br>                                                                                     |[0x80000260]:KSLLI16 t5, a1, 10<br> [0x80000264]:csrrs a1, vxsat, zero<br> [0x80000268]:sw t5, 136(a4)<br>   |
|  19|[0x800022a0]<br>0x80006000|- rs1 : x30<br> - rd : x10<br> - rs1_h1_val == -16385<br>                                                                                    |[0x80000274]:KSLLI16 a0, t5, 13<br> [0x80000278]:csrrs t5, vxsat, zero<br> [0x8000027c]:sw a0, 144(a4)<br>   |
|  20|[0x800022a8]<br>0x80008000|- rs1 : x8<br> - rd : x9<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -4097<br>                                                             |[0x80000288]:KSLLI16 s1, fp, 14<br> [0x8000028c]:csrrs fp, vxsat, zero<br> [0x80000290]:sw s1, 152(a4)<br>   |
|  21|[0x800022b0]<br>0x8000FF00|- rs1 : x5<br> - rd : x22<br> - rs1_h1_val == -4097<br>                                                                                      |[0x800002a4]:KSLLI16 s6, t0, 7<br> [0x800002a8]:csrrs t0, vxsat, zero<br> [0x800002ac]:sw s6, 0(ra)<br>      |
|  22|[0x800022b8]<br>0x80007FFF|- rs1 : x9<br> - rd : x2<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 8192<br>                                                              |[0x800002b4]:KSLLI16 sp, s1, 12<br> [0x800002b8]:csrrs s1, vxsat, zero<br> [0x800002bc]:sw sp, 8(ra)<br>     |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x0<br> - rd : x16<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                    |[0x800002c8]:KSLLI16 a6, zero, 4<br> [0x800002cc]:csrrs zero, vxsat, zero<br> [0x800002d0]:sw a6, 16(ra)<br> |
|  24|[0x800022c8]<br>0x80008000|- rs1 : x10<br> - rd : x14<br> - rs1_h1_val == -513<br> - rs1_h0_val == -1025<br>                                                            |[0x800002dc]:KSLLI16 a4, a0, 12<br> [0x800002e0]:csrrs a0, vxsat, zero<br> [0x800002e4]:sw a4, 24(ra)<br>    |
|  25|[0x800022d0]<br>0xFBFC0004|- rs1 : x27<br> - rd : x26<br> - rs1_h1_val == -257<br> - rs1_h0_val == 1<br>                                                                |[0x800002f0]:KSLLI16 s10, s11, 2<br> [0x800002f4]:csrrs s11, vxsat, zero<br> [0x800002f8]:sw s10, 32(ra)<br> |
|  26|[0x800022d8]<br>0x80008000|- rs1 : x19<br> - rd : x13<br> - rs1_h1_val == -129<br> - rs1_h0_val == -16385<br>                                                           |[0x80000304]:KSLLI16 a3, s3, 10<br> [0x80000308]:csrrs s3, vxsat, zero<br> [0x8000030c]:sw a3, 40(ra)<br>    |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x20<br> - rd : x0<br> - rs1_h1_val == -65<br> - rs1_h0_val == 1024<br>                                                               |[0x80000318]:KSLLI16 zero, s4, 1<br> [0x8000031c]:csrrs s4, vxsat, zero<br> [0x80000320]:sw zero, 48(ra)<br> |
|  28|[0x800022e8]<br>0xDF00FA00|- rs1 : x26<br> - rd : x23<br> - rs1_h1_val == -33<br>                                                                                       |[0x8000032c]:KSLLI16 s7, s10, 8<br> [0x80000330]:csrrs s10, vxsat, zero<br> [0x80000334]:sw s7, 56(ra)<br>   |
|  29|[0x800022f0]<br>0xFB800380|- rs1 : x14<br> - rd : x28<br> - rs1_h1_val == -9<br>                                                                                        |[0x80000340]:KSLLI16 t3, a4, 7<br> [0x80000344]:csrrs a4, vxsat, zero<br> [0x80000348]:sw t3, 64(ra)<br>     |
|  30|[0x800022f8]<br>0xB0008000|- rs1 : x25<br> - rd : x12<br> - rs1_h1_val == -5<br>                                                                                        |[0x80000354]:KSLLI16 a2, s9, 12<br> [0x80000358]:csrrs s9, vxsat, zero<br> [0x8000035c]:sw a2, 72(ra)<br>    |
|  31|[0x80002300]<br>0x8000BF00|- rs1 : x16<br> - rd : x15<br> - rs1_h0_val == -65<br>                                                                                       |[0x80000368]:KSLLI16 a5, a6, 8<br> [0x8000036c]:csrrs a6, vxsat, zero<br> [0x80000370]:sw a5, 80(ra)<br>     |
|  32|[0x80002308]<br>0x7FFFFBE0|- rs1 : x29<br> - rd : x8<br> - rs1_h0_val == -33<br>                                                                                        |[0x8000037c]:KSLLI16 fp, t4, 5<br> [0x80000380]:csrrs t4, vxsat, zero<br> [0x80000384]:sw fp, 88(ra)<br>     |
|  33|[0x80002310]<br>0x0080F780|- rs1_h1_val == 1<br> - rs1_h0_val == -17<br>                                                                                                |[0x80000390]:KSLLI16 t6, t5, 7<br> [0x80000394]:csrrs t5, vxsat, zero<br> [0x80000398]:sw t6, 96(ra)<br>     |
|  34|[0x80002318]<br>0x7FFFEE00|- rs1_h0_val == -9<br>                                                                                                                       |[0x800003a4]:KSLLI16 t6, t5, 9<br> [0x800003a8]:csrrs t5, vxsat, zero<br> [0x800003ac]:sw t6, 104(ra)<br>    |
|  35|[0x80002320]<br>0x7FFFF600|- rs1_h1_val == 1024<br> - rs1_h0_val == -5<br>                                                                                              |[0x800003b8]:KSLLI16 t6, t5, 9<br> [0x800003bc]:csrrs t5, vxsat, zero<br> [0x800003c0]:sw t6, 112(ra)<br>    |
|  36|[0x80002328]<br>0x7FFFFFE8|- rs1_h1_val == 16384<br> - rs1_h0_val == -3<br>                                                                                             |[0x800003cc]:KSLLI16 t6, t5, 3<br> [0x800003d0]:csrrs t5, vxsat, zero<br> [0x800003d4]:sw t6, 120(ra)<br>    |
|  37|[0x80002330]<br>0xFFF07FFF|- rs1_h1_val == -1<br> - rs1_h0_val == 4096<br>                                                                                              |[0x800003dc]:KSLLI16 t6, t5, 4<br> [0x800003e0]:csrrs t5, vxsat, zero<br> [0x800003e4]:sw t6, 128(ra)<br>    |
|  38|[0x80002338]<br>0xFFF00200|- rs1_h0_val == 256<br>                                                                                                                      |[0x800003f0]:KSLLI16 t6, t5, 1<br> [0x800003f4]:csrrs t5, vxsat, zero<br> [0x800003f8]:sw t6, 136(ra)<br>    |
|  39|[0x80002340]<br>0x10000800|- rs1_h1_val == 128<br> - rs1_h0_val == 64<br>                                                                                               |[0x80000404]:KSLLI16 t6, t5, 5<br> [0x80000408]:csrrs t5, vxsat, zero<br> [0x8000040c]:sw t6, 144(ra)<br>    |
|  40|[0x80002348]<br>0x00000100|- rs1_h0_val == 32<br>                                                                                                                       |[0x80000414]:KSLLI16 t6, t5, 3<br> [0x80000418]:csrrs t5, vxsat, zero<br> [0x8000041c]:sw t6, 152(ra)<br>    |
|  41|[0x80002350]<br>0xFFD00040|- rs1_h1_val == -3<br> - rs1_h0_val == 4<br>                                                                                                 |[0x80000428]:KSLLI16 t6, t5, 4<br> [0x8000042c]:csrrs t5, vxsat, zero<br> [0x80000430]:sw t6, 160(ra)<br>    |
|  42|[0x80002358]<br>0x80008000|- rs1_h1_val == -32768<br>                                                                                                                   |[0x80000438]:KSLLI16 t6, t5, 3<br> [0x8000043c]:csrrs t5, vxsat, zero<br> [0x80000440]:sw t6, 168(ra)<br>    |
|  43|[0x80002360]<br>0x7FFFFE00|- rs1_h1_val == 4096<br>                                                                                                                     |[0x8000044c]:KSLLI16 t6, t5, 6<br> [0x80000450]:csrrs t5, vxsat, zero<br> [0x80000454]:sw t6, 176(ra)<br>    |
|  44|[0x80002368]<br>0x7FFF8000|- rs1_h1_val == 512<br> - rs1_h0_val == -129<br>                                                                                             |[0x80000460]:KSLLI16 t6, t5, 10<br> [0x80000464]:csrrs t5, vxsat, zero<br> [0x80000468]:sw t6, 184(ra)<br>   |
|  45|[0x80002370]<br>0x0040EFFF|- rs1_h1_val == 64<br>                                                                                                                       |[0x80000474]:KSLLI16 t6, t5, 0<br> [0x80000478]:csrrs t5, vxsat, zero<br> [0x8000047c]:sw t6, 192(ra)<br>    |
|  46|[0x80002378]<br>0x40007FFF|- rs1_h1_val == 8<br>                                                                                                                        |[0x80000488]:KSLLI16 t6, t5, 11<br> [0x8000048c]:csrrs t5, vxsat, zero<br> [0x80000490]:sw t6, 200(ra)<br>   |
|  47|[0x80002380]<br>0x00040400|- rs1_h1_val == 2<br>                                                                                                                        |[0x8000049c]:KSLLI16 t6, t5, 1<br> [0x800004a0]:csrrs t5, vxsat, zero<br> [0x800004a4]:sw t6, 208(ra)<br>    |
|  48|[0x80002388]<br>0xFFD08000|- rs1_h0_val == -21846<br>                                                                                                                   |[0x800004b0]:KSLLI16 t6, t5, 4<br> [0x800004b4]:csrrs t5, vxsat, zero<br> [0x800004b8]:sw t6, 216(ra)<br>    |
|  49|[0x80002398]<br>0x7FFF8000|- rs1_h0_val == -257<br>                                                                                                                     |[0x800004d4]:KSLLI16 t6, t5, 7<br> [0x800004d8]:csrrs t5, vxsat, zero<br> [0x800004dc]:sw t6, 232(ra)<br>    |
|  50|[0x800023a0]<br>0xFFB0EFF8|- rs1_h0_val == -513<br>                                                                                                                     |[0x800004e8]:KSLLI16 t6, t5, 3<br> [0x800004ec]:csrrs t5, vxsat, zero<br> [0x800004f0]:sw t6, 240(ra)<br>    |
|  51|[0x800023a8]<br>0x80007FFF|- rs1_h0_val == 21845<br>                                                                                                                    |[0x800004fc]:KSLLI16 t6, t5, 8<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 248(ra)<br>    |
|  52|[0x800023b0]<br>0x8000FFF8|- rs1_h0_val == -1<br>                                                                                                                       |[0x80000510]:KSLLI16 t6, t5, 3<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 256(ra)<br>    |
|  53|[0x800023b8]<br>0xBFF00800|- rs1_h1_val == -1025<br>                                                                                                                    |[0x80000524]:KSLLI16 t6, t5, 4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 264(ra)<br>    |
