
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
| COV_LABELS                | kaddh      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kaddh-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 154      |
| STAT1                     | 75      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 77     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000718]:KADDH t6, t5, t4
      [0x8000071c]:csrrs t5, vxsat, zero
      [0x80000720]:sw t6, 248(ra)
 -- Signature Address: 0x80002398 Data: 0x00007FFF
 -- Redundant Coverpoints hit by the op
      - opcode : kaddh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs1_h1_val == 0
      - rs1_h0_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a14]:KADDH t6, t5, t4
      [0x80000a18]:csrrs t5, vxsat, zero
      [0x80000a1c]:sw t6, 448(ra)
 -- Signature Address: 0x80002460 Data: 0xFFFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : kaddh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h0_val == 32767
      - rs1_h1_val == -21846






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kaddh', 'rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0']
Last Code Sequence : 
	-[0x80000118]:KADDH s6, s6, s6
	-[0x8000011c]:csrrs s6, vxsat, zero
	-[0x80000120]:sw s6, 0(gp)
Current Store : [0x80000124] : sw s6, 4(gp) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x28', 'rd : x5', 'rs1 == rs2 != rd', 'rs1_h0_val < 0 and rs2_h0_val < 0']
Last Code Sequence : 
	-[0x80000138]:KADDH t0, t3, t3
	-[0x8000013c]:csrrs t3, vxsat, zero
	-[0x80000140]:sw t0, 8(gp)
Current Store : [0x80000144] : sw t3, 12(gp) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x1', 'rd : x0', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == 32767', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000158]:KADDH zero, fp, ra
	-[0x8000015c]:csrrs fp, vxsat, zero
	-[0x80000160]:sw zero, 16(gp)
Current Store : [0x80000164] : sw fp, 20(gp) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x24', 'rd : x24', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -2049', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000178]:KADDH s8, tp, s8
	-[0x8000017c]:csrrs tp, vxsat, zero
	-[0x80000180]:sw s8, 24(gp)
Current Store : [0x80000184] : sw tp, 28(gp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x0', 'rd : x2', 'rs1 == rd != rs2', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000198]:KADDH sp, sp, zero
	-[0x8000019c]:csrrs sp, vxsat, zero
	-[0x800001a0]:sw sp, 32(gp)
Current Store : [0x800001a4] : sw sp, 36(gp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x9', 'rd : x17', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h0_val == -21846', 'rs1_h1_val == -16385', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800001b8]:KADDH a7, a3, s1
	-[0x800001bc]:csrrs a3, vxsat, zero
	-[0x800001c0]:sw a7, 40(gp)
Current Store : [0x800001c4] : sw a3, 44(gp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x6', 'rd : x27', 'rs2_h1_val == -21846', 'rs2_h0_val == -16385', 'rs1_h1_val == 2048', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800001d8]:KADDH s11, a5, t1
	-[0x800001dc]:csrrs a5, vxsat, zero
	-[0x800001e0]:sw s11, 48(gp)
Current Store : [0x800001e4] : sw a5, 52(gp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x11', 'rd : x26', 'rs2_h1_val == 21845', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800001f8]:KADDH s10, zero, a1
	-[0x800001fc]:csrrs zero, vxsat, zero
	-[0x80000200]:sw s10, 56(gp)
Current Store : [0x80000204] : sw zero, 60(gp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x2', 'rd : x23', 'rs2_h1_val == 32767', 'rs1_h1_val == -17', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000214]:KADDH s7, s8, sp
	-[0x80000218]:csrrs s8, vxsat, zero
	-[0x8000021c]:sw s7, 64(gp)
Current Store : [0x80000220] : sw s8, 68(gp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x29', 'rd : x8', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -16385', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80000234]:KADDH fp, s2, t4
	-[0x80000238]:csrrs s2, vxsat, zero
	-[0x8000023c]:sw fp, 72(gp)
Current Store : [0x80000240] : sw s2, 76(gp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x27', 'rd : x16', 'rs2_h1_val == -8193', 'rs2_h0_val == 4096', 'rs1_h1_val == 64', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000250]:KADDH a6, t1, s11
	-[0x80000254]:csrrs t1, vxsat, zero
	-[0x80000258]:sw a6, 80(gp)
Current Store : [0x8000025c] : sw t1, 84(gp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x19', 'rd : x13', 'rs2_h1_val == -4097', 'rs1_h1_val == -2049', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000270]:KADDH a3, s10, s3
	-[0x80000274]:csrrs s10, vxsat, zero
	-[0x80000278]:sw a3, 88(gp)
Current Store : [0x8000027c] : sw s10, 92(gp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x23', 'rd : x6', 'rs2_h1_val == -2049', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000290]:KADDH t1, ra, s7
	-[0x80000294]:csrrs ra, vxsat, zero
	-[0x80000298]:sw t1, 96(gp)
Current Store : [0x8000029c] : sw ra, 100(gp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x17', 'rd : x18', 'rs2_h1_val == -1025', 'rs2_h0_val == 21845', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800002b0]:KADDH s2, s5, a7
	-[0x800002b4]:csrrs s5, vxsat, zero
	-[0x800002b8]:sw s2, 104(gp)
Current Store : [0x800002bc] : sw s5, 108(gp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x10', 'rd : x1', 'rs2_h1_val == -513', 'rs2_h0_val == -65', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800002cc]:KADDH ra, t0, a0
	-[0x800002d0]:csrrs t0, vxsat, zero
	-[0x800002d4]:sw ra, 112(gp)
Current Store : [0x800002d8] : sw t0, 116(gp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x4', 'rd : x14', 'rs2_h1_val == -257', 'rs2_h0_val == 16', 'rs1_h1_val == -129', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800002ec]:KADDH a4, a0, tp
	-[0x800002f0]:csrrs a0, vxsat, zero
	-[0x800002f4]:sw a4, 120(gp)
Current Store : [0x800002f8] : sw a0, 124(gp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x16', 'rd : x7', 'rs2_h1_val == -129', 'rs2_h0_val == -513', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000308]:KADDH t2, a7, a6
	-[0x8000030c]:csrrs a7, vxsat, zero
	-[0x80000310]:sw t2, 128(gp)
Current Store : [0x80000314] : sw a7, 132(gp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x30', 'rd : x20', 'rs2_h1_val == -65', 'rs2_h0_val == 8192', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000324]:KADDH s4, t4, t5
	-[0x80000328]:csrrs t4, vxsat, zero
	-[0x8000032c]:sw s4, 136(gp)
Current Store : [0x80000330] : sw t4, 140(gp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x25', 'rd : x4', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x8000034c]:KADDH tp, s11, s9
	-[0x80000350]:csrrs s11, vxsat, zero
	-[0x80000354]:sw tp, 0(ra)
Current Store : [0x80000358] : sw s11, 4(ra) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x13', 'rd : x12', 'rs2_h1_val == -17', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x8000036c]:KADDH a2, s3, a3
	-[0x80000370]:csrrs s3, vxsat, zero
	-[0x80000374]:sw a2, 8(ra)
Current Store : [0x80000378] : sw s3, 12(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x15', 'rd : x29', 'rs2_h1_val == -9', 'rs1_h1_val == 4', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x8000038c]:KADDH t4, a4, a5
	-[0x80000390]:csrrs a4, vxsat, zero
	-[0x80000394]:sw t4, 16(ra)
Current Store : [0x80000398] : sw a4, 20(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x8', 'rd : x25', 'rs2_h1_val == -5', 'rs2_h0_val == -1025', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800003ac]:KADDH s9, s1, fp
	-[0x800003b0]:csrrs s1, vxsat, zero
	-[0x800003b4]:sw s9, 24(ra)
Current Store : [0x800003b8] : sw s1, 28(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x20', 'rd : x15', 'rs2_h1_val == -3', 'rs2_h0_val == -4097', 'rs1_h1_val == -2', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800003cc]:KADDH a5, s7, s4
	-[0x800003d0]:csrrs s7, vxsat, zero
	-[0x800003d4]:sw a5, 32(ra)
Current Store : [0x800003d8] : sw s7, 36(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x14', 'rd : x19', 'rs2_h1_val == -2']
Last Code Sequence : 
	-[0x800003ec]:KADDH s3, a2, a4
	-[0x800003f0]:csrrs a2, vxsat, zero
	-[0x800003f4]:sw s3, 40(ra)
Current Store : [0x800003f8] : sw a2, 44(ra) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x18', 'rd : x31', 'rs2_h1_val == -32768', 'rs2_h0_val == 1', 'rs1_h1_val == -1', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000040c]:KADDH t6, a1, s2
	-[0x80000410]:csrrs a1, vxsat, zero
	-[0x80000414]:sw t6, 48(ra)
Current Store : [0x80000418] : sw a1, 52(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x7', 'rd : x28', 'rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x8000042c]:KADDH t3, a6, t2
	-[0x80000430]:csrrs a6, vxsat, zero
	-[0x80000434]:sw t3, 56(ra)
Current Store : [0x80000438] : sw a6, 60(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x3', 'rd : x11', 'rs2_h1_val == 8192', 'rs2_h0_val == -129', 'rs1_h1_val == -65', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x8000044c]:KADDH a1, t2, gp
	-[0x80000450]:csrrs t2, vxsat, zero
	-[0x80000454]:sw a1, 64(ra)
Current Store : [0x80000458] : sw t2, 68(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x5', 'rd : x30', 'rs2_h1_val == 4096', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x8000046c]:KADDH t5, gp, t0
	-[0x80000470]:csrrs gp, vxsat, zero
	-[0x80000474]:sw t5, 72(ra)
Current Store : [0x80000478] : sw gp, 76(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x12', 'rd : x10', 'rs2_h1_val == 2048', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000488]:KADDH a0, s4, a2
	-[0x8000048c]:csrrs s4, vxsat, zero
	-[0x80000490]:sw a0, 80(ra)
Current Store : [0x80000494] : sw s4, 84(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x31', 'rd : x21', 'rs2_h1_val == 1024', 'rs2_h0_val == -33', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004a8]:KADDH s5, s9, t6
	-[0x800004ac]:csrrs s9, vxsat, zero
	-[0x800004b0]:sw s5, 88(ra)
Current Store : [0x800004b4] : sw s9, 92(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x26', 'rd : x9', 'rs2_h1_val == 512', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800004c8]:KADDH s1, t6, s10
	-[0x800004cc]:csrrs t6, vxsat, zero
	-[0x800004d0]:sw s1, 96(ra)
Current Store : [0x800004d4] : sw t6, 100(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x21', 'rd : x3', 'rs2_h1_val == 256']
Last Code Sequence : 
	-[0x800004e8]:KADDH gp, t5, s5
	-[0x800004ec]:csrrs t5, vxsat, zero
	-[0x800004f0]:sw gp, 104(ra)
Current Store : [0x800004f4] : sw t5, 108(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000508]:KADDH t6, t5, t4
	-[0x8000050c]:csrrs t5, vxsat, zero
	-[0x80000510]:sw t6, 112(ra)
Current Store : [0x80000514] : sw t5, 116(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000528]:KADDH t6, t5, t4
	-[0x8000052c]:csrrs t5, vxsat, zero
	-[0x80000530]:sw t6, 120(ra)
Current Store : [0x80000534] : sw t5, 124(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000548]:KADDH t6, t5, t4
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 128(ra)
Current Store : [0x80000554] : sw t5, 132(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000568]:KADDH t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 136(ra)
Current Store : [0x80000574] : sw t5, 140(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000588]:KADDH t6, t5, t4
	-[0x8000058c]:csrrs t5, vxsat, zero
	-[0x80000590]:sw t6, 144(ra)
Current Store : [0x80000594] : sw t5, 148(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800005a8]:KADDH t6, t5, t4
	-[0x800005ac]:csrrs t5, vxsat, zero
	-[0x800005b0]:sw t6, 152(ra)
Current Store : [0x800005b4] : sw t5, 156(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800005c4]:KADDH t6, t5, t4
	-[0x800005c8]:csrrs t5, vxsat, zero
	-[0x800005cc]:sw t6, 160(ra)
Current Store : [0x800005d0] : sw t5, 164(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800005e4]:KADDH t6, t5, t4
	-[0x800005e8]:csrrs t5, vxsat, zero
	-[0x800005ec]:sw t6, 168(ra)
Current Store : [0x800005f0] : sw t5, 172(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h1_val == 21845', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000604]:KADDH t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 176(ra)
Current Store : [0x80000610] : sw t5, 180(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h1_val == -513', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000624]:KADDH t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 184(ra)
Current Store : [0x80000630] : sw t5, 188(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000644]:KADDH t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 192(ra)
Current Store : [0x80000650] : sw t5, 196(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32', 'rs2_h0_val == -3', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000664]:KADDH t6, t5, t4
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 200(ra)
Current Store : [0x80000670] : sw t5, 204(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000684]:KADDH t6, t5, t4
	-[0x80000688]:csrrs t5, vxsat, zero
	-[0x8000068c]:sw t6, 208(ra)
Current Store : [0x80000690] : sw t5, 212(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800006a4]:KADDH t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 216(ra)
Current Store : [0x800006b0] : sw t5, 220(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x800006c0]:KADDH t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 224(ra)
Current Store : [0x800006cc] : sw t5, 228(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800006dc]:KADDH t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 232(ra)
Current Store : [0x800006e8] : sw t5, 236(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x800006fc]:KADDH t6, t5, t4
	-[0x80000700]:csrrs t5, vxsat, zero
	-[0x80000704]:sw t6, 240(ra)
Current Store : [0x80000708] : sw t5, 244(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['opcode : kaddh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000718]:KADDH t6, t5, t4
	-[0x8000071c]:csrrs t5, vxsat, zero
	-[0x80000720]:sw t6, 248(ra)
Current Store : [0x80000724] : sw t5, 252(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 256', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000734]:KADDH t6, t5, t4
	-[0x80000738]:csrrs t5, vxsat, zero
	-[0x8000073c]:sw t6, 256(ra)
Current Store : [0x80000740] : sw t5, 260(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_h1_val == 128', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000754]:KADDH t6, t5, t4
	-[0x80000758]:csrrs t5, vxsat, zero
	-[0x8000075c]:sw t6, 264(ra)
Current Store : [0x80000760] : sw t5, 268(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000774]:KADDH t6, t5, t4
	-[0x80000778]:csrrs t5, vxsat, zero
	-[0x8000077c]:sw t6, 272(ra)
Current Store : [0x80000780] : sw t5, 276(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000790]:KADDH t6, t5, t4
	-[0x80000794]:csrrs t5, vxsat, zero
	-[0x80000798]:sw t6, 280(ra)
Current Store : [0x8000079c] : sw t5, 284(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x800007ac]:KADDH t6, t5, t4
	-[0x800007b0]:csrrs t5, vxsat, zero
	-[0x800007b4]:sw t6, 288(ra)
Current Store : [0x800007b8] : sw t5, 292(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800007cc]:KADDH t6, t5, t4
	-[0x800007d0]:csrrs t5, vxsat, zero
	-[0x800007d4]:sw t6, 296(ra)
Current Store : [0x800007d8] : sw t5, 300(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800007ec]:KADDH t6, t5, t4
	-[0x800007f0]:csrrs t5, vxsat, zero
	-[0x800007f4]:sw t6, 304(ra)
Current Store : [0x800007f8] : sw t5, 308(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80000808]:KADDH t6, t5, t4
	-[0x8000080c]:csrrs t5, vxsat, zero
	-[0x80000810]:sw t6, 312(ra)
Current Store : [0x80000814] : sw t5, 316(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000828]:KADDH t6, t5, t4
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sw t6, 320(ra)
Current Store : [0x80000834] : sw t5, 324(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000848]:KADDH t6, t5, t4
	-[0x8000084c]:csrrs t5, vxsat, zero
	-[0x80000850]:sw t6, 328(ra)
Current Store : [0x80000854] : sw t5, 332(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000868]:KADDH t6, t5, t4
	-[0x8000086c]:csrrs t5, vxsat, zero
	-[0x80000870]:sw t6, 336(ra)
Current Store : [0x80000874] : sw t5, 340(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000884]:KADDH t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 344(ra)
Current Store : [0x80000890] : sw t5, 348(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800008a4]:KADDH t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 352(ra)
Current Store : [0x800008b0] : sw t5, 356(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800008c4]:KADDH t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 360(ra)
Current Store : [0x800008d0] : sw t5, 364(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800008e0]:KADDH t6, t5, t4
	-[0x800008e4]:csrrs t5, vxsat, zero
	-[0x800008e8]:sw t6, 368(ra)
Current Store : [0x800008ec] : sw t5, 372(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800008fc]:KADDH t6, t5, t4
	-[0x80000900]:csrrs t5, vxsat, zero
	-[0x80000904]:sw t6, 376(ra)
Current Store : [0x80000908] : sw t5, 380(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000918]:KADDH t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 384(ra)
Current Store : [0x80000924] : sw t5, 388(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80000938]:KADDH t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 392(ra)
Current Store : [0x80000944] : sw t5, 396(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000958]:KADDH t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 400(ra)
Current Store : [0x80000964] : sw t5, 404(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000978]:KADDH t6, t5, t4
	-[0x8000097c]:csrrs t5, vxsat, zero
	-[0x80000980]:sw t6, 408(ra)
Current Store : [0x80000984] : sw t5, 412(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000998]:KADDH t6, t5, t4
	-[0x8000099c]:csrrs t5, vxsat, zero
	-[0x800009a0]:sw t6, 416(ra)
Current Store : [0x800009a4] : sw t5, 420(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800009b8]:KADDH t6, t5, t4
	-[0x800009bc]:csrrs t5, vxsat, zero
	-[0x800009c0]:sw t6, 424(ra)
Current Store : [0x800009c4] : sw t5, 428(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800009d8]:KADDH t6, t5, t4
	-[0x800009dc]:csrrs t5, vxsat, zero
	-[0x800009e0]:sw t6, 432(ra)
Current Store : [0x800009e4] : sw t5, 436(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800009f4]:KADDH t6, t5, t4
	-[0x800009f8]:csrrs t5, vxsat, zero
	-[0x800009fc]:sw t6, 440(ra)
Current Store : [0x80000a00] : sw t5, 444(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['opcode : kaddh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 32767', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000a14]:KADDH t6, t5, t4
	-[0x80000a18]:csrrs t5, vxsat, zero
	-[0x80000a1c]:sw t6, 448(ra)
Current Store : [0x80000a20] : sw t5, 452(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80000a34]:KADDH t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 456(ra)
Current Store : [0x80000a40] : sw t5, 460(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000a54]:KADDH t6, t5, t4
	-[0x80000a58]:csrrs t5, vxsat, zero
	-[0x80000a5c]:sw t6, 464(ra)
Current Store : [0x80000a60] : sw t5, 468(ra) -- Store: [0x80002474]:0x00000001





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

|s.no|        signature         |                                                                                                                     coverpoints                                                                                                                     |                                                     code                                                     |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : kaddh<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br>             |[0x80000118]:KADDH s6, s6, s6<br> [0x8000011c]:csrrs s6, vxsat, zero<br> [0x80000120]:sw s6, 0(gp)<br>        |
|   2|[0x80002218]<br>0x00007FFF|- rs1 : x28<br> - rs2 : x28<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br>                                                                                                                                         |[0x80000138]:KADDH t0, t3, t3<br> [0x8000013c]:csrrs t3, vxsat, zero<br> [0x80000140]:sw t0, 8(gp)<br>        |
|   3|[0x80002220]<br>0x00000000|- rs1 : x8<br> - rs2 : x1<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h0_val == 32767<br> - rs1_h1_val == -21846<br> |[0x80000158]:KADDH zero, fp, ra<br> [0x8000015c]:csrrs fp, vxsat, zero<br> [0x80000160]:sw zero, 16(gp)<br>   |
|   4|[0x80002228]<br>0xFFFF8000|- rs1 : x4<br> - rs2 : x24<br> - rd : x24<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -2049<br> - rs1_h1_val == 16<br>                                                |[0x80000178]:KADDH s8, tp, s8<br> [0x8000017c]:csrrs tp, vxsat, zero<br> [0x80000180]:sw s8, 24(gp)<br>       |
|   5|[0x80002230]<br>0x00000001|- rs1 : x2<br> - rs2 : x0<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 8<br>                                                                                                                 |[0x80000198]:KADDH sp, sp, zero<br> [0x8000019c]:csrrs sp, vxsat, zero<br> [0x800001a0]:sw sp, 32(gp)<br>     |
|   6|[0x80002238]<br>0xFFFF8000|- rs1 : x13<br> - rs2 : x9<br> - rd : x17<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -16385<br>                                                                               |[0x800001b8]:KADDH a7, a3, s1<br> [0x800001bc]:csrrs a3, vxsat, zero<br> [0x800001c0]:sw a7, 40(gp)<br>       |
|   7|[0x80002240]<br>0xFFFF8000|- rs1 : x15<br> - rs2 : x6<br> - rd : x27<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 2048<br>                                                                                                |[0x800001d8]:KADDH s11, a5, t1<br> [0x800001dc]:csrrs a5, vxsat, zero<br> [0x800001e0]:sw s11, 48(gp)<br>     |
|   8|[0x80002248]<br>0x00007FFF|- rs1 : x0<br> - rs2 : x11<br> - rd : x26<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                  |[0x800001f8]:KADDH s10, zero, a1<br> [0x800001fc]:csrrs zero, vxsat, zero<br> [0x80000200]:sw s10, 56(gp)<br> |
|   9|[0x80002250]<br>0x00007FFF|- rs1 : x24<br> - rs2 : x2<br> - rd : x23<br> - rs2_h1_val == 32767<br> - rs1_h1_val == -17<br> - rs1_h0_val == 4096<br>                                                                                                                             |[0x80000214]:KADDH s7, s8, sp<br> [0x80000218]:csrrs s8, vxsat, zero<br> [0x8000021c]:sw s7, 64(gp)<br>       |
|  10|[0x80002258]<br>0xFFFF8000|- rs1 : x18<br> - rs2 : x29<br> - rd : x8<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 8<br>                                                                                                               |[0x80000234]:KADDH fp, s2, t4<br> [0x80000238]:csrrs s2, vxsat, zero<br> [0x8000023c]:sw fp, 72(gp)<br>       |
|  11|[0x80002260]<br>0xFFFF8000|- rs1 : x6<br> - rs2 : x27<br> - rd : x16<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 64<br> - rs1_h0_val == 64<br>                                                                                                       |[0x80000250]:KADDH a6, t1, s11<br> [0x80000254]:csrrs t1, vxsat, zero<br> [0x80000258]:sw a6, 80(gp)<br>      |
|  12|[0x80002268]<br>0xFFFF8000|- rs1 : x26<br> - rs2 : x19<br> - rd : x13<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 16<br>                                                                                                                            |[0x80000270]:KADDH a3, s10, s3<br> [0x80000274]:csrrs s10, vxsat, zero<br> [0x80000278]:sw a3, 88(gp)<br>     |
|  13|[0x80002270]<br>0xFFFF8000|- rs1 : x1<br> - rs2 : x23<br> - rd : x6<br> - rs2_h1_val == -2049<br> - rs1_h1_val == -9<br>                                                                                                                                                        |[0x80000290]:KADDH t1, ra, s7<br> [0x80000294]:csrrs ra, vxsat, zero<br> [0x80000298]:sw t1, 96(gp)<br>       |
|  14|[0x80002278]<br>0xFFFF8000|- rs1 : x21<br> - rs2 : x17<br> - rd : x18<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 21845<br> - rs1_h0_val == -1<br>                                                                                                                            |[0x800002b0]:KADDH s2, s5, a7<br> [0x800002b4]:csrrs s5, vxsat, zero<br> [0x800002b8]:sw s2, 104(gp)<br>      |
|  15|[0x80002280]<br>0xFFFF8000|- rs1 : x5<br> - rs2 : x10<br> - rd : x1<br> - rs2_h1_val == -513<br> - rs2_h0_val == -65<br> - rs1_h0_val == 8192<br>                                                                                                                               |[0x800002cc]:KADDH ra, t0, a0<br> [0x800002d0]:csrrs t0, vxsat, zero<br> [0x800002d4]:sw ra, 112(gp)<br>      |
|  16|[0x80002288]<br>0xFFFF8000|- rs1 : x10<br> - rs2 : x4<br> - rd : x14<br> - rs2_h1_val == -257<br> - rs2_h0_val == 16<br> - rs1_h1_val == -129<br> - rs1_h0_val == -5<br>                                                                                                        |[0x800002ec]:KADDH a4, a0, tp<br> [0x800002f0]:csrrs a0, vxsat, zero<br> [0x800002f4]:sw a4, 120(gp)<br>      |
|  17|[0x80002290]<br>0xFFFF8000|- rs1 : x17<br> - rs2 : x16<br> - rd : x7<br> - rs2_h1_val == -129<br> - rs2_h0_val == -513<br> - rs1_h1_val == -3<br>                                                                                                                               |[0x80000308]:KADDH t2, a7, a6<br> [0x8000030c]:csrrs a7, vxsat, zero<br> [0x80000310]:sw t2, 128(gp)<br>      |
|  18|[0x80002298]<br>0xFFFF8000|- rs1 : x29<br> - rs2 : x30<br> - rd : x20<br> - rs2_h1_val == -65<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -17<br>                                                                                                                              |[0x80000324]:KADDH s4, t4, t5<br> [0x80000328]:csrrs t4, vxsat, zero<br> [0x8000032c]:sw s4, 136(gp)<br>      |
|  19|[0x800022a0]<br>0xFFFF8000|- rs1 : x27<br> - rs2 : x25<br> - rd : x4<br> - rs2_h1_val == -33<br>                                                                                                                                                                                |[0x8000034c]:KADDH tp, s11, s9<br> [0x80000350]:csrrs s11, vxsat, zero<br> [0x80000354]:sw tp, 0(ra)<br>      |
|  20|[0x800022a8]<br>0xFFFF8000|- rs1 : x19<br> - rs2 : x13<br> - rd : x12<br> - rs2_h1_val == -17<br> - rs1_h0_val == 256<br>                                                                                                                                                       |[0x8000036c]:KADDH a2, s3, a3<br> [0x80000370]:csrrs s3, vxsat, zero<br> [0x80000374]:sw a2, 8(ra)<br>        |
|  21|[0x800022b0]<br>0xFFFF8000|- rs1 : x14<br> - rs2 : x15<br> - rd : x29<br> - rs2_h1_val == -9<br> - rs1_h1_val == 4<br> - rs1_h0_val == -2<br>                                                                                                                                   |[0x8000038c]:KADDH t4, a4, a5<br> [0x80000390]:csrrs a4, vxsat, zero<br> [0x80000394]:sw t4, 16(ra)<br>       |
|  22|[0x800022b8]<br>0xFFFF8000|- rs1 : x9<br> - rs2 : x8<br> - rd : x25<br> - rs2_h1_val == -5<br> - rs2_h0_val == -1025<br> - rs1_h1_val == 2<br>                                                                                                                                  |[0x800003ac]:KADDH s9, s1, fp<br> [0x800003b0]:csrrs s1, vxsat, zero<br> [0x800003b4]:sw s9, 24(ra)<br>       |
|  23|[0x800022c0]<br>0xFFFF8000|- rs1 : x23<br> - rs2 : x20<br> - rd : x15<br> - rs2_h1_val == -3<br> - rs2_h0_val == -4097<br> - rs1_h1_val == -2<br> - rs1_h0_val == 512<br>                                                                                                       |[0x800003cc]:KADDH a5, s7, s4<br> [0x800003d0]:csrrs s7, vxsat, zero<br> [0x800003d4]:sw a5, 32(ra)<br>       |
|  24|[0x800022c8]<br>0xFFFF8000|- rs1 : x12<br> - rs2 : x14<br> - rd : x19<br> - rs2_h1_val == -2<br>                                                                                                                                                                                |[0x800003ec]:KADDH s3, a2, a4<br> [0x800003f0]:csrrs a2, vxsat, zero<br> [0x800003f4]:sw s3, 40(ra)<br>       |
|  25|[0x800022d0]<br>0xFFFF8000|- rs1 : x11<br> - rs2 : x18<br> - rd : x31<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 1<br> - rs1_h1_val == -1<br> - rs1_h0_val == -4097<br>                                                                                                     |[0x8000040c]:KADDH t6, a1, s2<br> [0x80000410]:csrrs a1, vxsat, zero<br> [0x80000414]:sw t6, 48(ra)<br>       |
|  26|[0x800022d8]<br>0x00007FFF|- rs1 : x16<br> - rs2 : x7<br> - rd : x28<br> - rs2_h1_val == 16384<br>                                                                                                                                                                              |[0x8000042c]:KADDH t3, a6, t2<br> [0x80000430]:csrrs a6, vxsat, zero<br> [0x80000434]:sw t3, 56(ra)<br>       |
|  27|[0x800022e0]<br>0x00007FFF|- rs1 : x7<br> - rs2 : x3<br> - rd : x11<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -129<br> - rs1_h1_val == -65<br> - rs1_h0_val == -513<br>                                                                                                      |[0x8000044c]:KADDH a1, t2, gp<br> [0x80000450]:csrrs t2, vxsat, zero<br> [0x80000454]:sw a1, 64(ra)<br>       |
|  28|[0x800022e8]<br>0x00007FFF|- rs1 : x3<br> - rs2 : x5<br> - rd : x30<br> - rs2_h1_val == 4096<br> - rs1_h1_val == -257<br>                                                                                                                                                       |[0x8000046c]:KADDH t5, gp, t0<br> [0x80000470]:csrrs gp, vxsat, zero<br> [0x80000474]:sw t5, 72(ra)<br>       |
|  29|[0x800022f0]<br>0x00007FFF|- rs1 : x20<br> - rs2 : x12<br> - rd : x10<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -257<br>                                                                                                                                                     |[0x80000488]:KADDH a0, s4, a2<br> [0x8000048c]:csrrs s4, vxsat, zero<br> [0x80000490]:sw a0, 80(ra)<br>       |
|  30|[0x800022f8]<br>0x00007FFF|- rs1 : x25<br> - rs2 : x31<br> - rd : x21<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -33<br> - rs1_h0_val == -257<br>                                                                                                                             |[0x800004a8]:KADDH s5, s9, t6<br> [0x800004ac]:csrrs s9, vxsat, zero<br> [0x800004b0]:sw s5, 88(ra)<br>       |
|  31|[0x80002300]<br>0x00007FFF|- rs1 : x31<br> - rs2 : x26<br> - rd : x9<br> - rs2_h1_val == 512<br> - rs1_h1_val == 32767<br>                                                                                                                                                      |[0x800004c8]:KADDH s1, t6, s10<br> [0x800004cc]:csrrs t6, vxsat, zero<br> [0x800004d0]:sw s1, 96(ra)<br>      |
|  32|[0x80002308]<br>0x00007FFF|- rs1 : x30<br> - rs2 : x21<br> - rd : x3<br> - rs2_h1_val == 256<br>                                                                                                                                                                                |[0x800004e8]:KADDH gp, t5, s5<br> [0x800004ec]:csrrs t5, vxsat, zero<br> [0x800004f0]:sw gp, 104(ra)<br>      |
|  33|[0x80002310]<br>0xFFFF8000|- rs2_h0_val == 2048<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                   |[0x80000508]:KADDH t6, t5, t4<br> [0x8000050c]:csrrs t5, vxsat, zero<br> [0x80000510]:sw t6, 112(ra)<br>      |
|  34|[0x80002318]<br>0x00007FFF|- rs2_h1_val == 1<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                       |[0x80000528]:KADDH t6, t5, t4<br> [0x8000052c]:csrrs t5, vxsat, zero<br> [0x80000530]:sw t6, 120(ra)<br>      |
|  35|[0x80002320]<br>0x00007FFF|- rs2_h0_val == 32<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                       |[0x80000548]:KADDH t6, t5, t4<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 128(ra)<br>      |
|  36|[0x80002328]<br>0xFFFF8000|- rs1_h0_val == -33<br>                                                                                                                                                                                                                              |[0x80000568]:KADDH t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 136(ra)<br>      |
|  37|[0x80002330]<br>0xFFFFDFF6|- rs2_h0_val == -8193<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                     |[0x80000588]:KADDH t6, t5, t4<br> [0x8000058c]:csrrs t5, vxsat, zero<br> [0x80000590]:sw t6, 144(ra)<br>      |
|  38|[0x80002338]<br>0x00007FFF|- rs2_h1_val == 128<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                       |[0x800005a8]:KADDH t6, t5, t4<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 152(ra)<br>      |
|  39|[0x80002340]<br>0xFFFF8000|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                            |[0x800005c4]:KADDH t6, t5, t4<br> [0x800005c8]:csrrs t5, vxsat, zero<br> [0x800005cc]:sw t6, 160(ra)<br>      |
|  40|[0x80002348]<br>0xFFFF8000|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                             |[0x800005e4]:KADDH t6, t5, t4<br> [0x800005e8]:csrrs t5, vxsat, zero<br> [0x800005ec]:sw t6, 168(ra)<br>      |
|  41|[0x80002350]<br>0x00007FFF|- rs2_h0_val == -9<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 128<br>                                                                                                                                                                             |[0x80000604]:KADDH t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 176(ra)<br>      |
|  42|[0x80002358]<br>0xFFFF8000|- rs1_h1_val == -513<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                       |[0x80000624]:KADDH t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 184(ra)<br>      |
|  43|[0x80002360]<br>0xFFFF8000|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                |[0x80000644]:KADDH t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 192(ra)<br>      |
|  44|[0x80002368]<br>0x00007FFF|- rs2_h1_val == 32<br> - rs2_h0_val == -3<br> - rs1_h0_val == 2<br>                                                                                                                                                                                  |[0x80000664]:KADDH t6, t5, t4<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 200(ra)<br>      |
|  45|[0x80002370]<br>0x00007FFF|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                |[0x80000684]:KADDH t6, t5, t4<br> [0x80000688]:csrrs t5, vxsat, zero<br> [0x8000068c]:sw t6, 208(ra)<br>      |
|  46|[0x80002378]<br>0x00007FFF|- rs2_h1_val == 64<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                       |[0x800006a4]:KADDH t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 216(ra)<br>      |
|  47|[0x80002380]<br>0x00007FFF|- rs2_h1_val == 16<br>                                                                                                                                                                                                                               |[0x800006c0]:KADDH t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 224(ra)<br>      |
|  48|[0x80002388]<br>0xFFFF8000|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                |[0x800006dc]:KADDH t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 232(ra)<br>      |
|  49|[0x80002390]<br>0xFFFF8000|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                |[0x800006fc]:KADDH t6, t5, t4<br> [0x80000700]:csrrs t5, vxsat, zero<br> [0x80000704]:sw t6, 240(ra)<br>      |
|  50|[0x800023a0]<br>0x00001100|- rs2_h1_val == -1<br> - rs2_h0_val == 256<br> - rs1_h1_val == 1<br>                                                                                                                                                                                 |[0x80000734]:KADDH t6, t5, t4<br> [0x80000738]:csrrs t5, vxsat, zero<br> [0x8000073c]:sw t6, 256(ra)<br>      |
|  51|[0x800023a8]<br>0xFFFF8000|- rs2_h0_val == -5<br> - rs1_h1_val == 128<br> - rs1_h0_val == -21846<br>                                                                                                                                                                            |[0x80000754]:KADDH t6, t5, t4<br> [0x80000758]:csrrs t5, vxsat, zero<br> [0x8000075c]:sw t6, 264(ra)<br>      |
|  52|[0x800023b0]<br>0x00007FFF|- rs2_h0_val == -2<br>                                                                                                                                                                                                                               |[0x80000774]:KADDH t6, t5, t4<br> [0x80000778]:csrrs t5, vxsat, zero<br> [0x8000077c]:sw t6, 272(ra)<br>      |
|  53|[0x800023b8]<br>0x00007FFF|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                           |[0x80000790]:KADDH t6, t5, t4<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sw t6, 280(ra)<br>      |
|  54|[0x800023c0]<br>0xFFFF8000|- rs2_h0_val == 16384<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                 |[0x800007ac]:KADDH t6, t5, t4<br> [0x800007b0]:csrrs t5, vxsat, zero<br> [0x800007b4]:sw t6, 288(ra)<br>      |
|  55|[0x800023c8]<br>0xFFFF8000|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                             |[0x800007cc]:KADDH t6, t5, t4<br> [0x800007d0]:csrrs t5, vxsat, zero<br> [0x800007d4]:sw t6, 296(ra)<br>      |
|  56|[0x800023d0]<br>0x00007FFF|- rs2_h0_val == 512<br>                                                                                                                                                                                                                              |[0x800007ec]:KADDH t6, t5, t4<br> [0x800007f0]:csrrs t5, vxsat, zero<br> [0x800007f4]:sw t6, 304(ra)<br>      |
|  57|[0x800023d8]<br>0xFFFF8000|- rs2_h0_val == 128<br>                                                                                                                                                                                                                              |[0x80000808]:KADDH t6, t5, t4<br> [0x8000080c]:csrrs t5, vxsat, zero<br> [0x80000810]:sw t6, 312(ra)<br>      |
|  58|[0x800023e0]<br>0x00007FFF|- rs2_h0_val == 64<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                       |[0x80000828]:KADDH t6, t5, t4<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sw t6, 320(ra)<br>      |
|  59|[0x800023e8]<br>0xFFFF8000|- rs2_h0_val == 4<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                      |[0x80000848]:KADDH t6, t5, t4<br> [0x8000084c]:csrrs t5, vxsat, zero<br> [0x80000850]:sw t6, 328(ra)<br>      |
|  60|[0x800023f0]<br>0xFFFF8000|- rs2_h0_val == 2<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                      |[0x80000868]:KADDH t6, t5, t4<br> [0x8000086c]:csrrs t5, vxsat, zero<br> [0x80000870]:sw t6, 336(ra)<br>      |
|  61|[0x800023f8]<br>0xFFFF8000|- rs1_h1_val == -33<br>                                                                                                                                                                                                                              |[0x80000884]:KADDH t6, t5, t4<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sw t6, 344(ra)<br>      |
|  62|[0x80002400]<br>0x00007FFF|- rs1_h1_val == -5<br>                                                                                                                                                                                                                               |[0x800008a4]:KADDH t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 352(ra)<br>      |
|  63|[0x80002408]<br>0x00007FFF|- rs2_h0_val == -17<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                    |[0x800008c4]:KADDH t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 360(ra)<br>      |
|  64|[0x80002410]<br>0x00007FFF|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                             |[0x800008e0]:KADDH t6, t5, t4<br> [0x800008e4]:csrrs t5, vxsat, zero<br> [0x800008e8]:sw t6, 368(ra)<br>      |
|  65|[0x80002418]<br>0xFFFF8000|- rs1_h0_val == -32768<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                  |[0x800008fc]:KADDH t6, t5, t4<br> [0x80000900]:csrrs t5, vxsat, zero<br> [0x80000904]:sw t6, 376(ra)<br>      |
|  66|[0x80002420]<br>0x00007FFF|- rs1_h1_val == 32<br>                                                                                                                                                                                                                               |[0x80000918]:KADDH t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 384(ra)<br>      |
|  67|[0x80002428]<br>0xFFFF8000|- rs2_h0_val == -1<br>                                                                                                                                                                                                                               |[0x80000938]:KADDH t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 392(ra)<br>      |
|  68|[0x80002430]<br>0xFFFF8000|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                            |[0x80000958]:KADDH t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 400(ra)<br>      |
|  69|[0x80002438]<br>0xFFFF8000|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                            |[0x80000978]:KADDH t6, t5, t4<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sw t6, 408(ra)<br>      |
|  70|[0x80002440]<br>0xFFFF8000|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                             |[0x80000998]:KADDH t6, t5, t4<br> [0x8000099c]:csrrs t5, vxsat, zero<br> [0x800009a0]:sw t6, 416(ra)<br>      |
|  71|[0x80002448]<br>0x00007FFF|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                            |[0x800009b8]:KADDH t6, t5, t4<br> [0x800009bc]:csrrs t5, vxsat, zero<br> [0x800009c0]:sw t6, 424(ra)<br>      |
|  72|[0x80002450]<br>0x00007FFF|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                            |[0x800009d8]:KADDH t6, t5, t4<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sw t6, 432(ra)<br>      |
|  73|[0x80002458]<br>0xFFFF8000|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                            |[0x800009f4]:KADDH t6, t5, t4<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sw t6, 440(ra)<br>      |
|  74|[0x80002468]<br>0x00007FFF|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                |[0x80000a34]:KADDH t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 456(ra)<br>      |
|  75|[0x80002470]<br>0x00007FFF|- rs1_h0_val == 32<br>                                                                                                                                                                                                                               |[0x80000a54]:KADDH t6, t5, t4<br> [0x80000a58]:csrrs t5, vxsat, zero<br> [0x80000a5c]:sw t6, 464(ra)<br>      |
