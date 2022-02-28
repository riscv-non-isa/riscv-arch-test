
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x80000700')]      |
| SIG_REGION                | [('0x80002204', '0x80002404', '64 dwords')]      |
| COV_LABELS                | fsh-align      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/fsh-align-01.S/ref.S    |
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

|s.no|            signature             |                                                  coverpoints                                                   |                                                                                        code                                                                                        |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x0000000000000000|- opcode : fsh<br> - rs1 : x22<br> - rs2 : f20<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x8000012c]:fsh fs4, 1024(s6)<br> [0x80000130]:addi zero, zero, 0<br> [0x80000134]:addi zero, zero, 0<br> [0x80000138]:csrrs a7, fflags, zero<br> [0x8000013c]:sh a7, 0(a5)<br>    |
|   2|[0x8000220e]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : f11<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val < 0<br>                     |[0x8000015c]:fsh fa1, 4093(s1)<br> [0x80000160]:addi zero, zero, 0<br> [0x80000164]:addi zero, zero, 0<br> [0x80000168]:csrrs a7, fflags, zero<br> [0x8000016c]:sh a7, 10(a5)<br>   |
|   3|[0x80002218]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : f3<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                       |[0x80000188]:fsh ft3, 2730(t4)<br> [0x8000018c]:addi zero, zero, 0<br> [0x80000190]:addi zero, zero, 0<br> [0x80000194]:csrrs a7, fflags, zero<br> [0x80000198]:sh a7, 20(a5)<br>   |
|   4|[0x80002222]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : f16<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                      |[0x800001b8]:fsh fa6, 3839(s4)<br> [0x800001bc]:addi zero, zero, 0<br> [0x800001c0]:addi zero, zero, 0<br> [0x800001c4]:csrrs a7, fflags, zero<br> [0x800001c8]:sh a7, 30(a5)<br>   |
|   5|[0x8000222c]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : f27<br> - imm_val == 0<br>                                                              |[0x800001ec]:fsh fs11, 0(s9)<br> [0x800001f0]:addi zero, zero, 0<br> [0x800001f4]:addi zero, zero, 0<br> [0x800001f8]:csrrs a7, fflags, zero<br> [0x800001fc]:sh a7, 40(a5)<br>     |
|   6|[0x80002236]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : f1<br>                                                                                   |[0x80000218]:fsh ft1, 2048(ra)<br> [0x8000021c]:addi zero, zero, 0<br> [0x80000220]:addi zero, zero, 0<br> [0x80000224]:csrrs a7, fflags, zero<br> [0x80000228]:sh a7, 50(a5)<br>   |
|   7|[0x80002240]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : f30<br>                                                                                  |[0x80000244]:fsh ft10, 2048(gp)<br> [0x80000248]:addi zero, zero, 0<br> [0x8000024c]:addi zero, zero, 0<br> [0x80000250]:csrrs a7, fflags, zero<br> [0x80000254]:sh a7, 60(a5)<br>  |
|   8|[0x8000224a]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : f4<br>                                                                                  |[0x80000270]:fsh ft4, 2048(t6)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:sh a7, 70(a5)<br>   |
|   9|[0x80002254]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : f28<br>                                                                                 |[0x8000029c]:fsh ft8, 2048(s10)<br> [0x800002a0]:addi zero, zero, 0<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:csrrs a7, fflags, zero<br> [0x800002ac]:sh a7, 80(a5)<br>  |
|  10|[0x8000225e]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : f8<br>                                                                                  |[0x800002c8]:fsh fs0, 2048(s5)<br> [0x800002cc]:addi zero, zero, 0<br> [0x800002d0]:addi zero, zero, 0<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sh a7, 90(a5)<br>   |
|  11|[0x80002268]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : f12<br>                                                                                 |[0x800002f4]:fsh fa2, 2048(a1)<br> [0x800002f8]:addi zero, zero, 0<br> [0x800002fc]:addi zero, zero, 0<br> [0x80000300]:csrrs a7, fflags, zero<br> [0x80000304]:sh a7, 100(a5)<br>  |
|  12|[0x800022b4]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : f29<br>                                                                                 |[0x8000032c]:fsh ft9, 2048(a6)<br> [0x80000330]:addi zero, zero, 0<br> [0x80000334]:addi zero, zero, 0<br> [0x80000338]:csrrs s5, fflags, zero<br> [0x8000033c]:sh s5, 0(s3)<br>    |
|  13|[0x800022c4]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : f9<br>                                                                                  |[0x80000364]:fsh fs1, 2048(s8)<br> [0x80000368]:addi zero, zero, 0<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:csrrs a7, fflags, zero<br> [0x80000374]:sh a7, 0(a5)<br>    |
|  14|[0x800022ce]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : f5<br>                                                                                  |[0x80000390]:fsh ft5, 2048(a2)<br> [0x80000394]:addi zero, zero, 0<br> [0x80000398]:addi zero, zero, 0<br> [0x8000039c]:csrrs a7, fflags, zero<br> [0x800003a0]:sh a7, 10(a5)<br>   |
|  15|[0x800022e4]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : f23<br>                                                                                 |[0x800003c8]:fsh fs7, 2048(a5)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br> [0x800003d4]:csrrs s5, fflags, zero<br> [0x800003d8]:sh s5, 0(s3)<br>    |
|  16|[0x800022f4]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : f19<br>                                                                                 |[0x80000400]:fsh fs3, 2048(s7)<br> [0x80000404]:addi zero, zero, 0<br> [0x80000408]:addi zero, zero, 0<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sh a7, 0(a5)<br>    |
|  17|[0x800022fe]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : f18<br>                                                                                  |[0x8000042c]:fsh fs2, 2048(t1)<br> [0x80000430]:addi zero, zero, 0<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:sh a7, 10(a5)<br>   |
|  18|[0x80002308]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : f15<br>                                                                                 |[0x80000458]:fsh fa5, 2048(s3)<br> [0x8000045c]:addi zero, zero, 0<br> [0x80000460]:addi zero, zero, 0<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:sh a7, 20(a5)<br>   |
|  19|[0x80002312]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : f0<br>                                                                                  |[0x80000484]:fsh ft0, 2048(s11)<br> [0x80000488]:addi zero, zero, 0<br> [0x8000048c]:addi zero, zero, 0<br> [0x80000490]:csrrs a7, fflags, zero<br> [0x80000494]:sh a7, 30(a5)<br>  |
|  20|[0x8000231c]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : f6<br>                                                                                   |[0x800004b0]:fsh ft6, 2048(fp)<br> [0x800004b4]:addi zero, zero, 0<br> [0x800004b8]:addi zero, zero, 0<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:sh a7, 40(a5)<br>   |
|  21|[0x80002326]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : f14<br>                                                                                 |[0x800004dc]:fsh fa4, 2048(t5)<br> [0x800004e0]:addi zero, zero, 0<br> [0x800004e4]:addi zero, zero, 0<br> [0x800004e8]:csrrs a7, fflags, zero<br> [0x800004ec]:sh a7, 50(a5)<br>   |
|  22|[0x80002330]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : f10<br>                                                                                  |[0x80000508]:fsh fa0, 2048(tp)<br> [0x8000050c]:addi zero, zero, 0<br> [0x80000510]:addi zero, zero, 0<br> [0x80000514]:csrrs a7, fflags, zero<br> [0x80000518]:sh a7, 60(a5)<br>   |
|  23|[0x8000233a]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : f13<br>                                                                                  |[0x80000534]:fsh fa3, 2048(t0)<br> [0x80000538]:addi zero, zero, 0<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:csrrs a7, fflags, zero<br> [0x80000544]:sh a7, 70(a5)<br>   |
|  24|[0x80002344]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : f25<br>                                                                                 |[0x80000560]:fsh fs9, 2048(a0)<br> [0x80000564]:addi zero, zero, 0<br> [0x80000568]:addi zero, zero, 0<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:sh a7, 80(a5)<br>   |
|  25|[0x8000234e]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : f26<br>                                                                                  |[0x8000058c]:fsh fs10, 2048(sp)<br> [0x80000590]:addi zero, zero, 0<br> [0x80000594]:addi zero, zero, 0<br> [0x80000598]:csrrs a7, fflags, zero<br> [0x8000059c]:sh a7, 90(a5)<br>  |
|  26|[0x80002358]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : f31<br>                                                                                  |[0x800005b8]:fsh ft11, 2048(t2)<br> [0x800005bc]:addi zero, zero, 0<br> [0x800005c0]:addi zero, zero, 0<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:sh a7, 100(a5)<br> |
|  27|[0x800023a4]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : f7<br>                                                                                  |[0x800005f0]:fsh ft7, 2048(a7)<br> [0x800005f4]:addi zero, zero, 0<br> [0x800005f8]:addi zero, zero, 0<br> [0x800005fc]:csrrs s5, fflags, zero<br> [0x80000600]:sh s5, 0(s3)<br>    |
|  28|[0x800023b4]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : f22<br>                                                                                 |[0x80000628]:fsh fs6, 2048(a4)<br> [0x8000062c]:addi zero, zero, 0<br> [0x80000630]:addi zero, zero, 0<br> [0x80000634]:csrrs a7, fflags, zero<br> [0x80000638]:sh a7, 0(a5)<br>    |
|  29|[0x800023be]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : f24<br>                                                                                 |[0x80000654]:fsh fs8, 2048(a3)<br> [0x80000658]:addi zero, zero, 0<br> [0x8000065c]:addi zero, zero, 0<br> [0x80000660]:csrrs a7, fflags, zero<br> [0x80000664]:sh a7, 10(a5)<br>   |
|  30|[0x800023c8]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : f21<br>                                                                                 |[0x80000680]:fsh fs5, 2048(t3)<br> [0x80000684]:addi zero, zero, 0<br> [0x80000688]:addi zero, zero, 0<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:sh a7, 20(a5)<br>   |
|  31|[0x800023d2]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : f17<br>                                                                                 |[0x800006ac]:fsh fa7, 2048(s2)<br> [0x800006b0]:addi zero, zero, 0<br> [0x800006b4]:addi zero, zero, 0<br> [0x800006b8]:csrrs a7, fflags, zero<br> [0x800006bc]:sh a7, 30(a5)<br>   |
|  32|[0x800023f4]<br>0x0000000000000000|- rs2 : f2<br>                                                                                                  |[0x800006e4]:fsh ft2, 2048(a5)<br> [0x800006e8]:addi zero, zero, 0<br> [0x800006ec]:addi zero, zero, 0<br> [0x800006f0]:csrrs s5, fflags, zero<br> [0x800006f4]:sh s5, 0(s3)<br>    |
