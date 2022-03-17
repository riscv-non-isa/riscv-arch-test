
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000980')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | smalxda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smalxda-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 160      |
| STAT1                     | 76      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 80     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000574]:SMALXDA t5, t6, t4
      [0x80000578]:sw t5, 160(ra)
 -- Signature Address: 0x80002358 Data: 0x00800020
 -- Redundant Coverpoints hit by the op
      - opcode : smalxda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -17
      - rs1_h1_val == -17
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d8]:SMALXDA t5, t6, t4
      [0x800008dc]:sw t5, 416(ra)
 -- Signature Address: 0x80002458 Data: 0x00800020
 -- Redundant Coverpoints hit by the op
      - opcode : smalxda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs1_h1_val == -2
      - rs1_h0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000940]:SMALXDA t5, t6, t4
      [0x80000944]:sw t5, 448(ra)
 -- Signature Address: 0x80002478 Data: 0x00800020
 -- Redundant Coverpoints hit by the op
      - opcode : smalxda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 1
      - rs2_h0_val == -16385
      - rs1_h1_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000095c]:SMALXDA t5, t6, t4
      [0x80000960]:sw t5, 456(ra)
 -- Signature Address: 0x80002480 Data: 0x00800020
 -- Redundant Coverpoints hit by the op
      - opcode : smalxda
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -5
      - rs2_h0_val == -129
      - rs1_h1_val == -5






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smalxda', 'rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 1', 'rs2_h0_val == -16385', 'rs1_h1_val == 1', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000010c]:SMALXDA a4, a4, a4
	-[0x80000110]:sw a4, 0(sp)
Current Store : [0x80000114] : sw a5, 4(sp) -- Store: [0x80002214]:0xFAB7FBB6




Last Coverpoint : ['rs1 : x8', 'rs2 : x8', 'rd : x26', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h1_val == -5', 'rs2_h0_val == -129', 'rs1_h1_val == -5', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000128]:SMALXDA s10, fp, fp
	-[0x8000012c]:sw s10, 8(sp)
Current Store : [0x80000130] : sw s11, 12(sp) -- Store: [0x8000221c]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x28', 'rs2 : x0', 'rd : x12', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000144]:SMALXDA a2, t3, zero
	-[0x80000148]:sw a2, 16(sp)
Current Store : [0x8000014c] : sw a3, 20(sp) -- Store: [0x80002224]:0xEADFEEDB




Last Coverpoint : ['rs1 : x29', 'rs2 : x10', 'rd : x10', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -3', 'rs2_h0_val == -9', 'rs1_h1_val == 21845', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000160]:SMALXDA a0, t4, a0
	-[0x80000164]:sw a0, 24(sp)
Current Store : [0x80000168] : sw a1, 28(sp) -- Store: [0x8000222c]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x18', 'rs2 : x1', 'rd : x18', 'rs1 == rd != rs2', 'rs2_h1_val == -2049', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x8000017c]:SMALXDA s2, s2, ra
	-[0x80000180]:sw s2, 32(sp)
Current Store : [0x80000184] : sw s3, 36(sp) -- Store: [0x80002234]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x31', 'rs2 : x9', 'rd : x28', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs1_h1_val == -16385', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000198]:SMALXDA t3, t6, s1
	-[0x8000019c]:sw t3, 40(sp)
Current Store : [0x800001a0] : sw t4, 44(sp) -- Store: [0x8000223c]:0x55550010




Last Coverpoint : ['rs1 : x27', 'rs2 : x20', 'rd : x8', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x800001b4]:SMALXDA fp, s11, s4
	-[0x800001b8]:sw fp, 48(sp)
Current Store : [0x800001bc] : sw s1, 52(sp) -- Store: [0x80002244]:0x00010006




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rd : x16', 'rs2_h1_val == -21846', 'rs2_h0_val == 21845', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800001d0]:SMALXDA a6, s8, s5
	-[0x800001d4]:sw a6, 56(sp)
Current Store : [0x800001d8] : sw a7, 60(sp) -- Store: [0x8000224c]:0xBEADFEED




Last Coverpoint : ['rs1 : x21', 'rs2 : x19', 'rd : x24', 'rs2_h1_val == 21845', 'rs1_h1_val == -257', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800001ec]:SMALXDA s8, s5, s3
	-[0x800001f0]:sw s8, 64(sp)
Current Store : [0x800001f4] : sw s9, 68(sp) -- Store: [0x80002254]:0xEDBEADFE




Last Coverpoint : ['rs1 : x30', 'rs2 : x4', 'rd : x20', 'rs2_h1_val == 32767', 'rs2_h0_val == -65', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000208]:SMALXDA s4, t5, tp
	-[0x8000020c]:sw s4, 72(sp)
Current Store : [0x80000210] : sw s5, 76(sp) -- Store: [0x8000225c]:0xFEFFFDFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x26', 'rd : x22', 'rs2_h1_val == -16385', 'rs2_h0_val == 32767', 'rs1_h1_val == 64', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000224]:SMALXDA s6, ra, s10
	-[0x80000228]:sw s6, 80(sp)
Current Store : [0x8000022c] : sw s7, 84(sp) -- Store: [0x80002264]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x12', 'rs2 : x27', 'rd : x2', 'rs2_h1_val == -8193', 'rs2_h0_val == -33', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000248]:SMALXDA sp, a2, s11
	-[0x8000024c]:sw sp, 0(ra)
Current Store : [0x80000250] : sw gp, 4(ra) -- Store: [0x8000226c]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x7', 'rs2 : x16', 'rd : x4', 'rs2_h1_val == -4097', 'rs2_h0_val == -32768', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000260]:SMALXDA tp, t2, a6
	-[0x80000264]:sw tp, 8(ra)
Current Store : [0x80000268] : sw t0, 12(ra) -- Store: [0x80002274]:0x800000F8




Last Coverpoint : ['rs1 : x15', 'rs2 : x28', 'rd : x30', 'rs2_h1_val == -1025', 'rs1_h1_val == -4097', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x8000027c]:SMALXDA t5, a5, t3
	-[0x80000280]:sw t5, 16(ra)
Current Store : [0x80000284] : sw t6, 20(ra) -- Store: [0x8000227c]:0xBFFFDFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x2', 'rd : x6', 'rs2_h1_val == -257', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000294]:SMALXDA t1, zero, sp
	-[0x80000298]:sw t1, 24(ra)
Current Store : [0x8000029c] : sw t2, 28(ra) -- Store: [0x80002284]:0x0400FFF8




Last Coverpoint : ['rs1 : x19', 'rs2 : x11', 'rs2_h1_val == -129', 'rs2_h0_val == 16384', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800002ac]:SMALXDA fp, s3, a1
	-[0x800002b0]:sw fp, 32(ra)
Current Store : [0x800002b4] : sw s1, 36(ra) -- Store: [0x8000228c]:0x00010006




Last Coverpoint : ['rs1 : x10', 'rs2 : x24', 'rs2_h1_val == -65', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800002c8]:SMALXDA t5, a0, s8
	-[0x800002cc]:sw t5, 40(ra)
Current Store : [0x800002d0] : sw t6, 44(ra) -- Store: [0x80002294]:0xBFFFDFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x22', 'rs2_h1_val == -33', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800002e0]:SMALXDA s4, s10, s6
	-[0x800002e4]:sw s4, 48(ra)
Current Store : [0x800002e8] : sw s5, 52(ra) -- Store: [0x8000229c]:0xFEFFFDFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x18', 'rs2_h1_val == -17', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800002fc]:SMALXDA s4, sp, s2
	-[0x80000300]:sw s4, 56(ra)
Current Store : [0x80000304] : sw s5, 60(ra) -- Store: [0x800022a4]:0xFEFFFDFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x6', 'rs2_h1_val == -9', 'rs2_h0_val == 4', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000318]:SMALXDA t5, s7, t1
	-[0x8000031c]:sw t5, 64(ra)
Current Store : [0x80000320] : sw t6, 68(ra) -- Store: [0x800022ac]:0xBFFFDFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x13', 'rs1_h0_val == -32768', 'rs2_h1_val == -2', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000330]:SMALXDA s10, t1, a3
	-[0x80000334]:sw s10, 72(ra)
Current Store : [0x80000338] : sw s11, 76(ra) -- Store: [0x800022b4]:0xDFFFFFDF




Last Coverpoint : ['rs1 : x13', 'rs2 : x29', 'rs2_h1_val == -32768', 'rs2_h0_val == -1025', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000354]:SMALXDA s4, a3, t4
	-[0x80000358]:sw s4, 0(ra)
Current Store : [0x8000035c] : sw s5, 4(ra) -- Store: [0x800022bc]:0xFEFFFDFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rs2_h1_val == 16384', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000370]:SMALXDA sp, s1, t0
	-[0x80000374]:sw sp, 8(ra)
Current Store : [0x80000378] : sw gp, 12(ra) -- Store: [0x800022c4]:0x7FBB6FAA




Last Coverpoint : ['rs1 : x22', 'rs2 : x12', 'rs2_h1_val == 8192', 'rs1_h1_val == -32768', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x8000038c]:SMALXDA s8, s6, a2
	-[0x80000390]:sw s8, 16(ra)
Current Store : [0x80000394] : sw s9, 20(ra) -- Store: [0x800022cc]:0xEDBEADFE




Last Coverpoint : ['rs1 : x16', 'rs2 : x3', 'rs2_h1_val == 4096', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x800003a8]:SMALXDA s8, a6, gp
	-[0x800003ac]:sw s8, 24(ra)
Current Store : [0x800003b0] : sw s9, 28(ra) -- Store: [0x800022d4]:0xEDBEADFE




Last Coverpoint : ['rs1 : x17', 'rs2 : x31', 'rs2_h1_val == 2048', 'rs2_h0_val == 1024', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800003c4]:SMALXDA s2, a7, t6
	-[0x800003c8]:sw s2, 32(ra)
Current Store : [0x800003cc] : sw s3, 36(ra) -- Store: [0x800022dc]:0xFFF70005




Last Coverpoint : ['rs1 : x25', 'rs2 : x17', 'rs2_h1_val == 1024', 'rs2_h0_val == -257', 'rs1_h1_val == -1025', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800003e0]:SMALXDA s2, s9, a7
	-[0x800003e4]:sw s2, 40(ra)
Current Store : [0x800003e8] : sw s3, 44(ra) -- Store: [0x800022e4]:0xFFF70005




Last Coverpoint : ['rs1 : x11', 'rs2 : x25', 'rs2_h1_val == 512', 'rs2_h0_val == -3', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800003fc]:SMALXDA s2, a1, s9
	-[0x80000400]:sw s2, 48(ra)
Current Store : [0x80000404] : sw s3, 52(ra) -- Store: [0x800022ec]:0xFFF70005




Last Coverpoint : ['rs1 : x20', 'rs2 : x15', 'rs2_h1_val == 256', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000418]:SMALXDA t5, s4, a5
	-[0x8000041c]:sw t5, 56(ra)
Current Store : [0x80000420] : sw t6, 60(ra) -- Store: [0x800022f4]:0x08000400




Last Coverpoint : ['rs1 : x3', 'rs2 : x30', 'rs2_h1_val == 128', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000434]:SMALXDA t1, gp, t5
	-[0x80000438]:sw t1, 64(ra)
Current Store : [0x8000043c] : sw t2, 68(ra) -- Store: [0x800022fc]:0x0400FFF8




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rs1_h1_val == 32767', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000450]:SMALXDA s8, t0, t2
	-[0x80000454]:sw s8, 72(ra)
Current Store : [0x80000458] : sw s9, 76(ra) -- Store: [0x80002304]:0x0200FFFD




Last Coverpoint : ['rs1 : x4', 'rs2 : x23', 'rs2_h0_val == 2', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x8000046c]:SMALXDA fp, tp, s7
	-[0x80000470]:sw fp, 80(ra)
Current Store : [0x80000474] : sw s1, 84(ra) -- Store: [0x8000230c]:0x0005DFFF




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000488]:SMALXDA t5, t6, t4
	-[0x8000048c]:sw t5, 88(ra)
Current Store : [0x80000490] : sw t6, 92(ra) -- Store: [0x80002314]:0x0001FFDF




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800004a0]:SMALXDA t5, t6, t4
	-[0x800004a4]:sw t5, 96(ra)
Current Store : [0x800004a8] : sw t6, 100(ra) -- Store: [0x8000231c]:0xFFF9FFFD




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h1_val == 32', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800004bc]:SMALXDA t5, t6, t4
	-[0x800004c0]:sw t5, 104(ra)
Current Store : [0x800004c4] : sw t6, 108(ra) -- Store: [0x80002324]:0x0020FFFE




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800004d4]:SMALXDA t5, t6, t4
	-[0x800004d8]:sw t5, 112(ra)
Current Store : [0x800004dc] : sw t6, 116(ra) -- Store: [0x8000232c]:0x08004000




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800004ec]:SMALXDA t5, t6, t4
	-[0x800004f0]:sw t5, 120(ra)
Current Store : [0x800004f4] : sw t6, 124(ra) -- Store: [0x80002334]:0x00002000




Last Coverpoint : ['rs1_h1_val == -2049', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000508]:SMALXDA t5, t6, t4
	-[0x8000050c]:sw t5, 128(ra)
Current Store : [0x80000510] : sw t6, 132(ra) -- Store: [0x8000233c]:0xF7FF03FF




Last Coverpoint : ['rs1_h1_val == -33', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000524]:SMALXDA t5, t6, t4
	-[0x80000528]:sw t5, 136(ra)
Current Store : [0x8000052c] : sw t6, 140(ra) -- Store: [0x80002344]:0xFFDF0200




Last Coverpoint : ['rs1_h1_val == -21846', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000540]:SMALXDA t5, t6, t4
	-[0x80000544]:sw t5, 144(ra)
Current Store : [0x80000548] : sw t6, 148(ra) -- Store: [0x8000234c]:0xAAAA0040




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000055c]:SMALXDA t5, t6, t4
	-[0x80000560]:sw t5, 152(ra)
Current Store : [0x80000564] : sw t6, 156(ra) -- Store: [0x80002354]:0x00080020




Last Coverpoint : ['opcode : smalxda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -17', 'rs1_h1_val == -17', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000574]:SMALXDA t5, t6, t4
	-[0x80000578]:sw t5, 160(ra)
Current Store : [0x8000057c] : sw t6, 164(ra) -- Store: [0x8000235c]:0xFFEF0000




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x8000058c]:SMALXDA t5, t6, t4
	-[0x80000590]:sw t5, 168(ra)
Current Store : [0x80000594] : sw t6, 172(ra) -- Store: [0x80002364]:0xBFFF0008




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x800005a8]:SMALXDA t5, t6, t4
	-[0x800005ac]:sw t5, 176(ra)
Current Store : [0x800005b0] : sw t6, 180(ra) -- Store: [0x8000236c]:0xFFF70009




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x800005c4]:SMALXDA t5, t6, t4
	-[0x800005c8]:sw t5, 184(ra)
Current Store : [0x800005cc] : sw t6, 188(ra) -- Store: [0x80002374]:0x55550801




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x800005e0]:SMALXDA t5, t6, t4
	-[0x800005e4]:sw t5, 192(ra)
Current Store : [0x800005e8] : sw t6, 196(ra) -- Store: [0x8000237c]:0x00400040




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800005fc]:SMALXDA t5, t6, t4
	-[0x80000600]:sw t5, 200(ra)
Current Store : [0x80000604] : sw t6, 204(ra) -- Store: [0x80002384]:0x00060002




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000618]:SMALXDA t5, t6, t4
	-[0x8000061c]:sw t5, 208(ra)
Current Store : [0x80000620] : sw t6, 212(ra) -- Store: [0x8000238c]:0x00050001




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000634]:SMALXDA t5, t6, t4
	-[0x80000638]:sw t5, 216(ra)
Current Store : [0x8000063c] : sw t6, 220(ra) -- Store: [0x80002394]:0xFBFF0004




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h1_val == 128', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000650]:SMALXDA t5, t6, t4
	-[0x80000654]:sw t5, 224(ra)
Current Store : [0x80000658] : sw t6, 228(ra) -- Store: [0x8000239c]:0x00807FFF




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000668]:SMALXDA t5, t6, t4
	-[0x8000066c]:sw t5, 232(ra)
Current Store : [0x80000670] : sw t6, 236(ra) -- Store: [0x800023a4]:0xFFFEC000




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000684]:SMALXDA t5, t6, t4
	-[0x80000688]:sw t5, 240(ra)
Current Store : [0x8000068c] : sw t6, 244(ra) -- Store: [0x800023ac]:0x0080FFEF




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x8000069c]:SMALXDA t5, t6, t4
	-[0x800006a0]:sw t5, 248(ra)
Current Store : [0x800006a4] : sw t6, 252(ra) -- Store: [0x800023b4]:0xFFFBFFEF




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800006b4]:SMALXDA t5, t6, t4
	-[0x800006b8]:sw t5, 256(ra)
Current Store : [0x800006bc] : sw t6, 260(ra) -- Store: [0x800023bc]:0x80000006




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x800006cc]:SMALXDA t5, t6, t4
	-[0x800006d0]:sw t5, 264(ra)
Current Store : [0x800006d4] : sw t6, 268(ra) -- Store: [0x800023c4]:0xFFFB2000




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800006e8]:SMALXDA t5, t6, t4
	-[0x800006ec]:sw t5, 272(ra)
Current Store : [0x800006f0] : sw t6, 276(ra) -- Store: [0x800023cc]:0x00010007




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000704]:SMALXDA t5, t6, t4
	-[0x80000708]:sw t5, 280(ra)
Current Store : [0x8000070c] : sw t6, 284(ra) -- Store: [0x800023d4]:0xFFF9FEFF




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80000720]:SMALXDA t5, t6, t4
	-[0x80000724]:sw t5, 288(ra)
Current Store : [0x80000728] : sw t6, 292(ra) -- Store: [0x800023dc]:0x0000FFFF




Last Coverpoint : ['rs2_h1_val == 32', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x8000073c]:SMALXDA t5, t6, t4
	-[0x80000740]:sw t5, 296(ra)
Current Store : [0x80000744] : sw t6, 300(ra) -- Store: [0x800023e4]:0xFFF80100




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000758]:SMALXDA t5, t6, t4
	-[0x8000075c]:sw t5, 304(ra)
Current Store : [0x80000760] : sw t6, 308(ra) -- Store: [0x800023ec]:0x20000800




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80000774]:SMALXDA t5, t6, t4
	-[0x80000778]:sw t5, 312(ra)
Current Store : [0x8000077c] : sw t6, 316(ra) -- Store: [0x800023f4]:0xFFF6FFFB




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000790]:SMALXDA t5, t6, t4
	-[0x80000794]:sw t5, 320(ra)
Current Store : [0x80000798] : sw t6, 324(ra) -- Store: [0x800023fc]:0xDFFF0003




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800007a8]:SMALXDA t5, t6, t4
	-[0x800007ac]:sw t5, 328(ra)
Current Store : [0x800007b0] : sw t6, 332(ra) -- Store: [0x80002404]:0xFFF6EFFF




Last Coverpoint : ['rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800007c4]:SMALXDA t5, t6, t4
	-[0x800007c8]:sw t5, 336(ra)
Current Store : [0x800007cc] : sw t6, 340(ra) -- Store: [0x8000240c]:0xFFFD0002




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800007e0]:SMALXDA t5, t6, t4
	-[0x800007e4]:sw t5, 344(ra)
Current Store : [0x800007e8] : sw t6, 348(ra) -- Store: [0x80002414]:0x4000FFF9




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800007fc]:SMALXDA t5, t6, t4
	-[0x80000800]:sw t5, 352(ra)
Current Store : [0x80000804] : sw t6, 356(ra) -- Store: [0x8000241c]:0x01003FFF




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000818]:SMALXDA t5, t6, t4
	-[0x8000081c]:sw t5, 360(ra)
Current Store : [0x80000820] : sw t6, 364(ra) -- Store: [0x80002424]:0x8000F7FF




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000834]:SMALXDA t5, t6, t4
	-[0x80000838]:sw t5, 368(ra)
Current Store : [0x8000083c] : sw t6, 372(ra) -- Store: [0x8000242c]:0x00100001




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000850]:SMALXDA t5, t6, t4
	-[0x80000854]:sw t5, 376(ra)
Current Store : [0x80000858] : sw t6, 380(ra) -- Store: [0x80002434]:0x00040100




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x8000086c]:SMALXDA t5, t6, t4
	-[0x80000870]:sw t5, 384(ra)
Current Store : [0x80000874] : sw t6, 388(ra) -- Store: [0x8000243c]:0x0002FF7F




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000884]:SMALXDA t5, t6, t4
	-[0x80000888]:sw t5, 392(ra)
Current Store : [0x8000088c] : sw t6, 396(ra) -- Store: [0x80002444]:0xFFFFFFFA




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800008a0]:SMALXDA t5, t6, t4
	-[0x800008a4]:sw t5, 400(ra)
Current Store : [0x800008a8] : sw t6, 404(ra) -- Store: [0x8000244c]:0x0200AAAA




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800008bc]:SMALXDA t5, t6, t4
	-[0x800008c0]:sw t5, 408(ra)
Current Store : [0x800008c4] : sw t6, 412(ra) -- Store: [0x80002454]:0x10005555




Last Coverpoint : ['opcode : smalxda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs1_h1_val == -2', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800008d8]:SMALXDA t5, t6, t4
	-[0x800008dc]:sw t5, 416(ra)
Current Store : [0x800008e0] : sw t6, 420(ra) -- Store: [0x8000245c]:0xFFFEBFFF




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800008f0]:SMALXDA t5, t6, t4
	-[0x800008f4]:sw t5, 424(ra)
Current Store : [0x800008f8] : sw t6, 428(ra) -- Store: [0x80002464]:0xFDFFEFFF




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x8000090c]:SMALXDA t5, t6, t4
	-[0x80000910]:sw t5, 432(ra)
Current Store : [0x80000914] : sw t6, 436(ra) -- Store: [0x8000246c]:0x00080002




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000928]:SMALXDA t5, t6, t4
	-[0x8000092c]:sw t5, 440(ra)
Current Store : [0x80000930] : sw t6, 444(ra) -- Store: [0x80002474]:0xFF7FFFFF




Last Coverpoint : ['opcode : smalxda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 1', 'rs2_h0_val == -16385', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000940]:SMALXDA t5, t6, t4
	-[0x80000944]:sw t5, 448(ra)
Current Store : [0x80000948] : sw t6, 452(ra) -- Store: [0x8000247c]:0x08008000




Last Coverpoint : ['opcode : smalxda', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -5', 'rs2_h0_val == -129', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x8000095c]:SMALXDA t5, t6, t4
	-[0x80000960]:sw t5, 456(ra)
Current Store : [0x80000964] : sw t6, 460(ra) -- Store: [0x80002484]:0xFFFBFFFA




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000970]:SMALXDA t5, t6, t4
	-[0x80000974]:sw t5, 464(ra)
Current Store : [0x80000978] : sw t6, 468(ra) -- Store: [0x8000248c]:0xFFF81000





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

|s.no|        signature         |                                                                                                                                                                 coverpoints                                                                                                                                                                 |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0001BFFF|- opcode : smalxda<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 1<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 1<br> - rs1_h0_val == -16385<br> |[0x8000010c]:SMALXDA a4, a4, a4<br> [0x80000110]:sw a4, 0(sp)<br>    |
|   2|[0x80002218]<br>0x76DF56FF|- rs1 : x8<br> - rs2 : x8<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h1_val == -5<br> - rs2_h0_val == -129<br> - rs1_h1_val == -5<br> - rs1_h0_val == -129<br>                                                                                                                                  |[0x80000128]:SMALXDA s10, fp, fp<br> [0x8000012c]:sw s10, 8(sp)<br>  |
|   3|[0x80002220]<br>0xD5BFDDB7|- rs1 : x28<br> - rs2 : x0<br> - rd : x12<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -9<br>                                                                                                                 |[0x80000144]:SMALXDA a2, t3, zero<br> [0x80000148]:sw a2, 16(sp)<br> |
|   4|[0x80002228]<br>0xFFFDFFF7|- rs1 : x29<br> - rs2 : x10<br> - rd : x10<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -3<br> - rs2_h0_val == -9<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 16<br>                                                                                         |[0x80000160]:SMALXDA a0, t4, a0<br> [0x80000164]:sw a0, 24(sp)<br>   |
|   5|[0x80002230]<br>0x0800FFF8|- rs1 : x18<br> - rs2 : x1<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_h1_val == -2049<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                      |[0x8000017c]:SMALXDA s2, s2, ra<br> [0x80000180]:sw s2, 32(sp)<br>   |
|   6|[0x80002238]<br>0xFFF7FFF8|- rs1 : x31<br> - rs2 : x9<br> - rd : x28<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -8193<br>                                                                                                                                                           |[0x80000198]:SMALXDA t3, t6, s1<br> [0x8000019c]:sw t3, 40(sp)<br>   |
|   7|[0x80002240]<br>0xFFFBFF7F|- rs1 : x27<br> - rs2 : x20<br> - rd : x8<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -513<br>                                                                                                                                                                                                                               |[0x800001b4]:SMALXDA fp, s11, s4<br> [0x800001b8]:sw fp, 48(sp)<br>  |
|   8|[0x80002248]<br>0x7D5BFDDB|- rs1 : x24<br> - rs2 : x21<br> - rd : x16<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 21845<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                  |[0x800001d0]:SMALXDA a6, s8, s5<br> [0x800001d4]:sw a6, 56(sp)<br>   |
|   9|[0x80002250]<br>0xC000FFEF|- rs1 : x21<br> - rs2 : x19<br> - rd : x24<br> - rs2_h1_val == 21845<br> - rs1_h1_val == -257<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                   |[0x800001ec]:SMALXDA s8, s5, s3<br> [0x800001f0]:sw s8, 64(sp)<br>   |
|  10|[0x80002258]<br>0xFDFF0007|- rs1 : x30<br> - rs2 : x4<br> - rd : x20<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -65<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                        |[0x80000208]:SMALXDA s4, t5, tp<br> [0x8000020c]:sw s4, 72(sp)<br>   |
|  11|[0x80002260]<br>0x6DF56FF7|- rs1 : x1<br> - rs2 : x26<br> - rd : x22<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 64<br> - rs1_h0_val == 2<br>                                                                                                                                                                                              |[0x80000224]:SMALXDA s6, ra, s10<br> [0x80000228]:sw s6, 80(sp)<br>  |
|  12|[0x80002268]<br>0x80002210|- rs1 : x12<br> - rs2 : x27<br> - rd : x2<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -33<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                       |[0x80000248]:SMALXDA sp, a2, s11<br> [0x8000024c]:sw sp, 0(ra)<br>   |
|  13|[0x80002270]<br>0x7FFFFFBF|- rs1 : x7<br> - rs2 : x16<br> - rd : x4<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                   |[0x80000260]:SMALXDA tp, t2, a6<br> [0x80000264]:sw tp, 8(ra)<br>    |
|  14|[0x80002278]<br>0xFFFA0008|- rs1 : x15<br> - rs2 : x28<br> - rd : x30<br> - rs2_h1_val == -1025<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                    |[0x8000027c]:SMALXDA t5, a5, t3<br> [0x80000280]:sw t5, 16(ra)<br>   |
|  15|[0x80002280]<br>0x80002000|- rs1 : x0<br> - rs2 : x2<br> - rd : x6<br> - rs2_h1_val == -257<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                             |[0x80000294]:SMALXDA t1, zero, sp<br> [0x80000298]:sw t1, 24(ra)<br> |
|  16|[0x80002288]<br>0xFFFBFF7F|- rs1 : x19<br> - rs2 : x11<br> - rs2_h1_val == -129<br> - rs2_h0_val == 16384<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                     |[0x800002ac]:SMALXDA fp, s3, a1<br> [0x800002b0]:sw fp, 32(ra)<br>   |
|  17|[0x80002290]<br>0xFFFA0008|- rs1 : x10<br> - rs2 : x24<br> - rs2_h1_val == -65<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                              |[0x800002c8]:SMALXDA t5, a0, s8<br> [0x800002cc]:sw t5, 40(ra)<br>   |
|  18|[0x80002298]<br>0xFDFF0007|- rs1 : x26<br> - rs2 : x22<br> - rs2_h1_val == -33<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                              |[0x800002e0]:SMALXDA s4, s10, s6<br> [0x800002e4]:sw s4, 48(ra)<br>  |
|  19|[0x800022a0]<br>0xFDFF0007|- rs1 : x2<br> - rs2 : x18<br> - rs2_h1_val == -17<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                              |[0x800002fc]:SMALXDA s4, sp, s2<br> [0x80000300]:sw s4, 56(ra)<br>   |
|  20|[0x800022a8]<br>0xFFFA0008|- rs1 : x23<br> - rs2 : x6<br> - rs2_h1_val == -9<br> - rs2_h0_val == 4<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                          |[0x80000318]:SMALXDA t5, s7, t1<br> [0x8000031c]:sw t5, 64(ra)<br>   |
|  21|[0x800022b0]<br>0xFFEFC000|- rs1 : x6<br> - rs2 : x13<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -2<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                     |[0x80000330]:SMALXDA s10, t1, a3<br> [0x80000334]:sw s10, 72(ra)<br> |
|  22|[0x800022b8]<br>0xFDFF0007|- rs1 : x13<br> - rs2 : x29<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -1025<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                  |[0x80000354]:SMALXDA s4, a3, t4<br> [0x80000358]:sw s4, 0(ra)<br>    |
|  23|[0x800022c0]<br>0x00000800|- rs1 : x9<br> - rs2 : x5<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                            |[0x80000370]:SMALXDA sp, s1, t0<br> [0x80000374]:sw sp, 8(ra)<br>    |
|  24|[0x800022c8]<br>0xFFBFFFF7|- rs1 : x22<br> - rs2 : x12<br> - rs2_h1_val == 8192<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                  |[0x8000038c]:SMALXDA s8, s6, a2<br> [0x80000390]:sw s8, 16(ra)<br>   |
|  25|[0x800022d0]<br>0xFFBFFFF7|- rs1 : x16<br> - rs2 : x3<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                |[0x800003a8]:SMALXDA s8, a6, gp<br> [0x800003ac]:sw s8, 24(ra)<br>   |
|  26|[0x800022d8]<br>0xFFEF0009|- rs1 : x17<br> - rs2 : x31<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                   |[0x800003c4]:SMALXDA s2, a7, t6<br> [0x800003c8]:sw s2, 32(ra)<br>   |
|  27|[0x800022e0]<br>0xFFEF0009|- rs1 : x25<br> - rs2 : x17<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -257<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                            |[0x800003e0]:SMALXDA s2, s9, a7<br> [0x800003e4]:sw s2, 40(ra)<br>   |
|  28|[0x800022e8]<br>0xFFEF0009|- rs1 : x11<br> - rs2 : x25<br> - rs2_h1_val == 512<br> - rs2_h0_val == -3<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                       |[0x800003fc]:SMALXDA s2, a1, s9<br> [0x80000400]:sw s2, 48(ra)<br>   |
|  29|[0x800022f0]<br>0xFFFA0008|- rs1 : x20<br> - rs2 : x15<br> - rs2_h1_val == 256<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                              |[0x80000418]:SMALXDA t5, s4, a5<br> [0x8000041c]:sw t5, 56(ra)<br>   |
|  30|[0x800022f8]<br>0xFFF98000|- rs1 : x3<br> - rs2 : x30<br> - rs2_h1_val == 128<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                |[0x80000434]:SMALXDA t1, gp, t5<br> [0x80000438]:sw t1, 64(ra)<br>   |
|  31|[0x80002300]<br>0xFFBFFFF7|- rs1 : x5<br> - rs2 : x7<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                            |[0x80000450]:SMALXDA s8, t0, t2<br> [0x80000454]:sw s8, 72(ra)<br>   |
|  32|[0x80002308]<br>0xFFFBFF7F|- rs1 : x4<br> - rs2 : x23<br> - rs2_h0_val == 2<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                |[0x8000046c]:SMALXDA fp, tp, s7<br> [0x80000470]:sw fp, 80(ra)<br>   |
|  33|[0x80002310]<br>0x00800020|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                      |[0x80000488]:SMALXDA t5, t6, t4<br> [0x8000048c]:sw t5, 88(ra)<br>   |
|  34|[0x80002318]<br>0x00800020|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                       |[0x800004a0]:SMALXDA t5, t6, t4<br> [0x800004a4]:sw t5, 96(ra)<br>   |
|  35|[0x80002320]<br>0x00800020|- rs2_h0_val == -4097<br> - rs1_h1_val == 32<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                      |[0x800004bc]:SMALXDA t5, t6, t4<br> [0x800004c0]:sw t5, 104(ra)<br>  |
|  36|[0x80002328]<br>0x00800020|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                    |[0x800004d4]:SMALXDA t5, t6, t4<br> [0x800004d8]:sw t5, 112(ra)<br>  |
|  37|[0x80002330]<br>0x00800020|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                     |[0x800004ec]:SMALXDA t5, t6, t4<br> [0x800004f0]:sw t5, 120(ra)<br>  |
|  38|[0x80002338]<br>0x00800020|- rs1_h1_val == -2049<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                           |[0x80000508]:SMALXDA t5, t6, t4<br> [0x8000050c]:sw t5, 128(ra)<br>  |
|  39|[0x80002340]<br>0x00800020|- rs1_h1_val == -33<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                              |[0x80000524]:SMALXDA t5, t6, t4<br> [0x80000528]:sw t5, 136(ra)<br>  |
|  40|[0x80002348]<br>0x00800020|- rs1_h1_val == -21846<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                            |[0x80000540]:SMALXDA t5, t6, t4<br> [0x80000544]:sw t5, 144(ra)<br>  |
|  41|[0x80002350]<br>0x00800020|- rs2_h1_val == 4<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                 |[0x8000055c]:SMALXDA t5, t6, t4<br> [0x80000560]:sw t5, 152(ra)<br>  |
|  42|[0x80002360]<br>0x00800020|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                       |[0x8000058c]:SMALXDA t5, t6, t4<br> [0x80000590]:sw t5, 168(ra)<br>  |
|  43|[0x80002368]<br>0x00800020|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                       |[0x800005a8]:SMALXDA t5, t6, t4<br> [0x800005ac]:sw t5, 176(ra)<br>  |
|  44|[0x80002370]<br>0x00800020|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                        |[0x800005c4]:SMALXDA t5, t6, t4<br> [0x800005c8]:sw t5, 184(ra)<br>  |
|  45|[0x80002378]<br>0x00800020|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x800005e0]:SMALXDA t5, t6, t4<br> [0x800005e4]:sw t5, 192(ra)<br>  |
|  46|[0x80002380]<br>0x00800020|- rs2_h1_val == -1<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                               |[0x800005fc]:SMALXDA t5, t6, t4<br> [0x80000600]:sw t5, 200(ra)<br>  |
|  47|[0x80002388]<br>0x00800020|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                   |[0x80000618]:SMALXDA t5, t6, t4<br> [0x8000061c]:sw t5, 208(ra)<br>  |
|  48|[0x80002390]<br>0x00800020|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                    |[0x80000634]:SMALXDA t5, t6, t4<br> [0x80000638]:sw t5, 216(ra)<br>  |
|  49|[0x80002398]<br>0x00800020|- rs2_h0_val == -513<br> - rs1_h1_val == 128<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                   |[0x80000650]:SMALXDA t5, t6, t4<br> [0x80000654]:sw t5, 224(ra)<br>  |
|  50|[0x800023a0]<br>0x00800020|- rs2_h0_val == -5<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                |[0x80000668]:SMALXDA t5, t6, t4<br> [0x8000066c]:sw t5, 232(ra)<br>  |
|  51|[0x800023a8]<br>0x00800020|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                       |[0x80000684]:SMALXDA t5, t6, t4<br> [0x80000688]:sw t5, 240(ra)<br>  |
|  52|[0x800023b0]<br>0x00800020|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                     |[0x8000069c]:SMALXDA t5, t6, t4<br> [0x800006a0]:sw t5, 248(ra)<br>  |
|  53|[0x800023b8]<br>0x00800020|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                     |[0x800006b4]:SMALXDA t5, t6, t4<br> [0x800006b8]:sw t5, 256(ra)<br>  |
|  54|[0x800023c0]<br>0x00800020|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                     |[0x800006cc]:SMALXDA t5, t6, t4<br> [0x800006d0]:sw t5, 264(ra)<br>  |
|  55|[0x800023c8]<br>0x00800020|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                      |[0x800006e8]:SMALXDA t5, t6, t4<br> [0x800006ec]:sw t5, 272(ra)<br>  |
|  56|[0x800023d0]<br>0x00800020|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                       |[0x80000704]:SMALXDA t5, t6, t4<br> [0x80000708]:sw t5, 280(ra)<br>  |
|  57|[0x800023d8]<br>0x00800020|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                       |[0x80000720]:SMALXDA t5, t6, t4<br> [0x80000724]:sw t5, 288(ra)<br>  |
|  58|[0x800023e0]<br>0x00800020|- rs2_h1_val == 32<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                 |[0x8000073c]:SMALXDA t5, t6, t4<br> [0x80000740]:sw t5, 296(ra)<br>  |
|  59|[0x800023e8]<br>0x00800020|- rs2_h0_val == 1<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                               |[0x80000758]:SMALXDA t5, t6, t4<br> [0x8000075c]:sw t5, 304(ra)<br>  |
|  60|[0x800023f0]<br>0x00800020|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                       |[0x80000774]:SMALXDA t5, t6, t4<br> [0x80000778]:sw t5, 312(ra)<br>  |
|  61|[0x800023f8]<br>0x00800020|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                    |[0x80000790]:SMALXDA t5, t6, t4<br> [0x80000794]:sw t5, 320(ra)<br>  |
|  62|[0x80002400]<br>0x00800020|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                    |[0x800007a8]:SMALXDA t5, t6, t4<br> [0x800007ac]:sw t5, 328(ra)<br>  |
|  63|[0x80002408]<br>0x00800020|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                       |[0x800007c4]:SMALXDA t5, t6, t4<br> [0x800007c8]:sw t5, 336(ra)<br>  |
|  64|[0x80002410]<br>0x00800020|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                    |[0x800007e0]:SMALXDA t5, t6, t4<br> [0x800007e4]:sw t5, 344(ra)<br>  |
|  65|[0x80002418]<br>0x00800020|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                      |[0x800007fc]:SMALXDA t5, t6, t4<br> [0x80000800]:sw t5, 352(ra)<br>  |
|  66|[0x80002420]<br>0x00800020|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                    |[0x80000818]:SMALXDA t5, t6, t4<br> [0x8000081c]:sw t5, 360(ra)<br>  |
|  67|[0x80002428]<br>0x00800020|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                       |[0x80000834]:SMALXDA t5, t6, t4<br> [0x80000838]:sw t5, 368(ra)<br>  |
|  68|[0x80002430]<br>0x00800020|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                        |[0x80000850]:SMALXDA t5, t6, t4<br> [0x80000854]:sw t5, 376(ra)<br>  |
|  69|[0x80002438]<br>0x00800020|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x8000086c]:SMALXDA t5, t6, t4<br> [0x80000870]:sw t5, 384(ra)<br>  |
|  70|[0x80002440]<br>0x00800020|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                       |[0x80000884]:SMALXDA t5, t6, t4<br> [0x80000888]:sw t5, 392(ra)<br>  |
|  71|[0x80002448]<br>0x00800020|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                   |[0x800008a0]:SMALXDA t5, t6, t4<br> [0x800008a4]:sw t5, 400(ra)<br>  |
|  72|[0x80002450]<br>0x00800020|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                    |[0x800008bc]:SMALXDA t5, t6, t4<br> [0x800008c0]:sw t5, 408(ra)<br>  |
|  73|[0x80002460]<br>0x00800020|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                     |[0x800008f0]:SMALXDA t5, t6, t4<br> [0x800008f4]:sw t5, 424(ra)<br>  |
|  74|[0x80002468]<br>0x00800020|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                      |[0x8000090c]:SMALXDA t5, t6, t4<br> [0x80000910]:sw t5, 432(ra)<br>  |
|  75|[0x80002470]<br>0x00800020|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                     |[0x80000928]:SMALXDA t5, t6, t4<br> [0x8000092c]:sw t5, 440(ra)<br>  |
|  76|[0x80002488]<br>0x00800020|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                     |[0x80000970]:SMALXDA t5, t6, t4<br> [0x80000974]:sw t5, 464(ra)<br>  |
