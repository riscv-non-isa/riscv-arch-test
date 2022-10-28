
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a70')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | kmaxda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmaxda-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 154      |
| STAT1                     | 73      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 77     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:KMAXDA t6, t5, t4
      [0x80000834]:csrrs t5, vxsat, zero
      [0x80000838]:sw t6, 208(ra)
 -- Signature Address: 0x800023e0 Data: 0xFDE66D1F
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -129
      - rs2_h0_val == -5
      - rs1_h1_val == -32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008e0]:KMAXDA t6, t5, t4
      [0x800008e4]:csrrs t5, vxsat, zero
      [0x800008e8]:sw t6, 256(ra)
 -- Signature Address: 0x80002410 Data: 0xFBEAF871
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 8192
      - rs1_h0_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a18]:KMAXDA t6, t5, t4
      [0x80000a1c]:csrrs t5, vxsat, zero
      [0x80000a20]:sw t6, 336(ra)
 -- Signature Address: 0x80002460 Data: 0x3C1BE274
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 8192
      - rs2_h0_val == 0
      - rs1_h1_val == 8192
      - rs1_h0_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a54]:KMAXDA t6, t5, t4
      [0x80000a58]:csrrs t5, vxsat, zero
      [0x80000a5c]:sw t6, 352(ra)
 -- Signature Address: 0x80002470 Data: 0x3970B675
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 1024
      - rs2_h0_val == 2
      - rs1_h0_val == 21845






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmaxda', 'rs1 : x9', 'rs2 : x9', 'rd : x9', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -32768', 'rs2_h0_val == -3', 'rs1_h1_val == -32768', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000118]:KMAXDA s1, s1, s1
	-[0x8000011c]:csrrs s1, vxsat, zero
	-[0x80000120]:sw s1, 0(sp)
Current Store : [0x80000124] : sw s1, 4(sp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x29', 'rd : x25', 'rs1 == rs2 != rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 8192', 'rs2_h0_val == 0', 'rs1_h1_val == 8192', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000134]:KMAXDA s9, t4, t4
	-[0x80000138]:csrrs t4, vxsat, zero
	-[0x8000013c]:sw s9, 8(sp)
Current Store : [0x80000140] : sw t4, 12(sp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x4', 'rd : x27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 32767', 'rs2_h0_val == -16385', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000154]:KMAXDA s11, zero, tp
	-[0x80000158]:csrrs zero, vxsat, zero
	-[0x8000015c]:sw s11, 16(sp)
Current Store : [0x80000160] : sw zero, 20(sp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rd : x19', 'rs2 == rd != rs1', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 32', 'rs1_h1_val == -9', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000174]:KMAXDA s3, a0, s3
	-[0x80000178]:csrrs a0, vxsat, zero
	-[0x8000017c]:sw s3, 24(sp)
Current Store : [0x80000180] : sw a0, 28(sp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x16', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -1', 'rs2_h0_val == 1024', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000194]:KMAXDA a6, a6, s7
	-[0x80000198]:csrrs a6, vxsat, zero
	-[0x8000019c]:sw a6, 32(sp)
Current Store : [0x800001a0] : sw a6, 36(sp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x15', 'rd : x10', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 1', 'rs2_h0_val == 4096', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800001b0]:KMAXDA a0, s4, a5
	-[0x800001b4]:csrrs s4, vxsat, zero
	-[0x800001b8]:sw a0, 40(sp)
Current Store : [0x800001bc] : sw s4, 44(sp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x22', 'rd : x14', 'rs2_h1_val == -21846', 'rs2_h0_val == 4', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800001d0]:KMAXDA a4, s10, s6
	-[0x800001d4]:csrrs s10, vxsat, zero
	-[0x800001d8]:sw a4, 48(sp)
Current Store : [0x800001dc] : sw s10, 52(sp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x17', 'rd : x20', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 21845', 'rs2_h0_val == -513', 'rs1_h1_val == 128', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800001f0]:KMAXDA s4, t1, a7
	-[0x800001f4]:csrrs t1, vxsat, zero
	-[0x800001f8]:sw s4, 56(sp)
Current Store : [0x800001fc] : sw t1, 60(sp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x31', 'rd : x30', 'rs2_h1_val == -16385', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000210]:KMAXDA t5, s2, t6
	-[0x80000214]:csrrs s2, vxsat, zero
	-[0x80000218]:sw t5, 64(sp)
Current Store : [0x8000021c] : sw s2, 68(sp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x14', 'rd : x28', 'rs2_h1_val == -8193', 'rs1_h1_val == 16384', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000230]:KMAXDA t3, ra, a4
	-[0x80000234]:csrrs ra, vxsat, zero
	-[0x80000238]:sw t3, 72(sp)
Current Store : [0x8000023c] : sw ra, 76(sp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x0', 'rd : x7', 'rs2_h1_val == 0', 'rs1_h1_val == -16385', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000250]:KMAXDA t2, t6, zero
	-[0x80000254]:csrrs t6, vxsat, zero
	-[0x80000258]:sw t2, 80(sp)
Current Store : [0x8000025c] : sw t6, 84(sp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x3', 'rs2_h1_val == -2049', 'rs2_h0_val == -129', 'rs1_h1_val == -5', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000270]:KMAXDA gp, s6, s8
	-[0x80000274]:csrrs s6, vxsat, zero
	-[0x80000278]:sw gp, 88(sp)
Current Store : [0x8000027c] : sw s6, 92(sp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x8', 'rd : x13', 'rs2_h1_val == -1025', 'rs2_h0_val == -17', 'rs1_h1_val == 2048', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000290]:KMAXDA a3, a7, fp
	-[0x80000294]:csrrs a7, vxsat, zero
	-[0x80000298]:sw a3, 96(sp)
Current Store : [0x8000029c] : sw a7, 100(sp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x10', 'rd : x6', 'rs2_h1_val == -513', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800002b0]:KMAXDA t1, a4, a0
	-[0x800002b4]:csrrs a4, vxsat, zero
	-[0x800002b8]:sw t1, 104(sp)
Current Store : [0x800002bc] : sw a4, 108(sp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x27', 'rd : x26', 'rs2_h1_val == -257', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800002cc]:KMAXDA s10, s7, s11
	-[0x800002d0]:csrrs s7, vxsat, zero
	-[0x800002d4]:sw s10, 112(sp)
Current Store : [0x800002d8] : sw s7, 116(sp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x6', 'rd : x21', 'rs2_h1_val == -129', 'rs2_h0_val == -5', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800002ec]:KMAXDA s5, t0, t1
	-[0x800002f0]:csrrs t0, vxsat, zero
	-[0x800002f4]:sw s5, 120(sp)
Current Store : [0x800002f8] : sw t0, 124(sp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x21', 'rd : x1', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x80000314]:KMAXDA ra, gp, s5
	-[0x80000318]:csrrs gp, vxsat, zero
	-[0x8000031c]:sw ra, 0(t1)
Current Store : [0x80000320] : sw gp, 4(t1) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x2', 'rd : x24', 'rs2_h1_val == -33', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000330]:KMAXDA s8, s5, sp
	-[0x80000334]:csrrs s5, vxsat, zero
	-[0x80000338]:sw s8, 8(t1)
Current Store : [0x8000033c] : sw s5, 12(t1) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x20', 'rd : x18', 'rs2_h1_val == -17', 'rs2_h0_val == -65', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000350]:KMAXDA s2, s9, s4
	-[0x80000354]:csrrs s9, vxsat, zero
	-[0x80000358]:sw s2, 16(t1)
Current Store : [0x8000035c] : sw s9, 20(t1) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x16', 'rd : x23', 'rs2_h1_val == -9', 'rs2_h0_val == -1025', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000370]:KMAXDA s7, fp, a6
	-[0x80000374]:csrrs fp, vxsat, zero
	-[0x80000378]:sw s7, 24(t1)
Current Store : [0x8000037c] : sw fp, 28(t1) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x18', 'rd : x22', 'rs2_h1_val == -5', 'rs1_h1_val == 32767', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000390]:KMAXDA s6, a1, s2
	-[0x80000394]:csrrs a1, vxsat, zero
	-[0x80000398]:sw s6, 32(t1)
Current Store : [0x8000039c] : sw a1, 36(t1) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x29', 'rs2_h1_val == -3', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800003b0]:KMAXDA t4, a5, t3
	-[0x800003b4]:csrrs a5, vxsat, zero
	-[0x800003b8]:sw t4, 40(t1)
Current Store : [0x800003bc] : sw a5, 44(t1) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x26', 'rd : x12', 'rs2_h1_val == -2', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x800003d0]:KMAXDA a2, tp, s10
	-[0x800003d4]:csrrs tp, vxsat, zero
	-[0x800003d8]:sw a2, 48(t1)
Current Store : [0x800003dc] : sw tp, 52(t1) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x5', 'rd : x17', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h1_val == 16384', 'rs2_h0_val == -2', 'rs1_h1_val == -1025', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800003f0]:KMAXDA a7, t2, t0
	-[0x800003f4]:csrrs t2, vxsat, zero
	-[0x800003f8]:sw a7, 56(t1)
Current Store : [0x800003fc] : sw t2, 60(t1) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x31', 'rs2_h1_val == 4096', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000410]:KMAXDA t6, a3, a2
	-[0x80000414]:csrrs a3, vxsat, zero
	-[0x80000418]:sw t6, 64(t1)
Current Store : [0x8000041c] : sw a3, 68(t1) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x1', 'rd : x11', 'rs2_h1_val == 2048', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000430]:KMAXDA a1, s8, ra
	-[0x80000434]:csrrs s8, vxsat, zero
	-[0x80000438]:sw a1, 72(t1)
Current Store : [0x8000043c] : sw s8, 76(t1) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x7', 'rd : x0', 'rs2_h1_val == 1024', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000450]:KMAXDA zero, s3, t2
	-[0x80000454]:csrrs s3, vxsat, zero
	-[0x80000458]:sw zero, 80(t1)
Current Store : [0x8000045c] : sw s3, 84(t1) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x30', 'rd : x2', 'rs2_h1_val == 512', 'rs2_h0_val == 16', 'rs1_h1_val == -8193', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000470]:KMAXDA sp, a2, t5
	-[0x80000474]:csrrs a2, vxsat, zero
	-[0x80000478]:sw sp, 88(t1)
Current Store : [0x8000047c] : sw a2, 92(t1) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x25', 'rd : x5', 'rs2_h1_val == 256', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000490]:KMAXDA t0, t5, s9
	-[0x80000494]:csrrs t5, vxsat, zero
	-[0x80000498]:sw t0, 96(t1)
Current Store : [0x8000049c] : sw t5, 100(t1) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x13', 'rd : x4', 'rs2_h1_val == 128', 'rs2_h0_val == 32767', 'rs1_h1_val == -33', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800004b0]:KMAXDA tp, sp, a3
	-[0x800004b4]:csrrs sp, vxsat, zero
	-[0x800004b8]:sw tp, 104(t1)
Current Store : [0x800004bc] : sw sp, 108(t1) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x3', 'rd : x15', 'rs2_h0_val == 8', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800004d0]:KMAXDA a5, t3, gp
	-[0x800004d4]:csrrs t3, vxsat, zero
	-[0x800004d8]:sw a5, 112(t1)
Current Store : [0x800004dc] : sw t3, 116(t1) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x11', 'rd : x8', 'rs2_h0_val == -32768', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004ec]:KMAXDA fp, s11, a1
	-[0x800004f0]:csrrs s11, vxsat, zero
	-[0x800004f4]:sw fp, 120(t1)
Current Store : [0x800004f8] : sw s11, 124(t1) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000514]:KMAXDA t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 0(ra)
Current Store : [0x80000520] : sw t5, 4(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2049', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000534]:KMAXDA t6, t5, t4
	-[0x80000538]:csrrs t5, vxsat, zero
	-[0x8000053c]:sw t6, 8(ra)
Current Store : [0x80000540] : sw t5, 12(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000554]:KMAXDA t6, t5, t4
	-[0x80000558]:csrrs t5, vxsat, zero
	-[0x8000055c]:sw t6, 16(ra)
Current Store : [0x80000560] : sw t5, 20(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000574]:KMAXDA t6, t5, t4
	-[0x80000578]:csrrs t5, vxsat, zero
	-[0x8000057c]:sw t6, 24(ra)
Current Store : [0x80000580] : sw t5, 28(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000590]:KMAXDA t6, t5, t4
	-[0x80000594]:csrrs t5, vxsat, zero
	-[0x80000598]:sw t6, 32(ra)
Current Store : [0x8000059c] : sw t5, 36(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800005ac]:KMAXDA t6, t5, t4
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 40(ra)
Current Store : [0x800005b8] : sw t5, 44(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005cc]:KMAXDA t6, t5, t4
	-[0x800005d0]:csrrs t5, vxsat, zero
	-[0x800005d4]:sw t6, 48(ra)
Current Store : [0x800005d8] : sw t5, 52(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005e8]:KMAXDA t6, t5, t4
	-[0x800005ec]:csrrs t5, vxsat, zero
	-[0x800005f0]:sw t6, 56(ra)
Current Store : [0x800005f4] : sw t5, 60(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000608]:KMAXDA t6, t5, t4
	-[0x8000060c]:csrrs t5, vxsat, zero
	-[0x80000610]:sw t6, 64(ra)
Current Store : [0x80000614] : sw t5, 68(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h1_val == -513', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000628]:KMAXDA t6, t5, t4
	-[0x8000062c]:csrrs t5, vxsat, zero
	-[0x80000630]:sw t6, 72(ra)
Current Store : [0x80000634] : sw t5, 76(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000644]:KMAXDA t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 80(ra)
Current Store : [0x80000650] : sw t5, 84(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000664]:KMAXDA t6, t5, t4
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 88(ra)
Current Store : [0x80000670] : sw t5, 92(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000680]:KMAXDA t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 96(ra)
Current Store : [0x8000068c] : sw t5, 100(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800006a0]:KMAXDA t6, t5, t4
	-[0x800006a4]:csrrs t5, vxsat, zero
	-[0x800006a8]:sw t6, 104(ra)
Current Store : [0x800006ac] : sw t5, 108(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x800006c0]:KMAXDA t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 112(ra)
Current Store : [0x800006cc] : sw t5, 116(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800006dc]:KMAXDA t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 120(ra)
Current Store : [0x800006e8] : sw t5, 124(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 8192', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800006f8]:KMAXDA t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 128(ra)
Current Store : [0x80000704] : sw t5, 132(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80000714]:KMAXDA t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 136(ra)
Current Store : [0x80000720] : sw t5, 140(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000734]:KMAXDA t6, t5, t4
	-[0x80000738]:csrrs t5, vxsat, zero
	-[0x8000073c]:sw t6, 144(ra)
Current Store : [0x80000740] : sw t5, 148(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80000750]:KMAXDA t6, t5, t4
	-[0x80000754]:csrrs t5, vxsat, zero
	-[0x80000758]:sw t6, 152(ra)
Current Store : [0x8000075c] : sw t5, 156(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000770]:KMAXDA t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 160(ra)
Current Store : [0x8000077c] : sw t5, 164(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000790]:KMAXDA t6, t5, t4
	-[0x80000794]:csrrs t5, vxsat, zero
	-[0x80000798]:sw t6, 168(ra)
Current Store : [0x8000079c] : sw t5, 172(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800007b0]:KMAXDA t6, t5, t4
	-[0x800007b4]:csrrs t5, vxsat, zero
	-[0x800007b8]:sw t6, 176(ra)
Current Store : [0x800007bc] : sw t5, 180(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800007d0]:KMAXDA t6, t5, t4
	-[0x800007d4]:csrrs t5, vxsat, zero
	-[0x800007d8]:sw t6, 184(ra)
Current Store : [0x800007dc] : sw t5, 188(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800007f0]:KMAXDA t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 192(ra)
Current Store : [0x800007fc] : sw t5, 196(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -3', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000810]:KMAXDA t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 200(ra)
Current Store : [0x8000081c] : sw t5, 204(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['opcode : kmaxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -129', 'rs2_h0_val == -5', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000830]:KMAXDA t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 208(ra)
Current Store : [0x8000083c] : sw t5, 212(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000850]:KMAXDA t6, t5, t4
	-[0x80000854]:csrrs t5, vxsat, zero
	-[0x80000858]:sw t6, 216(ra)
Current Store : [0x8000085c] : sw t5, 220(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80000870]:KMAXDA t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 224(ra)
Current Store : [0x8000087c] : sw t5, 228(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000888]:KMAXDA t6, t5, t4
	-[0x8000088c]:csrrs t5, vxsat, zero
	-[0x80000890]:sw t6, 232(ra)
Current Store : [0x80000894] : sw t5, 236(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800008a4]:KMAXDA t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 240(ra)
Current Store : [0x800008b0] : sw t5, 244(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800008c4]:KMAXDA t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 248(ra)
Current Store : [0x800008d0] : sw t5, 252(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['opcode : kmaxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 8192', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800008e0]:KMAXDA t6, t5, t4
	-[0x800008e4]:csrrs t5, vxsat, zero
	-[0x800008e8]:sw t6, 256(ra)
Current Store : [0x800008ec] : sw t5, 260(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000900]:KMAXDA t6, t5, t4
	-[0x80000904]:csrrs t5, vxsat, zero
	-[0x80000908]:sw t6, 264(ra)
Current Store : [0x8000090c] : sw t5, 268(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000920]:KMAXDA t6, t5, t4
	-[0x80000924]:csrrs t5, vxsat, zero
	-[0x80000928]:sw t6, 272(ra)
Current Store : [0x8000092c] : sw t5, 276(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000940]:KMAXDA t6, t5, t4
	-[0x80000944]:csrrs t5, vxsat, zero
	-[0x80000948]:sw t6, 280(ra)
Current Store : [0x8000094c] : sw t5, 284(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000960]:KMAXDA t6, t5, t4
	-[0x80000964]:csrrs t5, vxsat, zero
	-[0x80000968]:sw t6, 288(ra)
Current Store : [0x8000096c] : sw t5, 292(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000980]:KMAXDA t6, t5, t4
	-[0x80000984]:csrrs t5, vxsat, zero
	-[0x80000988]:sw t6, 296(ra)
Current Store : [0x8000098c] : sw t5, 300(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800009a0]:KMAXDA t6, t5, t4
	-[0x800009a4]:csrrs t5, vxsat, zero
	-[0x800009a8]:sw t6, 304(ra)
Current Store : [0x800009ac] : sw t5, 308(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800009c0]:KMAXDA t6, t5, t4
	-[0x800009c4]:csrrs t5, vxsat, zero
	-[0x800009c8]:sw t6, 312(ra)
Current Store : [0x800009cc] : sw t5, 316(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800009e0]:KMAXDA t6, t5, t4
	-[0x800009e4]:csrrs t5, vxsat, zero
	-[0x800009e8]:sw t6, 320(ra)
Current Store : [0x800009ec] : sw t5, 324(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x800009fc]:KMAXDA t6, t5, t4
	-[0x80000a00]:csrrs t5, vxsat, zero
	-[0x80000a04]:sw t6, 328(ra)
Current Store : [0x80000a08] : sw t5, 332(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['opcode : kmaxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 8192', 'rs2_h0_val == 0', 'rs1_h1_val == 8192', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000a18]:KMAXDA t6, t5, t4
	-[0x80000a1c]:csrrs t5, vxsat, zero
	-[0x80000a20]:sw t6, 336(ra)
Current Store : [0x80000a24] : sw t5, 340(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x80000a34]:KMAXDA t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 344(ra)
Current Store : [0x80000a40] : sw t5, 348(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['opcode : kmaxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 1024', 'rs2_h0_val == 2', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000a54]:KMAXDA t6, t5, t4
	-[0x80000a58]:csrrs t5, vxsat, zero
	-[0x80000a5c]:sw t6, 352(ra)
Current Store : [0x80000a60] : sw t5, 356(ra) -- Store: [0x80002474]:0x00000001





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

|s.no|        signature         |                                                                                                                                                                coverpoints                                                                                                                                                                |                                                     code                                                      |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmaxda<br> - rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -3<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -3<br> |[0x80000118]:KMAXDA s1, s1, s1<br> [0x8000011c]:csrrs s1, vxsat, zero<br> [0x80000120]:sw s1, 0(sp)<br>        |
|   2|[0x80002218]<br>0xEDBEADFE|- rs1 : x29<br> - rs2 : x29<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 0<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 0<br>                                                                                                                                |[0x80000134]:KMAXDA s9, t4, t4<br> [0x80000138]:csrrs t4, vxsat, zero<br> [0x8000013c]:sw s9, 8(sp)<br>        |
|   3|[0x80002220]<br>0xBB6FAB7F|- rs1 : x0<br> - rs2 : x4<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 0<br>                                                                                                        |[0x80000154]:KMAXDA s11, zero, tp<br> [0x80000158]:csrrs zero, vxsat, zero<br> [0x8000015c]:sw s11, 16(sp)<br> |
|   4|[0x80002228]<br>0x80000000|- rs1 : x10<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 32<br> - rs1_h1_val == -9<br> - rs1_h0_val == 2<br>                                                                                                                                                          |[0x80000174]:KMAXDA s3, a0, s3<br> [0x80000178]:csrrs a0, vxsat, zero<br> [0x8000017c]:sw s3, 24(sp)<br>       |
|   5|[0x80002230]<br>0x00000001|- rs1 : x16<br> - rs2 : x23<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -1<br> - rs2_h0_val == 1024<br> - rs1_h0_val == 1024<br>                                                                                                                                                     |[0x80000194]:KMAXDA a6, a6, s7<br> [0x80000198]:csrrs a6, vxsat, zero<br> [0x8000019c]:sw a6, 32(sp)<br>       |
|   6|[0x80002238]<br>0x00002000|- rs1 : x20<br> - rs2 : x15<br> - rd : x10<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 1<br> - rs2_h0_val == 4096<br> - rs1_h0_val == -16385<br>                                                                                                                                                                           |[0x800001b0]:KMAXDA a0, s4, a5<br> [0x800001b4]:csrrs s4, vxsat, zero<br> [0x800001b8]:sw a0, 40(sp)<br>       |
|   7|[0x80002240]<br>0xF56FA23B|- rs1 : x26<br> - rs2 : x22<br> - rd : x14<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 4<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                      |[0x800001d0]:KMAXDA a4, s10, s6<br> [0x800001d4]:csrrs s10, vxsat, zero<br> [0x800001d8]:sw a4, 48(sp)<br>     |
|   8|[0x80002248]<br>0x0029AA01|- rs1 : x6<br> - rs2 : x17<br> - rd : x20<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -513<br> - rs1_h1_val == 128<br> - rs1_h0_val == 128<br>                                                                                                                                                   |[0x800001f0]:KMAXDA s4, t1, a7<br> [0x800001f4]:csrrs t1, vxsat, zero<br> [0x800001f8]:sw s4, 56(sp)<br>       |
|   9|[0x80002250]<br>0xE76DF57E|- rs1 : x18<br> - rs2 : x31<br> - rd : x30<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                            |[0x80000210]:KMAXDA t5, s2, t6<br> [0x80000214]:csrrs s2, vxsat, zero<br> [0x80000218]:sw t5, 64(sp)<br>       |
|  10|[0x80002258]<br>0xE1B755C0|- rs1 : x1<br> - rs2 : x14<br> - rd : x28<br> - rs2_h1_val == -8193<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                |[0x80000230]:KMAXDA t3, ra, a4<br> [0x80000234]:csrrs ra, vxsat, zero<br> [0x80000238]:sw t3, 72(sp)<br>       |
|  11|[0x80002260]<br>0xB7FBB6FA|- rs1 : x31<br> - rs2 : x0<br> - rd : x7<br> - rs2_h1_val == 0<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                       |[0x80000250]:KMAXDA t2, t6, zero<br> [0x80000254]:csrrs t6, vxsat, zero<br> [0x80000258]:sw t2, 80(sp)<br>     |
|  12|[0x80002268]<br>0x7D1074DB|- rs1 : x22<br> - rs2 : x24<br> - rd : x3<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -129<br> - rs1_h1_val == -5<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                          |[0x80000270]:KMAXDA gp, s6, s8<br> [0x80000274]:csrrs s6, vxsat, zero<br> [0x80000278]:sw gp, 88(sp)<br>       |
|  13|[0x80002270]<br>0xEADFAAEC|- rs1 : x17<br> - rs2 : x8<br> - rd : x13<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -17<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -17<br>                                                                                                                                                                                           |[0x80000290]:KMAXDA a3, a7, fp<br> [0x80000294]:csrrs a7, vxsat, zero<br> [0x80000298]:sw a3, 96(sp)<br>       |
|  14|[0x80002278]<br>0xFFFB7F0B|- rs1 : x14<br> - rs2 : x10<br> - rd : x6<br> - rs2_h1_val == -513<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                             |[0x800002b0]:KMAXDA t1, a4, a0<br> [0x800002b4]:csrrs a4, vxsat, zero<br> [0x800002b8]:sw t1, 104(sp)<br>      |
|  15|[0x80002280]<br>0x00000052|- rs1 : x23<br> - rs2 : x27<br> - rd : x26<br> - rs2_h1_val == -257<br> - rs2_h0_val == -9<br>                                                                                                                                                                                                                                             |[0x800002cc]:KMAXDA s10, s7, s11<br> [0x800002d0]:csrrs s7, vxsat, zero<br> [0x800002d4]:sw s10, 112(sp)<br>   |
|  16|[0x80002288]<br>0xDBCA9FCF|- rs1 : x5<br> - rs2 : x6<br> - rd : x21<br> - rs2_h1_val == -129<br> - rs2_h0_val == -5<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                        |[0x800002ec]:KMAXDA s5, t0, t1<br> [0x800002f0]:csrrs t0, vxsat, zero<br> [0x800002f4]:sw s5, 120(sp)<br>      |
|  17|[0x80002290]<br>0xFFF801E9|- rs1 : x3<br> - rs2 : x21<br> - rd : x1<br> - rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                       |[0x80000314]:KMAXDA ra, gp, s5<br> [0x80000318]:csrrs gp, vxsat, zero<br> [0x8000031c]:sw ra, 0(t1)<br>        |
|  18|[0x80002298]<br>0xF7FD9F7F|- rs1 : x21<br> - rs2 : x2<br> - rd : x24<br> - rs2_h1_val == -33<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                             |[0x80000330]:KMAXDA s8, s5, sp<br> [0x80000334]:csrrs s5, vxsat, zero<br> [0x80000338]:sw s8, 8(t1)<br>        |
|  19|[0x800022a0]<br>0xFFFF763A|- rs1 : x25<br> - rs2 : x20<br> - rd : x18<br> - rs2_h1_val == -17<br> - rs2_h0_val == -65<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                    |[0x80000350]:KMAXDA s2, s9, s4<br> [0x80000354]:csrrs s9, vxsat, zero<br> [0x80000358]:sw s2, 16(t1)<br>       |
|  20|[0x800022a8]<br>0xFFE0010A|- rs1 : x8<br> - rs2 : x16<br> - rd : x23<br> - rs2_h1_val == -9<br> - rs2_h0_val == -1025<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                    |[0x80000370]:KMAXDA s7, fp, a6<br> [0x80000374]:csrrs fp, vxsat, zero<br> [0x80000378]:sw s7, 24(t1)<br>       |
|  21|[0x800022b0]<br>0xE0001007|- rs1 : x11<br> - rs2 : x18<br> - rd : x22<br> - rs2_h1_val == -5<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                  |[0x80000390]:KMAXDA s6, a1, s2<br> [0x80000394]:csrrs a1, vxsat, zero<br> [0x80000398]:sw s6, 32(t1)<br>       |
|  22|[0x800022b8]<br>0xFFFFFF83|- rs1 : x15<br> - rs2 : x28<br> - rd : x29<br> - rs2_h1_val == -3<br> - rs2_h0_val == -1<br>                                                                                                                                                                                                                                               |[0x800003b0]:KMAXDA t4, a5, t3<br> [0x800003b4]:csrrs a5, vxsat, zero<br> [0x800003b8]:sw t4, 40(t1)<br>       |
|  23|[0x800022c0]<br>0xD5C2886F|- rs1 : x4<br> - rs2 : x26<br> - rd : x12<br> - rs2_h1_val == -2<br> - rs2_h0_val == -21846<br>                                                                                                                                                                                                                                            |[0x800003d0]:KMAXDA a2, tp, s10<br> [0x800003d4]:csrrs tp, vxsat, zero<br> [0x800003d8]:sw a2, 48(t1)<br>      |
|  24|[0x800022c8]<br>0x1FFFC803|- rs1 : x7<br> - rs2 : x5<br> - rd : x17<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -2<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 32767<br>                                                                                                                                                  |[0x800003f0]:KMAXDA a7, t2, t0<br> [0x800003f4]:csrrs t2, vxsat, zero<br> [0x800003f8]:sw a7, 56(t1)<br>       |
|  25|[0x800022d0]<br>0xFFFF9002|- rs1 : x13<br> - rs2 : x12<br> - rd : x31<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                          |[0x80000410]:KMAXDA t6, a3, a2<br> [0x80000414]:csrrs a3, vxsat, zero<br> [0x80000418]:sw t6, 64(t1)<br>       |
|  26|[0x800022d8]<br>0x00021009|- rs1 : x24<br> - rs2 : x1<br> - rd : x11<br> - rs2_h1_val == 2048<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                              |[0x80000430]:KMAXDA a1, s8, ra<br> [0x80000434]:csrrs s8, vxsat, zero<br> [0x80000438]:sw a1, 72(t1)<br>       |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x19<br> - rs2 : x7<br> - rd : x0<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                                                                |[0x80000450]:KMAXDA zero, s3, t2<br> [0x80000454]:csrrs s3, vxsat, zero<br> [0x80000458]:sw zero, 80(t1)<br>   |
|  28|[0x800022e8]<br>0xFFDDFBE9|- rs1 : x12<br> - rs2 : x30<br> - rd : x2<br> - rs2_h1_val == 512<br> - rs2_h0_val == 16<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -2<br>                                                                                                                                                                                              |[0x80000470]:KMAXDA sp, a2, t5<br> [0x80000474]:csrrs a2, vxsat, zero<br> [0x80000478]:sw sp, 88(t1)<br>       |
|  29|[0x800022f0]<br>0x42052FFF|- rs1 : x30<br> - rs2 : x25<br> - rd : x5<br> - rs2_h1_val == 256<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                                                                            |[0x80000490]:KMAXDA t0, t5, s9<br> [0x80000494]:csrrs t5, vxsat, zero<br> [0x80000498]:sw t0, 96(t1)<br>       |
|  30|[0x800022f8]<br>0xFFED7FA2|- rs1 : x2<br> - rs2 : x13<br> - rd : x4<br> - rs2_h1_val == 128<br> - rs2_h0_val == 32767<br> - rs1_h1_val == -33<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                           |[0x800004b0]:KMAXDA tp, sp, a3<br> [0x800004b4]:csrrs sp, vxsat, zero<br> [0x800004b8]:sw tp, 104(t1)<br>      |
|  31|[0x80002300]<br>0xFFFFF443|- rs1 : x28<br> - rs2 : x3<br> - rd : x15<br> - rs2_h0_val == 8<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                               |[0x800004d0]:KMAXDA a5, t3, gp<br> [0x800004d4]:csrrs t3, vxsat, zero<br> [0x800004d8]:sw a5, 112(t1)<br>      |
|  32|[0x80002308]<br>0xFFFD7B78|- rs1 : x27<br> - rs2 : x11<br> - rd : x8<br> - rs2_h0_val == -32768<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                          |[0x800004ec]:KMAXDA fp, s11, a1<br> [0x800004f0]:csrrs s11, vxsat, zero<br> [0x800004f4]:sw fp, 120(t1)<br>    |
|  33|[0x80002310]<br>0xFFFF6F82|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                    |[0x80000514]:KMAXDA t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 0(ra)<br>        |
|  34|[0x80002318]<br>0xFFDF6FC3|- rs1_h1_val == -2049<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                          |[0x80000534]:KMAXDA t6, t5, t4<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 8(ra)<br>        |
|  35|[0x80002320]<br>0xFFDD2FD1|- rs1_h1_val == 1<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                               |[0x80000554]:KMAXDA t6, t5, t4<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 16(ra)<br>       |
|  36|[0x80002328]<br>0xFFCD2F24|- rs2_h0_val == -8193<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                           |[0x80000574]:KMAXDA t6, t5, t4<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 24(ra)<br>       |
|  37|[0x80002330]<br>0xFFCEEF14|- rs1_h1_val == 8<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                            |[0x80000590]:KMAXDA t6, t5, t4<br> [0x80000594]:csrrs t5, vxsat, zero<br> [0x80000598]:sw t6, 32(ra)<br>       |
|  38|[0x80002338]<br>0x00CF6F14|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                   |[0x800005ac]:KMAXDA t6, t5, t4<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 40(ra)<br>       |
|  39|[0x80002340]<br>0x00CF4F14|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                    |[0x800005cc]:KMAXDA t6, t5, t4<br> [0x800005d0]:csrrs t5, vxsat, zero<br> [0x800005d4]:sw t6, 48(ra)<br>       |
|  40|[0x80002348]<br>0x00AB4EF4|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                     |[0x800005e8]:KMAXDA t6, t5, t4<br> [0x800005ec]:csrrs t5, vxsat, zero<br> [0x800005f0]:sw t6, 56(ra)<br>       |
|  41|[0x80002350]<br>0xEB507994|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                     |[0x80000608]:KMAXDA t6, t5, t4<br> [0x8000060c]:csrrs t5, vxsat, zero<br> [0x80000610]:sw t6, 64(ra)<br>       |
|  42|[0x80002358]<br>0xEB5085CA|- rs1_h1_val == -513<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                             |[0x80000628]:KMAXDA t6, t5, t4<br> [0x8000062c]:csrrs t5, vxsat, zero<br> [0x80000630]:sw t6, 72(ra)<br>       |
|  43|[0x80002360]<br>0xEB4F85C6|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x80000644]:KMAXDA t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 80(ra)<br>       |
|  44|[0x80002368]<br>0xEB4F904B|- rs2_h1_val == 64<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                            |[0x80000664]:KMAXDA t6, t5, t4<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 88(ra)<br>       |
|  45|[0x80002370]<br>0xE951884B|- rs2_h1_val == 32<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                            |[0x80000680]:KMAXDA t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 96(ra)<br>       |
|  46|[0x80002378]<br>0xE9519150|- rs2_h1_val == 16<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                            |[0x800006a0]:KMAXDA t6, t5, t4<br> [0x800006a4]:csrrs t5, vxsat, zero<br> [0x800006a8]:sw t6, 104(ra)<br>      |
|  47|[0x80002380]<br>0xE951D14B|- rs2_h1_val == 8<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                               |[0x800006c0]:KMAXDA t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 112(ra)<br>      |
|  48|[0x80002388]<br>0xFEA7090B|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                  |[0x800006dc]:KMAXDA t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 120(ra)<br>      |
|  49|[0x80002390]<br>0xFEA6C91D|- rs2_h1_val == 2<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                      |[0x800006f8]:KMAXDA t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 128(ra)<br>      |
|  50|[0x80002398]<br>0xFEA6871D|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                    |[0x80000714]:KMAXDA t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 136(ra)<br>      |
|  51|[0x800023a0]<br>0xFE51B11D|- rs2_h0_val == 256<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                         |[0x80000734]:KMAXDA t6, t5, t4<br> [0x80000738]:csrrs t5, vxsat, zero<br> [0x8000073c]:sw t6, 144(ra)<br>      |
|  52|[0x800023a8]<br>0xFE11A59D|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                    |[0x80000750]:KMAXDA t6, t5, t4<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sw t6, 152(ra)<br>      |
|  53|[0x800023b0]<br>0xFE13A459|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                     |[0x80000770]:KMAXDA t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 160(ra)<br>      |
|  54|[0x800023b8]<br>0xFE15244F|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                      |[0x80000790]:KMAXDA t6, t5, t4<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sw t6, 168(ra)<br>      |
|  55|[0x800023c0]<br>0xFDE5134F|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                  |[0x800007b0]:KMAXDA t6, t5, t4<br> [0x800007b4]:csrrs t5, vxsat, zero<br> [0x800007b8]:sw t6, 176(ra)<br>      |
|  56|[0x800023c8]<br>0xFDE49496|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                    |[0x800007d0]:KMAXDA t6, t5, t4<br> [0x800007d4]:csrrs t5, vxsat, zero<br> [0x800007d8]:sw t6, 184(ra)<br>      |
|  57|[0x800023d0]<br>0xFDE49438|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                    |[0x800007f0]:KMAXDA t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 192(ra)<br>      |
|  58|[0x800023d8]<br>0xFDE3E998|- rs1_h1_val == -3<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                          |[0x80000810]:KMAXDA t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 200(ra)<br>      |
|  59|[0x800023e8]<br>0xFDE69CE3|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                   |[0x80000850]:KMAXDA t6, t5, t4<br> [0x80000854]:csrrs t5, vxsat, zero<br> [0x80000858]:sw t6, 216(ra)<br>      |
|  60|[0x800023f0]<br>0xFDE6DCED|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x80000870]:KMAXDA t6, t5, t4<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sw t6, 224(ra)<br>      |
|  61|[0x800023f8]<br>0xFCEADCED|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                   |[0x80000888]:KMAXDA t6, t5, t4<br> [0x8000088c]:csrrs t5, vxsat, zero<br> [0x80000890]:sw t6, 232(ra)<br>      |
|  62|[0x80002400]<br>0xFBEA58ED|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                    |[0x800008a4]:KMAXDA t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 240(ra)<br>      |
|  63|[0x80002408]<br>0xFBEA5871|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                    |[0x800008c4]:KMAXDA t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 248(ra)<br>      |
|  64|[0x80002418]<br>0xFC15A2D1|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                     |[0x80000900]:KMAXDA t6, t5, t4<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sw t6, 264(ra)<br>      |
|  65|[0x80002420]<br>0xFC1691D0|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                  |[0x80000920]:KMAXDA t6, t5, t4<br> [0x80000924]:csrrs t5, vxsat, zero<br> [0x80000928]:sw t6, 272(ra)<br>      |
|  66|[0x80002428]<br>0xFC1E9731|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                     |[0x80000940]:KMAXDA t6, t5, t4<br> [0x80000944]:csrrs t5, vxsat, zero<br> [0x80000948]:sw t6, 280(ra)<br>      |
|  67|[0x80002430]<br>0xFC20995E|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x80000960]:KMAXDA t6, t5, t4<br> [0x80000964]:csrrs t5, vxsat, zero<br> [0x80000968]:sw t6, 288(ra)<br>      |
|  68|[0x80002438]<br>0xFC20844F|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                   |[0x80000980]:KMAXDA t6, t5, t4<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sw t6, 296(ra)<br>      |
|  69|[0x80002440]<br>0xFC20B457|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                  |[0x800009a0]:KMAXDA t6, t5, t4<br> [0x800009a4]:csrrs t5, vxsat, zero<br> [0x800009a8]:sw t6, 304(ra)<br>      |
|  70|[0x80002448]<br>0xFC20B2AA|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                    |[0x800009c0]:KMAXDA t6, t5, t4<br> [0x800009c4]:csrrs t5, vxsat, zero<br> [0x800009c8]:sw t6, 312(ra)<br>      |
|  71|[0x80002450]<br>0xFC1D0274|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                  |[0x800009e0]:KMAXDA t6, t5, t4<br> [0x800009e4]:csrrs t5, vxsat, zero<br> [0x800009e8]:sw t6, 320(ra)<br>      |
|  72|[0x80002458]<br>0x3C1C4274|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                 |[0x800009fc]:KMAXDA t6, t5, t4<br> [0x80000a00]:csrrs t5, vxsat, zero<br> [0x80000a04]:sw t6, 328(ra)<br>      |
|  73|[0x80002468]<br>0x381BE275|- rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                  |[0x80000a34]:KMAXDA t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 344(ra)<br>      |
