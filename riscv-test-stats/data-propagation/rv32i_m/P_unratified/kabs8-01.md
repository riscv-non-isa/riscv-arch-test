
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002390', '96 words')]      |
| COV_LABELS                | kabs8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kabs8-01.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 96      |
| STAT1                     | 45      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 48     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000464]:KABS8 t6, t5
      [0x80000468]:csrrs t5, vxsat, zero
      [0x8000046c]:sw t6, 104(sp)
 -- Signature Address: 0x80002328 Data: 0x02000504
 -- Redundant Coverpoints hit by the op
      - opcode : kabs8
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 2
      - rs1_b2_val == 0
      - rs1_b0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f4]:KABS8 t6, t5
      [0x800004f8]:csrrs t5, vxsat, zero
      [0x800004fc]:sw t6, 152(sp)
 -- Signature Address: 0x80002358 Data: 0x08050041
 -- Redundant Coverpoints hit by the op
      - opcode : kabs8
      - rs1 : x30
      - rd : x31
      - rs1_b2_val == -5
      - rs1_b1_val == 0
      - rs1_b0_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000584]:KABS8 t6, t5
      [0x80000588]:csrrs t5, vxsat, zero
      [0x8000058c]:sw t6, 200(sp)
 -- Signature Address: 0x80002388 Data: 0x02031040
 -- Redundant Coverpoints hit by the op
      - opcode : kabs8
      - rs1 : x30
      - rd : x31
      - rs1_b3_val == 2
      - rs1_b2_val == -3
      - rs1_b1_val == 16






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kabs8', 'rs1 : x11', 'rd : x25', 'rs1_b0_val == -128', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x80000114]:KABS8 s9, a1
	-[0x80000118]:csrrs a1, vxsat, zero
	-[0x8000011c]:sw s9, 0(s4)
Current Store : [0x80000120] : sw a1, 4(s4) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rd : x4', 'rs1_b3_val == -86', 'rs1_b2_val == -3', 'rs1_b1_val == -5', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x8000012c]:KABS8 tp, s3
	-[0x80000130]:csrrs s3, vxsat, zero
	-[0x80000134]:sw tp, 8(s4)
Current Store : [0x80000138] : sw s3, 12(s4) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rd : x19', 'rs1_b3_val == 85', 'rs1_b2_val == -65', 'rs1_b1_val == -9', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000144]:KABS8 s3, t2
	-[0x80000148]:csrrs t2, vxsat, zero
	-[0x8000014c]:sw s3, 16(s4)
Current Store : [0x80000150] : sw t2, 20(s4) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rd : x14', 'rs1_b3_val == 127', 'rs1_b1_val == -33']
Last Code Sequence : 
	-[0x8000015c]:KABS8 a4, t4
	-[0x80000160]:csrrs t4, vxsat, zero
	-[0x80000164]:sw a4, 24(s4)
Current Store : [0x80000168] : sw t4, 28(s4) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rd : x28', 'rs1_b3_val == -65', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000174]:KABS8 t3, a2
	-[0x80000178]:csrrs a2, vxsat, zero
	-[0x8000017c]:sw t3, 32(s4)
Current Store : [0x80000180] : sw a2, 36(s4) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rd : x12', 'rs1_b3_val == -33', 'rs1_b2_val == 2', 'rs1_b1_val == 2', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x8000018c]:KABS8 a2, s11
	-[0x80000190]:csrrs s11, vxsat, zero
	-[0x80000194]:sw a2, 40(s4)
Current Store : [0x80000198] : sw s11, 44(s4) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rd : x1', 'rs1_b3_val == 0', 'rs1_b2_val == 0', 'rs1_b1_val == 0', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x800001a4]:KABS8 ra, zero
	-[0x800001a8]:csrrs zero, vxsat, zero
	-[0x800001ac]:sw ra, 48(s4)
Current Store : [0x800001b0] : sw zero, 52(s4) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rd : x21', 'rs1_b3_val == -9', 'rs1_b2_val == -5', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x800001bc]:KABS8 s5, a3
	-[0x800001c0]:csrrs a3, vxsat, zero
	-[0x800001c4]:sw s5, 56(s4)
Current Store : [0x800001c8] : sw a3, 60(s4) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rd : x13', 'rs1_b3_val == -5', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x800001d4]:KABS8 a3, a4
	-[0x800001d8]:csrrs a4, vxsat, zero
	-[0x800001dc]:sw a3, 64(s4)
Current Store : [0x800001e0] : sw a4, 68(s4) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rd : x27', 'rs1_b3_val == -3']
Last Code Sequence : 
	-[0x800001ec]:KABS8 s11, s6
	-[0x800001f0]:csrrs s6, vxsat, zero
	-[0x800001f4]:sw s11, 72(s4)
Current Store : [0x800001f8] : sw s6, 76(s4) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rd : x9', 'rs1_b3_val == -2', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x80000204]:KABS8 s1, a0
	-[0x80000208]:csrrs a0, vxsat, zero
	-[0x8000020c]:sw s1, 80(s4)
Current Store : [0x80000210] : sw a0, 84(s4) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rd : x15', 'rs1_b3_val == -128', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x8000021c]:KABS8 a5, a7
	-[0x80000220]:csrrs a7, vxsat, zero
	-[0x80000224]:sw a5, 88(s4)
Current Store : [0x80000228] : sw a7, 92(s4) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rd : x7', 'rs1_b3_val == 64']
Last Code Sequence : 
	-[0x80000234]:KABS8 t2, s1
	-[0x80000238]:csrrs s1, vxsat, zero
	-[0x8000023c]:sw t2, 96(s4)
Current Store : [0x80000240] : sw s1, 100(s4) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rd : x3', 'rs1_b3_val == 32', 'rs1_b2_val == 4']
Last Code Sequence : 
	-[0x8000024c]:KABS8 gp, a6
	-[0x80000250]:csrrs a6, vxsat, zero
	-[0x80000254]:sw gp, 104(s4)
Current Store : [0x80000258] : sw a6, 108(s4) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rd : x31', 'rs1_b3_val == 16', 'rs1_b1_val == 127', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x80000264]:KABS8 t6, t1
	-[0x80000268]:csrrs t1, vxsat, zero
	-[0x8000026c]:sw t6, 112(s4)
Current Store : [0x80000270] : sw t1, 116(s4) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rd : x10', 'rs1_b3_val == 8', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x8000027c]:KABS8 a0, s7
	-[0x80000280]:csrrs s7, vxsat, zero
	-[0x80000284]:sw a0, 120(s4)
Current Store : [0x80000288] : sw s7, 124(s4) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rd : x6', 'rs1_b3_val == 4']
Last Code Sequence : 
	-[0x80000294]:KABS8 t1, tp
	-[0x80000298]:csrrs tp, vxsat, zero
	-[0x8000029c]:sw t1, 128(s4)
Current Store : [0x800002a0] : sw tp, 132(s4) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rd : x0', 'rs1_b3_val == 2', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x800002ac]:KABS8 zero, sp
	-[0x800002b0]:csrrs sp, vxsat, zero
	-[0x800002b4]:sw zero, 136(s4)
Current Store : [0x800002b8] : sw sp, 140(s4) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rd : x30', 'rs1_b3_val == 1', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x800002c4]:KABS8 t5, s2
	-[0x800002c8]:csrrs s2, vxsat, zero
	-[0x800002cc]:sw t5, 144(s4)
Current Store : [0x800002d0] : sw s2, 148(s4) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rd : x5', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x800002dc]:KABS8 t0, t3
	-[0x800002e0]:csrrs t3, vxsat, zero
	-[0x800002e4]:sw t0, 152(s4)
Current Store : [0x800002e8] : sw t3, 156(s4) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rd : x2', 'rs1_b3_val == -1', 'rs1_b2_val == -1', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x800002f4]:KABS8 sp, s5
	-[0x800002f8]:csrrs s5, vxsat, zero
	-[0x800002fc]:sw sp, 160(s4)
Current Store : [0x80000300] : sw s5, 164(s4) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rd : x18', 'rs1_b2_val == 85', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x8000030c]:KABS8 s2, fp
	-[0x80000310]:csrrs fp, vxsat, zero
	-[0x80000314]:sw s2, 168(s4)
Current Store : [0x80000318] : sw fp, 172(s4) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rd : x20', 'rs1_b3_val == -17', 'rs1_b2_val == 8', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x8000032c]:KABS8 s4, s8
	-[0x80000330]:csrrs s8, vxsat, zero
	-[0x80000334]:sw s4, 0(sp)
Current Store : [0x80000338] : sw s8, 4(sp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rd : x16', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x80000344]:KABS8 a6, s9
	-[0x80000348]:csrrs s9, vxsat, zero
	-[0x8000034c]:sw a6, 8(sp)
Current Store : [0x80000350] : sw s9, 12(sp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rd : x17', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x8000035c]:KABS8 a7, s10
	-[0x80000360]:csrrs s10, vxsat, zero
	-[0x80000364]:sw a7, 16(sp)
Current Store : [0x80000368] : sw s10, 20(sp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rd : x22', 'rs1_b1_val == -2', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80000374]:KABS8 s6, t0
	-[0x80000378]:csrrs t0, vxsat, zero
	-[0x8000037c]:sw s6, 24(sp)
Current Store : [0x80000380] : sw t0, 28(sp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rd : x24', 'rs1_b2_val == 1', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x8000038c]:KABS8 s8, a5
	-[0x80000390]:csrrs a5, vxsat, zero
	-[0x80000394]:sw s8, 32(sp)
Current Store : [0x80000398] : sw a5, 36(sp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rd : x26', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800003a4]:KABS8 s10, ra
	-[0x800003a8]:csrrs ra, vxsat, zero
	-[0x800003ac]:sw s10, 40(sp)
Current Store : [0x800003b0] : sw ra, 44(sp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rd : x11', 'rs1_b2_val == -33', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x800003bc]:KABS8 a1, s4
	-[0x800003c0]:csrrs s4, vxsat, zero
	-[0x800003c4]:sw a1, 48(sp)
Current Store : [0x800003c8] : sw s4, 52(sp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rd : x29', 'rs1_b2_val == 127']
Last Code Sequence : 
	-[0x800003d4]:KABS8 t4, t6
	-[0x800003d8]:csrrs t6, vxsat, zero
	-[0x800003dc]:sw t4, 56(sp)
Current Store : [0x800003e0] : sw t6, 60(sp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rd : x8', 'rs1_b2_val == -17']
Last Code Sequence : 
	-[0x800003ec]:KABS8 fp, t5
	-[0x800003f0]:csrrs t5, vxsat, zero
	-[0x800003f4]:sw fp, 64(sp)
Current Store : [0x800003f8] : sw t5, 68(sp) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rd : x23', 'rs1_b2_val == -9']
Last Code Sequence : 
	-[0x80000404]:KABS8 s7, gp
	-[0x80000408]:csrrs gp, vxsat, zero
	-[0x8000040c]:sw s7, 72(sp)
Current Store : [0x80000410] : sw gp, 76(sp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_b2_val == 64']
Last Code Sequence : 
	-[0x8000041c]:KABS8 t6, t5
	-[0x80000420]:csrrs t5, vxsat, zero
	-[0x80000424]:sw t6, 80(sp)
Current Store : [0x80000428] : sw t5, 84(sp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_b2_val == 32', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x80000434]:KABS8 t6, t5
	-[0x80000438]:csrrs t5, vxsat, zero
	-[0x8000043c]:sw t6, 88(sp)
Current Store : [0x80000440] : sw t5, 92(sp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_b2_val == 16']
Last Code Sequence : 
	-[0x8000044c]:KABS8 t6, t5
	-[0x80000450]:csrrs t5, vxsat, zero
	-[0x80000454]:sw t6, 96(sp)
Current Store : [0x80000458] : sw t5, 100(sp) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['opcode : kabs8', 'rs1 : x30', 'rd : x31', 'rs1_b3_val == 2', 'rs1_b2_val == 0', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000464]:KABS8 t6, t5
	-[0x80000468]:csrrs t5, vxsat, zero
	-[0x8000046c]:sw t6, 104(sp)
Current Store : [0x80000470] : sw t5, 108(sp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_b1_val == -86']
Last Code Sequence : 
	-[0x8000047c]:KABS8 t6, t5
	-[0x80000480]:csrrs t5, vxsat, zero
	-[0x80000484]:sw t6, 112(sp)
Current Store : [0x80000488] : sw t5, 116(sp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_b1_val == 85']
Last Code Sequence : 
	-[0x80000494]:KABS8 t6, t5
	-[0x80000498]:csrrs t5, vxsat, zero
	-[0x8000049c]:sw t6, 120(sp)
Current Store : [0x800004a0] : sw t5, 124(sp) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_b1_val == -3']
Last Code Sequence : 
	-[0x800004ac]:KABS8 t6, t5
	-[0x800004b0]:csrrs t5, vxsat, zero
	-[0x800004b4]:sw t6, 128(sp)
Current Store : [0x800004b8] : sw t5, 132(sp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_b1_val == 64']
Last Code Sequence : 
	-[0x800004c4]:KABS8 t6, t5
	-[0x800004c8]:csrrs t5, vxsat, zero
	-[0x800004cc]:sw t6, 136(sp)
Current Store : [0x800004d0] : sw t5, 140(sp) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 32']
Last Code Sequence : 
	-[0x800004dc]:KABS8 t6, t5
	-[0x800004e0]:csrrs t5, vxsat, zero
	-[0x800004e4]:sw t6, 144(sp)
Current Store : [0x800004e8] : sw t5, 148(sp) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['opcode : kabs8', 'rs1 : x30', 'rd : x31', 'rs1_b2_val == -5', 'rs1_b1_val == 0', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x800004f4]:KABS8 t6, t5
	-[0x800004f8]:csrrs t5, vxsat, zero
	-[0x800004fc]:sw t6, 152(sp)
Current Store : [0x80000500] : sw t5, 156(sp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_b1_val == -1']
Last Code Sequence : 
	-[0x8000050c]:KABS8 t6, t5
	-[0x80000510]:csrrs t5, vxsat, zero
	-[0x80000514]:sw t6, 160(sp)
Current Store : [0x80000518] : sw t5, 164(sp) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_b2_val == -128']
Last Code Sequence : 
	-[0x80000524]:KABS8 t6, t5
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 168(sp)
Current Store : [0x80000530] : sw t5, 172(sp) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_b2_val == -2']
Last Code Sequence : 
	-[0x8000053c]:KABS8 t6, t5
	-[0x80000540]:csrrs t5, vxsat, zero
	-[0x80000544]:sw t6, 176(sp)
Current Store : [0x80000548] : sw t5, 180(sp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000554]:KABS8 t6, t5
	-[0x80000558]:csrrs t5, vxsat, zero
	-[0x8000055c]:sw t6, 184(sp)
Current Store : [0x80000560] : sw t5, 188(sp) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_b2_val == -86']
Last Code Sequence : 
	-[0x8000056c]:KABS8 t6, t5
	-[0x80000570]:csrrs t5, vxsat, zero
	-[0x80000574]:sw t6, 192(sp)
Current Store : [0x80000578] : sw t5, 196(sp) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['opcode : kabs8', 'rs1 : x30', 'rd : x31', 'rs1_b3_val == 2', 'rs1_b2_val == -3', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x80000584]:KABS8 t6, t5
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 200(sp)
Current Store : [0x80000590] : sw t5, 204(sp) -- Store: [0x8000238c]:0x00000001





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

|s.no|        signature         |                                                        coverpoints                                                        |                                                  code                                                   |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0707017F|- opcode : kabs8<br> - rs1 : x11<br> - rd : x25<br> - rs1_b0_val == -128<br> - rs1_b1_val == 1<br>                         |[0x80000114]:KABS8 s9, a1<br> [0x80000118]:csrrs a1, vxsat, zero<br> [0x8000011c]:sw s9, 0(s4)<br>       |
|   2|[0x80002218]<br>0x56030510|- rs1 : x19<br> - rd : x4<br> - rs1_b3_val == -86<br> - rs1_b2_val == -3<br> - rs1_b1_val == -5<br> - rs1_b0_val == 16<br> |[0x8000012c]:KABS8 tp, s3<br> [0x80000130]:csrrs s3, vxsat, zero<br> [0x80000134]:sw tp, 8(s4)<br>       |
|   3|[0x80002220]<br>0x55410901|- rs1 : x7<br> - rd : x19<br> - rs1_b3_val == 85<br> - rs1_b2_val == -65<br> - rs1_b1_val == -9<br> - rs1_b0_val == 1<br>  |[0x80000144]:KABS8 s3, t2<br> [0x80000148]:csrrs t2, vxsat, zero<br> [0x8000014c]:sw s3, 16(s4)<br>      |
|   4|[0x80002228]<br>0x7F0A2108|- rs1 : x29<br> - rd : x14<br> - rs1_b3_val == 127<br> - rs1_b1_val == -33<br>                                             |[0x8000015c]:KABS8 a4, t4<br> [0x80000160]:csrrs t4, vxsat, zero<br> [0x80000164]:sw a4, 24(s4)<br>      |
|   5|[0x80002230]<br>0x41410120|- rs1 : x12<br> - rd : x28<br> - rs1_b3_val == -65<br> - rs1_b0_val == 32<br>                                              |[0x80000174]:KABS8 t3, a2<br> [0x80000178]:csrrs a2, vxsat, zero<br> [0x8000017c]:sw t3, 32(s4)<br>      |
|   6|[0x80002238]<br>0x21020205|- rs1 : x27<br> - rd : x12<br> - rs1_b3_val == -33<br> - rs1_b2_val == 2<br> - rs1_b1_val == 2<br> - rs1_b0_val == -5<br>  |[0x8000018c]:KABS8 a2, s11<br> [0x80000190]:csrrs s11, vxsat, zero<br> [0x80000194]:sw a2, 40(s4)<br>    |
|   7|[0x80002240]<br>0x00000000|- rs1 : x0<br> - rd : x1<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>       |[0x800001a4]:KABS8 ra, zero<br> [0x800001a8]:csrrs zero, vxsat, zero<br> [0x800001ac]:sw ra, 48(s4)<br>  |
|   8|[0x80002248]<br>0x09050340|- rs1 : x13<br> - rd : x21<br> - rs1_b3_val == -9<br> - rs1_b2_val == -5<br> - rs1_b0_val == 64<br>                        |[0x800001bc]:KABS8 s5, a3<br> [0x800001c0]:csrrs a3, vxsat, zero<br> [0x800001c4]:sw s5, 56(s4)<br>      |
|   9|[0x80002250]<br>0x05407F10|- rs1 : x14<br> - rd : x13<br> - rs1_b3_val == -5<br> - rs1_b1_val == -128<br>                                             |[0x800001d4]:KABS8 a3, a4<br> [0x800001d8]:csrrs a4, vxsat, zero<br> [0x800001dc]:sw a3, 64(s4)<br>      |
|  10|[0x80002258]<br>0x030A0606|- rs1 : x22<br> - rd : x27<br> - rs1_b3_val == -3<br>                                                                      |[0x800001ec]:KABS8 s11, s6<br> [0x800001f0]:csrrs s6, vxsat, zero<br> [0x800001f4]:sw s11, 72(s4)<br>    |
|  11|[0x80002260]<br>0x02024009|- rs1 : x10<br> - rd : x9<br> - rs1_b3_val == -2<br> - rs1_b0_val == -9<br>                                                |[0x80000204]:KABS8 s1, a0<br> [0x80000208]:csrrs a0, vxsat, zero<br> [0x8000020c]:sw s1, 80(s4)<br>      |
|  12|[0x80002268]<br>0x7F413F11|- rs1 : x17<br> - rd : x15<br> - rs1_b3_val == -128<br> - rs1_b0_val == -17<br>                                            |[0x8000021c]:KABS8 a5, a7<br> [0x80000220]:csrrs a7, vxsat, zero<br> [0x80000224]:sw a5, 88(s4)<br>      |
|  13|[0x80002270]<br>0x40062100|- rs1 : x9<br> - rd : x7<br> - rs1_b3_val == 64<br>                                                                        |[0x80000234]:KABS8 t2, s1<br> [0x80000238]:csrrs s1, vxsat, zero<br> [0x8000023c]:sw t2, 96(s4)<br>      |
|  14|[0x80002278]<br>0x20040609|- rs1 : x16<br> - rd : x3<br> - rs1_b3_val == 32<br> - rs1_b2_val == 4<br>                                                 |[0x8000024c]:KABS8 gp, a6<br> [0x80000250]:csrrs a6, vxsat, zero<br> [0x80000254]:sw gp, 104(s4)<br>     |
|  15|[0x80002280]<br>0x10067F56|- rs1 : x6<br> - rd : x31<br> - rs1_b3_val == 16<br> - rs1_b1_val == 127<br> - rs1_b0_val == -86<br>                       |[0x80000264]:KABS8 t6, t1<br> [0x80000268]:csrrs t1, vxsat, zero<br> [0x8000026c]:sw t6, 112(s4)<br>     |
|  16|[0x80002288]<br>0x0803043F|- rs1 : x23<br> - rd : x10<br> - rs1_b3_val == 8<br> - rs1_b1_val == 4<br>                                                 |[0x8000027c]:KABS8 a0, s7<br> [0x80000280]:csrrs s7, vxsat, zero<br> [0x80000284]:sw a0, 120(s4)<br>     |
|  17|[0x80002290]<br>0x04060907|- rs1 : x4<br> - rd : x6<br> - rs1_b3_val == 4<br>                                                                         |[0x80000294]:KABS8 t1, tp<br> [0x80000298]:csrrs tp, vxsat, zero<br> [0x8000029c]:sw t1, 128(s4)<br>     |
|  18|[0x80002298]<br>0x00000000|- rs1 : x2<br> - rd : x0<br> - rs1_b3_val == 2<br> - rs1_b1_val == 16<br>                                                  |[0x800002ac]:KABS8 zero, sp<br> [0x800002b0]:csrrs sp, vxsat, zero<br> [0x800002b4]:sw zero, 136(s4)<br> |
|  19|[0x800022a0]<br>0x01410809|- rs1 : x18<br> - rd : x30<br> - rs1_b3_val == 1<br> - rs1_b1_val == 8<br>                                                 |[0x800002c4]:KABS8 t5, s2<br> [0x800002c8]:csrrs s2, vxsat, zero<br> [0x800002cc]:sw t5, 144(s4)<br>     |
|  20|[0x800022a8]<br>0x00410655|- rs1 : x28<br> - rd : x5<br> - rs1_b0_val == 85<br>                                                                       |[0x800002dc]:KABS8 t0, t3<br> [0x800002e0]:csrrs t3, vxsat, zero<br> [0x800002e4]:sw t0, 152(s4)<br>     |
|  21|[0x800022b0]<br>0x01014104|- rs1 : x21<br> - rd : x2<br> - rs1_b3_val == -1<br> - rs1_b2_val == -1<br> - rs1_b1_val == -65<br>                        |[0x800002f4]:KABS8 sp, s5<br> [0x800002f8]:csrrs s5, vxsat, zero<br> [0x800002fc]:sw sp, 160(s4)<br>     |
|  22|[0x800022b8]<br>0x40550903|- rs1 : x8<br> - rd : x18<br> - rs1_b2_val == 85<br> - rs1_b0_val == -3<br>                                                |[0x8000030c]:KABS8 s2, fp<br> [0x80000310]:csrrs fp, vxsat, zero<br> [0x80000314]:sw s2, 168(s4)<br>     |
|  23|[0x800022c0]<br>0x11083F41|- rs1 : x24<br> - rd : x20<br> - rs1_b3_val == -17<br> - rs1_b2_val == 8<br> - rs1_b0_val == -65<br>                       |[0x8000032c]:KABS8 s4, s8<br> [0x80000330]:csrrs s8, vxsat, zero<br> [0x80000334]:sw s4, 0(sp)<br>       |
|  24|[0x800022c8]<br>0x40042121|- rs1 : x25<br> - rd : x16<br> - rs1_b0_val == -33<br>                                                                     |[0x80000344]:KABS8 a6, s9<br> [0x80000348]:csrrs s9, vxsat, zero<br> [0x8000034c]:sw a6, 8(sp)<br>       |
|  25|[0x800022d0]<br>0x050A0402|- rs1 : x26<br> - rd : x17<br> - rs1_b0_val == -2<br>                                                                      |[0x8000035c]:KABS8 a7, s10<br> [0x80000360]:csrrs s10, vxsat, zero<br> [0x80000364]:sw a7, 16(sp)<br>    |
|  26|[0x800022d8]<br>0x070A0208|- rs1 : x5<br> - rd : x22<br> - rs1_b1_val == -2<br> - rs1_b0_val == 8<br>                                                 |[0x80000374]:KABS8 s6, t0<br> [0x80000378]:csrrs t0, vxsat, zero<br> [0x8000037c]:sw s6, 24(sp)<br>      |
|  27|[0x800022e0]<br>0x02017F04|- rs1 : x15<br> - rd : x24<br> - rs1_b2_val == 1<br> - rs1_b0_val == 4<br>                                                 |[0x8000038c]:KABS8 s8, a5<br> [0x80000390]:csrrs a5, vxsat, zero<br> [0x80000394]:sw s8, 32(sp)<br>      |
|  28|[0x800022e8]<br>0x05080902|- rs1 : x1<br> - rd : x26<br> - rs1_b0_val == 2<br>                                                                        |[0x800003a4]:KABS8 s10, ra<br> [0x800003a8]:csrrs ra, vxsat, zero<br> [0x800003ac]:sw s10, 40(sp)<br>    |
|  29|[0x800022f0]<br>0x40210801|- rs1 : x20<br> - rd : x11<br> - rs1_b2_val == -33<br> - rs1_b0_val == -1<br>                                              |[0x800003bc]:KABS8 a1, s4<br> [0x800003c0]:csrrs s4, vxsat, zero<br> [0x800003c4]:sw a1, 48(sp)<br>      |
|  30|[0x800022f8]<br>0x7F7F3F08|- rs1 : x31<br> - rd : x29<br> - rs1_b2_val == 127<br>                                                                     |[0x800003d4]:KABS8 t4, t6<br> [0x800003d8]:csrrs t6, vxsat, zero<br> [0x800003dc]:sw t4, 56(sp)<br>      |
|  31|[0x80002300]<br>0x05110904|- rs1 : x30<br> - rd : x8<br> - rs1_b2_val == -17<br>                                                                      |[0x800003ec]:KABS8 fp, t5<br> [0x800003f0]:csrrs t5, vxsat, zero<br> [0x800003f4]:sw fp, 64(sp)<br>      |
|  32|[0x80002308]<br>0x05093F08|- rs1 : x3<br> - rd : x23<br> - rs1_b2_val == -9<br>                                                                       |[0x80000404]:KABS8 s7, gp<br> [0x80000408]:csrrs gp, vxsat, zero<br> [0x8000040c]:sw s7, 72(sp)<br>      |
|  33|[0x80002310]<br>0x40400702|- rs1_b2_val == 64<br>                                                                                                     |[0x8000041c]:KABS8 t6, t5<br> [0x80000420]:csrrs t5, vxsat, zero<br> [0x80000424]:sw t6, 80(sp)<br>      |
|  34|[0x80002318]<br>0x10201108|- rs1_b2_val == 32<br> - rs1_b1_val == -17<br>                                                                             |[0x80000434]:KABS8 t6, t5<br> [0x80000438]:csrrs t5, vxsat, zero<br> [0x8000043c]:sw t6, 88(sp)<br>      |
|  35|[0x80002320]<br>0x06100601|- rs1_b2_val == 16<br>                                                                                                     |[0x8000044c]:KABS8 t6, t5<br> [0x80000450]:csrrs t5, vxsat, zero<br> [0x80000454]:sw t6, 96(sp)<br>      |
|  36|[0x80002330]<br>0x10065610|- rs1_b1_val == -86<br>                                                                                                    |[0x8000047c]:KABS8 t6, t5<br> [0x80000480]:csrrs t5, vxsat, zero<br> [0x80000484]:sw t6, 112(sp)<br>     |
|  37|[0x80002338]<br>0x21085520|- rs1_b1_val == 85<br>                                                                                                     |[0x80000494]:KABS8 t6, t5<br> [0x80000498]:csrrs t5, vxsat, zero<br> [0x8000049c]:sw t6, 120(sp)<br>     |
|  38|[0x80002340]<br>0x05060320|- rs1_b1_val == -3<br>                                                                                                     |[0x800004ac]:KABS8 t6, t5<br> [0x800004b0]:csrrs t5, vxsat, zero<br> [0x800004b4]:sw t6, 128(sp)<br>     |
|  39|[0x80002348]<br>0x007F4021|- rs1_b1_val == 64<br>                                                                                                     |[0x800004c4]:KABS8 t6, t5<br> [0x800004c8]:csrrs t5, vxsat, zero<br> [0x800004cc]:sw t6, 136(sp)<br>     |
|  40|[0x80002350]<br>0x107F2006|- rs1_b1_val == 32<br>                                                                                                     |[0x800004dc]:KABS8 t6, t5<br> [0x800004e0]:csrrs t5, vxsat, zero<br> [0x800004e4]:sw t6, 144(sp)<br>     |
|  41|[0x80002360]<br>0x2001017F|- rs1_b1_val == -1<br>                                                                                                     |[0x8000050c]:KABS8 t6, t5<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 160(sp)<br>     |
|  42|[0x80002368]<br>0x027F217F|- rs1_b2_val == -128<br>                                                                                                   |[0x80000524]:KABS8 t6, t5<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 168(sp)<br>     |
|  43|[0x80002370]<br>0x7F020705|- rs1_b2_val == -2<br>                                                                                                     |[0x8000053c]:KABS8 t6, t5<br> [0x80000540]:csrrs t5, vxsat, zero<br> [0x80000544]:sw t6, 176(sp)<br>     |
|  44|[0x80002378]<br>0x3F0A097F|- rs1_b0_val == 127<br>                                                                                                    |[0x80000554]:KABS8 t6, t5<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 184(sp)<br>     |
|  45|[0x80002380]<br>0x11562101|- rs1_b2_val == -86<br>                                                                                                    |[0x8000056c]:KABS8 t6, t5<br> [0x80000570]:csrrs t5, vxsat, zero<br> [0x80000574]:sw t6, 192(sp)<br>     |
