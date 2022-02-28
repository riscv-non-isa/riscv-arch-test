
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x80000480')]      |
| SIG_REGION                | [('0x80002204', '0x80002414', '66 dwords')]      |
| COV_LABELS                | fmv.x.h_b1      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/fmv.x.h_b1-01.S/ref.S    |
| Total Number of coverpoints| 93     |
| Total Coverpoints Hit     | 89      |
| Total Signature Updates   | 66      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 33     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000468]:fmv.x.h t6, ft11
      [0x8000046c]:csrrs a7, fflags, zero
      [0x80000470]:sh t6, 20(a5)
 -- Signature Address: 0x800023f8 Data: 0x0000000000007BFF
 -- Redundant Coverpoints hit by the op
      - opcode : fmv.x.h
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmv.x.h', 'rd : x10', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fmv.x.h a0, ft1
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sh a0, 0(a5)
Current Store : [0x8000012c] : sh a7, 2(a5) -- Store: [0x80002206]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f19', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fmv.x.h s11, fs3
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sh s11, 10(a5)
Current Store : [0x80000144] : sh a7, 12(a5) -- Store: [0x80002210]:0x0000000000000000




Last Coverpoint : ['rd : x4', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fmv.x.h tp, fs0
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sh tp, 20(a5)
Current Store : [0x8000015c] : sh a7, 22(a5) -- Store: [0x8000221a]:0x0000000000000000




Last Coverpoint : ['rd : x15', 'rs1 : f16', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000174]:fmv.x.h a5, fa6
	-[0x80000178]:csrrs s5, fflags, zero
	-[0x8000017c]:sh a5, 0(s3)
Current Store : [0x80000180] : sh s5, 2(s3) -- Store: [0x80002236]:0x0000000000000000




Last Coverpoint : ['rd : x2', 'rs1 : f3', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fmv.x.h sp, ft3
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sh sp, 0(a5)
Current Store : [0x800001a4] : sh a7, 2(a5) -- Store: [0x80002246]:0x0000000000000000




Last Coverpoint : ['rd : x8', 'rs1 : f4', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fmv.x.h fp, ft4
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sh fp, 10(a5)
Current Store : [0x800001bc] : sh a7, 12(a5) -- Store: [0x80002250]:0x0000000000000000




Last Coverpoint : ['rd : x3', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fmv.x.h gp, fa0
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sh gp, 20(a5)
Current Store : [0x800001d4] : sh a7, 22(a5) -- Store: [0x8000225a]:0x0000000000000000




Last Coverpoint : ['rd : x11', 'rs1 : f24', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fmv.x.h a1, fs8
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sh a1, 30(a5)
Current Store : [0x800001ec] : sh a7, 32(a5) -- Store: [0x80002264]:0x0000000000000000




Last Coverpoint : ['rd : x16', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000204]:fmv.x.h a6, fs2
	-[0x80000208]:csrrs s5, fflags, zero
	-[0x8000020c]:sh a6, 0(s3)
Current Store : [0x80000210] : sh s5, 2(s3) -- Store: [0x80002286]:0x0000000000000000




Last Coverpoint : ['rd : x30', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000228]:fmv.x.h t5, fs6
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sh t5, 0(a5)
Current Store : [0x80000234] : sh a7, 2(a5) -- Store: [0x80002296]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000240]:fmv.x.h ra, fa4
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sh ra, 10(a5)
Current Store : [0x8000024c] : sh a7, 12(a5) -- Store: [0x800022a0]:0x0000000000000000




Last Coverpoint : ['rd : x13', 'rs1 : f28', 'fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fmv.x.h a3, ft8
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sh a3, 20(a5)
Current Store : [0x80000264] : sh a7, 22(a5) -- Store: [0x800022aa]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000270]:fmv.x.h zero, fs5
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sh zero, 30(a5)
Current Store : [0x8000027c] : sh a7, 32(a5) -- Store: [0x800022b4]:0x0000000000000000




Last Coverpoint : ['rd : x14', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000288]:fmv.x.h a4, fa1
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sh a4, 40(a5)
Current Store : [0x80000294] : sh a7, 42(a5) -- Store: [0x800022be]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fmv.x.h t0, fs4
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sh t0, 50(a5)
Current Store : [0x800002ac] : sh a7, 52(a5) -- Store: [0x800022c8]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fmv.x.h s4, ft10
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sh s4, 60(a5)
Current Store : [0x800002c4] : sh a7, 62(a5) -- Store: [0x800022d2]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fmv.x.h s5, fs10
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:sh s5, 70(a5)
Current Store : [0x800002dc] : sh a7, 72(a5) -- Store: [0x800022dc]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f12', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fmv.x.h s7, fa2
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:sh s7, 80(a5)
Current Store : [0x800002f4] : sh a7, 82(a5) -- Store: [0x800022e6]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fmv.x.h s6, fs1
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sh s6, 90(a5)
Current Store : [0x8000030c] : sh a7, 92(a5) -- Store: [0x800022f0]:0x0000000000000000




Last Coverpoint : ['rd : x12', 'rs1 : f27', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000318]:fmv.x.h a2, fs11
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sh a2, 100(a5)
Current Store : [0x80000324] : sh a7, 102(a5) -- Store: [0x800022fa]:0x0000000000000000




Last Coverpoint : ['rd : x26', 'rs1 : f17', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000330]:fmv.x.h s10, fa7
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sh s10, 110(a5)
Current Store : [0x8000033c] : sh a7, 112(a5) -- Store: [0x80002304]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f29', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fmv.x.h s3, ft9
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sh s3, 120(a5)
Current Store : [0x80000354] : sh a7, 122(a5) -- Store: [0x8000230e]:0x0000000000000000




Last Coverpoint : ['rd : x31', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000360]:fmv.x.h t6, ft2
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sh t6, 130(a5)
Current Store : [0x8000036c] : sh a7, 132(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rd : x6', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000378]:fmv.x.h t1, ft11
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sh t1, 140(a5)
Current Store : [0x80000384] : sh a7, 142(a5) -- Store: [0x80002322]:0x0000000000000000




Last Coverpoint : ['rd : x9', 'rs1 : f15']
Last Code Sequence : 
	-[0x80000390]:fmv.x.h s1, fa5
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sh s1, 150(a5)
Current Store : [0x8000039c] : sh a7, 152(a5) -- Store: [0x8000232c]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f13']
Last Code Sequence : 
	-[0x800003a8]:fmv.x.h t2, fa3
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sh t2, 160(a5)
Current Store : [0x800003b4] : sh a7, 162(a5) -- Store: [0x80002336]:0x0000000000000000




Last Coverpoint : ['rd : x25', 'rs1 : f0']
Last Code Sequence : 
	-[0x800003c0]:fmv.x.h s9, ft0
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sh s9, 170(a5)
Current Store : [0x800003cc] : sh a7, 172(a5) -- Store: [0x80002340]:0x0000000000000000




Last Coverpoint : ['rd : x18', 'rs1 : f5']
Last Code Sequence : 
	-[0x800003d8]:fmv.x.h s2, ft5
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sh s2, 180(a5)
Current Store : [0x800003e4] : sh a7, 182(a5) -- Store: [0x8000234a]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f7']
Last Code Sequence : 
	-[0x800003f0]:fmv.x.h t3, ft7
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sh t3, 190(a5)
Current Store : [0x800003fc] : sh a7, 192(a5) -- Store: [0x80002354]:0x0000000000000000




Last Coverpoint : ['rd : x17', 'rs1 : f6']
Last Code Sequence : 
	-[0x80000414]:fmv.x.h a7, ft6
	-[0x80000418]:csrrs s5, fflags, zero
	-[0x8000041c]:sh a7, 0(s3)
Current Store : [0x80000420] : sh s5, 2(s3) -- Store: [0x800023d6]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f25']
Last Code Sequence : 
	-[0x80000438]:fmv.x.h t4, fs9
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sh t4, 0(a5)
Current Store : [0x80000444] : sh a7, 2(a5) -- Store: [0x800023e6]:0x0000000000000000




Last Coverpoint : ['rd : x24', 'rs1 : f23']
Last Code Sequence : 
	-[0x80000450]:fmv.x.h s8, fs7
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sh s8, 10(a5)
Current Store : [0x8000045c] : sh a7, 12(a5) -- Store: [0x800023f0]:0x0000000000000000




Last Coverpoint : ['opcode : fmv.x.h', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000468]:fmv.x.h t6, ft11
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:sh t6, 20(a5)
Current Store : [0x80000474] : sh a7, 22(a5) -- Store: [0x800023fa]:0x0000000000000000





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

|s.no|            signature             |                                                         coverpoints                                                         |                                                    code                                                    |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x0000000000000000|- opcode : fmv.x.h<br> - rd : x10<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat<br> |[0x80000120]:fmv.x.h a0, ft1<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sh a0, 0(a5)<br>      |
|   2|[0x8000220e]<br>0xFFFFFFFFFFFFBC00|- rd : x27<br> - rs1 : f19<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat<br>                       |[0x80000138]:fmv.x.h s11, fs3<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sh s11, 10(a5)<br>   |
|   3|[0x80002218]<br>0x0000000000003C00|- rd : x4<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat<br>                         |[0x80000150]:fmv.x.h tp, fs0<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sh tp, 20(a5)<br>     |
|   4|[0x80002234]<br>0xFFFFFFFFFFFFFD55|- rd : x15<br> - rs1 : f16<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 0  #nosat<br>                       |[0x80000174]:fmv.x.h a5, fa6<br> [0x80000178]:csrrs s5, fflags, zero<br> [0x8000017c]:sh a5, 0(s3)<br>      |
|   5|[0x80002244]<br>0x0000000000007C01|- rd : x2<br> - rs1 : f3<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 0  #nosat<br>                         |[0x80000198]:fmv.x.h sp, ft3<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sh sp, 0(a5)<br>      |
|   6|[0x8000224e]<br>0xFFFFFFFFFFFFFE55|- rd : x8<br> - rs1 : f4<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 0  #nosat<br>                         |[0x800001b0]:fmv.x.h fp, ft4<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sh fp, 10(a5)<br>     |
|   7|[0x80002258]<br>0x0000000000007E01|- rd : x3<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 0  #nosat<br>                        |[0x800001c8]:fmv.x.h gp, fa0<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sh gp, 20(a5)<br>     |
|   8|[0x80002262]<br>0xFFFFFFFFFFFFFE00|- rd : x11<br> - rs1 : f24<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat<br>                       |[0x800001e0]:fmv.x.h a1, fs8<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sh a1, 30(a5)<br>     |
|   9|[0x80002284]<br>0x0000000000007E00|- rd : x16<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat<br>                       |[0x80000204]:fmv.x.h a6, fs2<br> [0x80000208]:csrrs s5, fflags, zero<br> [0x8000020c]:sh a6, 0(s3)<br>      |
|  10|[0x80002294]<br>0xFFFFFFFFFFFFFC00|- rd : x30<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat<br>                       |[0x80000228]:fmv.x.h t5, fs6<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sh t5, 0(a5)<br>      |
|  11|[0x8000229e]<br>0x0000000000007C00|- rd : x1<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat<br>                        |[0x80000240]:fmv.x.h ra, fa4<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sh ra, 10(a5)<br>     |
|  12|[0x800022a8]<br>0xFFFFFFFFFFFFFBFF|- rd : x13<br> - rs1 : f28<br> - fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat<br>                       |[0x80000258]:fmv.x.h a3, ft8<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sh a3, 20(a5)<br>     |
|  13|[0x800022b2]<br>0x0000000000000000|- rd : x0<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat<br>                        |[0x80000270]:fmv.x.h zero, fs5<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sh zero, 30(a5)<br> |
|  14|[0x800022bc]<br>0xFFFFFFFFFFFF8455|- rd : x14<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 0  #nosat<br>                       |[0x80000288]:fmv.x.h a4, fa1<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sh a4, 40(a5)<br>     |
|  15|[0x800022c6]<br>0x0000000000000401|- rd : x5<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 0  #nosat<br>                        |[0x800002a0]:fmv.x.h t0, fs4<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sh t0, 50(a5)<br>     |
|  16|[0x800022d0]<br>0xFFFFFFFFFFFF8400|- rd : x20<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat<br>                       |[0x800002b8]:fmv.x.h s4, ft10<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sh s4, 60(a5)<br>    |
|  17|[0x800022da]<br>0x0000000000000400|- rd : x21<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat<br>                       |[0x800002d0]:fmv.x.h s5, fs10<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sh s5, 70(a5)<br>    |
|  18|[0x800022e4]<br>0xFFFFFFFFFFFF83FF|- rd : x23<br> - rs1 : f12<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat<br>                       |[0x800002e8]:fmv.x.h s7, fa2<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:sh s7, 80(a5)<br>     |
|  19|[0x800022ee]<br>0x00000000000003FF|- rd : x22<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat<br>                        |[0x80000300]:fmv.x.h s6, fs1<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sh s6, 90(a5)<br>     |
|  20|[0x800022f8]<br>0xFFFFFFFFFFFF83FE|- rd : x12<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 0  #nosat<br>                       |[0x80000318]:fmv.x.h a2, fs11<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sh a2, 100(a5)<br>   |
|  21|[0x80002302]<br>0x0000000000000002|- rd : x26<br> - rs1 : f17<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 0  #nosat<br>                       |[0x80000330]:fmv.x.h s10, fa7<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sh s10, 110(a5)<br>  |
|  22|[0x8000230c]<br>0xFFFFFFFFFFFF8001|- rd : x19<br> - rs1 : f29<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat<br>                       |[0x80000348]:fmv.x.h s3, ft9<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sh s3, 120(a5)<br>    |
|  23|[0x80002316]<br>0x0000000000000001|- rd : x31<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat<br>                        |[0x80000360]:fmv.x.h t6, ft2<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sh t6, 130(a5)<br>    |
|  24|[0x80002320]<br>0xFFFFFFFFFFFF8000|- rd : x6<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat<br>                        |[0x80000378]:fmv.x.h t1, ft11<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sh t1, 140(a5)<br>   |
|  25|[0x8000232a]<br>0x0000000000000000|- rd : x9<br> - rs1 : f15<br>                                                                                                |[0x80000390]:fmv.x.h s1, fa5<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sh s1, 150(a5)<br>    |
|  26|[0x80002334]<br>0x0000000000000000|- rd : x7<br> - rs1 : f13<br>                                                                                                |[0x800003a8]:fmv.x.h t2, fa3<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sh t2, 160(a5)<br>    |
|  27|[0x8000233e]<br>0x0000000000000000|- rd : x25<br> - rs1 : f0<br>                                                                                                |[0x800003c0]:fmv.x.h s9, ft0<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sh s9, 170(a5)<br>    |
|  28|[0x80002348]<br>0x0000000000000000|- rd : x18<br> - rs1 : f5<br>                                                                                                |[0x800003d8]:fmv.x.h s2, ft5<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sh s2, 180(a5)<br>    |
|  29|[0x80002352]<br>0x0000000000000000|- rd : x28<br> - rs1 : f7<br>                                                                                                |[0x800003f0]:fmv.x.h t3, ft7<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sh t3, 190(a5)<br>    |
|  30|[0x800023d4]<br>0x0000000000000000|- rd : x17<br> - rs1 : f6<br>                                                                                                |[0x80000414]:fmv.x.h a7, ft6<br> [0x80000418]:csrrs s5, fflags, zero<br> [0x8000041c]:sh a7, 0(s3)<br>      |
|  31|[0x800023e4]<br>0x0000000000000000|- rd : x29<br> - rs1 : f25<br>                                                                                               |[0x80000438]:fmv.x.h t4, fs9<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sh t4, 0(a5)<br>      |
|  32|[0x800023ee]<br>0x0000000000000000|- rd : x24<br> - rs1 : f23<br>                                                                                               |[0x80000450]:fmv.x.h s8, fs7<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sh s8, 10(a5)<br>     |
