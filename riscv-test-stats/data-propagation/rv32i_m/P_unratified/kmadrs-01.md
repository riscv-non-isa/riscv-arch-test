
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
| COV_LABELS                | kmadrs      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmadrs-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 156      |
| STAT1                     | 75      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 78     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000067c]:KMADRS t6, t5, t4
      [0x80000680]:csrrs t5, vxsat, zero
      [0x80000684]:sw t6, 128(sp)
 -- Signature Address: 0x80002378 Data: 0x007B3CC5
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -16385
      - rs2_h0_val == 1
      - rs1_h1_val == 64
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a18]:KMADRS t6, t5, t4
      [0x80000a1c]:csrrs t5, vxsat, zero
      [0x80000a20]:sw t6, 368(sp)
 -- Signature Address: 0x80002468 Data: 0x2A10B8B6
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -2
      - rs1_h1_val == -2
      - rs1_h0_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a34]:KMADRS t6, t5, t4
      [0x80000a38]:csrrs t5, vxsat, zero
      [0x80000a3c]:sw t6, 376(sp)
 -- Signature Address: 0x80002470 Data: 0x2A0F78C2
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h0_val == 16384
      - rs1_h1_val == 2
      - rs1_h0_val == -5






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmadrs', 'rs1 : x11', 'rs2 : x11', 'rd : x11', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -2049', 'rs2_h0_val == 32767', 'rs1_h1_val == -2049', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000118]:KMADRS a1, a1, a1
	-[0x8000011c]:csrrs a1, vxsat, zero
	-[0x80000120]:sw a1, 0(t0)
Current Store : [0x80000124] : sw a1, 4(t0) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x25', 'rd : x7', 'rs1 == rs2 != rd', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -2', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000138]:KMADRS t2, s9, s9
	-[0x8000013c]:csrrs s9, vxsat, zero
	-[0x80000140]:sw t2, 8(t0)
Current Store : [0x80000144] : sw s9, 12(t0) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x15', 'rd : x4', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 32', 'rs2_h0_val == 2', 'rs1_h1_val == -1025', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000154]:KMADRS tp, s7, a5
	-[0x80000158]:csrrs s7, vxsat, zero
	-[0x8000015c]:sw tp, 16(t0)
Current Store : [0x80000160] : sw s7, 20(t0) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x0', 'rd : x0', 'rs2 == rd != rs1', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 2', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000174]:KMADRS zero, gp, zero
	-[0x80000178]:csrrs gp, vxsat, zero
	-[0x8000017c]:sw zero, 24(t0)
Current Store : [0x80000180] : sw gp, 28(t0) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x24', 'rd : x13', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h0_val == 21845', 'rs1_h1_val == 32', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000194]:KMADRS a3, a3, s8
	-[0x80000198]:csrrs a3, vxsat, zero
	-[0x8000019c]:sw a3, 32(t0)
Current Store : [0x800001a0] : sw a3, 36(t0) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x7', 'rd : x3', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800001b4]:KMADRS gp, sp, t2
	-[0x800001b8]:csrrs sp, vxsat, zero
	-[0x800001bc]:sw gp, 40(t0)
Current Store : [0x800001c0] : sw sp, 44(t0) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x6', 'rd : x18', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -21846', 'rs2_h0_val == 16384', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800001d0]:KMADRS s2, a7, t1
	-[0x800001d4]:csrrs a7, vxsat, zero
	-[0x800001d8]:sw s2, 48(t0)
Current Store : [0x800001dc] : sw a7, 52(t0) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x31', 'rd : x22', 'rs2_h1_val == 21845', 'rs2_h0_val == -21846', 'rs1_h1_val == -513', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800001f0]:KMADRS s6, fp, t6
	-[0x800001f4]:csrrs fp, vxsat, zero
	-[0x800001f8]:sw s6, 56(t0)
Current Store : [0x800001fc] : sw fp, 60(t0) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x8', 'rd : x31', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 32767', 'rs1_h1_val == 8', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000210]:KMADRS t6, s1, fp
	-[0x80000214]:csrrs s1, vxsat, zero
	-[0x80000218]:sw t6, 64(t0)
Current Store : [0x8000021c] : sw s1, 68(t0) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x20', 'rd : x2', 'rs2_h1_val == -16385', 'rs1_h1_val == 2048', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000230]:KMADRS sp, a5, s4
	-[0x80000234]:csrrs a5, vxsat, zero
	-[0x80000238]:sw sp, 72(t0)
Current Store : [0x8000023c] : sw a5, 76(t0) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x3', 'rd : x12', 'rs2_h1_val == -8193', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80000250]:KMADRS a2, ra, gp
	-[0x80000254]:csrrs ra, vxsat, zero
	-[0x80000258]:sw a2, 80(t0)
Current Store : [0x8000025c] : sw ra, 84(t0) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x10', 'rd : x14', 'rs2_h1_val == -4097', 'rs2_h0_val == -2049', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000270]:KMADRS a4, zero, a0
	-[0x80000274]:csrrs zero, vxsat, zero
	-[0x80000278]:sw a4, 88(t0)
Current Store : [0x8000027c] : sw zero, 92(t0) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x29', 'rd : x23', 'rs2_h1_val == -1025', 'rs2_h0_val == 1', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000028c]:KMADRS s7, s6, t4
	-[0x80000290]:csrrs s6, vxsat, zero
	-[0x80000294]:sw s7, 96(t0)
Current Store : [0x80000298] : sw s6, 100(t0) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x14', 'rd : x29', 'rs2_h1_val == -513', 'rs1_h1_val == -65', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800002a8]:KMADRS t4, s8, a4
	-[0x800002ac]:csrrs s8, vxsat, zero
	-[0x800002b0]:sw t4, 104(t0)
Current Store : [0x800002b4] : sw s8, 108(t0) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x27', 'rd : x19', 'rs2_h1_val == -257', 'rs2_h0_val == -9', 'rs1_h1_val == -33', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800002c8]:KMADRS s3, a2, s11
	-[0x800002cc]:csrrs a2, vxsat, zero
	-[0x800002d0]:sw s3, 112(t0)
Current Store : [0x800002d4] : sw a2, 116(t0) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x26', 'rd : x10', 'rs2_h1_val == -129', 'rs2_h0_val == 4', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800002e4]:KMADRS a0, s11, s10
	-[0x800002e8]:csrrs s11, vxsat, zero
	-[0x800002ec]:sw a0, 120(t0)
Current Store : [0x800002f0] : sw s11, 124(t0) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x30', 'rd : x6', 'rs2_h1_val == -65', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000304]:KMADRS t1, s3, t5
	-[0x80000308]:csrrs s3, vxsat, zero
	-[0x8000030c]:sw t1, 128(t0)
Current Store : [0x80000310] : sw s3, 132(t0) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x19', 'rd : x24', 'rs2_h1_val == -33', 'rs1_h1_val == -21846', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000032c]:KMADRS s8, t1, s3
	-[0x80000330]:csrrs t1, vxsat, zero
	-[0x80000334]:sw s8, 0(gp)
Current Store : [0x80000338] : sw t1, 4(gp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x9', 'rd : x15', 'rs2_h1_val == -17', 'rs2_h0_val == -257', 'rs1_h1_val == -129', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000034c]:KMADRS a5, a4, s1
	-[0x80000350]:csrrs a4, vxsat, zero
	-[0x80000354]:sw a5, 8(gp)
Current Store : [0x80000358] : sw a4, 12(gp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x21', 'rs2_h1_val == -9', 'rs1_h1_val == -8193', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000036c]:KMADRS s5, s4, sp
	-[0x80000370]:csrrs s4, vxsat, zero
	-[0x80000374]:sw s5, 16(gp)
Current Store : [0x80000378] : sw s4, 20(gp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x13', 'rd : x16', 'rs1_h0_val == -32768', 'rs2_h1_val == -5', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000388]:KMADRS a6, tp, a3
	-[0x8000038c]:csrrs tp, vxsat, zero
	-[0x80000390]:sw a6, 24(gp)
Current Store : [0x80000394] : sw tp, 28(gp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x28', 'rd : x26', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x800003a4]:KMADRS s10, a0, t3
	-[0x800003a8]:csrrs a0, vxsat, zero
	-[0x800003ac]:sw s10, 32(gp)
Current Store : [0x800003b0] : sw a0, 36(gp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x4', 'rd : x8', 'rs2_h1_val == -32768', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x800003c4]:KMADRS fp, s2, tp
	-[0x800003c8]:csrrs s2, vxsat, zero
	-[0x800003cc]:sw fp, 40(gp)
Current Store : [0x800003d0] : sw s2, 44(gp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x23', 'rd : x5', 'rs2_h1_val == 16384', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800003e0]:KMADRS t0, s10, s7
	-[0x800003e4]:csrrs s10, vxsat, zero
	-[0x800003e8]:sw t0, 48(gp)
Current Store : [0x800003ec] : sw s10, 52(gp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x20', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x80000400]:KMADRS s4, s5, a6
	-[0x80000404]:csrrs s5, vxsat, zero
	-[0x80000408]:sw s4, 56(gp)
Current Store : [0x8000040c] : sw s5, 60(gp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x1', 'rd : x30', 'rs2_h1_val == 4096', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000418]:KMADRS t5, t3, ra
	-[0x8000041c]:csrrs t3, vxsat, zero
	-[0x80000420]:sw t5, 64(gp)
Current Store : [0x80000424] : sw t3, 68(gp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rd : x25', 'rs2_h1_val == 2048', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000430]:KMADRS s9, t4, s6
	-[0x80000434]:csrrs t4, vxsat, zero
	-[0x80000438]:sw s9, 72(gp)
Current Store : [0x8000043c] : sw t4, 76(gp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rd : x9', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x8000044c]:KMADRS s1, t5, a7
	-[0x80000450]:csrrs t5, vxsat, zero
	-[0x80000454]:sw s1, 80(gp)
Current Store : [0x80000458] : sw t5, 84(gp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x12', 'rd : x27', 'rs2_h1_val == 512', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x8000046c]:KMADRS s11, t2, a2
	-[0x80000470]:csrrs t2, vxsat, zero
	-[0x80000474]:sw s11, 88(gp)
Current Store : [0x80000478] : sw t2, 92(gp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x18', 'rd : x17', 'rs2_h1_val == 256', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000494]:KMADRS a7, t0, s2
	-[0x80000498]:csrrs t0, vxsat, zero
	-[0x8000049c]:sw a7, 0(sp)
Current Store : [0x800004a0] : sw t0, 4(sp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x5', 'rd : x28', 'rs2_h1_val == 128', 'rs2_h0_val == 32', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004b4]:KMADRS t3, t6, t0
	-[0x800004b8]:csrrs t6, vxsat, zero
	-[0x800004bc]:sw t3, 8(sp)
Current Store : [0x800004c0] : sw t6, 12(sp) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x21', 'rd : x1', 'rs2_h1_val == 64']
Last Code Sequence : 
	-[0x800004d0]:KMADRS ra, a6, s5
	-[0x800004d4]:csrrs a6, vxsat, zero
	-[0x800004d8]:sw ra, 16(sp)
Current Store : [0x800004dc] : sw a6, 20(sp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004f0]:KMADRS t6, t5, t4
	-[0x800004f4]:csrrs t5, vxsat, zero
	-[0x800004f8]:sw t6, 24(sp)
Current Store : [0x800004fc] : sw t5, 28(sp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000510]:KMADRS t6, t5, t4
	-[0x80000514]:csrrs t5, vxsat, zero
	-[0x80000518]:sw t6, 32(sp)
Current Store : [0x8000051c] : sw t5, 36(sp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000530]:KMADRS t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 40(sp)
Current Store : [0x8000053c] : sw t5, 44(sp) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == -17', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000550]:KMADRS t6, t5, t4
	-[0x80000554]:csrrs t5, vxsat, zero
	-[0x80000558]:sw t6, 48(sp)
Current Store : [0x8000055c] : sw t5, 52(sp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000570]:KMADRS t6, t5, t4
	-[0x80000574]:csrrs t5, vxsat, zero
	-[0x80000578]:sw t6, 56(sp)
Current Store : [0x8000057c] : sw t5, 60(sp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000058c]:KMADRS t6, t5, t4
	-[0x80000590]:csrrs t5, vxsat, zero
	-[0x80000594]:sw t6, 64(sp)
Current Store : [0x80000598] : sw t5, 68(sp) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005ac]:KMADRS t6, t5, t4
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 72(sp)
Current Store : [0x800005b8] : sw t5, 76(sp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005cc]:KMADRS t6, t5, t4
	-[0x800005d0]:csrrs t5, vxsat, zero
	-[0x800005d4]:sw t6, 80(sp)
Current Store : [0x800005d8] : sw t5, 84(sp) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800005e8]:KMADRS t6, t5, t4
	-[0x800005ec]:csrrs t5, vxsat, zero
	-[0x800005f0]:sw t6, 88(sp)
Current Store : [0x800005f4] : sw t5, 92(sp) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000604]:KMADRS t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 96(sp)
Current Store : [0x80000610] : sw t5, 100(sp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000624]:KMADRS t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 104(sp)
Current Store : [0x80000630] : sw t5, 108(sp) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000644]:KMADRS t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 112(sp)
Current Store : [0x80000650] : sw t5, 116(sp) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -32768', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000660]:KMADRS t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 120(sp)
Current Store : [0x8000066c] : sw t5, 124(sp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['opcode : kmadrs', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -16385', 'rs2_h0_val == 1', 'rs1_h1_val == 64', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000067c]:KMADRS t6, t5, t4
	-[0x80000680]:csrrs t5, vxsat, zero
	-[0x80000684]:sw t6, 128(sp)
Current Store : [0x80000688] : sw t5, 132(sp) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000698]:KMADRS t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 136(sp)
Current Store : [0x800006a4] : sw t5, 140(sp) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x800006b4]:KMADRS t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 144(sp)
Current Store : [0x800006c0] : sw t5, 148(sp) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800006d4]:KMADRS t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 152(sp)
Current Store : [0x800006e0] : sw t5, 156(sp) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x800006f0]:KMADRS t6, t5, t4
	-[0x800006f4]:csrrs t5, vxsat, zero
	-[0x800006f8]:sw t6, 160(sp)
Current Store : [0x800006fc] : sw t5, 164(sp) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80000710]:KMADRS t6, t5, t4
	-[0x80000714]:csrrs t5, vxsat, zero
	-[0x80000718]:sw t6, 168(sp)
Current Store : [0x8000071c] : sw t5, 172(sp) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000730]:KMADRS t6, t5, t4
	-[0x80000734]:csrrs t5, vxsat, zero
	-[0x80000738]:sw t6, 176(sp)
Current Store : [0x8000073c] : sw t5, 180(sp) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x8000074c]:KMADRS t6, t5, t4
	-[0x80000750]:csrrs t5, vxsat, zero
	-[0x80000754]:sw t6, 184(sp)
Current Store : [0x80000758] : sw t5, 188(sp) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x8000076c]:KMADRS t6, t5, t4
	-[0x80000770]:csrrs t5, vxsat, zero
	-[0x80000774]:sw t6, 192(sp)
Current Store : [0x80000778] : sw t5, 196(sp) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x8000078c]:KMADRS t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 200(sp)
Current Store : [0x80000798] : sw t5, 204(sp) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800007a8]:KMADRS t6, t5, t4
	-[0x800007ac]:csrrs t5, vxsat, zero
	-[0x800007b0]:sw t6, 208(sp)
Current Store : [0x800007b4] : sw t5, 212(sp) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800007c8]:KMADRS t6, t5, t4
	-[0x800007cc]:csrrs t5, vxsat, zero
	-[0x800007d0]:sw t6, 216(sp)
Current Store : [0x800007d4] : sw t5, 220(sp) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800007e8]:KMADRS t6, t5, t4
	-[0x800007ec]:csrrs t5, vxsat, zero
	-[0x800007f0]:sw t6, 224(sp)
Current Store : [0x800007f4] : sw t5, 228(sp) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000804]:KMADRS t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 232(sp)
Current Store : [0x80000810] : sw t5, 236(sp) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000820]:KMADRS t6, t5, t4
	-[0x80000824]:csrrs t5, vxsat, zero
	-[0x80000828]:sw t6, 240(sp)
Current Store : [0x8000082c] : sw t5, 244(sp) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x8000083c]:KMADRS t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 248(sp)
Current Store : [0x80000848] : sw t5, 252(sp) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x8000085c]:KMADRS t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 256(sp)
Current Store : [0x80000868] : sw t5, 260(sp) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000878]:KMADRS t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 264(sp)
Current Store : [0x80000884] : sw t5, 268(sp) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000898]:KMADRS t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 272(sp)
Current Store : [0x800008a4] : sw t5, 276(sp) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800008b8]:KMADRS t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 280(sp)
Current Store : [0x800008c4] : sw t5, 284(sp) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800008d8]:KMADRS t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 288(sp)
Current Store : [0x800008e4] : sw t5, 292(sp) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800008f8]:KMADRS t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 296(sp)
Current Store : [0x80000904] : sw t5, 300(sp) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000918]:KMADRS t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 304(sp)
Current Store : [0x80000924] : sw t5, 308(sp) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000938]:KMADRS t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 312(sp)
Current Store : [0x80000944] : sw t5, 316(sp) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000958]:KMADRS t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 320(sp)
Current Store : [0x80000964] : sw t5, 324(sp) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000978]:KMADRS t6, t5, t4
	-[0x8000097c]:csrrs t5, vxsat, zero
	-[0x80000980]:sw t6, 328(sp)
Current Store : [0x80000984] : sw t5, 332(sp) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000998]:KMADRS t6, t5, t4
	-[0x8000099c]:csrrs t5, vxsat, zero
	-[0x800009a0]:sw t6, 336(sp)
Current Store : [0x800009a4] : sw t5, 340(sp) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800009b8]:KMADRS t6, t5, t4
	-[0x800009bc]:csrrs t5, vxsat, zero
	-[0x800009c0]:sw t6, 344(sp)
Current Store : [0x800009c4] : sw t5, 348(sp) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800009d8]:KMADRS t6, t5, t4
	-[0x800009dc]:csrrs t5, vxsat, zero
	-[0x800009e0]:sw t6, 352(sp)
Current Store : [0x800009e4] : sw t5, 356(sp) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800009f8]:KMADRS t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 360(sp)
Current Store : [0x80000a04] : sw t5, 364(sp) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['opcode : kmadrs', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -2', 'rs1_h1_val == -2', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000a18]:KMADRS t6, t5, t4
	-[0x80000a1c]:csrrs t5, vxsat, zero
	-[0x80000a20]:sw t6, 368(sp)
Current Store : [0x80000a24] : sw t5, 372(sp) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['opcode : kmadrs', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h0_val == 16384', 'rs1_h1_val == 2', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000a34]:KMADRS t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 376(sp)
Current Store : [0x80000a40] : sw t5, 380(sp) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_h1_val == -3', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000a54]:KMADRS t6, t5, t4
	-[0x80000a58]:csrrs t5, vxsat, zero
	-[0x80000a5c]:sw t6, 384(sp)
Current Store : [0x80000a60] : sw t5, 388(sp) -- Store: [0x8000247c]:0x00000001





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

|s.no|        signature         |                                                                                                                                                                   coverpoints                                                                                                                                                                    |                                                     code                                                      |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmadrs<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x11<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 32767<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 32767<br> |[0x80000118]:KMADRS a1, a1, a1<br> [0x8000011c]:csrrs a1, vxsat, zero<br> [0x80000120]:sw a1, 0(t0)<br>        |
|   2|[0x80002218]<br>0xB7FBB727|- rs1 : x25<br> - rs2 : x25<br> - rd : x7<br> - rs1 == rs2 != rd<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -2<br> - rs1_h1_val == -2<br>                                                                                                                                                                                        |[0x80000138]:KMADRS t2, s9, s9<br> [0x8000013c]:csrrs s9, vxsat, zero<br> [0x80000140]:sw t2, 8(t0)<br>        |
|   3|[0x80002220]<br>0xBFDEB7F5|- rs1 : x23<br> - rs2 : x15<br> - rd : x4<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 32<br> - rs2_h0_val == 2<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 16384<br>                                                |[0x80000154]:KMADRS tp, s7, a5<br> [0x80000158]:csrrs s7, vxsat, zero<br> [0x8000015c]:sw tp, 16(t0)<br>       |
|   4|[0x80002228]<br>0x00000000|- rs1 : x3<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 2<br> - rs1_h0_val == -5<br>                                                                                                                                                                                       |[0x80000174]:KMADRS zero, gp, zero<br> [0x80000178]:csrrs gp, vxsat, zero<br> [0x8000017c]:sw zero, 24(t0)<br> |
|   5|[0x80002230]<br>0x00000000|- rs1 : x13<br> - rs2 : x24<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 32<br> - rs1_h0_val == 1<br>                                                                                                                                                              |[0x80000194]:KMADRS a3, a3, s8<br> [0x80000198]:csrrs a3, vxsat, zero<br> [0x8000019c]:sw a3, 32(t0)<br>       |
|   6|[0x80002238]<br>0x00000324|- rs1 : x2<br> - rs2 : x7<br> - rd : x3<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                       |[0x800001b4]:KMADRS gp, sp, t2<br> [0x800001b8]:csrrs sp, vxsat, zero<br> [0x800001bc]:sw gp, 40(t0)<br>       |
|   7|[0x80002240]<br>0xDF6B14F6|- rs1 : x17<br> - rs2 : x6<br> - rd : x18<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 64<br>                                                                                                                                                                                 |[0x800001d0]:KMADRS s2, a7, t1<br> [0x800001d4]:csrrs a7, vxsat, zero<br> [0x800001d8]:sw s2, 48(t0)<br>       |
|   8|[0x80002248]<br>0x6EA61A02|- rs1 : x8<br> - rs2 : x31<br> - rd : x22<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -513<br> - rs1_h0_val == -17<br>                                                                                                                                                                                               |[0x800001f0]:KMADRS s6, fp, t6<br> [0x800001f4]:csrrs fp, vxsat, zero<br> [0x800001f8]:sw s6, 56(t0)<br>       |
|   9|[0x80002250]<br>0x5551A972|- rs1 : x9<br> - rs2 : x8<br> - rd : x31<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 8<br> - rs1_h0_val == 32<br>                                                                                                                                                                                       |[0x80000210]:KMADRS t6, s1, fp<br> [0x80000214]:csrrs s1, vxsat, zero<br> [0x80000218]:sw t6, 64(t0)<br>       |
|  10|[0x80002258]<br>0x02001607|- rs1 : x15<br> - rs2 : x20<br> - rd : x2<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                        |[0x80000230]:KMADRS sp, a5, s4<br> [0x80000234]:csrrs a5, vxsat, zero<br> [0x80000238]:sw sp, 72(t0)<br>       |
|  11|[0x80002260]<br>0xD53FB9AD|- rs1 : x1<br> - rs2 : x3<br> - rd : x12<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -1<br>                                                                                                                                                                                                                                                     |[0x80000250]:KMADRS a2, ra, gp<br> [0x80000254]:csrrs ra, vxsat, zero<br> [0x80000258]:sw a2, 80(t0)<br>       |
|  12|[0x80002268]<br>0xF56FF76D|- rs1 : x0<br> - rs2 : x10<br> - rd : x14<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -2049<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                     |[0x80000270]:KMADRS a4, zero, a0<br> [0x80000274]:csrrs zero, vxsat, zero<br> [0x80000278]:sw a4, 88(t0)<br>   |
|  13|[0x80002270]<br>0xFEFFD000|- rs1 : x22<br> - rs2 : x29<br> - rd : x23<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 1<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                           |[0x8000028c]:KMADRS s7, s6, t4<br> [0x80000290]:csrrs s6, vxsat, zero<br> [0x80000294]:sw s7, 96(t0)<br>       |
|  14|[0x80002278]<br>0xFDFEBDC0|- rs1 : x24<br> - rs2 : x14<br> - rd : x29<br> - rs2_h1_val == -513<br> - rs1_h1_val == -65<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                         |[0x800002a8]:KMADRS t4, s8, a4<br> [0x800002ac]:csrrs s8, vxsat, zero<br> [0x800002b0]:sw t4, 104(t0)<br>      |
|  15|[0x80002280]<br>0x6FAB82A3|- rs1 : x12<br> - rs2 : x27<br> - rd : x19<br> - rs2_h1_val == -257<br> - rs2_h0_val == -9<br> - rs1_h1_val == -33<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                  |[0x800002c8]:KMADRS s3, a2, s11<br> [0x800002cc]:csrrs a2, vxsat, zero<br> [0x800002d0]:sw s3, 112(t0)<br>     |
|  16|[0x80002288]<br>0xF000881F|- rs1 : x27<br> - rs2 : x26<br> - rd : x10<br> - rs2_h1_val == -129<br> - rs2_h0_val == 4<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                            |[0x800002e4]:KMADRS a0, s11, s10<br> [0x800002e8]:csrrs s11, vxsat, zero<br> [0x800002ec]:sw a0, 120(t0)<br>   |
|  17|[0x80002290]<br>0xAAA83DBB|- rs1 : x19<br> - rs2 : x30<br> - rd : x6<br> - rs2_h1_val == -65<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                      |[0x80000304]:KMADRS t1, s3, t5<br> [0x80000308]:csrrs s3, vxsat, zero<br> [0x8000030c]:sw t1, 128(t0)<br>      |
|  18|[0x80002298]<br>0xFFF6FFF2|- rs1 : x6<br> - rs2 : x19<br> - rd : x24<br> - rs2_h1_val == -33<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                       |[0x8000032c]:KMADRS s8, t1, s3<br> [0x80000330]:csrrs t1, vxsat, zero<br> [0x80000334]:sw s8, 0(gp)<br>        |
|  19|[0x800022a0]<br>0xFFFFB72F|- rs1 : x14<br> - rs2 : x9<br> - rd : x15<br> - rs2_h1_val == -17<br> - rs2_h0_val == -257<br> - rs1_h1_val == -129<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                    |[0x8000034c]:KMADRS a5, a4, s1<br> [0x80000350]:csrrs a4, vxsat, zero<br> [0x80000354]:sw a5, 8(gp)<br>        |
|  20|[0x800022a8]<br>0xDBE98FE2|- rs1 : x20<br> - rs2 : x2<br> - rd : x21<br> - rs2_h1_val == -9<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                          |[0x8000036c]:KMADRS s5, s4, sp<br> [0x80000370]:csrrs s4, vxsat, zero<br> [0x80000374]:sw s5, 16(gp)<br>       |
|  21|[0x800022b0]<br>0x7D5AFDC2|- rs1 : x4<br> - rs2 : x13<br> - rd : x16<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -5<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                            |[0x80000388]:KMADRS a6, tp, a3<br> [0x8000038c]:csrrs tp, vxsat, zero<br> [0x80000390]:sw a6, 24(gp)<br>       |
|  22|[0x800022b8]<br>0x0F7F4184|- rs1 : x10<br> - rs2 : x28<br> - rd : x26<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                                                                             |[0x800003a4]:KMADRS s10, a0, t3<br> [0x800003a8]:csrrs a0, vxsat, zero<br> [0x800003ac]:sw s10, 32(gp)<br>     |
|  23|[0x800022c0]<br>0x7FFFFFFF|- rs1 : x18<br> - rs2 : x4<br> - rd : x8<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                    |[0x800003c4]:KMADRS fp, s2, tp<br> [0x800003c8]:csrrs s2, vxsat, zero<br> [0x800003cc]:sw fp, 40(gp)<br>       |
|  24|[0x800022c8]<br>0x80000000|- rs1 : x26<br> - rs2 : x23<br> - rd : x5<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                  |[0x800003e0]:KMADRS t0, s10, s7<br> [0x800003e4]:csrrs s10, vxsat, zero<br> [0x800003e8]:sw t0, 48(gp)<br>     |
|  25|[0x800022d0]<br>0x0000FFFC|- rs1 : x21<br> - rs2 : x16<br> - rd : x20<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                           |[0x80000400]:KMADRS s4, s5, a6<br> [0x80000404]:csrrs s5, vxsat, zero<br> [0x80000408]:sw s4, 56(gp)<br>       |
|  26|[0x800022d8]<br>0xFA6AAFFC|- rs1 : x28<br> - rs2 : x1<br> - rd : x30<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                  |[0x80000418]:KMADRS t5, t3, ra<br> [0x8000041c]:csrrs t3, vxsat, zero<br> [0x80000420]:sw t5, 64(gp)<br>       |
|  27|[0x800022e0]<br>0xFFE00000|- rs1 : x29<br> - rs2 : x22<br> - rd : x25<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                  |[0x80000430]:KMADRS s9, t4, s6<br> [0x80000434]:csrrs t4, vxsat, zero<br> [0x80000438]:sw s9, 72(gp)<br>       |
|  28|[0x800022e8]<br>0x006E3EFF|- rs1 : x30<br> - rs2 : x17<br> - rd : x9<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                            |[0x8000044c]:KMADRS s1, t5, a7<br> [0x80000450]:csrrs t5, vxsat, zero<br> [0x80000454]:sw s1, 80(gp)<br>       |
|  29|[0x800022f0]<br>0x01EFFC00|- rs1 : x7<br> - rs2 : x12<br> - rd : x27<br> - rs2_h1_val == 512<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                    |[0x8000046c]:KMADRS s11, t2, a2<br> [0x80000470]:csrrs t2, vxsat, zero<br> [0x80000474]:sw s11, 88(gp)<br>     |
|  30|[0x800022f8]<br>0x03AB1AFB|- rs1 : x5<br> - rs2 : x18<br> - rd : x17<br> - rs2_h1_val == 256<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                   |[0x80000494]:KMADRS a7, t0, s2<br> [0x80000498]:csrrs t0, vxsat, zero<br> [0x8000049c]:sw a7, 0(sp)<br>        |
|  31|[0x80002300]<br>0x00003061|- rs1 : x31<br> - rs2 : x5<br> - rd : x28<br> - rs2_h1_val == 128<br> - rs2_h0_val == 32<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                             |[0x800004b4]:KMADRS t3, t6, t0<br> [0x800004b8]:csrrs t6, vxsat, zero<br> [0x800004bc]:sw t3, 8(sp)<br>        |
|  32|[0x80002308]<br>0x1FFFE180|- rs1 : x16<br> - rs2 : x21<br> - rd : x1<br> - rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                              |[0x800004d0]:KMADRS ra, a6, s5<br> [0x800004d4]:csrrs a6, vxsat, zero<br> [0x800004d8]:sw ra, 16(sp)<br>       |
|  33|[0x80002310]<br>0xFFF0004A|- rs2_h1_val == 8<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                     |[0x800004f0]:KMADRS t6, t5, t4<br> [0x800004f4]:csrrs t5, vxsat, zero<br> [0x800004f8]:sw t6, 24(sp)<br>       |
|  34|[0x80002318]<br>0xFFDA565B|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                           |[0x80000510]:KMADRS t6, t5, t4<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 32(sp)<br>       |
|  35|[0x80002320]<br>0xFFDA2E83|- rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                            |[0x80000530]:KMADRS t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 40(sp)<br>       |
|  36|[0x80002328]<br>0xFFDA3643|- rs2_h0_val == 64<br> - rs1_h1_val == -17<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                             |[0x80000550]:KMADRS t6, t5, t4<br> [0x80000554]:csrrs t5, vxsat, zero<br> [0x80000558]:sw t6, 48(sp)<br>       |
|  37|[0x80002330]<br>0xFFDA36A5|- rs2_h0_val == -129<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                   |[0x80000570]:KMADRS t6, t5, t4<br> [0x80000574]:csrrs t5, vxsat, zero<br> [0x80000578]:sw t6, 56(sp)<br>       |
|  38|[0x80002338]<br>0xFFDB36A5|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                          |[0x8000058c]:KMADRS t6, t5, t4<br> [0x80000590]:csrrs t5, vxsat, zero<br> [0x80000594]:sw t6, 64(sp)<br>       |
|  39|[0x80002340]<br>0xFFDA789F|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                           |[0x800005ac]:KMADRS t6, t5, t4<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 72(sp)<br>       |
|  40|[0x80002348]<br>0x005A77E1|- rs2_h1_val == 2<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                     |[0x800005cc]:KMADRS t6, t5, t4<br> [0x800005d0]:csrrs t5, vxsat, zero<br> [0x800005d4]:sw t6, 80(sp)<br>       |
|  41|[0x80002350]<br>0x0069F3C0|- rs2_h0_val == 8192<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                  |[0x800005e8]:KMADRS t6, t5, t4<br> [0x800005ec]:csrrs t5, vxsat, zero<br> [0x800005f0]:sw t6, 88(sp)<br>       |
|  42|[0x80002358]<br>0x0069D2FF|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                            |[0x80000604]:KMADRS t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 96(sp)<br>       |
|  43|[0x80002360]<br>0x006C3052|- rs2_h0_val == 256<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                     |[0x80000624]:KMADRS t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 104(sp)<br>      |
|  44|[0x80002368]<br>0x006C3C65|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                             |[0x80000644]:KMADRS t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 112(sp)<br>      |
|  45|[0x80002370]<br>0x006B3C85|- rs2_h1_val == 4<br> - rs2_h0_val == -32768<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                            |[0x80000660]:KMADRS t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 120(sp)<br>      |
|  46|[0x80002380]<br>0x007B3C85|- rs1_h1_val == 1<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                      |[0x80000698]:KMADRS t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 136(sp)<br>      |
|  47|[0x80002388]<br>0x007C7D25|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                            |[0x800006b4]:KMADRS t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 144(sp)<br>      |
|  48|[0x80002390]<br>0xFF26E526|- rs2_h1_val == 1<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                  |[0x800006d4]:KMADRS t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 152(sp)<br>      |
|  49|[0x80002398]<br>0xFF26E567|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                            |[0x800006f0]:KMADRS t6, t5, t4<br> [0x800006f4]:csrrs t5, vxsat, zero<br> [0x800006f8]:sw t6, 160(sp)<br>      |
|  50|[0x800023a0]<br>0xFF25226E|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                            |[0x80000710]:KMADRS t6, t5, t4<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sw t6, 168(sp)<br>      |
|  51|[0x800023a8]<br>0xFF2482E6|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                            |[0x80000730]:KMADRS t6, t5, t4<br> [0x80000734]:csrrs t5, vxsat, zero<br> [0x80000738]:sw t6, 176(sp)<br>      |
|  52|[0x800023b0]<br>0xFF241301|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                          |[0x8000074c]:KMADRS t6, t5, t4<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sw t6, 184(sp)<br>      |
|  53|[0x800023b8]<br>0xFF25230A|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                          |[0x8000076c]:KMADRS t6, t5, t4<br> [0x80000770]:csrrs t5, vxsat, zero<br> [0x80000774]:sw t6, 192(sp)<br>      |
|  54|[0x800023c0]<br>0x057AC65F|- rs2_h0_val == 512<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                 |[0x8000078c]:KMADRS t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 200(sp)<br>      |
|  55|[0x800023c8]<br>0x058AC653|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                           |[0x800007a8]:KMADRS t6, t5, t4<br> [0x800007ac]:csrrs t5, vxsat, zero<br> [0x800007b0]:sw t6, 208(sp)<br>      |
|  56|[0x800023d0]<br>0x058A3CC2|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                            |[0x800007c8]:KMADRS t6, t5, t4<br> [0x800007cc]:csrrs t5, vxsat, zero<br> [0x800007d0]:sw t6, 216(sp)<br>      |
|  57|[0x800023d8]<br>0x05984CBA|- rs2_h0_val == 8<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                    |[0x800007e8]:KMADRS t6, t5, t4<br> [0x800007ec]:csrrs t5, vxsat, zero<br> [0x800007f0]:sw t6, 224(sp)<br>      |
|  58|[0x800023e0]<br>0x15188DBA|- rs2_h0_val == -16385<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                              |[0x80000804]:KMADRS t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 232(sp)<br>      |
|  59|[0x800023e8]<br>0x191C9DBA|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                        |[0x80000820]:KMADRS t6, t5, t4<br> [0x80000824]:csrrs t5, vxsat, zero<br> [0x80000828]:sw t6, 240(sp)<br>      |
|  60|[0x800023f0]<br>0x191C9D94|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                            |[0x8000083c]:KMADRS t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 248(sp)<br>      |
|  61|[0x800023f8]<br>0x18DC1D99|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                        |[0x8000085c]:KMADRS t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 256(sp)<br>      |
|  62|[0x80002400]<br>0x18BC4D99|- rs2_h0_val == -1025<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                               |[0x80000878]:KMADRS t6, t5, t4<br> [0x8000087c]:csrrs t5, vxsat, zero<br> [0x80000880]:sw t6, 264(sp)<br>      |
|  63|[0x80002408]<br>0x18C46D59|- rs1_h1_val == 8192<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                |[0x80000898]:KMADRS t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 272(sp)<br>      |
|  64|[0x80002410]<br>0x18C3FD83|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                          |[0x800008b8]:KMADRS t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 280(sp)<br>      |
|  65|[0x80002418]<br>0x18C43F7D|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                           |[0x800008d8]:KMADRS t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 288(sp)<br>      |
|  66|[0x80002420]<br>0x18C84073|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                           |[0x800008f8]:KMADRS t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 296(sp)<br>      |
|  67|[0x80002428]<br>0x14C810F4|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                            |[0x80000918]:KMADRS t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 304(sp)<br>      |
|  68|[0x80002430]<br>0x14C490F7|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                             |[0x80000938]:KMADRS t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 312(sp)<br>      |
|  69|[0x80002438]<br>0x14C5B080|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                         |[0x80000958]:KMADRS t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 320(sp)<br>      |
|  70|[0x80002440]<br>0x14C6B4C1|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                           |[0x80000978]:KMADRS t6, t5, t4<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sw t6, 328(sp)<br>      |
|  71|[0x80002448]<br>0x14C6C0CD|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                          |[0x80000998]:KMADRS t6, t5, t4<br> [0x8000099c]:csrrs t5, vxsat, zero<br> [0x800009a0]:sw t6, 336(sp)<br>      |
|  72|[0x80002450]<br>0x2A20AB6E|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                         |[0x800009b8]:KMADRS t6, t5, t4<br> [0x800009bc]:csrrs t5, vxsat, zero<br> [0x800009c0]:sw t6, 344(sp)<br>      |
|  73|[0x80002458]<br>0x2A10AAA6|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                           |[0x800009d8]:KMADRS t6, t5, t4<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sw t6, 352(sp)<br>      |
|  74|[0x80002460]<br>0x2A10B99A|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                           |[0x800009f8]:KMADRS t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 360(sp)<br>      |
|  75|[0x80002478]<br>0x2A1751C0|- rs1_h1_val == -3<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                   |[0x80000a54]:KMADRS t6, t5, t4<br> [0x80000a58]:csrrs t5, vxsat, zero<br> [0x80000a5c]:sw t6, 384(sp)<br>      |
