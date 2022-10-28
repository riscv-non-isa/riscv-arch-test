
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a40')]      |
| SIG_REGION                | [('0x80002210', '0x80002470', '152 words')]      |
| COV_LABELS                | kdmtt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kdmtt-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 152      |
| STAT1                     | 71      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 76     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000764]:KDMTT t6, t5, t4
      [0x80000768]:csrrs t5, vxsat, zero
      [0x8000076c]:sw t6, 272(ra)
 -- Signature Address: 0x800023b0 Data: 0x0000001E
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b8]:KDMTT t6, t5, t4
      [0x800008bc]:csrrs t5, vxsat, zero
      [0x800008c0]:sw t6, 360(ra)
 -- Signature Address: 0x80002408 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs2_h0_val == -16385
      - rs1_h1_val == 2048
      - rs1_h0_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f0]:KDMTT t6, t5, t4
      [0x800009f4]:csrrs t5, vxsat, zero
      [0x800009f8]:sw t6, 440(ra)
 -- Signature Address: 0x80002458 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -1
      - rs2_h0_val == 8
      - rs1_h1_val == -1
      - rs1_h0_val == -2049




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a10]:KDMTT t6, t5, t4
      [0x80000a14]:csrrs t5, vxsat, zero
      [0x80000a18]:sw t6, 448(ra)
 -- Signature Address: 0x80002460 Data: 0x2AAA8000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 21845
      - rs2_h0_val == 16
      - rs1_h1_val == 16384
      - rs1_h0_val == -4097




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a30]:KDMTT t6, t5, t4
      [0x80000a34]:csrrs t5, vxsat, zero
      [0x80000a38]:sw t6, 456(ra)
 -- Signature Address: 0x80002468 Data: 0xFFFF9FF4
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == -2049
      - rs2_h0_val == 16
      - rs1_h0_val == 1






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmtt', 'rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -17', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000118]:KDMTT s6, s6, s6
	-[0x8000011c]:csrrs s6, vxsat, zero
	-[0x80000120]:sw s6, 0(sp)
Current Store : [0x80000124] : sw s6, 4(sp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x8', 'rd : x1', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -1', 'rs2_h0_val == 8', 'rs1_h1_val == -1', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000138]:KDMTT ra, fp, fp
	-[0x8000013c]:csrrs fp, vxsat, zero
	-[0x80000140]:sw ra, 8(sp)
Current Store : [0x80000144] : sw fp, 12(sp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x25', 'rd : x14', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -21846', 'rs2_h0_val == -9', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000158]:KDMTT a4, a6, s9
	-[0x8000015c]:csrrs a6, vxsat, zero
	-[0x80000160]:sw a4, 16(sp)
Current Store : [0x80000164] : sw a6, 20(sp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x5', 'rd : x5', 'rs2 == rd != rs1', 'rs2_h1_val == 64', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000178]:KDMTT t0, t2, t0
	-[0x8000017c]:csrrs t2, vxsat, zero
	-[0x80000180]:sw t0, 24(sp)
Current Store : [0x80000184] : sw t2, 28(sp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x19', 'rd : x30', 'rs1 == rd != rs2', 'rs2_h1_val == -16385', 'rs2_h0_val == -3', 'rs1_h1_val == 1', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000198]:KDMTT t5, t5, s3
	-[0x8000019c]:csrrs t5, vxsat, zero
	-[0x800001a0]:sw t5, 32(sp)
Current Store : [0x800001a4] : sw t5, 36(sp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x6', 'rd : x19', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -4097', 'rs2_h0_val == -5', 'rs1_h1_val == -65', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800001b4]:KDMTT s3, ra, t1
	-[0x800001b8]:csrrs ra, vxsat, zero
	-[0x800001bc]:sw s3, 40(sp)
Current Store : [0x800001c0] : sw ra, 44(sp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x24', 'rd : x27', 'rs2_h1_val == 1024', 'rs2_h0_val == 4', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800001d4]:KDMTT s11, a2, s8
	-[0x800001d8]:csrrs a2, vxsat, zero
	-[0x800001dc]:sw s11, 48(sp)
Current Store : [0x800001e0] : sw a2, 52(sp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x0', 'rd : x23', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 16384', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800001f4]:KDMTT s7, s9, zero
	-[0x800001f8]:csrrs s9, vxsat, zero
	-[0x800001fc]:sw s7, 56(sp)
Current Store : [0x80000200] : sw s9, 60(sp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x3', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h1_val == 32767', 'rs2_h0_val == -129', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000214]:KDMTT gp, t4, t3
	-[0x80000218]:csrrs t4, vxsat, zero
	-[0x8000021c]:sw gp, 64(sp)
Current Store : [0x80000220] : sw t4, 68(sp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x1', 'rd : x31', 'rs2_h1_val == -8193', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000234]:KDMTT t6, s7, ra
	-[0x80000238]:csrrs s7, vxsat, zero
	-[0x8000023c]:sw t6, 72(sp)
Current Store : [0x80000240] : sw s7, 76(sp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x4', 'rd : x0', 'rs2_h1_val == -2049', 'rs2_h0_val == 16', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000254]:KDMTT zero, a7, tp
	-[0x80000258]:csrrs a7, vxsat, zero
	-[0x8000025c]:sw zero, 80(sp)
Current Store : [0x80000260] : sw a7, 84(sp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x24', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -1025', 'rs2_h0_val == 128', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000274]:KDMTT s8, t0, t2
	-[0x80000278]:csrrs t0, vxsat, zero
	-[0x8000027c]:sw s8, 88(sp)
Current Store : [0x80000280] : sw t0, 92(sp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x10', 'rd : x28', 'rs2_h1_val == -513', 'rs2_h0_val == 16384', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000290]:KDMTT t3, s10, a0
	-[0x80000294]:csrrs s10, vxsat, zero
	-[0x80000298]:sw t3, 96(sp)
Current Store : [0x8000029c] : sw s10, 100(sp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x11', 'rd : x7', 'rs2_h1_val == -257', 'rs2_h0_val == 2', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800002b0]:KDMTT t2, a4, a1
	-[0x800002b4]:csrrs a4, vxsat, zero
	-[0x800002b8]:sw t2, 104(sp)
Current Store : [0x800002bc] : sw a4, 108(sp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x27', 'rd : x10', 'rs2_h1_val == -129', 'rs1_h1_val == 256', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800002d0]:KDMTT a0, t3, s11
	-[0x800002d4]:csrrs t3, vxsat, zero
	-[0x800002d8]:sw a0, 112(sp)
Current Store : [0x800002dc] : sw t3, 116(sp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x18', 'rd : x17', 'rs2_h1_val == -65', 'rs1_h1_val == -21846', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800002ec]:KDMTT a7, s11, s2
	-[0x800002f0]:csrrs s11, vxsat, zero
	-[0x800002f4]:sw a7, 120(sp)
Current Store : [0x800002f8] : sw s11, 124(sp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x14', 'rd : x21', 'rs2_h1_val == -33', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000030c]:KDMTT s5, s2, a4
	-[0x80000310]:csrrs s2, vxsat, zero
	-[0x80000314]:sw s5, 128(sp)
Current Store : [0x80000318] : sw s2, 132(sp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x15', 'rd : x9', 'rs2_h1_val == -17', 'rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000328]:KDMTT s1, t1, a5
	-[0x8000032c]:csrrs t1, vxsat, zero
	-[0x80000330]:sw s1, 136(sp)
Current Store : [0x80000334] : sw t1, 140(sp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x16', 'rd : x26', 'rs2_h1_val == -9', 'rs1_h1_val == 1024', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000350]:KDMTT s10, t6, a6
	-[0x80000354]:csrrs t6, vxsat, zero
	-[0x80000358]:sw s10, 0(ra)
Current Store : [0x8000035c] : sw t6, 4(ra) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x31', 'rd : x20', 'rs2_h1_val == -5', 'rs2_h0_val == 21845', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x8000036c]:KDMTT s4, gp, t6
	-[0x80000370]:csrrs gp, vxsat, zero
	-[0x80000374]:sw s4, 8(ra)
Current Store : [0x80000378] : sw gp, 12(ra) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x2', 'rd : x25', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x8000038c]:KDMTT s9, tp, sp
	-[0x80000390]:csrrs tp, vxsat, zero
	-[0x80000394]:sw s9, 16(ra)
Current Store : [0x80000398] : sw tp, 20(ra) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x9', 'rd : x29', 'rs2_h1_val == -2']
Last Code Sequence : 
	-[0x800003ac]:KDMTT t4, s5, s1
	-[0x800003b0]:csrrs s5, vxsat, zero
	-[0x800003b4]:sw t4, 24(ra)
Current Store : [0x800003b8] : sw s5, 28(ra) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x17', 'rd : x16', 'rs2_h1_val == -32768', 'rs2_h0_val == 1024', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800003cc]:KDMTT a6, sp, a7
	-[0x800003d0]:csrrs sp, vxsat, zero
	-[0x800003d4]:sw a6, 32(ra)
Current Store : [0x800003d8] : sw sp, 36(ra) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x26', 'rd : x18', 'rs2_h1_val == 16384', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800003ec]:KDMTT s2, a1, s10
	-[0x800003f0]:csrrs a1, vxsat, zero
	-[0x800003f4]:sw s2, 40(ra)
Current Store : [0x800003f8] : sw a1, 44(ra) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x29', 'rd : x2', 'rs2_h1_val == 8192', 'rs2_h0_val == 1']
Last Code Sequence : 
	-[0x8000040c]:KDMTT sp, s3, t4
	-[0x80000410]:csrrs s3, vxsat, zero
	-[0x80000414]:sw sp, 48(ra)
Current Store : [0x80000418] : sw s3, 52(ra) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x30', 'rd : x12', 'rs2_h1_val == 4096', 'rs2_h0_val == -8193', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x8000042c]:KDMTT a2, a0, t5
	-[0x80000430]:csrrs a0, vxsat, zero
	-[0x80000434]:sw a2, 56(ra)
Current Store : [0x80000438] : sw a0, 60(ra) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x20', 'rd : x13', 'rs2_h1_val == 2048', 'rs2_h0_val == 4096', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000448]:KDMTT a3, a5, s4
	-[0x8000044c]:csrrs a5, vxsat, zero
	-[0x80000450]:sw a3, 64(ra)
Current Store : [0x80000454] : sw a5, 68(ra) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x13', 'rd : x4', 'rs2_h1_val == 512', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000468]:KDMTT tp, s8, a3
	-[0x8000046c]:csrrs s8, vxsat, zero
	-[0x80000470]:sw tp, 72(ra)
Current Store : [0x80000474] : sw s8, 76(ra) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x12', 'rd : x11', 'rs2_h1_val == 256', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000488]:KDMTT a1, s1, a2
	-[0x8000048c]:csrrs s1, vxsat, zero
	-[0x80000490]:sw a1, 80(ra)
Current Store : [0x80000494] : sw s1, 84(ra) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x21', 'rd : x15', 'rs2_h1_val == 128', 'rs2_h0_val == -1025', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800004a8]:KDMTT a5, s4, s5
	-[0x800004ac]:csrrs s4, vxsat, zero
	-[0x800004b0]:sw a5, 88(ra)
Current Store : [0x800004b4] : sw s4, 92(ra) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x3', 'rd : x8', 'rs2_h1_val == 32', 'rs2_h0_val == -33', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800004c8]:KDMTT fp, zero, gp
	-[0x800004cc]:csrrs zero, vxsat, zero
	-[0x800004d0]:sw fp, 96(ra)
Current Store : [0x800004d4] : sw zero, 100(ra) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x23', 'rd : x6', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004e8]:KDMTT t1, a3, s7
	-[0x800004ec]:csrrs a3, vxsat, zero
	-[0x800004f0]:sw t1, 104(ra)
Current Store : [0x800004f4] : sw a3, 108(ra) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000508]:KDMTT t6, t5, t4
	-[0x8000050c]:csrrs t5, vxsat, zero
	-[0x80000510]:sw t6, 112(ra)
Current Store : [0x80000514] : sw t5, 116(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == -3', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000528]:KDMTT t6, t5, t4
	-[0x8000052c]:csrrs t5, vxsat, zero
	-[0x80000530]:sw t6, 120(ra)
Current Store : [0x80000534] : sw t5, 124(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000548]:KDMTT t6, t5, t4
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 128(ra)
Current Store : [0x80000554] : sw t5, 132(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs1_h1_val == -1025', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000564]:KDMTT t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 136(ra)
Current Store : [0x80000570] : sw t5, 140(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == -513', 'rs1_h1_val == -2049', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000584]:KDMTT t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 144(ra)
Current Store : [0x80000590] : sw t5, 148(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800005a0]:KDMTT t6, t5, t4
	-[0x800005a4]:csrrs t5, vxsat, zero
	-[0x800005a8]:sw t6, 152(ra)
Current Store : [0x800005ac] : sw t5, 156(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800005bc]:KDMTT t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 160(ra)
Current Store : [0x800005c8] : sw t5, 164(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800005dc]:KDMTT t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 168(ra)
Current Store : [0x800005e8] : sw t5, 172(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800005fc]:KDMTT t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 176(ra)
Current Store : [0x80000608] : sw t5, 180(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000618]:KDMTT t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 184(ra)
Current Store : [0x80000624] : sw t5, 188(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000638]:KDMTT t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 192(ra)
Current Store : [0x80000644] : sw t5, 196(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000658]:KDMTT t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 200(ra)
Current Store : [0x80000664] : sw t5, 204(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -513', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000678]:KDMTT t6, t5, t4
	-[0x8000067c]:csrrs t5, vxsat, zero
	-[0x80000680]:sw t6, 208(ra)
Current Store : [0x80000684] : sw t5, 212(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs1_h1_val == 512', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000698]:KDMTT t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 216(ra)
Current Store : [0x800006a4] : sw t5, 220(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800006b4]:KDMTT t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 224(ra)
Current Store : [0x800006c0] : sw t5, 228(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800006d4]:KDMTT t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 232(ra)
Current Store : [0x800006e0] : sw t5, 236(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800006ec]:KDMTT t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 240(ra)
Current Store : [0x800006f8] : sw t5, 244(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x8000070c]:KDMTT t6, t5, t4
	-[0x80000710]:csrrs t5, vxsat, zero
	-[0x80000714]:sw t6, 248(ra)
Current Store : [0x80000718] : sw t5, 252(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x8000072c]:KDMTT t6, t5, t4
	-[0x80000730]:csrrs t5, vxsat, zero
	-[0x80000734]:sw t6, 256(ra)
Current Store : [0x80000738] : sw t5, 260(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000748]:KDMTT t6, t5, t4
	-[0x8000074c]:csrrs t5, vxsat, zero
	-[0x80000750]:sw t6, 264(ra)
Current Store : [0x80000754] : sw t5, 268(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['opcode : kdmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000764]:KDMTT t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 272(ra)
Current Store : [0x80000770] : sw t5, 276(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80000780]:KDMTT t6, t5, t4
	-[0x80000784]:csrrs t5, vxsat, zero
	-[0x80000788]:sw t6, 280(ra)
Current Store : [0x8000078c] : sw t5, 284(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -4097', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800007a0]:KDMTT t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 288(ra)
Current Store : [0x800007ac] : sw t5, 292(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800007c0]:KDMTT t6, t5, t4
	-[0x800007c4]:csrrs t5, vxsat, zero
	-[0x800007c8]:sw t6, 296(ra)
Current Store : [0x800007cc] : sw t5, 300(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800007dc]:KDMTT t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 304(ra)
Current Store : [0x800007e8] : sw t5, 308(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800007fc]:KDMTT t6, t5, t4
	-[0x80000800]:csrrs t5, vxsat, zero
	-[0x80000804]:sw t6, 312(ra)
Current Store : [0x80000808] : sw t5, 316(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x8000081c]:KDMTT t6, t5, t4
	-[0x80000820]:csrrs t5, vxsat, zero
	-[0x80000824]:sw t6, 320(ra)
Current Store : [0x80000828] : sw t5, 324(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x8000083c]:KDMTT t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 328(ra)
Current Store : [0x80000848] : sw t5, 332(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000858]:KDMTT t6, t5, t4
	-[0x8000085c]:csrrs t5, vxsat, zero
	-[0x80000860]:sw t6, 336(ra)
Current Store : [0x80000864] : sw t5, 340(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000878]:KDMTT t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 344(ra)
Current Store : [0x80000884] : sw t5, 348(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x80000898]:KDMTT t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 352(ra)
Current Store : [0x800008a4] : sw t5, 356(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['opcode : kdmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs2_h0_val == -16385', 'rs1_h1_val == 2048', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800008b8]:KDMTT t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 360(ra)
Current Store : [0x800008c4] : sw t5, 364(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800008d8]:KDMTT t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 368(ra)
Current Store : [0x800008e4] : sw t5, 372(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800008f8]:KDMTT t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 376(ra)
Current Store : [0x80000904] : sw t5, 380(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000918]:KDMTT t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 384(ra)
Current Store : [0x80000924] : sw t5, 388(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000938]:KDMTT t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 392(ra)
Current Store : [0x80000944] : sw t5, 396(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000958]:KDMTT t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 400(ra)
Current Store : [0x80000964] : sw t5, 404(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000978]:KDMTT t6, t5, t4
	-[0x8000097c]:csrrs t5, vxsat, zero
	-[0x80000980]:sw t6, 408(ra)
Current Store : [0x80000984] : sw t5, 412(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000998]:KDMTT t6, t5, t4
	-[0x8000099c]:csrrs t5, vxsat, zero
	-[0x800009a0]:sw t6, 416(ra)
Current Store : [0x800009a4] : sw t5, 420(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800009b4]:KDMTT t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 424(ra)
Current Store : [0x800009c0] : sw t5, 428(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x800009d0]:KDMTT t6, t5, t4
	-[0x800009d4]:csrrs t5, vxsat, zero
	-[0x800009d8]:sw t6, 432(ra)
Current Store : [0x800009dc] : sw t5, 436(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['opcode : kdmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -1', 'rs2_h0_val == 8', 'rs1_h1_val == -1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800009f0]:KDMTT t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 440(ra)
Current Store : [0x800009fc] : sw t5, 444(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['opcode : kdmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 16', 'rs1_h1_val == 16384', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000a10]:KDMTT t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 448(ra)
Current Store : [0x80000a1c] : sw t5, 452(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['opcode : kdmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -2049', 'rs2_h0_val == 16', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000a30]:KDMTT t6, t5, t4
	-[0x80000a34]:csrrs t5, vxsat, zero
	-[0x80000a38]:sw t6, 456(ra)
Current Store : [0x80000a3c] : sw t5, 460(ra) -- Store: [0x8000246c]:0x00000000





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

|s.no|        signature         |                                                                                                                                       coverpoints                                                                                                                                       |                                                    code                                                    |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kdmtt<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -17<br> - rs1_h0_val == -17<br> |[0x80000118]:KDMTT s6, s6, s6<br> [0x8000011c]:csrrs s6, vxsat, zero<br> [0x80000120]:sw s6, 0(sp)<br>      |
|   2|[0x80002218]<br>0x00000002|- rs1 : x8<br> - rs2 : x8<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1<br> - rs2_h0_val == 8<br> - rs1_h1_val == -1<br> - rs1_h0_val == 8<br>                                             |[0x80000138]:KDMTT ra, fp, fp<br> [0x8000013c]:csrrs fp, vxsat, zero<br> [0x80000140]:sw ra, 8(sp)<br>      |
|   3|[0x80002220]<br>0xF5554000|- rs1 : x16<br> - rs2 : x25<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -9<br> - rs1_h1_val == 4096<br>            |[0x80000158]:KDMTT a4, a6, s9<br> [0x8000015c]:csrrs a6, vxsat, zero<br> [0x80000160]:sw a4, 16(sp)<br>     |
|   4|[0x80002228]<br>0x00000400|- rs1 : x7<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs2_h1_val == 64<br> - rs1_h1_val == 8<br>                                                                                                                                                                          |[0x80000178]:KDMTT t0, t2, t0<br> [0x8000017c]:csrrs t2, vxsat, zero<br> [0x80000180]:sw t0, 24(sp)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x30<br> - rs2 : x19<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -3<br> - rs1_h1_val == 1<br> - rs1_h0_val == -3<br>                                                                                                                     |[0x80000198]:KDMTT t5, t5, s3<br> [0x8000019c]:csrrs t5, vxsat, zero<br> [0x800001a0]:sw t5, 32(sp)<br>     |
|   6|[0x80002238]<br>0x00082082|- rs1 : x1<br> - rs2 : x6<br> - rd : x19<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -5<br> - rs1_h1_val == -65<br> - rs1_h0_val == 8192<br>                                                                                                   |[0x800001b4]:KDMTT s3, ra, t1<br> [0x800001b8]:csrrs ra, vxsat, zero<br> [0x800001bc]:sw s3, 40(sp)<br>     |
|   7|[0x80002240]<br>0x00040000|- rs1 : x12<br> - rs2 : x24<br> - rd : x27<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 4<br> - rs1_h1_val == 128<br>                                                                                                                                                                    |[0x800001d4]:KDMTT s11, a2, s8<br> [0x800001d8]:csrrs a2, vxsat, zero<br> [0x800001dc]:sw s11, 48(sp)<br>   |
|   8|[0x80002248]<br>0x00000000|- rs1 : x25<br> - rs2 : x0<br> - rd : x23<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -4097<br>                                                                                                                                            |[0x800001f4]:KDMTT s7, s9, zero<br> [0x800001f8]:csrrs s9, vxsat, zero<br> [0x800001fc]:sw s7, 56(sp)<br>   |
|   9|[0x80002250]<br>0xDFFF4002|- rs1 : x29<br> - rs2 : x28<br> - rd : x3<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -129<br> - rs1_h1_val == -8193<br>                                                                                                                       |[0x80000214]:KDMTT gp, t4, t3<br> [0x80000218]:csrrs t4, vxsat, zero<br> [0x8000021c]:sw gp, 64(sp)<br>     |
|  10|[0x80002258]<br>0x00020010|- rs1 : x23<br> - rs2 : x1<br> - rd : x31<br> - rs2_h1_val == -8193<br> - rs1_h0_val == 4<br>                                                                                                                                                                                            |[0x80000234]:KDMTT t6, s7, ra<br> [0x80000238]:csrrs s7, vxsat, zero<br> [0x8000023c]:sw t6, 72(sp)<br>     |
|  11|[0x80002260]<br>0x00000000|- rs1 : x17<br> - rs2 : x4<br> - rd : x0<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 16<br> - rs1_h0_val == 1<br>                                                                                                                                                                      |[0x80000254]:KDMTT zero, a7, tp<br> [0x80000258]:csrrs a7, vxsat, zero<br> [0x8000025c]:sw zero, 80(sp)<br> |
|  12|[0x80002268]<br>0x0000380E|- rs1 : x5<br> - rs2 : x7<br> - rd : x24<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 128<br> - rs1_h0_val == -8193<br>                                                                                                                         |[0x80000274]:KDMTT s8, t0, t2<br> [0x80000278]:csrrs t0, vxsat, zero<br> [0x8000027c]:sw s8, 88(sp)<br>     |
|  13|[0x80002270]<br>0xFFBFE000|- rs1 : x26<br> - rs2 : x10<br> - rd : x28<br> - rs2_h1_val == -513<br> - rs2_h0_val == 16384<br> - rs1_h0_val == -33<br>                                                                                                                                                                |[0x80000290]:KDMTT t3, s10, a0<br> [0x80000294]:csrrs s10, vxsat, zero<br> [0x80000298]:sw t3, 96(sp)<br>   |
|  14|[0x80002278]<br>0x00000808|- rs1 : x14<br> - rs2 : x11<br> - rd : x7<br> - rs2_h1_val == -257<br> - rs2_h0_val == 2<br> - rs1_h0_val == -16385<br>                                                                                                                                                                  |[0x800002b0]:KDMTT t2, a4, a1<br> [0x800002b4]:csrrs a4, vxsat, zero<br> [0x800002b8]:sw t2, 104(sp)<br>    |
|  15|[0x80002280]<br>0xFFFEFE00|- rs1 : x28<br> - rs2 : x27<br> - rd : x10<br> - rs2_h1_val == -129<br> - rs1_h1_val == 256<br> - rs1_h0_val == 16<br>                                                                                                                                                                   |[0x800002d0]:KDMTT a0, t3, s11<br> [0x800002d4]:csrrs t3, vxsat, zero<br> [0x800002d8]:sw a0, 112(sp)<br>   |
|  16|[0x80002288]<br>0x002B55AC|- rs1 : x27<br> - rs2 : x18<br> - rd : x17<br> - rs2_h1_val == -65<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -2049<br>                                                                                                                                                              |[0x800002ec]:KDMTT a7, s11, s2<br> [0x800002f0]:csrrs s11, vxsat, zero<br> [0x800002f4]:sw a7, 120(sp)<br>  |
|  17|[0x80002290]<br>0xFFFFFDAE|- rs1 : x18<br> - rs2 : x14<br> - rd : x21<br> - rs2_h1_val == -33<br> - rs2_h0_val == -257<br>                                                                                                                                                                                          |[0x8000030c]:KDMTT s5, s2, a4<br> [0x80000310]:csrrs s2, vxsat, zero<br> [0x80000314]:sw s5, 128(sp)<br>    |
|  18|[0x80002298]<br>0x00000088|- rs1 : x6<br> - rs2 : x15<br> - rd : x9<br> - rs2_h1_val == -17<br> - rs2_h0_val == -32768<br>                                                                                                                                                                                          |[0x80000328]:KDMTT s1, t1, a5<br> [0x8000032c]:csrrs t1, vxsat, zero<br> [0x80000330]:sw s1, 136(sp)<br>    |
|  19|[0x800022a0]<br>0xFFFFB800|- rs1 : x31<br> - rs2 : x16<br> - rd : x26<br> - rs2_h1_val == -9<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -1025<br>                                                                                                                                                                 |[0x80000350]:KDMTT s10, t6, a6<br> [0x80000354]:csrrs t6, vxsat, zero<br> [0x80000358]:sw s10, 0(ra)<br>    |
|  20|[0x800022a8]<br>0x0000014A|- rs1 : x3<br> - rs2 : x31<br> - rd : x20<br> - rs2_h1_val == -5<br> - rs2_h0_val == 21845<br> - rs1_h1_val == -33<br>                                                                                                                                                                   |[0x8000036c]:KDMTT s4, gp, t6<br> [0x80000370]:csrrs gp, vxsat, zero<br> [0x80000374]:sw s4, 8(ra)<br>      |
|  21|[0x800022b0]<br>0x00000006|- rs1 : x4<br> - rs2 : x2<br> - rd : x25<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                      |[0x8000038c]:KDMTT s9, tp, sp<br> [0x80000390]:csrrs tp, vxsat, zero<br> [0x80000394]:sw s9, 16(ra)<br>     |
|  22|[0x800022b8]<br>0xFFFFFFF4|- rs1 : x21<br> - rs2 : x9<br> - rd : x29<br> - rs2_h1_val == -2<br>                                                                                                                                                                                                                     |[0x800003ac]:KDMTT t4, s5, s1<br> [0x800003b0]:csrrs s5, vxsat, zero<br> [0x800003b4]:sw t4, 24(ra)<br>     |
|  23|[0x800022c0]<br>0x40000000|- rs1 : x2<br> - rs2 : x17<br> - rd : x16<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 1024<br> - rs1_h0_val == -513<br>                                                                                                                                                               |[0x800003cc]:KDMTT a6, sp, a7<br> [0x800003d0]:csrrs sp, vxsat, zero<br> [0x800003d4]:sw a6, 32(ra)<br>     |
|  24|[0x800022c8]<br>0x3FFF8000|- rs1 : x11<br> - rs2 : x26<br> - rd : x18<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                       |[0x800003ec]:KDMTT s2, a1, s10<br> [0x800003f0]:csrrs a1, vxsat, zero<br> [0x800003f4]:sw s2, 40(ra)<br>    |
|  25|[0x800022d0]<br>0x1FFFC000|- rs1 : x19<br> - rs2 : x29<br> - rd : x2<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 1<br>                                                                                                                                                                                             |[0x8000040c]:KDMTT sp, s3, t4<br> [0x80000410]:csrrs s3, vxsat, zero<br> [0x80000414]:sw sp, 48(ra)<br>     |
|  26|[0x800022d8]<br>0x00080000|- rs1 : x10<br> - rs2 : x30<br> - rd : x12<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -8193<br> - rs1_h1_val == 64<br>                                                                                                                                                                 |[0x8000042c]:KDMTT a2, a0, t5<br> [0x80000430]:csrrs a0, vxsat, zero<br> [0x80000434]:sw a2, 56(ra)<br>     |
|  27|[0x800022e0]<br>0x00400000|- rs1 : x15<br> - rs2 : x20<br> - rd : x13<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 21845<br>                                                                                                                                                               |[0x80000448]:KDMTT a3, a5, s4<br> [0x8000044c]:csrrs a5, vxsat, zero<br> [0x80000450]:sw a3, 64(ra)<br>     |
|  28|[0x800022e8]<br>0x00010000|- rs1 : x24<br> - rs2 : x13<br> - rd : x4<br> - rs2_h1_val == 512<br> - rs2_h0_val == 32<br>                                                                                                                                                                                             |[0x80000468]:KDMTT tp, s8, a3<br> [0x8000046c]:csrrs s8, vxsat, zero<br> [0x80000470]:sw tp, 72(ra)<br>     |
|  29|[0x800022f0]<br>0xFF7FFE00|- rs1 : x9<br> - rs2 : x12<br> - rd : x11<br> - rs2_h1_val == 256<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                         |[0x80000488]:KDMTT a1, s1, a2<br> [0x8000048c]:csrrs s1, vxsat, zero<br> [0x80000490]:sw a1, 80(ra)<br>     |
|  30|[0x800022f8]<br>0xFFFF7F00|- rs1 : x20<br> - rs2 : x21<br> - rd : x15<br> - rs2_h1_val == 128<br> - rs2_h0_val == -1025<br> - rs1_h1_val == -129<br>                                                                                                                                                                |[0x800004a8]:KDMTT a5, s4, s5<br> [0x800004ac]:csrrs s4, vxsat, zero<br> [0x800004b0]:sw a5, 88(ra)<br>     |
|  31|[0x80002300]<br>0x00000000|- rs1 : x0<br> - rs2 : x3<br> - rd : x8<br> - rs2_h1_val == 32<br> - rs2_h0_val == -33<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                   |[0x800004c8]:KDMTT fp, zero, gp<br> [0x800004cc]:csrrs zero, vxsat, zero<br> [0x800004d0]:sw fp, 96(ra)<br> |
|  32|[0x80002308]<br>0x0000007E|- rs1 : x13<br> - rs2 : x23<br> - rd : x6<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                   |[0x800004e8]:KDMTT t1, a3, s7<br> [0x800004ec]:csrrs a3, vxsat, zero<br> [0x800004f0]:sw t1, 104(ra)<br>    |
|  33|[0x80002310]<br>0xFFFCFFF4|- rs2_h0_val == 64<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                          |[0x80000508]:KDMTT t6, t5, t4<br> [0x8000050c]:csrrs t5, vxsat, zero<br> [0x80000510]:sw t6, 112(ra)<br>    |
|  34|[0x80002318]<br>0x00000018|- rs2_h0_val == -21846<br> - rs1_h1_val == -3<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                |[0x80000528]:KDMTT t6, t5, t4<br> [0x8000052c]:csrrs t5, vxsat, zero<br> [0x80000530]:sw t6, 120(ra)<br>    |
|  35|[0x80002320]<br>0x00000000|- rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                   |[0x80000548]:KDMTT t6, t5, t4<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 128(ra)<br>    |
|  36|[0x80002328]<br>0x00010842|- rs1_h1_val == -1025<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                         |[0x80000564]:KDMTT t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 136(ra)<br>    |
|  37|[0x80002330]<br>0xFFFEFFE0|- rs2_h1_val == 16<br> - rs2_h0_val == -513<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -2<br>                                                                                                                                                                                         |[0x80000584]:KDMTT t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 144(ra)<br>    |
|  38|[0x80002338]<br>0x00000410|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                |[0x800005a0]:KDMTT t6, t5, t4<br> [0x800005a4]:csrrs t5, vxsat, zero<br> [0x800005a8]:sw t6, 152(ra)<br>    |
|  39|[0x80002340]<br>0xFF000000|- rs1_h1_val == -32768<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                      |[0x800005bc]:KDMTT t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 160(ra)<br>    |
|  40|[0x80002348]<br>0xFFFFFFF8|- rs2_h1_val == 1<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                           |[0x800005dc]:KDMTT t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 168(ra)<br>    |
|  41|[0x80002350]<br>0xFFFFFF4C|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                 |[0x800005fc]:KDMTT t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 176(ra)<br>    |
|  42|[0x80002358]<br>0x00000000|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                  |[0x80000618]:KDMTT t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 184(ra)<br>    |
|  43|[0x80002360]<br>0xFFFB0000|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                  |[0x80000638]:KDMTT t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 192(ra)<br>    |
|  44|[0x80002368]<br>0x00000030|- rs2_h1_val == 8<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                            |[0x80000658]:KDMTT t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 200(ra)<br>    |
|  45|[0x80002370]<br>0xFDFF0402|- rs1_h1_val == -513<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                          |[0x80000678]:KDMTT t6, t5, t4<br> [0x8000067c]:csrrs t5, vxsat, zero<br> [0x80000680]:sw t6, 208(ra)<br>    |
|  46|[0x80002378]<br>0x00000C00|- rs1_h1_val == 512<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                            |[0x80000698]:KDMTT t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 216(ra)<br>    |
|  47|[0x80002380]<br>0xFFFEAAAC|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                |[0x800006b4]:KDMTT t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 224(ra)<br>    |
|  48|[0x80002388]<br>0xFFFFEFFE|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                   |[0x800006d4]:KDMTT t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 232(ra)<br>    |
|  49|[0x80002390]<br>0x00AB56AC|- rs2_h0_val == 8192<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                        |[0x800006ec]:KDMTT t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 240(ra)<br>    |
|  50|[0x80002398]<br>0xFFFFA000|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                 |[0x8000070c]:KDMTT t6, t5, t4<br> [0x80000710]:csrrs t5, vxsat, zero<br> [0x80000714]:sw t6, 248(ra)<br>    |
|  51|[0x800023a0]<br>0xFFFFFB6E|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                  |[0x8000072c]:KDMTT t6, t5, t4<br> [0x80000730]:csrrs t5, vxsat, zero<br> [0x80000734]:sw t6, 256(ra)<br>    |
|  52|[0x800023a8]<br>0x00000000|- rs2_h1_val == 4<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                            |[0x80000748]:KDMTT t6, t5, t4<br> [0x8000074c]:csrrs t5, vxsat, zero<br> [0x80000750]:sw t6, 264(ra)<br>    |
|  53|[0x800023b8]<br>0xFFFEFE00|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                   |[0x80000780]:KDMTT t6, t5, t4<br> [0x80000784]:csrrs t5, vxsat, zero<br> [0x80000788]:sw t6, 280(ra)<br>    |
|  54|[0x800023c0]<br>0xFFBFFC00|- rs1_h1_val == -4097<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                      |[0x800007a0]:KDMTT t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 288(ra)<br>    |
|  55|[0x800023c8]<br>0x00006000|- rs2_h0_val == -65<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                           |[0x800007c0]:KDMTT t6, t5, t4<br> [0x800007c4]:csrrs t5, vxsat, zero<br> [0x800007c8]:sw t6, 296(ra)<br>    |
|  56|[0x800023d0]<br>0x000000CC|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                  |[0x800007dc]:KDMTT t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 304(ra)<br>    |
|  57|[0x800023d8]<br>0xFFFB8000|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                   |[0x800007fc]:KDMTT t6, t5, t4<br> [0x80000800]:csrrs t5, vxsat, zero<br> [0x80000804]:sw t6, 312(ra)<br>    |
|  58|[0x800023e0]<br>0xFFFCAAAE|- rs2_h1_val == 21845<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                         |[0x8000081c]:KDMTT t6, t5, t4<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sw t6, 320(ra)<br>    |
|  59|[0x800023e8]<br>0xFFFFFFFC|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                   |[0x8000083c]:KDMTT t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 328(ra)<br>    |
|  60|[0x800023f0]<br>0x00080000|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                 |[0x80000858]:KDMTT t6, t5, t4<br> [0x8000085c]:csrrs t5, vxsat, zero<br> [0x80000860]:sw t6, 336(ra)<br>    |
|  61|[0x800023f8]<br>0xFEFFF000|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                 |[0x80000878]:KDMTT t6, t5, t4<br> [0x8000087c]:csrrs t5, vxsat, zero<br> [0x80000880]:sw t6, 344(ra)<br>    |
|  62|[0x80002400]<br>0x00000024|- rs2_h1_val == 2<br> - rs2_h0_val == -16385<br>                                                                                                                                                                                                                                         |[0x80000898]:KDMTT t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 352(ra)<br>    |
|  63|[0x80002410]<br>0x00000080|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                   |[0x800008d8]:KDMTT t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 368(ra)<br>    |
|  64|[0x80002418]<br>0xFFFFFDE0|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                   |[0x800008f8]:KDMTT t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 376(ra)<br>    |
|  65|[0x80002420]<br>0xFFFDC000|- rs2_h0_val == 32767<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                         |[0x80000918]:KDMTT t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 384(ra)<br>    |
|  66|[0x80002428]<br>0xFFFDFFF8|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                    |[0x80000938]:KDMTT t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 392(ra)<br>    |
|  67|[0x80002430]<br>0x000AAAA0|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                               |[0x80000958]:KDMTT t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 400(ra)<br>    |
|  68|[0x80002438]<br>0xFFFFFDFC|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                    |[0x80000978]:KDMTT t6, t5, t4<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sw t6, 408(ra)<br>    |
|  69|[0x80002440]<br>0x00000008|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                |[0x80000998]:KDMTT t6, t5, t4<br> [0x8000099c]:csrrs t5, vxsat, zero<br> [0x800009a0]:sw t6, 416(ra)<br>    |
|  70|[0x80002448]<br>0xFFFFFB80|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                |[0x800009b4]:KDMTT t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 424(ra)<br>    |
|  71|[0x80002450]<br>0xFFFFFFB8|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                               |[0x800009d0]:KDMTT t6, t5, t4<br> [0x800009d4]:csrrs t5, vxsat, zero<br> [0x800009d8]:sw t6, 432(ra)<br>    |
