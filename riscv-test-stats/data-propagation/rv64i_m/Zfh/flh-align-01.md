
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x800005e0')]      |
| SIG_REGION                | [('0x80002204', '0x80002404', '64 dwords')]      |
| COV_LABELS                | flh-align      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/flh-align-01.S/ref.S    |
| Total Number of coverpoints| 75     |
| Total Coverpoints Hit     | 71      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                 coverpoints                                                  |                                                                                                        code                                                                                                         |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002206]<br>0x0000000000000000|- opcode : flh<br> - rs1 : x8<br> - rd : f26<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000120]:flh fs10, 512(fp)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br> [0x8000012c]:csrrs a7, fflags, zero<br> [0x80000130]:fsh fs10, 0(a5)<br> [0x80000134]:sh a7, 2(a5)<br>    |
|   2|[0x80002210]<br>0x0000000000000000|- rs1 : x30<br> - rd : f14<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val < 0<br>                   |[0x80000144]:flh fa4, 4089(t5)<br> [0x80000148]:addi zero, zero, 0<br> [0x8000014c]:addi zero, zero, 0<br> [0x80000150]:csrrs a7, fflags, zero<br> [0x80000154]:fsh fa4, 10(a5)<br> [0x80000158]:sh a7, 12(a5)<br>   |
|   3|[0x80002226]<br>0x0000000000000000|- rs1 : x17<br> - rd : f7<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                      |[0x80000174]:flh ft7, 4086(a7)<br> [0x80000178]:addi zero, zero, 0<br> [0x8000017c]:addi zero, zero, 0<br> [0x80000180]:csrrs s5, fflags, zero<br> [0x80000184]:fsh ft7, 0(s3)<br> [0x80000188]:sh s5, 2(s3)<br>     |
|   4|[0x80002236]<br>0x0000000000000000|- rs1 : x21<br> - rd : f31<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                     |[0x800001a4]:flh ft11, 3(s5)<br> [0x800001a8]:addi zero, zero, 0<br> [0x800001ac]:addi zero, zero, 0<br> [0x800001b0]:csrrs a7, fflags, zero<br> [0x800001b4]:fsh ft11, 0(a5)<br> [0x800001b8]:sh a7, 2(a5)<br>      |
|   5|[0x80002240]<br>0x0000000000000000|- rs1 : x13<br> - rd : f1<br> - imm_val == 0<br>                                                              |[0x800001c8]:flh ft1, 0(a3)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:fsh ft1, 10(a5)<br> [0x800001dc]:sh a7, 12(a5)<br>      |
|   6|[0x8000224a]<br>0x0000000000000000|- rs1 : x7<br> - rd : f16<br>                                                                                 |[0x800001ec]:flh fa6, 2048(t2)<br> [0x800001f0]:addi zero, zero, 0<br> [0x800001f4]:addi zero, zero, 0<br> [0x800001f8]:csrrs a7, fflags, zero<br> [0x800001fc]:fsh fa6, 20(a5)<br> [0x80000200]:sh a7, 22(a5)<br>   |
|   7|[0x80002254]<br>0x0000000000000000|- rs1 : x31<br> - rd : f23<br>                                                                                |[0x80000210]:flh fs7, 2048(t6)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br> [0x8000021c]:csrrs a7, fflags, zero<br> [0x80000220]:fsh fs7, 30(a5)<br> [0x80000224]:sh a7, 32(a5)<br>   |
|   8|[0x8000225e]<br>0x0000000000000000|- rs1 : x11<br> - rd : f27<br>                                                                                |[0x80000234]:flh fs11, 2048(a1)<br> [0x80000238]:addi zero, zero, 0<br> [0x8000023c]:addi zero, zero, 0<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:fsh fs11, 40(a5)<br> [0x80000248]:sh a7, 42(a5)<br> |
|   9|[0x80002268]<br>0x0000000000000000|- rs1 : x19<br> - rd : f29<br>                                                                                |[0x80000258]:flh ft9, 2048(s3)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:fsh ft9, 50(a5)<br> [0x8000026c]:sh a7, 52(a5)<br>   |
|  10|[0x80002272]<br>0x0000000000000000|- rs1 : x27<br> - rd : f13<br>                                                                                |[0x8000027c]:flh fa3, 2048(s11)<br> [0x80000280]:addi zero, zero, 0<br> [0x80000284]:addi zero, zero, 0<br> [0x80000288]:csrrs a7, fflags, zero<br> [0x8000028c]:fsh fa3, 60(a5)<br> [0x80000290]:sh a7, 62(a5)<br>  |
|  11|[0x8000227c]<br>0x0000000000000000|- rs1 : x4<br> - rd : f5<br>                                                                                  |[0x800002a0]:flh ft5, 2048(tp)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:fsh ft5, 70(a5)<br> [0x800002b4]:sh a7, 72(a5)<br>   |
|  12|[0x80002286]<br>0x0000000000000000|- rs1 : x26<br> - rd : f24<br>                                                                                |[0x800002c4]:flh fs8, 2048(s10)<br> [0x800002c8]:addi zero, zero, 0<br> [0x800002cc]:addi zero, zero, 0<br> [0x800002d0]:csrrs a7, fflags, zero<br> [0x800002d4]:fsh fs8, 80(a5)<br> [0x800002d8]:sh a7, 82(a5)<br>  |
|  13|[0x80002290]<br>0x0000000000000000|- rs1 : x18<br> - rd : f30<br>                                                                                |[0x800002e8]:flh ft10, 2048(s2)<br> [0x800002ec]:addi zero, zero, 0<br> [0x800002f0]:addi zero, zero, 0<br> [0x800002f4]:csrrs a7, fflags, zero<br> [0x800002f8]:fsh ft10, 90(a5)<br> [0x800002fc]:sh a7, 92(a5)<br> |
|  14|[0x8000229a]<br>0x0000000000000000|- rs1 : x10<br> - rd : f3<br>                                                                                 |[0x8000030c]:flh ft3, 2048(a0)<br> [0x80000310]:addi zero, zero, 0<br> [0x80000314]:addi zero, zero, 0<br> [0x80000318]:csrrs a7, fflags, zero<br> [0x8000031c]:fsh ft3, 100(a5)<br> [0x80000320]:sh a7, 102(a5)<br> |
|  15|[0x800022a4]<br>0x0000000000000000|- rs1 : x22<br> - rd : f12<br>                                                                                |[0x80000330]:flh fa2, 2048(s6)<br> [0x80000334]:addi zero, zero, 0<br> [0x80000338]:addi zero, zero, 0<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsh fa2, 110(a5)<br> [0x80000344]:sh a7, 112(a5)<br> |
|  16|[0x800022ae]<br>0x0000000000000000|- rs1 : x25<br> - rd : f15<br>                                                                                |[0x80000354]:flh fa5, 2048(s9)<br> [0x80000358]:addi zero, zero, 0<br> [0x8000035c]:addi zero, zero, 0<br> [0x80000360]:csrrs a7, fflags, zero<br> [0x80000364]:fsh fa5, 120(a5)<br> [0x80000368]:sh a7, 122(a5)<br> |
|  17|[0x800022b8]<br>0x0000000000000000|- rs1 : x29<br> - rd : f6<br>                                                                                 |[0x80000378]:flh ft6, 2048(t4)<br> [0x8000037c]:addi zero, zero, 0<br> [0x80000380]:addi zero, zero, 0<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:fsh ft6, 130(a5)<br> [0x8000038c]:sh a7, 132(a5)<br> |
|  18|[0x800022c2]<br>0x0000000000000000|- rs1 : x14<br> - rd : f10<br>                                                                                |[0x8000039c]:flh fa0, 2048(a4)<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:addi zero, zero, 0<br> [0x800003a8]:csrrs a7, fflags, zero<br> [0x800003ac]:fsh fa0, 140(a5)<br> [0x800003b0]:sh a7, 142(a5)<br> |
|  19|[0x800022cc]<br>0x0000000000000000|- rs1 : x5<br> - rd : f22<br>                                                                                 |[0x800003c0]:flh fs6, 2048(t0)<br> [0x800003c4]:addi zero, zero, 0<br> [0x800003c8]:addi zero, zero, 0<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:fsh fs6, 150(a5)<br> [0x800003d4]:sh a7, 152(a5)<br> |
|  20|[0x800022d6]<br>0x0000000000000000|- rs1 : x23<br> - rd : f8<br>                                                                                 |[0x800003e4]:flh fs0, 2048(s7)<br> [0x800003e8]:addi zero, zero, 0<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:csrrs a7, fflags, zero<br> [0x800003f4]:fsh fs0, 160(a5)<br> [0x800003f8]:sh a7, 162(a5)<br> |
|  21|[0x800022e0]<br>0x0000000000000000|- rs1 : x20<br> - rd : f11<br>                                                                                |[0x80000408]:flh fa1, 2048(s4)<br> [0x8000040c]:addi zero, zero, 0<br> [0x80000410]:addi zero, zero, 0<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsh fa1, 170(a5)<br> [0x8000041c]:sh a7, 172(a5)<br> |
|  22|[0x800022ea]<br>0x0000000000000000|- rs1 : x12<br> - rd : f25<br>                                                                                |[0x8000042c]:flh fs9, 2048(a2)<br> [0x80000430]:addi zero, zero, 0<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:fsh fs9, 180(a5)<br> [0x80000440]:sh a7, 182(a5)<br> |
|  23|[0x800022f4]<br>0x0000000000000000|- rs1 : x6<br> - rd : f18<br>                                                                                 |[0x80000450]:flh fs2, 2048(t1)<br> [0x80000454]:addi zero, zero, 0<br> [0x80000458]:addi zero, zero, 0<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:fsh fs2, 190(a5)<br> [0x80000464]:sh a7, 192(a5)<br> |
|  24|[0x800022fe]<br>0x0000000000000000|- rs1 : x2<br> - rd : f4<br>                                                                                  |[0x80000474]:flh ft4, 2048(sp)<br> [0x80000478]:addi zero, zero, 0<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:csrrs a7, fflags, zero<br> [0x80000484]:fsh ft4, 200(a5)<br> [0x80000488]:sh a7, 202(a5)<br> |
|  25|[0x80002308]<br>0x0000000000000000|- rs1 : x24<br> - rd : f0<br>                                                                                 |[0x80000498]:flh ft0, 2048(s8)<br> [0x8000049c]:addi zero, zero, 0<br> [0x800004a0]:addi zero, zero, 0<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsh ft0, 210(a5)<br> [0x800004ac]:sh a7, 212(a5)<br> |
|  26|[0x80002396]<br>0x0000000000000000|- rs1 : x16<br> - rd : f21<br>                                                                                |[0x800004c8]:flh fs5, 2048(a6)<br> [0x800004cc]:addi zero, zero, 0<br> [0x800004d0]:addi zero, zero, 0<br> [0x800004d4]:csrrs s5, fflags, zero<br> [0x800004d8]:fsh fs5, 0(s3)<br> [0x800004dc]:sh s5, 2(s3)<br>     |
|  27|[0x800023a6]<br>0x0000000000000000|- rs1 : x28<br> - rd : f2<br>                                                                                 |[0x800004f8]:flh ft2, 2048(t3)<br> [0x800004fc]:addi zero, zero, 0<br> [0x80000500]:addi zero, zero, 0<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsh ft2, 0(a5)<br> [0x8000050c]:sh a7, 2(a5)<br>     |
|  28|[0x800023b6]<br>0x0000000000000000|- rs1 : x15<br> - rd : f28<br>                                                                                |[0x80000528]:flh ft8, 2048(a5)<br> [0x8000052c]:addi zero, zero, 0<br> [0x80000530]:addi zero, zero, 0<br> [0x80000534]:csrrs s5, fflags, zero<br> [0x80000538]:fsh ft8, 0(s3)<br> [0x8000053c]:sh s5, 2(s3)<br>     |
|  29|[0x800023c6]<br>0x0000000000000000|- rs1 : x9<br> - rd : f20<br>                                                                                 |[0x80000558]:flh fs4, 2048(s1)<br> [0x8000055c]:addi zero, zero, 0<br> [0x80000560]:addi zero, zero, 0<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsh fs4, 0(a5)<br> [0x8000056c]:sh a7, 2(a5)<br>     |
|  30|[0x800023d0]<br>0x0000000000000000|- rs1 : x1<br> - rd : f9<br>                                                                                  |[0x8000057c]:flh fs1, 2048(ra)<br> [0x80000580]:addi zero, zero, 0<br> [0x80000584]:addi zero, zero, 0<br> [0x80000588]:csrrs a7, fflags, zero<br> [0x8000058c]:fsh fs1, 10(a5)<br> [0x80000590]:sh a7, 12(a5)<br>   |
|  31|[0x800023da]<br>0x0000000000000000|- rs1 : x3<br> - rd : f17<br>                                                                                 |[0x800005a0]:flh fa7, 2048(gp)<br> [0x800005a4]:addi zero, zero, 0<br> [0x800005a8]:addi zero, zero, 0<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:fsh fa7, 20(a5)<br> [0x800005b4]:sh a7, 22(a5)<br>   |
|  32|[0x800023e4]<br>0x0000000000000000|- rd : f19<br>                                                                                                |[0x800005c4]:flh fs3, 2048(a4)<br> [0x800005c8]:addi zero, zero, 0<br> [0x800005cc]:addi zero, zero, 0<br> [0x800005d0]:csrrs a7, fflags, zero<br> [0x800005d4]:fsh fs3, 30(a5)<br> [0x800005d8]:sh a7, 32(a5)<br>   |
