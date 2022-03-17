
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000530')]      |
| SIG_REGION                | [('0x80002210', '0x800023b0', '104 words')]      |
| COV_LABELS                | kslli8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslli8-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 52      |
| STAT1                     | 51      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000518]:KSLLI8 t6, t5, 6
      [0x8000051c]:csrrs t5, vxsat, zero
      [0x80000520]:sw t6, 224(ra)
 -- Signature Address: 0x800023a8 Data: 0x40008080
 -- Redundant Coverpoints hit by the op
      - opcode : kslli8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 6
      - rs1_b3_val == 1
      - rs1_b2_val == 0
      - rs1_b1_val == -65
      - rs1_b0_val == -5






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

|s.no|        signature         |                                                                          coverpoints                                                                          |                                                    code                                                     |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : kslli8<br> - rs1 : x21<br> - rd : x21<br> - rs1 == rd<br> - rs1_b0_val == -128<br> - imm_val == 6<br> - rs1_b2_val == 16<br> - rs1_b1_val == 32<br> |[0x80000114]:KSLLI8 s5, s5, 6<br> [0x80000118]:csrrs s5, vxsat, zero<br> [0x8000011c]:sw s5, 0(fp)<br>       |
|   2|[0x80002218]<br>0x8080007F|- rs1 : x11<br> - rd : x2<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b3_val == -33<br> - rs1_b1_val == 0<br> - rs1_b0_val == 2<br>                           |[0x80000128]:KSLLI8 sp, a1, 7<br> [0x8000012c]:csrrs a1, vxsat, zero<br> [0x80000130]:sw sp, 8(fp)<br>       |
|   3|[0x80002220]<br>0x7F808080|- rs1 : x1<br> - rd : x28<br> - imm_val == 5<br> - rs1_b3_val == 16<br> - rs1_b2_val == -9<br> - rs1_b1_val == -128<br>                                        |[0x8000013c]:KSLLI8 t3, ra, 5<br> [0x80000140]:csrrs ra, vxsat, zero<br> [0x80000144]:sw t3, 16(fp)<br>      |
|   4|[0x80002228]<br>0x8040807F|- rs1 : x9<br> - rd : x16<br> - imm_val == 4<br> - rs1_b2_val == 4<br> - rs1_b0_val == 85<br>                                                                  |[0x80000150]:KSLLI8 a6, s1, 4<br> [0x80000154]:csrrs s1, vxsat, zero<br> [0x80000158]:sw a6, 24(fp)<br>      |
|   5|[0x80002230]<br>0x7F102810|- rs1 : x4<br> - rd : x10<br> - imm_val == 3<br> - rs1_b2_val == 2<br>                                                                                         |[0x80000164]:KSLLI8 a0, tp, 3<br> [0x80000168]:csrrs tp, vxsat, zero<br> [0x8000016c]:sw a0, 32(fp)<br>      |
|   6|[0x80002238]<br>0x201814FC|- rs1 : x6<br> - rd : x22<br> - imm_val == 2<br> - rs1_b3_val == 8<br> - rs1_b0_val == -1<br>                                                                  |[0x80000178]:KSLLI8 s6, t1, 2<br> [0x8000017c]:csrrs t1, vxsat, zero<br> [0x80000180]:sw s6, 40(fp)<br>      |
|   7|[0x80002240]<br>0x06DE007E|- rs1 : x29<br> - rd : x24<br> - imm_val == 1<br> - rs1_b2_val == -17<br>                                                                                      |[0x8000018c]:KSLLI8 s8, t4, 1<br> [0x80000190]:csrrs t4, vxsat, zero<br> [0x80000194]:sw s8, 48(fp)<br>      |
|   8|[0x80002248]<br>0xBFFA09FD|- rs1 : x12<br> - rd : x26<br> - imm_val == 0<br> - rs1_b3_val == -65<br> - rs1_b0_val == -3<br>                                                               |[0x800001a0]:KSLLI8 s10, a2, 0<br> [0x800001a4]:csrrs a2, vxsat, zero<br> [0x800001a8]:sw s10, 56(fp)<br>    |
|   9|[0x80002250]<br>0x8030D07F|- rs1 : x27<br> - rd : x15<br> - rs1_b3_val == -86<br> - rs1_b1_val == -3<br> - rs1_b0_val == 8<br>                                                            |[0x800001b4]:KSLLI8 a5, s11, 4<br> [0x800001b8]:csrrs s11, vxsat, zero<br> [0x800001bc]:sw a5, 64(fp)<br>    |
|  10|[0x80002258]<br>0x7FE0E07F|- rs1 : x24<br> - rd : x17<br> - rs1_b3_val == 85<br> - rs1_b2_val == -1<br> - rs1_b1_val == -1<br>                                                            |[0x800001c8]:KSLLI8 a7, s8, 5<br> [0x800001cc]:csrrs s8, vxsat, zero<br> [0x800001d0]:sw a7, 72(fp)<br>      |
|  11|[0x80002260]<br>0x7F7F807F|- rs1 : x14<br> - rd : x6<br> - rs1_b3_val == 127<br>                                                                                                          |[0x800001dc]:KSLLI8 t1, a4, 6<br> [0x800001e0]:csrrs a4, vxsat, zero<br> [0x800001e4]:sw t1, 80(fp)<br>      |
|  12|[0x80002268]<br>0x80808000|- rs1 : x3<br> - rd : x25<br> - rs1_b3_val == -17<br> - rs1_b0_val == 0<br>                                                                                    |[0x800001f0]:KSLLI8 s9, gp, 5<br> [0x800001f4]:csrrs gp, vxsat, zero<br> [0x800001f8]:sw s9, 88(fp)<br>      |
|  13|[0x80002270]<br>0x807F7F7F|- rs1 : x28<br> - rd : x27<br> - rs1_b3_val == -9<br> - rs1_b1_val == 64<br>                                                                                   |[0x80000204]:KSLLI8 s11, t3, 6<br> [0x80000208]:csrrs t3, vxsat, zero<br> [0x8000020c]:sw s11, 96(fp)<br>    |
|  14|[0x80002278]<br>0x00000000|- rs1 : x0<br> - rd : x14<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br>                                                                                      |[0x80000218]:KSLLI8 a4, zero, 0<br> [0x8000021c]:csrrs zero, vxsat, zero<br> [0x80000220]:sw a4, 104(fp)<br> |
|  15|[0x80002280]<br>0xD0A06090|- rs1 : x18<br> - rd : x30<br> - rs1_b3_val == -3<br>                                                                                                          |[0x8000022c]:KSLLI8 t5, s2, 4<br> [0x80000230]:csrrs s2, vxsat, zero<br> [0x80000234]:sw t5, 112(fp)<br>     |
|  16|[0x80002288]<br>0xFC061004|- rs1 : x19<br> - rd : x1<br> - rs1_b3_val == -2<br> - rs1_b1_val == 8<br>                                                                                     |[0x80000240]:KSLLI8 ra, s3, 1<br> [0x80000244]:csrrs s3, vxsat, zero<br> [0x80000248]:sw ra, 120(fp)<br>     |
|  17|[0x80002290]<br>0x807F807F|- rs1 : x17<br> - rd : x31<br> - rs1_b3_val == -128<br>                                                                                                        |[0x80000254]:KSLLI8 t6, a7, 5<br> [0x80000258]:csrrs a7, vxsat, zero<br> [0x8000025c]:sw t6, 128(fp)<br>     |
|  18|[0x80002298]<br>0x7F100040|- rs1 : x15<br> - rd : x12<br> - rs1_b3_val == 64<br>                                                                                                          |[0x80000268]:KSLLI8 a2, a5, 3<br> [0x8000026c]:csrrs a5, vxsat, zero<br> [0x80000270]:sw a2, 136(fp)<br>     |
|  19|[0x800022a0]<br>0x400A06EC|- rs1 : x26<br> - rd : x18<br> - rs1_b3_val == 32<br>                                                                                                          |[0x8000027c]:KSLLI8 s2, s10, 1<br> [0x80000280]:csrrs s10, vxsat, zero<br> [0x80000284]:sw s2, 144(fp)<br>   |
|  20|[0x800022a8]<br>0x40F0307F|- rs1 : x10<br> - rd : x7<br> - rs1_b3_val == 4<br>                                                                                                            |[0x80000290]:KSLLI8 t2, a0, 4<br> [0x80000294]:csrrs a0, vxsat, zero<br> [0x80000298]:sw t2, 152(fp)<br>     |
|  21|[0x800022b0]<br>0x20807F80|- rs1 : x30<br> - rd : x20<br> - rs1_b3_val == 2<br> - rs1_b0_val == -9<br>                                                                                    |[0x800002a4]:KSLLI8 s4, t5, 4<br> [0x800002a8]:csrrs t5, vxsat, zero<br> [0x800002ac]:sw s4, 160(fp)<br>     |
|  22|[0x800022b8]<br>0x40808080|- rs1 : x31<br> - rd : x4<br> - rs1_b3_val == 1<br> - rs1_b0_val == -33<br>                                                                                    |[0x800002b8]:KSLLI8 tp, t6, 6<br> [0x800002bc]:csrrs t6, vxsat, zero<br> [0x800002c0]:sw tp, 168(fp)<br>     |
|  23|[0x800022c0]<br>0x0008BC40|- rs1 : x2<br> - rd : x5<br> - rs1_b1_val == -17<br> - rs1_b0_val == 16<br>                                                                                    |[0x800002cc]:KSLLI8 t0, sp, 2<br> [0x800002d0]:csrrs sp, vxsat, zero<br> [0x800002d4]:sw t0, 176(fp)<br>     |
|  24|[0x800022c8]<br>0xFC141418|- rs1 : x22<br> - rd : x9<br> - rs1_b3_val == -1<br>                                                                                                           |[0x800002e8]:KSLLI8 s1, s6, 2<br> [0x800002ec]:csrrs s6, vxsat, zero<br> [0x800002f0]:sw s1, 0(ra)<br>       |
|  25|[0x800022d0]<br>0x80800080|- rs1 : x25<br> - rd : x8<br> - rs1_b2_val == -86<br>                                                                                                          |[0x800002fc]:KSLLI8 fp, s9, 7<br> [0x80000300]:csrrs s9, vxsat, zero<br> [0x80000304]:sw fp, 8(ra)<br>       |
|  26|[0x800022d8]<br>0xBC7F8004|- rs1 : x13<br> - rd : x3<br> - rs1_b2_val == 85<br> - rs1_b1_val == -86<br> - rs1_b0_val == 1<br>                                                             |[0x80000310]:KSLLI8 gp, a3, 2<br> [0x80000314]:csrrs a3, vxsat, zero<br> [0x80000318]:sw gp, 16(ra)<br>      |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x7<br> - rd : x0<br> - rs1_b2_val == 127<br>                                                                                                           |[0x80000324]:KSLLI8 zero, t2, 5<br> [0x80000328]:csrrs t2, vxsat, zero<br> [0x8000032c]:sw zero, 24(ra)<br>  |
|  28|[0x800022e8]<br>0x807F7F00|- rs1 : x5<br> - rd : x13<br> - rs1_b1_val == 4<br>                                                                                                            |[0x80000338]:KSLLI8 a3, t0, 6<br> [0x8000033c]:csrrs t0, vxsat, zero<br> [0x80000340]:sw a3, 32(ra)<br>      |
|  29|[0x800022f0]<br>0xD07F2090|- rs1 : x8<br> - rd : x29<br> - rs1_b2_val == 32<br> - rs1_b1_val == 2<br>                                                                                     |[0x8000034c]:KSLLI8 t4, fp, 4<br> [0x80000350]:csrrs fp, vxsat, zero<br> [0x80000354]:sw t4, 40(ra)<br>      |
|  30|[0x800022f8]<br>0xFC100280|- rs1 : x16<br> - rd : x11<br> - rs1_b2_val == 8<br> - rs1_b1_val == 1<br> - rs1_b0_val == -65<br>                                                             |[0x80000360]:KSLLI8 a1, a6, 1<br> [0x80000364]:csrrs a6, vxsat, zero<br> [0x80000368]:sw a1, 48(ra)<br>      |
|  31|[0x80002300]<br>0xAA55F8AA|- rs1 : x20<br> - rd : x23<br> - rs1_b0_val == -86<br>                                                                                                         |[0x80000374]:KSLLI8 s7, s4, 0<br> [0x80000378]:csrrs s4, vxsat, zero<br> [0x8000037c]:sw s7, 56(ra)<br>      |
|  32|[0x80002308]<br>0x807F7F7F|- rs1 : x23<br> - rd : x19<br> - rs1_b0_val == 127<br>                                                                                                         |[0x80000388]:KSLLI8 s3, s7, 7<br> [0x8000038c]:csrrs s7, vxsat, zero<br> [0x80000390]:sw s3, 64(ra)<br>      |
|  33|[0x80002310]<br>0x7F7F8080|- rs1_b0_val == -17<br>                                                                                                                                        |[0x8000039c]:KSLLI8 t6, t5, 6<br> [0x800003a0]:csrrs t5, vxsat, zero<br> [0x800003a4]:sw t6, 72(ra)<br>      |
|  34|[0x80002318]<br>0x7F7F8080|- rs1_b0_val == -5<br>                                                                                                                                         |[0x800003b0]:KSLLI8 t6, t5, 5<br> [0x800003b4]:csrrs t5, vxsat, zero<br> [0x800003b8]:sw t6, 80(ra)<br>      |
|  35|[0x80002320]<br>0x1280FAFC|- rs1_b0_val == -2<br>                                                                                                                                         |[0x800003c4]:KSLLI8 t6, t5, 1<br> [0x800003c8]:csrrs t5, vxsat, zero<br> [0x800003cc]:sw t6, 88(ra)<br>      |
|  36|[0x80002328]<br>0x807F807F|- rs1_b0_val == 64<br>                                                                                                                                         |[0x800003d8]:KSLLI8 t6, t5, 2<br> [0x800003dc]:csrrs t5, vxsat, zero<br> [0x800003e0]:sw t6, 96(ra)<br>      |
|  37|[0x80002330]<br>0x1007FD20|- rs1_b0_val == 32<br>                                                                                                                                         |[0x800003ec]:KSLLI8 t6, t5, 0<br> [0x800003f0]:csrrs t5, vxsat, zero<br> [0x800003f4]:sw t6, 104(ra)<br>     |
|  38|[0x80002338]<br>0x807F7F7F|- rs1_b2_val == 64<br> - rs1_b0_val == 4<br>                                                                                                                   |[0x80000400]:KSLLI8 t6, t5, 6<br> [0x80000404]:csrrs t5, vxsat, zero<br> [0x80000408]:sw t6, 112(ra)<br>     |
|  39|[0x80002340]<br>0xF8808048|- rs1_b2_val == -65<br>                                                                                                                                        |[0x80000414]:KSLLI8 t6, t5, 3<br> [0x80000418]:csrrs t5, vxsat, zero<br> [0x8000041c]:sw t6, 120(ra)<br>     |
|  40|[0x80002348]<br>0x7F807F7F|- rs1_b2_val == -33<br>                                                                                                                                        |[0x80000428]:KSLLI8 t6, t5, 7<br> [0x8000042c]:csrrs t5, vxsat, zero<br> [0x80000430]:sw t6, 128(ra)<br>     |
|  41|[0x80002350]<br>0x8080807F|- rs1_b2_val == -5<br> - rs1_b1_val == -5<br>                                                                                                                  |[0x8000043c]:KSLLI8 t6, t5, 7<br> [0x80000440]:csrrs t5, vxsat, zero<br> [0x80000444]:sw t6, 136(ra)<br>     |
|  42|[0x80002358]<br>0x40D05030|- rs1_b2_val == -3<br>                                                                                                                                         |[0x80000450]:KSLLI8 t6, t5, 4<br> [0x80000454]:csrrs t5, vxsat, zero<br> [0x80000458]:sw t6, 144(ra)<br>     |
|  43|[0x80002360]<br>0x7F80407F|- rs1_b2_val == -2<br>                                                                                                                                         |[0x80000464]:KSLLI8 t6, t5, 6<br> [0x80000468]:csrrs t5, vxsat, zero<br> [0x8000046c]:sw t6, 152(ra)<br>     |
|  44|[0x80002368]<br>0xD880B880|- rs1_b3_val == -5<br> - rs1_b2_val == -128<br> - rs1_b1_val == -9<br>                                                                                         |[0x80000478]:KSLLI8 t6, t5, 3<br> [0x8000047c]:csrrs t5, vxsat, zero<br> [0x80000480]:sw t6, 160(ra)<br>     |
|  45|[0x80002370]<br>0x40013FBF|- rs1_b2_val == 1<br>                                                                                                                                          |[0x8000048c]:KSLLI8 t6, t5, 0<br> [0x80000490]:csrrs t5, vxsat, zero<br> [0x80000494]:sw t6, 168(ra)<br>     |
|  46|[0x80002378]<br>0x20807F80|- rs1_b1_val == 85<br>                                                                                                                                         |[0x800004a0]:KSLLI8 t6, t5, 5<br> [0x800004a4]:csrrs t5, vxsat, zero<br> [0x800004a8]:sw t6, 176(ra)<br>     |
|  47|[0x80002380]<br>0xEE807F80|- rs1_b1_val == 127<br>                                                                                                                                        |[0x800004b4]:KSLLI8 t6, t5, 1<br> [0x800004b8]:csrrs t5, vxsat, zero<br> [0x800004bc]:sw t6, 184(ra)<br>     |
|  48|[0x80002388]<br>0xE8088028|- rs1_b1_val == -65<br>                                                                                                                                        |[0x800004c8]:KSLLI8 t6, t5, 3<br> [0x800004cc]:csrrs t5, vxsat, zero<br> [0x800004d0]:sw t6, 192(ra)<br>     |
|  49|[0x80002390]<br>0x8080807F|- rs1_b1_val == -2<br>                                                                                                                                         |[0x800004dc]:KSLLI8 t6, t5, 7<br> [0x800004e0]:csrrs t5, vxsat, zero<br> [0x800004e4]:sw t6, 200(ra)<br>     |
|  50|[0x80002398]<br>0xFE40DFFD|- rs1_b1_val == -33<br>                                                                                                                                        |[0x800004f0]:KSLLI8 t6, t5, 0<br> [0x800004f4]:csrrs t5, vxsat, zero<br> [0x800004f8]:sw t6, 208(ra)<br>     |
|  51|[0x800023a0]<br>0xF67F2002|- rs1_b1_val == 16<br>                                                                                                                                         |[0x80000504]:KSLLI8 t6, t5, 1<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 216(ra)<br>     |
