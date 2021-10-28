
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000990')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | fsd-align      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fsd-align-01.S/ref.S    |
| Total Number of coverpoints| 75     |
| Total Coverpoints Hit     | 71      |
| Total Signature Updates   | 64      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 32     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsd', 'rs1 : x21', 'rs2 : f0', 'ea_align == 0 and (imm_val % 4) == 0', 'imm_val > 0']
Last Code Sequence : 
	-[0x800003c4]:fsd ft0, 64(s5)
Current Store : [0x800003d4] : sd a7, 0(a5) -- Store: [0x80002210]:0x0000000000000000




Last Coverpoint : ['rs1 : x11', 'rs2 : f18', 'ea_align == 0 and (imm_val % 4) == 1']
Last Code Sequence : 
	-[0x800003f4]:fsd fs2, 5(a1)
Current Store : [0x80000404] : sd a7, 16(a5) -- Store: [0x80002220]:0x0000000000000000




Last Coverpoint : ['rs1 : x25', 'rs2 : f30', 'ea_align == 0 and (imm_val % 4) == 2', 'imm_val < 0']
Last Code Sequence : 
	-[0x80000428]:fsd ft10, 2730(s9)
Current Store : [0x80000438] : sd a7, 32(a5) -- Store: [0x80002230]:0x0000000000000000




Last Coverpoint : ['rs1 : x9', 'rs2 : f14', 'ea_align == 0 and (imm_val % 4) == 3']
Last Code Sequence : 
	-[0x80000458]:fsd fa4, 4095(s1)
Current Store : [0x80000468] : sd a7, 48(a5) -- Store: [0x80002240]:0x0000000000000000




Last Coverpoint : ['rs1 : x3', 'rs2 : f16', 'imm_val == 0']
Last Code Sequence : 
	-[0x80000488]:fsd fa6, 0(gp)
Current Store : [0x80000498] : sd a7, 64(a5) -- Store: [0x80002250]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : f1']
Last Code Sequence : 
	-[0x800004b4]:fsd ft1, 2048(a4)
Current Store : [0x800004c4] : sd a7, 80(a5) -- Store: [0x80002260]:0x0000000000000000




Last Coverpoint : ['rs1 : x19', 'rs2 : f17']
Last Code Sequence : 
	-[0x800004e0]:fsd fa7, 2048(s3)
Current Store : [0x800004f0] : sd a7, 96(a5) -- Store: [0x80002270]:0x0000000000000000




Last Coverpoint : ['rs1 : x29', 'rs2 : f10']
Last Code Sequence : 
	-[0x8000050c]:fsd fa0, 2048(t4)
Current Store : [0x8000051c] : sd a7, 112(a5) -- Store: [0x80002280]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rs2 : f20']
Last Code Sequence : 
	-[0x80000538]:fsd fs4, 2048(ra)
Current Store : [0x80000548] : sd a7, 128(a5) -- Store: [0x80002290]:0x0000000000000000




Last Coverpoint : ['rs1 : x18', 'rs2 : f19']
Last Code Sequence : 
	-[0x80000564]:fsd fs3, 2048(s2)
Current Store : [0x80000574] : sd a7, 144(a5) -- Store: [0x800022a0]:0x0000000000000000




Last Coverpoint : ['rs1 : x27', 'rs2 : f15']
Last Code Sequence : 
	-[0x80000590]:fsd fa5, 2048(s11)
Current Store : [0x800005a0] : sd a7, 160(a5) -- Store: [0x800022b0]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rs2 : f25']
Last Code Sequence : 
	-[0x800005bc]:fsd fs9, 2048(t5)
Current Store : [0x800005cc] : sd a7, 176(a5) -- Store: [0x800022c0]:0x0000000000000000




Last Coverpoint : ['rs1 : x12', 'rs2 : f22']
Last Code Sequence : 
	-[0x800005e8]:fsd fs6, 2048(a2)
Current Store : [0x800005f8] : sd a7, 192(a5) -- Store: [0x800022d0]:0x0000000000000000




Last Coverpoint : ['rs1 : x24', 'rs2 : f11']
Last Code Sequence : 
	-[0x80000614]:fsd fa1, 2048(s8)
Current Store : [0x80000624] : sd a7, 208(a5) -- Store: [0x800022e0]:0x0000000000000000




Last Coverpoint : ['rs1 : x13', 'rs2 : f2']
Last Code Sequence : 
	-[0x80000640]:fsd ft2, 2048(a3)
Current Store : [0x80000650] : sd a7, 224(a5) -- Store: [0x800022f0]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rs2 : f3']
Last Code Sequence : 
	-[0x80000678]:fsd ft3, 2048(a5)
Current Store : [0x80000688] : sd s5, 0(s3) -- Store: [0x80002300]:0x0000000000000000




Last Coverpoint : ['rs1 : x7', 'rs2 : f27']
Last Code Sequence : 
	-[0x800006b0]:fsd fs11, 2048(t2)
Current Store : [0x800006c0] : sd a7, 0(a5) -- Store: [0x80002310]:0x0000000000000000




Last Coverpoint : ['rs1 : x2', 'rs2 : f9']
Last Code Sequence : 
	-[0x800006dc]:fsd fs1, 2048(sp)
Current Store : [0x800006ec] : sd a7, 16(a5) -- Store: [0x80002320]:0x0000000000000000




Last Coverpoint : ['rs1 : x10', 'rs2 : f6']
Last Code Sequence : 
	-[0x80000708]:fsd ft6, 2048(a0)
Current Store : [0x80000718] : sd a7, 32(a5) -- Store: [0x80002330]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rs2 : f23']
Last Code Sequence : 
	-[0x80000734]:fsd fs7, 2048(t3)
Current Store : [0x80000744] : sd a7, 48(a5) -- Store: [0x80002340]:0x0000000000000000




Last Coverpoint : ['rs1 : x4', 'rs2 : f5']
Last Code Sequence : 
	-[0x80000760]:fsd ft5, 2048(tp)
Current Store : [0x80000770] : sd a7, 64(a5) -- Store: [0x80002350]:0x0000000000000000




Last Coverpoint : ['rs1 : x16', 'rs2 : f28']
Last Code Sequence : 
	-[0x80000798]:fsd ft8, 2048(a6)
Current Store : [0x800007a8] : sd s5, 0(s3) -- Store: [0x80002360]:0x0000000000000000




Last Coverpoint : ['rs1 : x26', 'rs2 : f26']
Last Code Sequence : 
	-[0x800007d0]:fsd fs10, 2048(s10)
Current Store : [0x800007e0] : sd a7, 0(a5) -- Store: [0x80002370]:0x0000000000000000




Last Coverpoint : ['rs1 : x22', 'rs2 : f21']
Last Code Sequence : 
	-[0x800007fc]:fsd fs5, 2048(s6)
Current Store : [0x8000080c] : sd a7, 16(a5) -- Store: [0x80002380]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rs2 : f12']
Last Code Sequence : 
	-[0x80000828]:fsd fa2, 2048(s7)
Current Store : [0x80000838] : sd a7, 32(a5) -- Store: [0x80002390]:0x0000000000000000




Last Coverpoint : ['rs1 : x31', 'rs2 : f13']
Last Code Sequence : 
	-[0x80000854]:fsd fa3, 2048(t6)
Current Store : [0x80000864] : sd a7, 48(a5) -- Store: [0x800023a0]:0x0000000000000000




Last Coverpoint : ['rs1 : x8', 'rs2 : f7']
Last Code Sequence : 
	-[0x80000880]:fsd ft7, 2048(fp)
Current Store : [0x80000890] : sd a7, 64(a5) -- Store: [0x800023b0]:0x0000000000000000




Last Coverpoint : ['rs1 : x5', 'rs2 : f24']
Last Code Sequence : 
	-[0x800008ac]:fsd fs8, 2048(t0)
Current Store : [0x800008bc] : sd a7, 80(a5) -- Store: [0x800023c0]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rs2 : f4']
Last Code Sequence : 
	-[0x800008d8]:fsd ft4, 2048(t1)
Current Store : [0x800008e8] : sd a7, 96(a5) -- Store: [0x800023d0]:0x0000000000000000




Last Coverpoint : ['rs1 : x17', 'rs2 : f29']
Last Code Sequence : 
	-[0x80000910]:fsd ft9, 2048(a7)
Current Store : [0x80000920] : sd s5, 0(s3) -- Store: [0x800023e0]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rs2 : f8']
Last Code Sequence : 
	-[0x80000948]:fsd fs0, 2048(s4)
Current Store : [0x80000958] : sd a7, 0(a5) -- Store: [0x800023f0]:0x0000000000000000




Last Coverpoint : ['rs2 : f31']
Last Code Sequence : 
	-[0x80000974]:fsd ft11, 2048(sp)
Current Store : [0x80000984] : sd a7, 16(a5) -- Store: [0x80002400]:0x0000000000000000





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

|s.no|            signature             |                                                  coverpoints                                                  |                code                 |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------|-------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : fsd<br> - rs1 : x21<br> - rs2 : f0<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x800003c4]:fsd ft0, 64(s5)<br>     |
|   2|[0x80002220]<br>0x0000000000000005|- rs1 : x11<br> - rs2 : f18<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                     |[0x800003f4]:fsd fs2, 5(a1)<br>      |
|   3|[0x80002230]<br>0xF76DF56FF76DF56F|- rs1 : x25<br> - rs2 : f30<br> - ea_align == 0 and (imm_val % 4) == 2<br> - imm_val < 0<br>                   |[0x80000428]:fsd ft10, 2730(s9)<br>  |
|   4|[0x80002240]<br>0xF56FF76DF56FF76D|- rs1 : x9<br> - rs2 : f14<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                      |[0x80000458]:fsd fa4, 4095(s1)<br>   |
|   5|[0x80002250]<br>0x0000000080003FF0|- rs1 : x3<br> - rs2 : f16<br> - imm_val == 0<br>                                                              |[0x80000488]:fsd fa6, 0(gp)<br>      |
|   6|[0x80002260]<br>0xFEEDBEADFEEDBEAD|- rs1 : x14<br> - rs2 : f1<br>                                                                                 |[0x800004b4]:fsd ft1, 2048(a4)<br>   |
|   7|[0x80002270]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : f17<br>                                                                                |[0x800004e0]:fsd fa7, 2048(s3)<br>   |
|   8|[0x80002280]<br>0x56FF76DF56FF76DF|- rs1 : x29<br> - rs2 : f10<br>                                                                                |[0x8000050c]:fsd fa0, 2048(t4)<br>   |
|   9|[0x80002290]<br>0xB7D5BFDDB7D5BFDD|- rs1 : x1<br> - rs2 : f20<br>                                                                                 |[0x80000538]:fsd fs4, 2048(ra)<br>   |
|  10|[0x800022a0]<br>0x0000000080002A70|- rs1 : x18<br> - rs2 : f19<br>                                                                                |[0x80000564]:fsd fs3, 2048(s2)<br>   |
|  11|[0x800022b0]<br>0x0000000080002210|- rs1 : x27<br> - rs2 : f15<br>                                                                                |[0x80000590]:fsd fa5, 2048(s11)<br>  |
|  12|[0x800022c0]<br>0x0000000080002786|- rs1 : x30<br> - rs2 : f25<br>                                                                                |[0x800005bc]:fsd fs9, 2048(t5)<br>   |
|  13|[0x800022d0]<br>0xFFFFFFFFFFFFF800|- rs1 : x12<br> - rs2 : f22<br>                                                                                |[0x800005e8]:fsd fs6, 2048(a2)<br>   |
|  14|[0x800022e0]<br>0x000000008000221B|- rs1 : x24<br> - rs2 : f11<br>                                                                                |[0x80000614]:fsd fa1, 2048(s8)<br>   |
|  15|[0x800022f0]<br>0x0000000A00006000|- rs1 : x13<br> - rs2 : f2<br>                                                                                 |[0x80000640]:fsd ft2, 2048(a3)<br>   |
|  16|[0x80002300]<br>0x0000000080002250|- rs1 : x15<br> - rs2 : f3<br>                                                                                 |[0x80000678]:fsd ft3, 2048(a5)<br>   |
|  17|[0x80002310]<br>0x0000000080002AB0|- rs1 : x7<br> - rs2 : f27<br>                                                                                 |[0x800006b0]:fsd fs11, 2048(t2)<br>  |
|  18|[0x80002320]<br>0x0000000080002241|- rs1 : x2<br> - rs2 : f9<br>                                                                                  |[0x800006dc]:fsd fs1, 2048(sp)<br>   |
|  19|[0x80002330]<br>0x0000000080002000|- rs1 : x10<br> - rs2 : f6<br>                                                                                 |[0x80000708]:fsd ft6, 2048(a0)<br>   |
|  20|[0x80002340]<br>0xB6FAB7FBB6FAB7FB|- rs1 : x28<br> - rs2 : f23<br>                                                                                |[0x80000734]:fsd fs7, 2048(t3)<br>   |
|  21|[0x80002350]<br>0x0000000080000390|- rs1 : x4<br> - rs2 : f5<br>                                                                                  |[0x80000760]:fsd ft5, 2048(tp)<br>   |
|  22|[0x80002360]<br>0x0000000080002B40|- rs1 : x16<br> - rs2 : f28<br>                                                                                |[0x80000798]:fsd ft8, 2048(a6)<br>   |
|  23|[0x80002370]<br>0x0000000080002B70|- rs1 : x26<br> - rs2 : f26<br>                                                                                |[0x800007d0]:fsd fs10, 2048(s10)<br> |
|  24|[0x80002380]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : f21<br>                                                                                |[0x800007fc]:fsd fs5, 2048(s6)<br>   |
|  25|[0x80002390]<br>0x0000000080002AD0|- rs1 : x23<br> - rs2 : f12<br>                                                                                |[0x80000828]:fsd fa2, 2048(s7)<br>   |
|  26|[0x800023a0]<br>0x0000000080002AF0|- rs1 : x31<br> - rs2 : f13<br>                                                                                |[0x80000854]:fsd fa3, 2048(t6)<br>   |
|  27|[0x800023b0]<br>0x0000000080002B10|- rs1 : x8<br> - rs2 : f7<br>                                                                                  |[0x80000880]:fsd ft7, 2048(fp)<br>   |
|  28|[0x800023c0]<br>0x0000000080002AE0|- rs1 : x5<br> - rs2 : f24<br>                                                                                 |[0x800008ac]:fsd fs8, 2048(t0)<br>   |
|  29|[0x800023d0]<br>0x0000000080002B50|- rs1 : x6<br> - rs2 : f4<br>                                                                                  |[0x800008d8]:fsd ft4, 2048(t1)<br>   |
|  30|[0x800023e0]<br>0x0000000080002A80|- rs1 : x17<br> - rs2 : f29<br>                                                                                |[0x80000910]:fsd ft9, 2048(a7)<br>   |
|  31|[0x800023f0]<br>0x0000000080002BB0|- rs1 : x20<br> - rs2 : f8<br>                                                                                 |[0x80000948]:fsd fs0, 2048(s4)<br>   |
|  32|[0x80002400]<br>0x0000000080002BA0|- rs2 : f31<br>                                                                                                |[0x80000974]:fsd ft11, 2048(sp)<br>  |
