
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000ac0')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | kmsda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmsda-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 160      |
| STAT1                     | 75      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 80     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a0]:KMSDA t6, t5, t4
      [0x800005a4]:csrrs t5, vxsat, zero
      [0x800005a8]:sw t6, 40(ra)
 -- Signature Address: 0x80002338 Data: 0xFDB18850
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 1024
      - rs2_h0_val == -1025
      - rs1_h1_val == 21845
      - rs1_h0_val == -33




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000958]:KMSDA t6, t5, t4
      [0x8000095c]:csrrs t5, vxsat, zero
      [0x80000960]:sw t6, 288(ra)
 -- Signature Address: 0x80002430 Data: 0x2562DEC1
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs2_h0_val == -9
      - rs1_h1_val == -513
      - rs1_h0_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a70]:KMSDA t6, t5, t4
      [0x80000a74]:csrrs t5, vxsat, zero
      [0x80000a78]:sw t6, 360(ra)
 -- Signature Address: 0x80002478 Data: 0x35A5D41C
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -17
      - rs2_h0_val == 32767
      - rs1_h1_val == 0
      - rs1_h0_val == -2049




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a8c]:KMSDA t6, t5, t4
      [0x80000a90]:csrrs t5, vxsat, zero
      [0x80000a94]:sw t6, 368(ra)
 -- Signature Address: 0x80002480 Data: 0xF595541C
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -32768
      - rs2_h0_val == -33
      - rs1_h1_val == -32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aa4]:KMSDA t6, t5, t4
      [0x80000aa8]:csrrs t5, vxsat, zero
      [0x80000aac]:sw t6, 376(ra)
 -- Signature Address: 0x80002488 Data: 0xF594941C
 -- Redundant Coverpoints hit by the op
      - opcode : kmsda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 16384
      - rs2_h0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmsda', 'rs1 : x9', 'rs2 : x9', 'rd : x9', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 32767', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000118]:KMSDA s1, s1, s1
	-[0x8000011c]:csrrs s1, vxsat, zero
	-[0x80000120]:sw s1, 0(a2)
Current Store : [0x80000124] : sw s1, 4(a2) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x25', 'rd : x14', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -32768', 'rs2_h0_val == -33', 'rs1_h1_val == -32768', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000134]:KMSDA a4, s9, s9
	-[0x80000138]:csrrs s9, vxsat, zero
	-[0x8000013c]:sw a4, 8(a2)
Current Store : [0x80000140] : sw s9, 12(a2) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x15', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs1_h1_val == 512', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000154]:KMSDA t6, a6, a5
	-[0x80000158]:csrrs a6, vxsat, zero
	-[0x8000015c]:sw t6, 16(a2)
Current Store : [0x80000160] : sw a6, 20(a2) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x7', 'rd : x7', 'rs2 == rd != rs1', 'rs2_h0_val == -129', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000174]:KMSDA t2, ra, t2
	-[0x80000178]:csrrs ra, vxsat, zero
	-[0x8000017c]:sw t2, 24(a2)
Current Store : [0x80000180] : sw ra, 28(a2) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x14', 'rd : x29', 'rs1 == rd != rs2', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h1_val == 1024', 'rs2_h0_val == 256', 'rs1_h1_val == -9', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000194]:KMSDA t4, t4, a4
	-[0x80000198]:csrrs t4, vxsat, zero
	-[0x8000019c]:sw t4, 32(a2)
Current Store : [0x800001a0] : sw t4, 36(a2) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x28', 'rd : x13', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 8', 'rs2_h0_val == -2049', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800001b4]:KMSDA a3, t0, t3
	-[0x800001b8]:csrrs t0, vxsat, zero
	-[0x800001bc]:sw a3, 40(a2)
Current Store : [0x800001c0] : sw t0, 44(a2) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x24', 'rd : x22', 'rs2_h1_val == -21846', 'rs1_h1_val == -33', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800001d4]:KMSDA s6, s3, s8
	-[0x800001d8]:csrrs s3, vxsat, zero
	-[0x800001dc]:sw s6, 48(a2)
Current Store : [0x800001e0] : sw s3, 52(a2) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x2', 'rs1_h0_val == -32768', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x800001f0]:KMSDA sp, s5, a1
	-[0x800001f4]:csrrs s5, vxsat, zero
	-[0x800001f8]:sw sp, 56(a2)
Current Store : [0x800001fc] : sw s5, 60(a2) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x8', 'rd : x3', 'rs2_h1_val == 32767', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000210]:KMSDA gp, t2, fp
	-[0x80000214]:csrrs t2, vxsat, zero
	-[0x80000218]:sw gp, 64(a2)
Current Store : [0x8000021c] : sw t2, 68(a2) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x22', 'rd : x4', 'rs2_h1_val == -16385', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000230]:KMSDA tp, s2, s6
	-[0x80000234]:csrrs s2, vxsat, zero
	-[0x80000238]:sw tp, 72(a2)
Current Store : [0x8000023c] : sw s2, 76(a2) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x30', 'rd : x16', 'rs2_h1_val == -8193', 'rs2_h0_val == -2', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x8000024c]:KMSDA a6, a1, t5
	-[0x80000250]:csrrs a1, vxsat, zero
	-[0x80000254]:sw a6, 80(a2)
Current Store : [0x80000258] : sw a1, 84(a2) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x6', 'rd : x24', 'rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x8000026c]:KMSDA s8, tp, t1
	-[0x80000270]:csrrs tp, vxsat, zero
	-[0x80000274]:sw s8, 88(a2)
Current Store : [0x80000278] : sw tp, 92(a2) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x0', 'rd : x6', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x8000028c]:KMSDA t1, s10, zero
	-[0x80000290]:csrrs s10, vxsat, zero
	-[0x80000294]:sw t1, 96(a2)
Current Store : [0x80000298] : sw s10, 100(a2) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x2', 'rd : x1', 'rs2_h1_val == -1025', 'rs2_h0_val == 4096', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800002a8]:KMSDA ra, a4, sp
	-[0x800002ac]:csrrs a4, vxsat, zero
	-[0x800002b0]:sw ra, 104(a2)
Current Store : [0x800002b4] : sw a4, 108(a2) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x4', 'rd : x10', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x800002c8]:KMSDA a0, s4, tp
	-[0x800002cc]:csrrs s4, vxsat, zero
	-[0x800002d0]:sw a0, 112(a2)
Current Store : [0x800002d4] : sw s4, 116(a2) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x29', 'rd : x18', 'rs2_h1_val == -257', 'rs2_h0_val == -21846', 'rs1_h1_val == -16385', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800002f0]:KMSDA s2, a5, t4
	-[0x800002f4]:csrrs a5, vxsat, zero
	-[0x800002f8]:sw s2, 0(tp)
Current Store : [0x800002fc] : sw a5, 4(tp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x5', 'rd : x21', 'rs2_h1_val == -129', 'rs1_h1_val == -1025', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000310]:KMSDA s5, t5, t0
	-[0x80000314]:csrrs t5, vxsat, zero
	-[0x80000318]:sw s5, 8(tp)
Current Store : [0x8000031c] : sw t5, 12(tp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x26', 'rd : x23', 'rs2_h1_val == -65', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000330]:KMSDA s7, s6, s10
	-[0x80000334]:csrrs s6, vxsat, zero
	-[0x80000338]:sw s7, 16(tp)
Current Store : [0x8000033c] : sw s6, 20(tp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x17', 'rd : x27', 'rs2_h1_val == -33', 'rs1_h1_val == 21845', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000034c]:KMSDA s11, gp, a7
	-[0x80000350]:csrrs gp, vxsat, zero
	-[0x80000354]:sw s11, 24(tp)
Current Store : [0x80000358] : sw gp, 28(tp) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x16', 'rd : x12', 'rs2_h1_val == -17', 'rs2_h0_val == 8', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000036c]:KMSDA a2, t1, a6
	-[0x80000370]:csrrs t1, vxsat, zero
	-[0x80000374]:sw a2, 32(tp)
Current Store : [0x80000378] : sw t1, 36(tp) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x19', 'rd : x28', 'rs2_h1_val == -9', 'rs2_h0_val == 2048', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x8000038c]:KMSDA t3, sp, s3
	-[0x80000390]:csrrs sp, vxsat, zero
	-[0x80000394]:sw t3, 40(tp)
Current Store : [0x80000398] : sw sp, 44(tp) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x12', 'rd : x30', 'rs2_h1_val == -5', 'rs2_h0_val == 1024', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800003ac]:KMSDA t5, a7, a2
	-[0x800003b0]:csrrs a7, vxsat, zero
	-[0x800003b4]:sw t5, 48(tp)
Current Store : [0x800003b8] : sw a7, 52(tp) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x10', 'rd : x25', 'rs2_h1_val == -3', 'rs2_h0_val == -65', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800003cc]:KMSDA s9, s7, a0
	-[0x800003d0]:csrrs s7, vxsat, zero
	-[0x800003d4]:sw s9, 56(tp)
Current Store : [0x800003d8] : sw s7, 60(tp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x23', 'rd : x0', 'rs2_h1_val == -2', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800003e4]:KMSDA zero, a0, s7
	-[0x800003e8]:csrrs a0, vxsat, zero
	-[0x800003ec]:sw zero, 64(tp)
Current Store : [0x800003f0] : sw a0, 68(tp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x13', 'rd : x15', 'rs2_h1_val == 16384', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000400]:KMSDA a5, zero, a3
	-[0x80000404]:csrrs zero, vxsat, zero
	-[0x80000408]:sw a5, 72(tp)
Current Store : [0x8000040c] : sw zero, 76(tp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x3', 'rd : x8', 'rs2_h1_val == 8192', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000420]:KMSDA fp, a3, gp
	-[0x80000424]:csrrs a3, vxsat, zero
	-[0x80000428]:sw fp, 80(tp)
Current Store : [0x8000042c] : sw a3, 84(tp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x31', 'rd : x19', 'rs2_h1_val == 4096', 'rs2_h0_val == -9', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000440]:KMSDA s3, s8, t6
	-[0x80000444]:csrrs s8, vxsat, zero
	-[0x80000448]:sw s3, 88(tp)
Current Store : [0x8000044c] : sw s8, 92(tp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x20', 'rd : x26', 'rs2_h1_val == 2048', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000460]:KMSDA s10, s11, s4
	-[0x80000464]:csrrs s11, vxsat, zero
	-[0x80000468]:sw s10, 96(tp)
Current Store : [0x8000046c] : sw s11, 100(tp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x18', 'rd : x17', 'rs2_h1_val == 512', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000480]:KMSDA a7, a2, s2
	-[0x80000484]:csrrs a2, vxsat, zero
	-[0x80000488]:sw a7, 104(tp)
Current Store : [0x8000048c] : sw a2, 108(tp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x1', 'rd : x20', 'rs2_h1_val == 256', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004a0]:KMSDA s4, t6, ra
	-[0x800004a4]:csrrs t6, vxsat, zero
	-[0x800004a8]:sw s4, 112(tp)
Current Store : [0x800004ac] : sw t6, 116(tp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x21', 'rd : x5', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x800004c0]:KMSDA t0, fp, s5
	-[0x800004c4]:csrrs fp, vxsat, zero
	-[0x800004c8]:sw t0, 120(tp)
Current Store : [0x800004cc] : sw fp, 124(tp) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x27', 'rd : x11', 'rs2_h1_val == 64', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800004e0]:KMSDA a1, t3, s11
	-[0x800004e4]:csrrs t3, vxsat, zero
	-[0x800004e8]:sw a1, 128(tp)
Current Store : [0x800004ec] : sw t3, 132(tp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000508]:KMSDA t6, t5, t4
	-[0x8000050c]:csrrs t5, vxsat, zero
	-[0x80000510]:sw t6, 0(ra)
Current Store : [0x80000514] : sw t5, 4(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000524]:KMSDA t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 8(ra)
Current Store : [0x80000530] : sw t5, 12(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000544]:KMSDA t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 16(ra)
Current Store : [0x80000550] : sw t5, 20(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h1_val == -5', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000560]:KMSDA t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 24(ra)
Current Store : [0x8000056c] : sw t5, 28(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000580]:KMSDA t6, t5, t4
	-[0x80000584]:csrrs t5, vxsat, zero
	-[0x80000588]:sw t6, 32(ra)
Current Store : [0x8000058c] : sw t5, 36(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 1024', 'rs2_h0_val == -1025', 'rs1_h1_val == 21845', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800005a0]:KMSDA t6, t5, t4
	-[0x800005a4]:csrrs t5, vxsat, zero
	-[0x800005a8]:sw t6, 40(ra)
Current Store : [0x800005ac] : sw t5, 44(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == 4096', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800005c0]:KMSDA t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 48(ra)
Current Store : [0x800005cc] : sw t5, 52(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800005e0]:KMSDA t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 56(ra)
Current Store : [0x800005ec] : sw t5, 60(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000600]:KMSDA t6, t5, t4
	-[0x80000604]:csrrs t5, vxsat, zero
	-[0x80000608]:sw t6, 64(ra)
Current Store : [0x8000060c] : sw t5, 68(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000620]:KMSDA t6, t5, t4
	-[0x80000624]:csrrs t5, vxsat, zero
	-[0x80000628]:sw t6, 72(ra)
Current Store : [0x8000062c] : sw t5, 76(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x8000063c]:KMSDA t6, t5, t4
	-[0x80000640]:csrrs t5, vxsat, zero
	-[0x80000644]:sw t6, 80(ra)
Current Store : [0x80000648] : sw t5, 84(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000658]:KMSDA t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 88(ra)
Current Store : [0x80000664] : sw t5, 92(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -1', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000678]:KMSDA t6, t5, t4
	-[0x8000067c]:csrrs t5, vxsat, zero
	-[0x80000680]:sw t6, 96(ra)
Current Store : [0x80000684] : sw t5, 100(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000694]:KMSDA t6, t5, t4
	-[0x80000698]:csrrs t5, vxsat, zero
	-[0x8000069c]:sw t6, 104(ra)
Current Store : [0x800006a0] : sw t5, 108(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800006b4]:KMSDA t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 112(ra)
Current Store : [0x800006c0] : sw t5, 116(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800006d0]:KMSDA t6, t5, t4
	-[0x800006d4]:csrrs t5, vxsat, zero
	-[0x800006d8]:sw t6, 120(ra)
Current Store : [0x800006dc] : sw t5, 124(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800006f0]:KMSDA t6, t5, t4
	-[0x800006f4]:csrrs t5, vxsat, zero
	-[0x800006f8]:sw t6, 128(ra)
Current Store : [0x800006fc] : sw t5, 132(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000710]:KMSDA t6, t5, t4
	-[0x80000714]:csrrs t5, vxsat, zero
	-[0x80000718]:sw t6, 136(ra)
Current Store : [0x8000071c] : sw t5, 140(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000730]:KMSDA t6, t5, t4
	-[0x80000734]:csrrs t5, vxsat, zero
	-[0x80000738]:sw t6, 144(ra)
Current Store : [0x8000073c] : sw t5, 148(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x8000074c]:KMSDA t6, t5, t4
	-[0x80000750]:csrrs t5, vxsat, zero
	-[0x80000754]:sw t6, 152(ra)
Current Store : [0x80000758] : sw t5, 156(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x8000076c]:KMSDA t6, t5, t4
	-[0x80000770]:csrrs t5, vxsat, zero
	-[0x80000774]:sw t6, 160(ra)
Current Store : [0x80000778] : sw t5, 164(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x8000078c]:KMSDA t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 168(ra)
Current Store : [0x80000798] : sw t5, 172(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800007a4]:KMSDA t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 176(ra)
Current Store : [0x800007b0] : sw t5, 180(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800007c4]:KMSDA t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 184(ra)
Current Store : [0x800007d0] : sw t5, 188(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h1_val == -2049', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800007e4]:KMSDA t6, t5, t4
	-[0x800007e8]:csrrs t5, vxsat, zero
	-[0x800007ec]:sw t6, 192(ra)
Current Store : [0x800007f0] : sw t5, 196(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000804]:KMSDA t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 200(ra)
Current Store : [0x80000810] : sw t5, 204(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000824]:KMSDA t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 208(ra)
Current Store : [0x80000830] : sw t5, 212(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000840]:KMSDA t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 216(ra)
Current Store : [0x8000084c] : sw t5, 220(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000860]:KMSDA t6, t5, t4
	-[0x80000864]:csrrs t5, vxsat, zero
	-[0x80000868]:sw t6, 224(ra)
Current Store : [0x8000086c] : sw t5, 228(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x8000087c]:KMSDA t6, t5, t4
	-[0x80000880]:csrrs t5, vxsat, zero
	-[0x80000884]:sw t6, 232(ra)
Current Store : [0x80000888] : sw t5, 236(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x8000089c]:KMSDA t6, t5, t4
	-[0x800008a0]:csrrs t5, vxsat, zero
	-[0x800008a4]:sw t6, 240(ra)
Current Store : [0x800008a8] : sw t5, 244(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800008bc]:KMSDA t6, t5, t4
	-[0x800008c0]:csrrs t5, vxsat, zero
	-[0x800008c4]:sw t6, 248(ra)
Current Store : [0x800008c8] : sw t5, 252(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800008d8]:KMSDA t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 256(ra)
Current Store : [0x800008e4] : sw t5, 260(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800008f8]:KMSDA t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 264(ra)
Current Store : [0x80000904] : sw t5, 268(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000918]:KMSDA t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 272(ra)
Current Store : [0x80000924] : sw t5, 276(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000938]:KMSDA t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 280(ra)
Current Store : [0x80000944] : sw t5, 284(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs2_h0_val == -9', 'rs1_h1_val == -513', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000958]:KMSDA t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 288(ra)
Current Store : [0x80000964] : sw t5, 292(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000974]:KMSDA t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 296(ra)
Current Store : [0x80000980] : sw t5, 300(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000994]:KMSDA t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 304(ra)
Current Store : [0x800009a0] : sw t5, 308(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800009b4]:KMSDA t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 312(ra)
Current Store : [0x800009c0] : sw t5, 316(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800009d0]:KMSDA t6, t5, t4
	-[0x800009d4]:csrrs t5, vxsat, zero
	-[0x800009d8]:sw t6, 320(ra)
Current Store : [0x800009dc] : sw t5, 324(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800009f0]:KMSDA t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 328(ra)
Current Store : [0x800009fc] : sw t5, 332(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000a10]:KMSDA t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 336(ra)
Current Store : [0x80000a1c] : sw t5, 340(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000a30]:KMSDA t6, t5, t4
	-[0x80000a34]:csrrs t5, vxsat, zero
	-[0x80000a38]:sw t6, 344(ra)
Current Store : [0x80000a3c] : sw t5, 348(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000a50]:KMSDA t6, t5, t4
	-[0x80000a54]:csrrs t5, vxsat, zero
	-[0x80000a58]:sw t6, 352(ra)
Current Store : [0x80000a5c] : sw t5, 356(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -17', 'rs2_h0_val == 32767', 'rs1_h1_val == 0', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000a70]:KMSDA t6, t5, t4
	-[0x80000a74]:csrrs t5, vxsat, zero
	-[0x80000a78]:sw t6, 360(ra)
Current Store : [0x80000a7c] : sw t5, 364(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -32768', 'rs2_h0_val == -33', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000a8c]:KMSDA t6, t5, t4
	-[0x80000a90]:csrrs t5, vxsat, zero
	-[0x80000a94]:sw t6, 368(ra)
Current Store : [0x80000a98] : sw t5, 372(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['opcode : kmsda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 16384', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000aa4]:KMSDA t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 376(ra)
Current Store : [0x80000ab0] : sw t5, 380(ra) -- Store: [0x8000248c]:0x00000001





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

|s.no|        signature         |                                                                                                                                         coverpoints                                                                                                                                         |                                                    code                                                    |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmsda<br> - rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 32767<br> - rs1_h0_val == 32767<br>    |[0x80000118]:KMSDA s1, s1, s1<br> [0x8000011c]:csrrs s1, vxsat, zero<br> [0x80000120]:sw s1, 0(a2)<br>      |
|   2|[0x80002218]<br>0xB56FF32C|- rs1 : x25<br> - rs2 : x25<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -33<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -33<br>                                  |[0x80000134]:KMSDA a4, s9, s9<br> [0x80000138]:csrrs s9, vxsat, zero<br> [0x8000013c]:sw a4, 8(a2)<br>      |
|   3|[0x80002220]<br>0xFBB726BD|- rs1 : x16<br> - rs2 : x15<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs1_h1_val == 512<br> - rs1_h0_val == -1025<br> |[0x80000154]:KMSDA t6, a6, a5<br> [0x80000158]:csrrs a6, vxsat, zero<br> [0x8000015c]:sw t6, 16(a2)<br>     |
|   4|[0x80002228]<br>0x3E0003F8|- rs1 : x1<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs2_h0_val == -129<br> - rs1_h1_val == 2048<br>                                                                                                                                                                         |[0x80000174]:KMSDA t2, ra, t2<br> [0x80000178]:csrrs ra, vxsat, zero<br> [0x8000017c]:sw t2, 24(a2)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x29<br> - rs2 : x14<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 256<br> - rs1_h1_val == -9<br> - rs1_h0_val == 256<br>                                                                                |[0x80000194]:KMSDA t4, t4, a4<br> [0x80000198]:csrrs t4, vxsat, zero<br> [0x8000019c]:sw t4, 32(a2)<br>     |
|   6|[0x80002238]<br>0xEAE076EC|- rs1 : x5<br> - rs2 : x28<br> - rd : x13<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 8<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -2049<br>                                                                                                                              |[0x800001b4]:KMSDA a3, t0, t3<br> [0x800001b8]:csrrs t0, vxsat, zero<br> [0x800001bc]:sw a3, 40(a2)<br>     |
|   7|[0x80002240]<br>0x6DEA6FD8|- rs1 : x19<br> - rs2 : x24<br> - rd : x22<br> - rs2_h1_val == -21846<br> - rs1_h1_val == -33<br> - rs1_h0_val == 1<br>                                                                                                                                                                      |[0x800001d4]:KMSDA s6, s3, s8<br> [0x800001d8]:csrrs s3, vxsat, zero<br> [0x800001dc]:sw s6, 48(a2)<br>     |
|   8|[0x80002248]<br>0xFCCEB756|- rs1 : x21<br> - rs2 : x11<br> - rd : x2<br> - rs1_h0_val == -32768<br> - rs2_h1_val == 21845<br>                                                                                                                                                                                           |[0x800001f0]:KMSDA sp, s5, a1<br> [0x800001f4]:csrrs s5, vxsat, zero<br> [0x800001f8]:sw sp, 56(a2)<br>     |
|   9|[0x80002250]<br>0x7FFFFFFF|- rs1 : x7<br> - rs2 : x8<br> - rd : x3<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                              |[0x80000210]:KMSDA gp, t2, fp<br> [0x80000214]:csrrs t2, vxsat, zero<br> [0x80000218]:sw gp, 64(a2)<br>     |
|  10|[0x80002258]<br>0xBFDFD8DD|- rs1 : x18<br> - rs2 : x22<br> - rd : x4<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 8<br>                                                                                                                                                                                               |[0x80000230]:KMSDA tp, s2, s6<br> [0x80000234]:csrrs s2, vxsat, zero<br> [0x80000238]:sw tp, 72(a2)<br>     |
|  11|[0x80002260]<br>0xFFFE9FFD|- rs1 : x11<br> - rs2 : x30<br> - rd : x16<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -2<br> - rs1_h1_val == -3<br>                                                                                                                                                                       |[0x8000024c]:KMSDA a6, a1, t5<br> [0x80000250]:csrrs a1, vxsat, zero<br> [0x80000254]:sw a6, 80(a2)<br>     |
|  12|[0x80002268]<br>0xA2AE7FFF|- rs1 : x4<br> - rs2 : x6<br> - rd : x24<br> - rs2_h1_val == -4097<br>                                                                                                                                                                                                                       |[0x8000026c]:KMSDA s8, tp, t1<br> [0x80000270]:csrrs tp, vxsat, zero<br> [0x80000274]:sw s8, 88(a2)<br>     |
|  13|[0x80002270]<br>0xEFFF7FFF|- rs1 : x26<br> - rs2 : x0<br> - rd : x6<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == -8193<br>                                                                                                                                                                           |[0x8000028c]:KMSDA t1, s10, zero<br> [0x80000290]:csrrs s10, vxsat, zero<br> [0x80000294]:sw t1, 96(a2)<br> |
|  14|[0x80002278]<br>0x001C0800|- rs1 : x14<br> - rs2 : x2<br> - rd : x1<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 64<br>                                                                                                                                                                       |[0x800002a8]:KMSDA ra, a4, sp<br> [0x800002ac]:csrrs a4, vxsat, zero<br> [0x800002b0]:sw ra, 104(a2)<br>    |
|  15|[0x80002280]<br>0xFFFFEAF8|- rs1 : x20<br> - rs2 : x4<br> - rd : x10<br> - rs2_h1_val == -513<br>                                                                                                                                                                                                                       |[0x800002c8]:KMSDA a0, s4, tp<br> [0x800002cc]:csrrs s4, vxsat, zero<br> [0x800002d0]:sw a0, 112(a2)<br>    |
|  16|[0x80002288]<br>0xFFC069AC|- rs1 : x15<br> - rs2 : x29<br> - rd : x18<br> - rs2_h1_val == -257<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 2<br>                                                                                                                                          |[0x800002f0]:KMSDA s2, a5, t4<br> [0x800002f4]:csrrs a5, vxsat, zero<br> [0x800002f8]:sw s2, 0(tp)<br>      |
|  17|[0x80002290]<br>0xFFFBFB81|- rs1 : x30<br> - rs2 : x5<br> - rd : x21<br> - rs2_h1_val == -129<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 21845<br>                                                                                                                                                                   |[0x80000310]:KMSDA s5, t5, t0<br> [0x80000314]:csrrs t5, vxsat, zero<br> [0x80000318]:sw s5, 8(tp)<br>      |
|  18|[0x80002298]<br>0xBEFBA9FA|- rs1 : x22<br> - rs2 : x26<br> - rd : x23<br> - rs2_h1_val == -65<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                             |[0x80000330]:KMSDA s7, s6, s10<br> [0x80000334]:csrrs s6, vxsat, zero<br> [0x80000338]:sw s7, 16(tp)<br>    |
|  19|[0x800022a0]<br>0xBB796B74|- rs1 : x3<br> - rs2 : x17<br> - rd : x27<br> - rs2_h1_val == -33<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -5<br>                                                                                                                                                                       |[0x8000034c]:KMSDA s11, gp, a7<br> [0x80000350]:csrrs gp, vxsat, zero<br> [0x80000354]:sw s11, 24(tp)<br>   |
|  20|[0x800022a8]<br>0x800241F8|- rs1 : x6<br> - rs2 : x16<br> - rd : x12<br> - rs2_h1_val == -17<br> - rs2_h0_val == 8<br> - rs1_h1_val == 8192<br>                                                                                                                                                                         |[0x8000036c]:KMSDA a2, t1, a6<br> [0x80000370]:csrrs t1, vxsat, zero<br> [0x80000374]:sw a2, 32(tp)<br>     |
|  21|[0x800022b0]<br>0xFE090008|- rs1 : x2<br> - rs2 : x19<br> - rd : x28<br> - rs2_h1_val == -9<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 1<br>                                                                                                                                                                          |[0x8000038c]:KMSDA t3, sp, s3<br> [0x80000390]:csrrs sp, vxsat, zero<br> [0x80000394]:sw t3, 40(tp)<br>     |
|  22|[0x800022b8]<br>0x00010424|- rs1 : x17<br> - rs2 : x12<br> - rd : x30<br> - rs2_h1_val == -5<br> - rs2_h0_val == 1024<br> - rs1_h0_val == -65<br>                                                                                                                                                                       |[0x800003ac]:KMSDA t5, a7, a2<br> [0x800003b0]:csrrs a7, vxsat, zero<br> [0x800003b4]:sw t5, 48(tp)<br>     |
|  23|[0x800022c0]<br>0x00017E77|- rs1 : x23<br> - rs2 : x10<br> - rd : x25<br> - rs2_h1_val == -3<br> - rs2_h0_val == -65<br> - rs1_h1_val == 32767<br>                                                                                                                                                                      |[0x800003cc]:KMSDA s9, s7, a0<br> [0x800003d0]:csrrs s7, vxsat, zero<br> [0x800003d4]:sw s9, 56(tp)<br>     |
|  24|[0x800022c8]<br>0x00000000|- rs1 : x10<br> - rs2 : x23<br> - rd : x0<br> - rs2_h1_val == -2<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                               |[0x800003e4]:KMSDA zero, a0, s7<br> [0x800003e8]:csrrs a0, vxsat, zero<br> [0x800003ec]:sw zero, 64(tp)<br> |
|  25|[0x800022d0]<br>0x00000001|- rs1 : x0<br> - rs2 : x13<br> - rd : x15<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                          |[0x80000400]:KMSDA a5, zero, a3<br> [0x80000404]:csrrs zero, vxsat, zero<br> [0x80000408]:sw a5, 72(tp)<br> |
|  26|[0x800022d8]<br>0x7FFFFFFF|- rs1 : x13<br> - rs2 : x3<br> - rd : x8<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -257<br>                                                                                                                                                                                               |[0x80000420]:KMSDA fp, a3, gp<br> [0x80000424]:csrrs a3, vxsat, zero<br> [0x80000428]:sw fp, 80(tp)<br>     |
|  27|[0x800022e0]<br>0x00071851|- rs1 : x24<br> - rs2 : x31<br> - rd : x19<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -9<br> - rs1_h1_val == -257<br>                                                                                                                                                                      |[0x80000440]:KMSDA s3, s8, t6<br> [0x80000444]:csrrs s8, vxsat, zero<br> [0x80000448]:sw s3, 88(tp)<br>     |
|  28|[0x800022e8]<br>0xFFC3F80B|- rs1 : x27<br> - rs2 : x20<br> - rd : x26<br> - rs2_h1_val == 2048<br> - rs1_h1_val == -129<br>                                                                                                                                                                                             |[0x80000460]:KMSDA s10, s11, s4<br> [0x80000464]:csrrs s11, vxsat, zero<br> [0x80000468]:sw s10, 96(tp)<br> |
|  29|[0x800022f0]<br>0x0000A301|- rs1 : x12<br> - rs2 : x18<br> - rd : x17<br> - rs2_h1_val == 512<br> - rs1_h1_val == -17<br>                                                                                                                                                                                               |[0x80000480]:KMSDA a7, a2, s2<br> [0x80000484]:csrrs a2, vxsat, zero<br> [0x80000488]:sw a7, 104(tp)<br>    |
|  30|[0x800022f8]<br>0x08400508|- rs1 : x31<br> - rs2 : x1<br> - rd : x20<br> - rs2_h1_val == 256<br> - rs1_h0_val == -257<br>                                                                                                                                                                                               |[0x800004a0]:KMSDA s4, t6, ra<br> [0x800004a4]:csrrs t6, vxsat, zero<br> [0x800004a8]:sw s4, 112(tp)<br>    |
|  31|[0x80002300]<br>0xFF54556E|- rs1 : x8<br> - rs2 : x21<br> - rd : x5<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                         |[0x800004c0]:KMSDA t0, fp, s5<br> [0x800004c4]:csrrs fp, vxsat, zero<br> [0x800004c8]:sw t0, 120(tp)<br>    |
|  32|[0x80002308]<br>0x00003EC1|- rs1 : x28<br> - rs2 : x27<br> - rd : x11<br> - rs2_h1_val == 64<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                |[0x800004e0]:KMSDA a1, t3, s11<br> [0x800004e4]:csrrs t3, vxsat, zero<br> [0x800004e8]:sw a1, 128(tp)<br>   |
|  33|[0x80002310]<br>0x00050023|- rs2_h1_val == 32<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                             |[0x80000508]:KMSDA t6, t5, t4<br> [0x8000050c]:csrrs t5, vxsat, zero<br> [0x80000510]:sw t6, 0(ra)<br>      |
|  34|[0x80002318]<br>0x00056FA3|- rs2_h1_val == 16<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                              |[0x80000524]:KMSDA t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 8(ra)<br>      |
|  35|[0x80002320]<br>0x000561A5|- rs2_h1_val == 4<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                              |[0x80000544]:KMSDA t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 16(ra)<br>     |
|  36|[0x80002328]<br>0xFF0761A0|- rs2_h0_val == -32768<br> - rs1_h1_val == -5<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                   |[0x80000560]:KMSDA t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 24(ra)<br>     |
|  37|[0x80002330]<br>0xFF076071|- rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                     |[0x80000580]:KMSDA t6, t5, t4<br> [0x80000584]:csrrs t5, vxsat, zero<br> [0x80000588]:sw t6, 32(ra)<br>     |
|  38|[0x80002340]<br>0xFDB22C90|- rs2_h0_val == 64<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                      |[0x800005c0]:KMSDA t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 48(ra)<br>     |
|  39|[0x80002348]<br>0xFDB2270B|- rs2_h0_val == 128<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                               |[0x800005e0]:KMSDA t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 56(ra)<br>     |
|  40|[0x80002350]<br>0xFDB228ED|- rs1_h1_val == 64<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                |[0x80000600]:KMSDA t6, t5, t4<br> [0x80000604]:csrrs t5, vxsat, zero<br> [0x80000608]:sw t6, 64(ra)<br>     |
|  41|[0x80002358]<br>0xFDB22AE5|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                       |[0x80000620]:KMSDA t6, t5, t4<br> [0x80000624]:csrrs t5, vxsat, zero<br> [0x80000628]:sw t6, 72(ra)<br>     |
|  42|[0x80002360]<br>0x0DAE8AE4|- rs2_h0_val == 16<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                             |[0x8000063c]:KMSDA t6, t5, t4<br> [0x80000640]:csrrs t5, vxsat, zero<br> [0x80000644]:sw t6, 80(ra)<br>     |
|  43|[0x80002368]<br>0x0DCDAAE4|- rs1_h1_val == -2<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                              |[0x80000658]:KMSDA t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 88(ra)<br>     |
|  44|[0x80002370]<br>0x0DED32E4|- rs1_h1_val == -1<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                              |[0x80000678]:KMSDA t6, t5, t4<br> [0x8000067c]:csrrs t5, vxsat, zero<br> [0x80000680]:sw t6, 96(ra)<br>     |
|  45|[0x80002378]<br>0x0CEC72E4|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                     |[0x80000694]:KMSDA t6, t5, t4<br> [0x80000698]:csrrs t5, vxsat, zero<br> [0x8000069c]:sw t6, 104(ra)<br>    |
|  46|[0x80002380]<br>0x0CEE7063|- rs2_h0_val == -513<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                             |[0x800006b4]:KMSDA t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 112(ra)<br>    |
|  47|[0x80002388]<br>0x0CEDF183|- rs2_h1_val == -1<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                |[0x800006d0]:KMSDA t6, t5, t4<br> [0x800006d4]:csrrs t5, vxsat, zero<br> [0x800006d8]:sw t6, 120(ra)<br>    |
|  48|[0x80002390]<br>0x0CEFB383|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                       |[0x800006f0]:KMSDA t6, t5, t4<br> [0x800006f4]:csrrs t5, vxsat, zero<br> [0x800006f8]:sw t6, 128(ra)<br>    |
|  49|[0x80002398]<br>0x0CCFB3CB|- rs2_h0_val == -1<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                 |[0x80000710]:KMSDA t6, t5, t4<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sw t6, 136(ra)<br>    |
|  50|[0x800023a0]<br>0x0CCFA544|- rs2_h0_val == 32<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                 |[0x80000730]:KMSDA t6, t5, t4<br> [0x80000734]:csrrs t5, vxsat, zero<br> [0x80000738]:sw t6, 144(ra)<br>    |
|  51|[0x800023a8]<br>0x0CD0A944|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                      |[0x8000074c]:KMSDA t6, t5, t4<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sw t6, 152(ra)<br>    |
|  52|[0x800023b0]<br>0x0CCEA8F1|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                       |[0x8000076c]:KMSDA t6, t5, t4<br> [0x80000770]:csrrs t5, vxsat, zero<br> [0x80000774]:sw t6, 160(ra)<br>    |
|  53|[0x800023b8]<br>0x0CCEA7B1|- rs2_h0_val == -3<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                               |[0x8000078c]:KMSDA t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 168(ra)<br>    |
|  54|[0x800023c0]<br>0x16245106|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                     |[0x800007a4]:KMSDA t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 176(ra)<br>    |
|  55|[0x800023c8]<br>0x16244118|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                      |[0x800007c4]:KMSDA t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 184(ra)<br>    |
|  56|[0x800023d0]<br>0x1724E11C|- rs2_h1_val == -2049<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                                                              |[0x800007e4]:KMSDA t6, t5, t4<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sw t6, 192(ra)<br>    |
|  57|[0x800023d8]<br>0x2724A12A|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                        |[0x80000804]:KMSDA t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 200(ra)<br>    |
|  58|[0x800023e0]<br>0x2724A36B|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                        |[0x80000824]:KMSDA t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 208(ra)<br>    |
|  59|[0x800023e8]<br>0x25CF7615|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                   |[0x80000840]:KMSDA t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 216(ra)<br>    |
|  60|[0x800023f0]<br>0x25DFF69D|- rs2_h0_val == -8193<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                          |[0x80000860]:KMSDA t6, t5, t4<br> [0x80000864]:csrrs t5, vxsat, zero<br> [0x80000868]:sw t6, 224(ra)<br>    |
|  61|[0x800023f8]<br>0x25DBB695|- rs2_h1_val == 1<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                |[0x8000087c]:KMSDA t6, t5, t4<br> [0x80000880]:csrrs t5, vxsat, zero<br> [0x80000884]:sw t6, 232(ra)<br>    |
|  62|[0x80002400]<br>0x25DBF814|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                       |[0x8000089c]:KMSDA t6, t5, t4<br> [0x800008a0]:csrrs t5, vxsat, zero<br> [0x800008a4]:sw t6, 240(ra)<br>    |
|  63|[0x80002408]<br>0x265C3609|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                     |[0x800008bc]:KMSDA t6, t5, t4<br> [0x800008c0]:csrrs t5, vxsat, zero<br> [0x800008c4]:sw t6, 248(ra)<br>    |
|  64|[0x80002410]<br>0x255B3609|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                    |[0x800008d8]:KMSDA t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 256(ra)<br>    |
|  65|[0x80002418]<br>0x255BF209|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                     |[0x800008f8]:KMSDA t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 264(ra)<br>    |
|  66|[0x80002420]<br>0x255AF40B|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                        |[0x80000918]:KMSDA t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 272(ra)<br>    |
|  67|[0x80002428]<br>0x2562F0CA|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                      |[0x80000938]:KMSDA t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 280(ra)<br>    |
|  68|[0x80002438]<br>0x2561DF21|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                       |[0x80000974]:KMSDA t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 296(ra)<br>    |
|  69|[0x80002440]<br>0x2D61CF20|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                    |[0x80000994]:KMSDA t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 304(ra)<br>    |
|  70|[0x80002448]<br>0x2D672C84|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                       |[0x800009b4]:KMSDA t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 312(ra)<br>    |
|  71|[0x80002450]<br>0x31633C84|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                   |[0x800009d0]:KMSDA t6, t5, t4<br> [0x800009d4]:csrrs t5, vxsat, zero<br> [0x800009d8]:sw t6, 320(ra)<br>    |
|  72|[0x80002458]<br>0x31634595|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                        |[0x800009f0]:KMSDA t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 328(ra)<br>    |
|  73|[0x80002460]<br>0x31657045|- rs1_h1_val == 2<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                             |[0x80000a10]:KMSDA t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 336(ra)<br>    |
|  74|[0x80002468]<br>0x31A57123|- rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                   |[0x80000a30]:KMSDA t6, t5, t4<br> [0x80000a34]:csrrs t5, vxsat, zero<br> [0x80000a38]:sw t6, 344(ra)<br>    |
|  75|[0x80002470]<br>0x31A55C1D|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                    |[0x80000a50]:KMSDA t6, t5, t4<br> [0x80000a54]:csrrs t5, vxsat, zero<br> [0x80000a58]:sw t6, 352(ra)<br>    |
