
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000640')]      |
| SIG_REGION                | [('0x80002210', '0x80002390', '96 words')]      |
| COV_LABELS                | ksll8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ksll8-01.S    |
| Total Number of coverpoints| 194     |
| Total Coverpoints Hit     | 188      |
| Total Signature Updates   | 94      |
| STAT1                     | 44      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 47     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c0]:KSLL8 t6, t5, t4
      [0x800004c4]:csrrs t5, vxsat, zero
      [0x800004c8]:sw t6, 0(ra)
 -- Signature Address: 0x80002318 Data: 0x800030B8
 -- Redundant Coverpoints hit by the op
      - opcode : ksll8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == -33
      - rs1_b2_val == 0
      - rs1_b0_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005f0]:KSLL8 t6, t5, t4
      [0x800005f4]:csrrs t5, vxsat, zero
      [0x800005f8]:sw t6, 88(ra)
 -- Signature Address: 0x80002370 Data: 0x80F87F00
 -- Redundant Coverpoints hit by the op
      - opcode : ksll8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 3
      - rs1_b3_val == -33
      - rs1_b2_val == -1
      - rs1_b1_val == 32
      - rs1_b0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000628]:KSLL8 t6, t5, t4
      [0x8000062c]:csrrs t5, vxsat, zero
      [0x80000630]:sw t6, 104(ra)
 -- Signature Address: 0x80002380 Data: 0xFE2080FA
 -- Redundant Coverpoints hit by the op
      - opcode : ksll8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == -1
      - rs1_b2_val == 16
      - rs1_b1_val == -128
      - rs1_b0_val == -3






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ksll8', 'rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd', 'rs2_val == 5', 'rs1_b3_val == 0', 'rs1_b2_val == 0', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x80000118]:KSLL8 s8, s8, s8
	-[0x8000011c]:csrrs s8, vxsat, zero
	-[0x80000120]:sw s8, 0(t1)
Current Store : [0x80000124] : sw s8, 4(t1) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x0', 'rs1 == rs2 != rd', 'rs2_val == 3']
Last Code Sequence : 
	-[0x80000130]:KSLL8 zero, s11, s11
	-[0x80000134]:csrrs s11, vxsat, zero
	-[0x80000138]:sw zero, 8(t1)
Current Store : [0x8000013c] : sw s11, 12(t1) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x1', 'rd : x28', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 6', 'rs1_b3_val == -33', 'rs1_b2_val == -9', 'rs1_b1_val == 32', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x8000014c]:KSLL8 t3, a4, ra
	-[0x80000150]:csrrs a4, vxsat, zero
	-[0x80000154]:sw t3, 16(t1)
Current Store : [0x80000158] : sw a4, 20(t1) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x30', 'rd : x30', 'rs2 == rd != rs1', 'rs2_val == 4', 'rs1_b3_val == 8', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x80000168]:KSLL8 t5, gp, t5
	-[0x8000016c]:csrrs gp, vxsat, zero
	-[0x80000170]:sw t5, 24(t1)
Current Store : [0x80000174] : sw gp, 28(t1) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x18', 'rd : x21', 'rs1 == rd != rs2', 'rs2_val == 2', 'rs1_b3_val == -5', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x80000184]:KSLL8 s5, s5, s2
	-[0x80000188]:csrrs s5, vxsat, zero
	-[0x8000018c]:sw s5, 32(t1)
Current Store : [0x80000190] : sw s5, 36(t1) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x31', 'rd : x29', 'rs2_val == 1', 'rs1_b3_val == -2', 'rs1_b2_val == 2', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x800001a0]:KSLL8 t4, tp, t6
	-[0x800001a4]:csrrs tp, vxsat, zero
	-[0x800001a8]:sw t4, 40(t1)
Current Store : [0x800001ac] : sw tp, 44(t1) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x28', 'rd : x2', 'rs1_b3_val == -86', 'rs1_b2_val == 127', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800001bc]:KSLL8 sp, s3, t3
	-[0x800001c0]:csrrs s3, vxsat, zero
	-[0x800001c4]:sw sp, 48(t1)
Current Store : [0x800001c8] : sw s3, 52(t1) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x2', 'rd : x17', 'rs1_b3_val == 85', 'rs1_b2_val == -3']
Last Code Sequence : 
	-[0x800001d8]:KSLL8 a7, t3, sp
	-[0x800001dc]:csrrs t3, vxsat, zero
	-[0x800001e0]:sw a7, 56(t1)
Current Store : [0x800001e4] : sw t3, 60(t1) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x14', 'rd : x13', 'rs1_b3_val == 127', 'rs1_b1_val == -1']
Last Code Sequence : 
	-[0x800001f4]:KSLL8 a3, t5, a4
	-[0x800001f8]:csrrs t5, vxsat, zero
	-[0x800001fc]:sw a3, 64(t1)
Current Store : [0x80000200] : sw t5, 68(t1) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x1', 'rs1_b3_val == -65', 'rs1_b2_val == -65', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x80000210]:KSLL8 ra, t0, t2
	-[0x80000214]:csrrs t0, vxsat, zero
	-[0x80000218]:sw ra, 72(t1)
Current Store : [0x8000021c] : sw t0, 76(t1) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x10', 'rd : x14', 'rs1_b3_val == -17', 'rs1_b2_val == 8', 'rs1_b1_val == -9', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x8000022c]:KSLL8 a4, a6, a0
	-[0x80000230]:csrrs a6, vxsat, zero
	-[0x80000234]:sw a4, 80(t1)
Current Store : [0x80000238] : sw a6, 84(t1) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x22', 'rd : x31', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x80000248]:KSLL8 t6, zero, s6
	-[0x8000024c]:csrrs zero, vxsat, zero
	-[0x80000250]:sw t6, 88(t1)
Current Store : [0x80000254] : sw zero, 92(t1) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x19', 'rd : x25', 'rs1_b3_val == -3', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000264]:KSLL8 s9, s2, s3
	-[0x80000268]:csrrs s2, vxsat, zero
	-[0x8000026c]:sw s9, 96(t1)
Current Store : [0x80000270] : sw s2, 100(t1) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x12', 'rd : x10', 'rs1_b3_val == -128', 'rs1_b2_val == -86']
Last Code Sequence : 
	-[0x80000280]:KSLL8 a0, s1, a2
	-[0x80000284]:csrrs s1, vxsat, zero
	-[0x80000288]:sw a0, 104(t1)
Current Store : [0x8000028c] : sw s1, 108(t1) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x23', 'rd : x26', 'rs1_b3_val == 64', 'rs1_b1_val == -2']
Last Code Sequence : 
	-[0x8000029c]:KSLL8 s10, ra, s7
	-[0x800002a0]:csrrs ra, vxsat, zero
	-[0x800002a4]:sw s10, 112(t1)
Current Store : [0x800002a8] : sw ra, 116(t1) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x20', 'rd : x7', 'rs1_b3_val == 32', 'rs1_b2_val == -1', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x800002b8]:KSLL8 t2, t4, s4
	-[0x800002bc]:csrrs t4, vxsat, zero
	-[0x800002c0]:sw t2, 120(t1)
Current Store : [0x800002c4] : sw t4, 124(t1) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x26', 'rd : x27', 'rs1_b3_val == 16', 'rs1_b2_val == -2', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x800002dc]:KSLL8 s11, fp, s10
	-[0x800002e0]:csrrs fp, vxsat, zero
	-[0x800002e4]:sw s11, 0(ra)
Current Store : [0x800002e8] : sw fp, 4(ra) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x21', 'rd : x3', 'rs1_b3_val == 4', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x800002f8]:KSLL8 gp, s9, s5
	-[0x800002fc]:csrrs s9, vxsat, zero
	-[0x80000300]:sw gp, 8(ra)
Current Store : [0x80000304] : sw s9, 12(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x5', 'rd : x19', 'rs1_b3_val == 2']
Last Code Sequence : 
	-[0x80000314]:KSLL8 s3, s7, t0
	-[0x80000318]:csrrs s7, vxsat, zero
	-[0x8000031c]:sw s3, 16(ra)
Current Store : [0x80000320] : sw s7, 20(ra) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x13', 'rd : x22', 'rs1_b3_val == 1', 'rs1_b1_val == -33']
Last Code Sequence : 
	-[0x80000330]:KSLL8 s6, sp, a3
	-[0x80000334]:csrrs sp, vxsat, zero
	-[0x80000338]:sw s6, 24(ra)
Current Store : [0x8000033c] : sw sp, 28(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x0', 'rd : x23', 'rs1_b3_val == -1', 'rs1_b2_val == 16', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x8000034c]:KSLL8 s7, s6, zero
	-[0x80000350]:csrrs s6, vxsat, zero
	-[0x80000354]:sw s7, 32(ra)
Current Store : [0x80000358] : sw s6, 36(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x3', 'rd : x9', 'rs1_b2_val == 85', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x80000368]:KSLL8 s1, t6, gp
	-[0x8000036c]:csrrs t6, vxsat, zero
	-[0x80000370]:sw s1, 40(ra)
Current Store : [0x80000374] : sw t6, 44(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x9', 'rd : x16', 'rs1_b2_val == -128', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x80000384]:KSLL8 a6, a3, s1
	-[0x80000388]:csrrs a3, vxsat, zero
	-[0x8000038c]:sw a6, 48(ra)
Current Store : [0x80000390] : sw a3, 52(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x29', 'rd : x18', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x800003a0]:KSLL8 s2, a5, t4
	-[0x800003a4]:csrrs a5, vxsat, zero
	-[0x800003a8]:sw s2, 56(ra)
Current Store : [0x800003ac] : sw a5, 60(ra) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x16', 'rd : x12', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x800003bc]:KSLL8 a2, a1, a6
	-[0x800003c0]:csrrs a1, vxsat, zero
	-[0x800003c4]:sw a2, 64(ra)
Current Store : [0x800003c8] : sw a1, 68(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x4', 'rd : x8', 'rs1_b1_val == -5', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x800003d8]:KSLL8 fp, a0, tp
	-[0x800003dc]:csrrs a0, vxsat, zero
	-[0x800003e0]:sw fp, 72(ra)
Current Store : [0x800003e4] : sw a0, 76(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x8', 'rd : x11', 'rs1_b2_val == -5', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x800003f4]:KSLL8 a1, a2, fp
	-[0x800003f8]:csrrs a2, vxsat, zero
	-[0x800003fc]:sw a1, 80(ra)
Current Store : [0x80000400] : sw a2, 84(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x6', 'rd : x15', 'rs1_b2_val == 1', 'rs1_b1_val == 127', 'rs1_b0_val == -128']
Last Code Sequence : 
	-[0x80000410]:KSLL8 a5, s4, t1
	-[0x80000414]:csrrs s4, vxsat, zero
	-[0x80000418]:sw a5, 88(ra)
Current Store : [0x8000041c] : sw s4, 92(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x15', 'rd : x4', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x8000042c]:KSLL8 tp, s10, a5
	-[0x80000430]:csrrs s10, vxsat, zero
	-[0x80000434]:sw tp, 96(ra)
Current Store : [0x80000438] : sw s10, 100(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x25', 'rd : x6', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000448]:KSLL8 t1, t2, s9
	-[0x8000044c]:csrrs t2, vxsat, zero
	-[0x80000450]:sw t1, 104(ra)
Current Store : [0x80000454] : sw t2, 108(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x17', 'rd : x5', 'rs1_b2_val == 64']
Last Code Sequence : 
	-[0x80000464]:KSLL8 t0, t1, a7
	-[0x80000468]:csrrs t1, vxsat, zero
	-[0x8000046c]:sw t0, 112(ra)
Current Store : [0x80000470] : sw t1, 116(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x11', 'rd : x20', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x80000480]:KSLL8 s4, a7, a1
	-[0x80000484]:csrrs a7, vxsat, zero
	-[0x80000488]:sw s4, 120(ra)
Current Store : [0x8000048c] : sw a7, 124(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_b2_val == 4']
Last Code Sequence : 
	-[0x8000049c]:KSLL8 t6, t5, t4
	-[0x800004a0]:csrrs t5, vxsat, zero
	-[0x800004a4]:sw t6, 128(ra)
Current Store : [0x800004a8] : sw t5, 132(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['opcode : ksll8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val == -33', 'rs1_b2_val == 0', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x800004c0]:KSLL8 t6, t5, t4
	-[0x800004c4]:csrrs t5, vxsat, zero
	-[0x800004c8]:sw t6, 0(ra)
Current Store : [0x800004cc] : sw t5, 4(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 85']
Last Code Sequence : 
	-[0x800004dc]:KSLL8 t6, t5, t4
	-[0x800004e0]:csrrs t5, vxsat, zero
	-[0x800004e4]:sw t6, 8(ra)
Current Store : [0x800004e8] : sw t5, 12(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_b1_val == -65']
Last Code Sequence : 
	-[0x800004f8]:KSLL8 t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 16(ra)
Current Store : [0x80000504] : sw t5, 20(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_b2_val == -33', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x80000514]:KSLL8 t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 24(ra)
Current Store : [0x80000520] : sw t5, 28(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000530]:KSLL8 t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 32(ra)
Current Store : [0x8000053c] : sw t5, 36(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_b1_val == -17']
Last Code Sequence : 
	-[0x8000054c]:KSLL8 t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 40(ra)
Current Store : [0x80000558] : sw t5, 44(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_b1_val == 64', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x80000568]:KSLL8 t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 48(ra)
Current Store : [0x80000574] : sw t5, 52(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 4']
Last Code Sequence : 
	-[0x80000584]:KSLL8 t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 56(ra)
Current Store : [0x80000590] : sw t5, 60(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_b1_val == -3']
Last Code Sequence : 
	-[0x800005a0]:KSLL8 t6, t5, t4
	-[0x800005a4]:csrrs t5, vxsat, zero
	-[0x800005a8]:sw t6, 64(ra)
Current Store : [0x800005ac] : sw t5, 68(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_b2_val == -17']
Last Code Sequence : 
	-[0x800005bc]:KSLL8 t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 72(ra)
Current Store : [0x800005c8] : sw t5, 76(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_b1_val == -86']
Last Code Sequence : 
	-[0x800005d8]:KSLL8 t6, t5, t4
	-[0x800005dc]:csrrs t5, vxsat, zero
	-[0x800005e0]:sw t6, 80(ra)
Current Store : [0x800005e4] : sw t5, 84(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['opcode : ksll8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 3', 'rs1_b3_val == -33', 'rs1_b2_val == -1', 'rs1_b1_val == 32', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x800005f0]:KSLL8 t6, t5, t4
	-[0x800005f4]:csrrs t5, vxsat, zero
	-[0x800005f8]:sw t6, 88(ra)
Current Store : [0x800005fc] : sw t5, 92(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_b3_val == -9']
Last Code Sequence : 
	-[0x8000060c]:KSLL8 t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 96(ra)
Current Store : [0x80000618] : sw t5, 100(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['opcode : ksll8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val == -1', 'rs1_b2_val == 16', 'rs1_b1_val == -128', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x80000628]:KSLL8 t6, t5, t4
	-[0x8000062c]:csrrs t5, vxsat, zero
	-[0x80000630]:sw t6, 104(ra)
Current Store : [0x80000634] : sw t5, 108(ra) -- Store: [0x80002384]:0x00000001





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

|s.no|        signature         |                                                                                                coverpoints                                                                                                 |                                                     code                                                     |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : ksll8<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_val == 5<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                             |[0x80000118]:KSLL8 s8, s8, s8<br> [0x8000011c]:csrrs s8, vxsat, zero<br> [0x80000120]:sw s8, 0(t1)<br>        |
|   2|[0x80002218]<br>0x00000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs2_val == 3<br>                                                                                                                     |[0x80000130]:KSLL8 zero, s11, s11<br> [0x80000134]:csrrs s11, vxsat, zero<br> [0x80000138]:sw zero, 8(t1)<br> |
|   3|[0x80002220]<br>0x80807F7F|- rs1 : x14<br> - rs2 : x1<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 6<br> - rs1_b3_val == -33<br> - rs1_b2_val == -9<br> - rs1_b1_val == 32<br> - rs1_b0_val == 32<br> |[0x8000014c]:KSLL8 t3, a4, ra<br> [0x80000150]:csrrs a4, vxsat, zero<br> [0x80000154]:sw t3, 16(t1)<br>       |
|   4|[0x80002228]<br>0x7F50807F|- rs1 : x3<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs2_val == 4<br> - rs1_b3_val == 8<br> - rs1_b1_val == -128<br>                                                                      |[0x80000168]:KSLL8 t5, gp, t5<br> [0x8000016c]:csrrs gp, vxsat, zero<br> [0x80000170]:sw t5, 24(t1)<br>       |
|   5|[0x80002230]<br>0x00000001|- rs1 : x21<br> - rs2 : x18<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs2_val == 2<br> - rs1_b3_val == -5<br> - rs1_b1_val == 16<br>                                                                      |[0x80000184]:KSLL8 s5, s5, s2<br> [0x80000188]:csrrs s5, vxsat, zero<br> [0x8000018c]:sw s5, 32(t1)<br>       |
|   6|[0x80002238]<br>0xFC040EDE|- rs1 : x4<br> - rs2 : x31<br> - rd : x29<br> - rs2_val == 1<br> - rs1_b3_val == -2<br> - rs1_b2_val == 2<br> - rs1_b0_val == -17<br>                                                                       |[0x800001a0]:KSLL8 t4, tp, t6<br> [0x800001a4]:csrrs tp, vxsat, zero<br> [0x800001a8]:sw t4, 40(t1)<br>       |
|   7|[0x80002240]<br>0x807FC020|- rs1 : x19<br> - rs2 : x28<br> - rd : x2<br> - rs1_b3_val == -86<br> - rs1_b2_val == 127<br> - rs1_b0_val == 2<br>                                                                                         |[0x800001bc]:KSLL8 sp, s3, t3<br> [0x800001c0]:csrrs s3, vxsat, zero<br> [0x800001c4]:sw sp, 48(t1)<br>       |
|   8|[0x80002248]<br>0x7FFAF27E|- rs1 : x28<br> - rs2 : x2<br> - rd : x17<br> - rs1_b3_val == 85<br> - rs1_b2_val == -3<br>                                                                                                                 |[0x800001d8]:KSLL8 a7, t3, sp<br> [0x800001dc]:csrrs t3, vxsat, zero<br> [0x800001e0]:sw a7, 56(t1)<br>       |
|   9|[0x80002250]<br>0x7FB8F828|- rs1 : x30<br> - rs2 : x14<br> - rd : x13<br> - rs1_b3_val == 127<br> - rs1_b1_val == -1<br>                                                                                                               |[0x800001f4]:KSLL8 a3, t5, a4<br> [0x800001f8]:csrrs t5, vxsat, zero<br> [0x800001fc]:sw a3, 64(t1)<br>       |
|  10|[0x80002258]<br>0x80807F80|- rs1 : x5<br> - rs2 : x7<br> - rd : x1<br> - rs1_b3_val == -65<br> - rs1_b2_val == -65<br> - rs1_b1_val == 8<br>                                                                                           |[0x80000210]:KSLL8 ra, t0, t2<br> [0x80000214]:csrrs t0, vxsat, zero<br> [0x80000218]:sw ra, 72(t1)<br>       |
|  11|[0x80002260]<br>0x807F807F|- rs1 : x16<br> - rs2 : x10<br> - rd : x14<br> - rs1_b3_val == -17<br> - rs1_b2_val == 8<br> - rs1_b1_val == -9<br> - rs1_b0_val == 85<br>                                                                  |[0x8000022c]:KSLL8 a4, a6, a0<br> [0x80000230]:csrrs a6, vxsat, zero<br> [0x80000234]:sw a4, 80(t1)<br>       |
|  12|[0x80002268]<br>0x00000000|- rs1 : x0<br> - rs2 : x22<br> - rd : x31<br> - rs1_b0_val == 0<br>                                                                                                                                         |[0x80000248]:KSLL8 t6, zero, s6<br> [0x8000024c]:csrrs zero, vxsat, zero<br> [0x80000250]:sw t6, 88(t1)<br>   |
|  13|[0x80002270]<br>0x807F007F|- rs1 : x18<br> - rs2 : x19<br> - rd : x25<br> - rs1_b3_val == -3<br> - rs1_b0_val == 127<br>                                                                                                               |[0x80000264]:KSLL8 s9, s2, s3<br> [0x80000268]:csrrs s2, vxsat, zero<br> [0x8000026c]:sw s9, 96(t1)<br>       |
|  14|[0x80002278]<br>0x8080F20A|- rs1 : x9<br> - rs2 : x12<br> - rd : x10<br> - rs1_b3_val == -128<br> - rs1_b2_val == -86<br>                                                                                                              |[0x80000280]:KSLL8 a0, s1, a2<br> [0x80000284]:csrrs s1, vxsat, zero<br> [0x80000288]:sw a0, 104(t1)<br>      |
|  15|[0x80002280]<br>0x7FD0E090|- rs1 : x1<br> - rs2 : x23<br> - rd : x26<br> - rs1_b3_val == 64<br> - rs1_b1_val == -2<br>                                                                                                                 |[0x8000029c]:KSLL8 s10, ra, s7<br> [0x800002a0]:csrrs ra, vxsat, zero<br> [0x800002a4]:sw s10, 112(t1)<br>    |
|  16|[0x80002288]<br>0x7FC0807F|- rs1 : x29<br> - rs2 : x20<br> - rd : x7<br> - rs1_b3_val == 32<br> - rs1_b2_val == -1<br> - rs1_b0_val == 16<br>                                                                                          |[0x800002b8]:KSLL8 t2, t4, s4<br> [0x800002bc]:csrrs t4, vxsat, zero<br> [0x800002c0]:sw t2, 120(t1)<br>      |
|  17|[0x80002290]<br>0x7F807F7F|- rs1 : x8<br> - rs2 : x26<br> - rd : x27<br> - rs1_b3_val == 16<br> - rs1_b2_val == -2<br> - rs1_b0_val == 64<br>                                                                                          |[0x800002dc]:KSLL8 s11, fp, s10<br> [0x800002e0]:csrrs fp, vxsat, zero<br> [0x800002e4]:sw s11, 0(ra)<br>     |
|  18|[0x80002298]<br>0x7F7F7F80|- rs1 : x25<br> - rs2 : x21<br> - rd : x3<br> - rs1_b3_val == 4<br> - rs1_b0_val == -86<br>                                                                                                                 |[0x800002f8]:KSLL8 gp, s9, s5<br> [0x800002fc]:csrrs s9, vxsat, zero<br> [0x80000300]:sw gp, 8(ra)<br>        |
|  19|[0x800022a0]<br>0x7F80807F|- rs1 : x23<br> - rs2 : x5<br> - rd : x19<br> - rs1_b3_val == 2<br>                                                                                                                                         |[0x80000314]:KSLL8 s3, s7, t0<br> [0x80000318]:csrrs s7, vxsat, zero<br> [0x8000031c]:sw s3, 16(ra)<br>       |
|  20|[0x800022a8]<br>0x2060807F|- rs1 : x2<br> - rs2 : x13<br> - rd : x22<br> - rs1_b3_val == 1<br> - rs1_b1_val == -33<br>                                                                                                                 |[0x80000330]:KSLL8 s6, sp, a3<br> [0x80000334]:csrrs sp, vxsat, zero<br> [0x80000338]:sw s6, 24(ra)<br>       |
|  21|[0x800022b0]<br>0xFF1080FD|- rs1 : x22<br> - rs2 : x0<br> - rd : x23<br> - rs1_b3_val == -1<br> - rs1_b2_val == 16<br> - rs1_b0_val == -3<br>                                                                                          |[0x8000034c]:KSLL8 s7, s6, zero<br> [0x80000350]:csrrs s6, vxsat, zero<br> [0x80000354]:sw s7, 32(ra)<br>     |
|  22|[0x800022b8]<br>0xF65502F6|- rs1 : x31<br> - rs2 : x3<br> - rd : x9<br> - rs1_b2_val == 85<br> - rs1_b1_val == 2<br>                                                                                                                   |[0x80000368]:KSLL8 s1, t6, gp<br> [0x8000036c]:csrrs t6, vxsat, zero<br> [0x80000370]:sw s1, 40(ra)<br>       |
|  23|[0x800022c0]<br>0x7F808080|- rs1 : x13<br> - rs2 : x9<br> - rd : x16<br> - rs1_b2_val == -128<br> - rs1_b0_val == -65<br>                                                                                                              |[0x80000384]:KSLL8 a6, a3, s1<br> [0x80000388]:csrrs a3, vxsat, zero<br> [0x8000038c]:sw a6, 48(ra)<br>       |
|  24|[0x800022c8]<br>0x1CE47F80|- rs1 : x15<br> - rs2 : x29<br> - rd : x18<br> - rs1_b0_val == -33<br>                                                                                                                                      |[0x800003a0]:KSLL8 s2, a5, t4<br> [0x800003a4]:csrrs a5, vxsat, zero<br> [0x800003a8]:sw s2, 56(ra)<br>       |
|  25|[0x800022d0]<br>0x7F7F40B8|- rs1 : x11<br> - rs2 : x16<br> - rd : x12<br> - rs1_b0_val == -9<br>                                                                                                                                       |[0x800003bc]:KSLL8 a2, a1, a6<br> [0x800003c0]:csrrs a1, vxsat, zero<br> [0x800003c4]:sw a2, 64(ra)<br>       |
|  26|[0x800022d8]<br>0xF47FECEC|- rs1 : x10<br> - rs2 : x4<br> - rd : x8<br> - rs1_b1_val == -5<br> - rs1_b0_val == -5<br>                                                                                                                  |[0x800003d8]:KSLL8 fp, a0, tp<br> [0x800003dc]:csrrs a0, vxsat, zero<br> [0x800003e0]:sw fp, 72(ra)<br>       |
|  27|[0x800022e0]<br>0x80B0C0E0|- rs1 : x12<br> - rs2 : x8<br> - rd : x11<br> - rs1_b2_val == -5<br> - rs1_b0_val == -2<br>                                                                                                                 |[0x800003f4]:KSLL8 a1, a2, fp<br> [0x800003f8]:csrrs a2, vxsat, zero<br> [0x800003fc]:sw a1, 80(ra)<br>       |
|  28|[0x800022e8]<br>0x06027F80|- rs1 : x20<br> - rs2 : x6<br> - rd : x15<br> - rs1_b2_val == 1<br> - rs1_b1_val == 127<br> - rs1_b0_val == -128<br>                                                                                        |[0x80000410]:KSLL8 a5, s4, t1<br> [0x80000414]:csrrs s4, vxsat, zero<br> [0x80000418]:sw a5, 88(ra)<br>       |
|  29|[0x800022f0]<br>0xC880F040|- rs1 : x26<br> - rs2 : x15<br> - rd : x4<br> - rs1_b0_val == 8<br>                                                                                                                                         |[0x8000042c]:KSLL8 tp, s10, a5<br> [0x80000430]:csrrs s10, vxsat, zero<br> [0x80000434]:sw tp, 96(ra)<br>     |
|  30|[0x800022f8]<br>0x02F7F704|- rs1 : x7<br> - rs2 : x25<br> - rd : x6<br> - rs1_b0_val == 4<br>                                                                                                                                          |[0x80000448]:KSLL8 t1, t2, s9<br> [0x8000044c]:csrrs t2, vxsat, zero<br> [0x80000450]:sw t1, 104(ra)<br>      |
|  31|[0x80002300]<br>0xE87F40D8|- rs1 : x6<br> - rs2 : x17<br> - rd : x5<br> - rs1_b2_val == 64<br>                                                                                                                                         |[0x80000464]:KSLL8 t0, t1, a7<br> [0x80000468]:csrrs t1, vxsat, zero<br> [0x8000046c]:sw t0, 112(ra)<br>      |
|  32|[0x80002308]<br>0x387FC880|- rs1 : x17<br> - rs2 : x11<br> - rd : x20<br> - rs1_b2_val == 32<br>                                                                                                                                       |[0x80000480]:KSLL8 s4, a7, a1<br> [0x80000484]:csrrs a7, vxsat, zero<br> [0x80000488]:sw s4, 120(ra)<br>      |
|  33|[0x80002310]<br>0xF010DC20|- rs1_b2_val == 4<br>                                                                                                                                                                                       |[0x8000049c]:KSLL8 t6, t5, t4<br> [0x800004a0]:csrrs t5, vxsat, zero<br> [0x800004a4]:sw t6, 128(ra)<br>      |
|  34|[0x80002320]<br>0xFA127FFC|- rs1_b1_val == 85<br>                                                                                                                                                                                      |[0x800004dc]:KSLL8 t6, t5, t4<br> [0x800004e0]:csrrs t5, vxsat, zero<br> [0x800004e4]:sw t6, 8(ra)<br>        |
|  35|[0x80002328]<br>0x20FFBFF7|- rs1_b1_val == -65<br>                                                                                                                                                                                     |[0x800004f8]:KSLL8 t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 16(ra)<br>       |
|  36|[0x80002330]<br>0xF2BE0280|- rs1_b2_val == -33<br> - rs1_b1_val == 1<br>                                                                                                                                                               |[0x80000514]:KSLL8 t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 24(ra)<br>       |
|  37|[0x80002338]<br>0x20065501|- rs1_b0_val == 1<br>                                                                                                                                                                                       |[0x80000530]:KSLL8 t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 32(ra)<br>       |
|  38|[0x80002340]<br>0x7F808080|- rs1_b1_val == -17<br>                                                                                                                                                                                     |[0x8000054c]:KSLL8 t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 40(ra)<br>       |
|  39|[0x80002348]<br>0x03C040FF|- rs1_b1_val == 64<br> - rs1_b0_val == -1<br>                                                                                                                                                               |[0x80000568]:KSLL8 t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 48(ra)<br>       |
|  40|[0x80002350]<br>0x38C0207F|- rs1_b1_val == 4<br>                                                                                                                                                                                       |[0x80000584]:KSLL8 t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 56(ra)<br>       |
|  41|[0x80002358]<br>0x10F2FADE|- rs1_b1_val == -3<br>                                                                                                                                                                                      |[0x800005a0]:KSLL8 t6, t5, t4<br> [0x800005a4]:csrrs t5, vxsat, zero<br> [0x800005a8]:sw t6, 64(ra)<br>       |
|  42|[0x80002360]<br>0xEFEFDFFE|- rs1_b2_val == -17<br>                                                                                                                                                                                     |[0x800005bc]:KSLL8 t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 72(ra)<br>       |
|  43|[0x80002368]<br>0x00808080|- rs1_b1_val == -86<br>                                                                                                                                                                                     |[0x800005d8]:KSLL8 t6, t5, t4<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 80(ra)<br>       |
|  44|[0x80002378]<br>0x8080807F|- rs1_b3_val == -9<br>                                                                                                                                                                                      |[0x8000060c]:KSLL8 t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 96(ra)<br>       |
