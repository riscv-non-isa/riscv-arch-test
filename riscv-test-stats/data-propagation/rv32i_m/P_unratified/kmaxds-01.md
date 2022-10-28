
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a60')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | kmaxds      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmaxds-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 154      |
| STAT1                     | 72      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 77     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ec]:KMAXDS t6, t5, t4
      [0x800005f0]:csrrs t5, vxsat, zero
      [0x800005f4]:sw t6, 184(sp)
 -- Signature Address: 0x80002350 Data: 0x03817358
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 2048
      - rs2_h0_val == 2
      - rs1_h1_val == 16
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000744]:KMAXDS t6, t5, t4
      [0x80000748]:csrrs t5, vxsat, zero
      [0x8000074c]:sw t6, 272(sp)
 -- Signature Address: 0x800023a8 Data: 0x189ABD21
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 8
      - rs2_h0_val == 0
      - rs1_h1_val == 8192
      - rs1_h0_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009e8]:KMAXDS t6, t5, t4
      [0x800009ec]:csrrs t5, vxsat, zero
      [0x800009f0]:sw t6, 448(sp)
 -- Signature Address: 0x80002458 Data: 0xF58862AF
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -21846
      - rs2_h0_val == -2
      - rs1_h1_val == -21846




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a08]:KMAXDS t6, t5, t4
      [0x80000a0c]:csrrs t5, vxsat, zero
      [0x80000a10]:sw t6, 456(sp)
 -- Signature Address: 0x80002460 Data: 0xF587405E
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -17
      - rs2_h0_val == 64
      - rs1_h1_val == -1025
      - rs1_h0_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a48]:KMAXDS t6, t5, t4
      [0x80000a4c]:csrrs t5, vxsat, zero
      [0x80000a50]:sw t6, 472(sp)
 -- Signature Address: 0x80002470 Data: 0xF5A652DB
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs1_h1_val == 8192
      - rs1_h0_val == -129






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmaxds', 'rs1 : x2', 'rs2 : x2', 'rd : x2', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 8192', 'rs2_h0_val == 2048', 'rs1_h1_val == 8192', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000118]:KMAXDS sp, sp, sp
	-[0x8000011c]:csrrs sp, vxsat, zero
	-[0x80000120]:sw sp, 0(ra)
Current Store : [0x80000124] : sw sp, 4(ra) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x5', 'rd : x26', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == -2', 'rs1_h1_val == -21846', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000138]:KMAXDS s10, t0, t0
	-[0x8000013c]:csrrs t0, vxsat, zero
	-[0x80000140]:sw s10, 8(ra)
Current Store : [0x80000144] : sw t0, 12(ra) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -1', 'rs2_h0_val == 32', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000158]:KMAXDS s8, s6, s11
	-[0x8000015c]:csrrs s6, vxsat, zero
	-[0x80000160]:sw s8, 16(ra)
Current Store : [0x80000164] : sw s6, 20(ra) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x11', 'rd : x11', 'rs2 == rd != rs1', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h0_val == 4096', 'rs1_h1_val == 21845', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000174]:KMAXDS a1, fp, a1
	-[0x80000178]:csrrs fp, vxsat, zero
	-[0x8000017c]:sw a1, 24(ra)
Current Store : [0x80000180] : sw fp, 28(ra) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x31', 'rd : x29', 'rs1 == rd != rs2', 'rs2_h1_val == -65', 'rs2_h0_val == 4', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000194]:KMAXDS t4, t4, t6
	-[0x80000198]:csrrs t4, vxsat, zero
	-[0x8000019c]:sw t4, 32(ra)
Current Store : [0x800001a0] : sw t4, 36(ra) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x22', 'rd : x25', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h1_val == 16', 'rs2_h0_val == -65', 'rs1_h1_val == -1025', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800001b4]:KMAXDS s9, a5, s6
	-[0x800001b8]:csrrs a5, vxsat, zero
	-[0x800001bc]:sw s9, 40(ra)
Current Store : [0x800001c0] : sw a5, 44(ra) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x26', 'rd : x12', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 21845', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800001d4]:KMAXDS a2, t3, s10
	-[0x800001d8]:csrrs t3, vxsat, zero
	-[0x800001dc]:sw a2, 48(ra)
Current Store : [0x800001e0] : sw t3, 52(ra) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x14', 'rd : x15', 'rs2_h1_val == 32767', 'rs2_h0_val == 21845', 'rs1_h1_val == 0', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800001f0]:KMAXDS a5, s11, a4
	-[0x800001f4]:csrrs s11, vxsat, zero
	-[0x800001f8]:sw a5, 56(ra)
Current Store : [0x800001fc] : sw s11, 60(ra) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x25', 'rd : x8', 'rs2_h1_val == -16385', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000210]:KMAXDS fp, a3, s9
	-[0x80000214]:csrrs a3, vxsat, zero
	-[0x80000218]:sw fp, 64(ra)
Current Store : [0x8000021c] : sw a3, 68(ra) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x28', 'rs2_h1_val == -8193', 'rs2_h0_val == 2', 'rs1_h1_val == 512', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000230]:KMAXDS t3, s3, a0
	-[0x80000234]:csrrs s3, vxsat, zero
	-[0x80000238]:sw t3, 72(ra)
Current Store : [0x8000023c] : sw s3, 76(ra) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x13', 'rs2_h1_val == -4097', 'rs2_h0_val == -1', 'rs1_h1_val == 16', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000250]:KMAXDS a3, a7, s4
	-[0x80000254]:csrrs a7, vxsat, zero
	-[0x80000258]:sw a3, 80(ra)
Current Store : [0x8000025c] : sw a7, 84(ra) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x9', 'rd : x4', 'rs2_h1_val == -2049', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000270]:KMAXDS tp, t5, s1
	-[0x80000274]:csrrs t5, vxsat, zero
	-[0x80000278]:sw tp, 88(ra)
Current Store : [0x8000027c] : sw t5, 92(ra) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x13', 'rd : x22', 'rs2_h1_val == -1025', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000290]:KMAXDS s6, a0, a3
	-[0x80000294]:csrrs a0, vxsat, zero
	-[0x80000298]:sw s6, 96(ra)
Current Store : [0x8000029c] : sw a0, 100(ra) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x7', 'rd : x30', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x800002b0]:KMAXDS t5, a6, t2
	-[0x800002b4]:csrrs a6, vxsat, zero
	-[0x800002b8]:sw t5, 104(ra)
Current Store : [0x800002bc] : sw a6, 108(ra) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x6', 'rd : x31', 'rs2_h1_val == -257', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800002d0]:KMAXDS t6, s8, t1
	-[0x800002d4]:csrrs s8, vxsat, zero
	-[0x800002d8]:sw t6, 112(ra)
Current Store : [0x800002dc] : sw s8, 116(ra) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x30', 'rd : x7', 'rs2_h1_val == -129', 'rs1_h1_val == -2', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800002ec]:KMAXDS t2, a1, t5
	-[0x800002f0]:csrrs a1, vxsat, zero
	-[0x800002f4]:sw t2, 120(ra)
Current Store : [0x800002f8] : sw a1, 124(ra) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x15', 'rd : x20', 'rs2_h1_val == -33', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x8000030c]:KMAXDS s4, gp, a5
	-[0x80000310]:csrrs gp, vxsat, zero
	-[0x80000314]:sw s4, 128(ra)
Current Store : [0x80000318] : sw gp, 132(ra) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x12', 'rd : x21', 'rs2_h1_val == -17', 'rs2_h0_val == 64', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000334]:KMAXDS s5, zero, a2
	-[0x80000338]:csrrs zero, vxsat, zero
	-[0x8000033c]:sw s5, 0(sp)
Current Store : [0x80000340] : sw zero, 4(sp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x24', 'rd : x1', 'rs2_h1_val == -9', 'rs2_h0_val == -5', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000354]:KMAXDS ra, t6, s8
	-[0x80000358]:csrrs t6, vxsat, zero
	-[0x8000035c]:sw ra, 8(sp)
Current Store : [0x80000360] : sw t6, 12(sp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x29', 'rd : x5', 'rs2_h1_val == -5', 'rs2_h0_val == 8192', 'rs1_h1_val == -1', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x8000036c]:KMAXDS t0, t1, t4
	-[0x80000370]:csrrs t1, vxsat, zero
	-[0x80000374]:sw t0, 16(sp)
Current Store : [0x80000378] : sw t1, 20(sp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x3', 'rs2_h1_val == -3', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x8000038c]:KMAXDS gp, s10, s2
	-[0x80000390]:csrrs s10, vxsat, zero
	-[0x80000394]:sw gp, 24(sp)
Current Store : [0x80000398] : sw s10, 28(sp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x3', 'rd : x9', 'rs2_h1_val == -2', 'rs1_h1_val == -33', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800003a8]:KMAXDS s1, s4, gp
	-[0x800003ac]:csrrs s4, vxsat, zero
	-[0x800003b0]:sw s1, 32(sp)
Current Store : [0x800003b4] : sw s4, 36(sp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x19', 'rd : x27', 'rs2_h1_val == -32768', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800003c8]:KMAXDS s11, t2, s3
	-[0x800003cc]:csrrs t2, vxsat, zero
	-[0x800003d0]:sw s11, 40(sp)
Current Store : [0x800003d4] : sw t2, 44(sp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x28', 'rd : x6', 'rs2_h1_val == 16384', 'rs2_h0_val == 128', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800003e8]:KMAXDS t1, tp, t3
	-[0x800003ec]:csrrs tp, vxsat, zero
	-[0x800003f0]:sw t1, 48(sp)
Current Store : [0x800003f4] : sw tp, 52(sp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x0', 'rd : x23', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000408]:KMAXDS s7, ra, zero
	-[0x8000040c]:csrrs ra, vxsat, zero
	-[0x80000410]:sw s7, 56(sp)
Current Store : [0x80000414] : sw ra, 60(sp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x19', 'rs2_h1_val == 2048', 'rs1_h1_val == -4097', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000428]:KMAXDS s3, s9, tp
	-[0x8000042c]:csrrs s9, vxsat, zero
	-[0x80000430]:sw s3, 64(sp)
Current Store : [0x80000434] : sw s9, 68(sp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x1', 'rd : x10', 'rs2_h1_val == 1024', 'rs1_h1_val == 16384', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000448]:KMAXDS a0, s1, ra
	-[0x8000044c]:csrrs s1, vxsat, zero
	-[0x80000450]:sw a0, 72(sp)
Current Store : [0x80000454] : sw s1, 76(sp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x16', 'rd : x17', 'rs2_h1_val == 512', 'rs2_h0_val == -8193', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000464]:KMAXDS a7, s2, a6
	-[0x80000468]:csrrs s2, vxsat, zero
	-[0x8000046c]:sw a7, 80(sp)
Current Store : [0x80000470] : sw s2, 84(sp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x21', 'rd : x14', 'rs2_h1_val == 256']
Last Code Sequence : 
	-[0x80000484]:KMAXDS a4, a2, s5
	-[0x80000488]:csrrs a2, vxsat, zero
	-[0x8000048c]:sw a4, 88(sp)
Current Store : [0x80000490] : sw a2, 92(sp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x8', 'rd : x18', 'rs2_h1_val == 32', 'rs2_h0_val == -32768', 'rs1_h1_val == -17', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004a0]:KMAXDS s2, s7, fp
	-[0x800004a4]:csrrs s7, vxsat, zero
	-[0x800004a8]:sw s2, 96(sp)
Current Store : [0x800004ac] : sw s7, 100(sp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x23', 'rd : x0', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004c0]:KMAXDS zero, a4, s7
	-[0x800004c4]:csrrs a4, vxsat, zero
	-[0x800004c8]:sw zero, 104(sp)
Current Store : [0x800004cc] : sw a4, 108(sp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x17', 'rd : x16', 'rs2_h1_val == 4', 'rs2_h0_val == 512', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800004e0]:KMAXDS a6, s5, a7
	-[0x800004e4]:csrrs s5, vxsat, zero
	-[0x800004e8]:sw a6, 112(sp)
Current Store : [0x800004ec] : sw s5, 116(sp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800004fc]:KMAXDS t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 120(sp)
Current Store : [0x80000508] : sw t5, 124(sp) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h1_val == -8193', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000051c]:KMAXDS t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 128(sp)
Current Store : [0x80000528] : sw t5, 132(sp) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000538]:KMAXDS t6, t5, t4
	-[0x8000053c]:csrrs t5, vxsat, zero
	-[0x80000540]:sw t6, 136(sp)
Current Store : [0x80000544] : sw t5, 140(sp) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000554]:KMAXDS t6, t5, t4
	-[0x80000558]:csrrs t5, vxsat, zero
	-[0x8000055c]:sw t6, 144(sp)
Current Store : [0x80000560] : sw t5, 148(sp) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000574]:KMAXDS t6, t5, t4
	-[0x80000578]:csrrs t5, vxsat, zero
	-[0x8000057c]:sw t6, 152(sp)
Current Store : [0x80000580] : sw t5, 156(sp) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_h1_val == -16385', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000590]:KMAXDS t6, t5, t4
	-[0x80000594]:csrrs t5, vxsat, zero
	-[0x80000598]:sw t6, 160(sp)
Current Store : [0x8000059c] : sw t5, 164(sp) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005b0]:KMAXDS t6, t5, t4
	-[0x800005b4]:csrrs t5, vxsat, zero
	-[0x800005b8]:sw t6, 168(sp)
Current Store : [0x800005bc] : sw t5, 172(sp) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005d0]:KMAXDS t6, t5, t4
	-[0x800005d4]:csrrs t5, vxsat, zero
	-[0x800005d8]:sw t6, 176(sp)
Current Store : [0x800005dc] : sw t5, 180(sp) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['opcode : kmaxds', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 2048', 'rs2_h0_val == 2', 'rs1_h1_val == 16', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800005ec]:KMAXDS t6, t5, t4
	-[0x800005f0]:csrrs t5, vxsat, zero
	-[0x800005f4]:sw t6, 184(sp)
Current Store : [0x800005f8] : sw t5, 188(sp) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_h1_val == -513', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x8000060c]:KMAXDS t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 192(sp)
Current Store : [0x80000618] : sw t5, 196(sp) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x8000062c]:KMAXDS t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 200(sp)
Current Store : [0x80000638] : sw t5, 204(sp) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x8000064c]:KMAXDS t6, t5, t4
	-[0x80000650]:csrrs t5, vxsat, zero
	-[0x80000654]:sw t6, 208(sp)
Current Store : [0x80000658] : sw t5, 212(sp) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x8000066c]:KMAXDS t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 216(sp)
Current Store : [0x80000678] : sw t5, 220(sp) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x8000068c]:KMAXDS t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 224(sp)
Current Store : [0x80000698] : sw t5, 228(sp) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800006a8]:KMAXDS t6, t5, t4
	-[0x800006ac]:csrrs t5, vxsat, zero
	-[0x800006b0]:sw t6, 232(sp)
Current Store : [0x800006b4] : sw t5, 236(sp) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800006c8]:KMAXDS t6, t5, t4
	-[0x800006cc]:csrrs t5, vxsat, zero
	-[0x800006d0]:sw t6, 240(sp)
Current Store : [0x800006d4] : sw t5, 244(sp) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800006e8]:KMAXDS t6, t5, t4
	-[0x800006ec]:csrrs t5, vxsat, zero
	-[0x800006f0]:sw t6, 248(sp)
Current Store : [0x800006f4] : sw t5, 252(sp) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000708]:KMAXDS t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 256(sp)
Current Store : [0x80000714] : sw t5, 260(sp) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000728]:KMAXDS t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 264(sp)
Current Store : [0x80000734] : sw t5, 268(sp) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['opcode : kmaxds', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 8', 'rs2_h0_val == 0', 'rs1_h1_val == 8192', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000744]:KMAXDS t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 272(sp)
Current Store : [0x80000750] : sw t5, 276(sp) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000760]:KMAXDS t6, t5, t4
	-[0x80000764]:csrrs t5, vxsat, zero
	-[0x80000768]:sw t6, 280(sp)
Current Store : [0x8000076c] : sw t5, 284(sp) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000780]:KMAXDS t6, t5, t4
	-[0x80000784]:csrrs t5, vxsat, zero
	-[0x80000788]:sw t6, 288(sp)
Current Store : [0x8000078c] : sw t5, 292(sp) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x8000079c]:KMAXDS t6, t5, t4
	-[0x800007a0]:csrrs t5, vxsat, zero
	-[0x800007a4]:sw t6, 296(sp)
Current Store : [0x800007a8] : sw t5, 300(sp) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800007bc]:KMAXDS t6, t5, t4
	-[0x800007c0]:csrrs t5, vxsat, zero
	-[0x800007c4]:sw t6, 304(sp)
Current Store : [0x800007c8] : sw t5, 308(sp) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800007dc]:KMAXDS t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 312(sp)
Current Store : [0x800007e8] : sw t5, 316(sp) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800007fc]:KMAXDS t6, t5, t4
	-[0x80000800]:csrrs t5, vxsat, zero
	-[0x80000804]:sw t6, 320(sp)
Current Store : [0x80000808] : sw t5, 324(sp) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000818]:KMAXDS t6, t5, t4
	-[0x8000081c]:csrrs t5, vxsat, zero
	-[0x80000820]:sw t6, 328(sp)
Current Store : [0x80000824] : sw t5, 332(sp) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000838]:KMAXDS t6, t5, t4
	-[0x8000083c]:csrrs t5, vxsat, zero
	-[0x80000840]:sw t6, 336(sp)
Current Store : [0x80000844] : sw t5, 340(sp) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000858]:KMAXDS t6, t5, t4
	-[0x8000085c]:csrrs t5, vxsat, zero
	-[0x80000860]:sw t6, 344(sp)
Current Store : [0x80000864] : sw t5, 348(sp) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000878]:KMAXDS t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 352(sp)
Current Store : [0x80000884] : sw t5, 356(sp) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000898]:KMAXDS t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 360(sp)
Current Store : [0x800008a4] : sw t5, 364(sp) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800008b8]:KMAXDS t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 368(sp)
Current Store : [0x800008c4] : sw t5, 372(sp) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800008d4]:KMAXDS t6, t5, t4
	-[0x800008d8]:csrrs t5, vxsat, zero
	-[0x800008dc]:sw t6, 376(sp)
Current Store : [0x800008e0] : sw t5, 380(sp) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800008f0]:KMAXDS t6, t5, t4
	-[0x800008f4]:csrrs t5, vxsat, zero
	-[0x800008f8]:sw t6, 384(sp)
Current Store : [0x800008fc] : sw t5, 388(sp) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000910]:KMAXDS t6, t5, t4
	-[0x80000914]:csrrs t5, vxsat, zero
	-[0x80000918]:sw t6, 392(sp)
Current Store : [0x8000091c] : sw t5, 396(sp) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000930]:KMAXDS t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 400(sp)
Current Store : [0x8000093c] : sw t5, 404(sp) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x8000094c]:KMAXDS t6, t5, t4
	-[0x80000950]:csrrs t5, vxsat, zero
	-[0x80000954]:sw t6, 408(sp)
Current Store : [0x80000958] : sw t5, 412(sp) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x8000096c]:KMAXDS t6, t5, t4
	-[0x80000970]:csrrs t5, vxsat, zero
	-[0x80000974]:sw t6, 416(sp)
Current Store : [0x80000978] : sw t5, 420(sp) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x8000098c]:KMAXDS t6, t5, t4
	-[0x80000990]:csrrs t5, vxsat, zero
	-[0x80000994]:sw t6, 424(sp)
Current Store : [0x80000998] : sw t5, 428(sp) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800009ac]:KMAXDS t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 432(sp)
Current Store : [0x800009b8] : sw t5, 436(sp) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x800009c8]:KMAXDS t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 440(sp)
Current Store : [0x800009d4] : sw t5, 444(sp) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['opcode : kmaxds', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == -2', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800009e8]:KMAXDS t6, t5, t4
	-[0x800009ec]:csrrs t5, vxsat, zero
	-[0x800009f0]:sw t6, 448(sp)
Current Store : [0x800009f4] : sw t5, 452(sp) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['opcode : kmaxds', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -17', 'rs2_h0_val == 64', 'rs1_h1_val == -1025', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000a08]:KMAXDS t6, t5, t4
	-[0x80000a0c]:csrrs t5, vxsat, zero
	-[0x80000a10]:sw t6, 456(sp)
Current Store : [0x80000a14] : sw t5, 460(sp) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80000a28]:KMAXDS t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 464(sp)
Current Store : [0x80000a34] : sw t5, 468(sp) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['opcode : kmaxds', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs1_h1_val == 8192', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000a48]:KMAXDS t6, t5, t4
	-[0x80000a4c]:csrrs t5, vxsat, zero
	-[0x80000a50]:sw t6, 472(sp)
Current Store : [0x80000a54] : sw t5, 476(sp) -- Store: [0x80002474]:0x00000000





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

|s.no|        signature         |                                                                                                                                                                coverpoints                                                                                                                                                                |                                                     code                                                     |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmaxds<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 2048<br> |[0x80000118]:KMAXDS sp, sp, sp<br> [0x8000011c]:csrrs sp, vxsat, zero<br> [0x80000120]:sw sp, 0(ra)<br>       |
|   2|[0x80002218]<br>0x76DF56FF|- rs1 : x5<br> - rs2 : x5<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -2<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -2<br>                                                                                    |[0x80000138]:KMAXDS s10, t0, t0<br> [0x8000013c]:csrrs t0, vxsat, zero<br> [0x80000140]:sw s10, 8(ra)<br>     |
|   3|[0x80002220]<br>0xDB7D6002|- rs1 : x22<br> - rs2 : x27<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == -1<br> - rs2_h0_val == 32<br> - rs1_h1_val == 32<br>                                                                    |[0x80000158]:KMAXDS s8, s6, s11<br> [0x8000015c]:csrrs s6, vxsat, zero<br> [0x80000160]:sw s8, 16(ra)<br>     |
|   4|[0x80002228]<br>0x055C6E07|- rs1 : x8<br> - rs2 : x11<br> - rd : x11<br> - rs2 == rd != rs1<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -513<br>                                                                                                                                                   |[0x80000174]:KMAXDS a1, fp, a1<br> [0x80000178]:csrrs fp, vxsat, zero<br> [0x8000017c]:sw a1, 24(ra)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x29<br> - rs2 : x31<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_h1_val == -65<br> - rs2_h0_val == 4<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                  |[0x80000194]:KMAXDS t4, t4, t6<br> [0x80000198]:csrrs t4, vxsat, zero<br> [0x8000019c]:sw t4, 32(ra)<br>      |
|   6|[0x80002238]<br>0xEDBFB24F|- rs1 : x15<br> - rs2 : x22<br> - rd : x25<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 16<br> - rs2_h0_val == -65<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -1<br>                                                                                                                                                     |[0x800001b4]:KMAXDS s9, a5, s6<br> [0x800001b8]:csrrs a5, vxsat, zero<br> [0x800001bc]:sw s9, 40(ra)<br>      |
|   7|[0x80002240]<br>0xD5953307|- rs1 : x28<br> - rs2 : x26<br> - rd : x12<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 21845<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                   |[0x800001d4]:KMAXDS a2, t3, s10<br> [0x800001d8]:csrrs t3, vxsat, zero<br> [0x800001dc]:sw a2, 48(ra)<br>     |
|   8|[0x80002248]<br>0xFFFF8001|- rs1 : x27<br> - rs2 : x14<br> - rd : x15<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 0<br> - rs1_h0_val == 1<br>                                                                                                                                                                                             |[0x800001f0]:KMAXDS a5, s11, a4<br> [0x800001f4]:csrrs s11, vxsat, zero<br> [0x800001f8]:sw a5, 56(ra)<br>    |
|   9|[0x80002250]<br>0xFFFFBFFE|- rs1 : x13<br> - rs2 : x25<br> - rd : x8<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                          |[0x80000210]:KMAXDS fp, a3, s9<br> [0x80000214]:csrrs a3, vxsat, zero<br> [0x80000218]:sw fp, 64(ra)<br>      |
|  10|[0x80002258]<br>0x00400600|- rs1 : x19<br> - rs2 : x10<br> - rd : x28<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 2<br> - rs1_h1_val == 512<br> - rs1_h0_val == 512<br>                                                                                                                                                                                             |[0x80000230]:KMAXDS t3, s3, a0<br> [0x80000234]:csrrs s3, vxsat, zero<br> [0x80000238]:sw t3, 72(ra)<br>      |
|  11|[0x80002260]<br>0x08006FEF|- rs1 : x17<br> - rs2 : x20<br> - rd : x13<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -1<br> - rs1_h1_val == 16<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                           |[0x80000250]:KMAXDS a3, a7, s4<br> [0x80000254]:csrrs a7, vxsat, zero<br> [0x80000258]:sw a3, 80(ra)<br>      |
|  12|[0x80002268]<br>0xC3DE2FF4|- rs1 : x30<br> - rs2 : x9<br> - rd : x4<br> - rs2_h1_val == -2049<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                               |[0x80000270]:KMAXDS tp, t5, s1<br> [0x80000274]:csrrs t5, vxsat, zero<br> [0x80000278]:sw tp, 88(ra)<br>      |
|  13|[0x80002270]<br>0x001F03C1|- rs1 : x10<br> - rs2 : x13<br> - rd : x22<br> - rs2_h1_val == -1025<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                          |[0x80000290]:KMAXDS s6, a0, a3<br> [0x80000294]:csrrs a0, vxsat, zero<br> [0x80000298]:sw s6, 96(ra)<br>      |
|  14|[0x80002278]<br>0xFFFBFBF6|- rs1 : x16<br> - rs2 : x7<br> - rd : x30<br> - rs2_h1_val == -513<br>                                                                                                                                                                                                                                                                     |[0x800002b0]:KMAXDS t5, a6, t2<br> [0x800002b4]:csrrs a6, vxsat, zero<br> [0x800002b8]:sw t5, 104(ra)<br>     |
|  15|[0x80002280]<br>0xFFAEEF11|- rs1 : x24<br> - rs2 : x6<br> - rd : x31<br> - rs2_h1_val == -257<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                           |[0x800002d0]:KMAXDS t6, s8, t1<br> [0x800002d4]:csrrs s8, vxsat, zero<br> [0x800002d8]:sw t6, 112(ra)<br>     |
|  16|[0x80002288]<br>0xFDFDDB7E|- rs1 : x11<br> - rs2 : x30<br> - rd : x7<br> - rs2_h1_val == -129<br> - rs1_h1_val == -2<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                    |[0x800002ec]:KMAXDS t2, a1, t5<br> [0x800002f0]:csrrs a1, vxsat, zero<br> [0x800002f4]:sw t2, 120(ra)<br>     |
|  17|[0x80002290]<br>0xF010815E|- rs1 : x3<br> - rs2 : x15<br> - rd : x20<br> - rs2_h1_val == -33<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                               |[0x8000030c]:KMAXDS s4, gp, a5<br> [0x80000310]:csrrs gp, vxsat, zero<br> [0x80000314]:sw s4, 128(ra)<br>     |
|  18|[0x80002298]<br>0xDBEADFEE|- rs1 : x0<br> - rs2 : x12<br> - rd : x21<br> - rs2_h1_val == -17<br> - rs2_h0_val == 64<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                         |[0x80000334]:KMAXDS s5, zero, a2<br> [0x80000338]:csrrs zero, vxsat, zero<br> [0x8000033c]:sw s5, 0(sp)<br>   |
|  19|[0x800022a0]<br>0x80002182|- rs1 : x31<br> - rs2 : x24<br> - rd : x1<br> - rs2_h1_val == -9<br> - rs2_h0_val == -5<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                          |[0x80000354]:KMAXDS ra, t6, s8<br> [0x80000358]:csrrs t6, vxsat, zero<br> [0x8000035c]:sw ra, 8(sp)<br>       |
|  20|[0x800022a8]<br>0x00012000|- rs1 : x6<br> - rs2 : x29<br> - rd : x5<br> - rs2_h1_val == -5<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -1<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                              |[0x8000036c]:KMAXDS t0, t1, t4<br> [0x80000370]:csrrs t1, vxsat, zero<br> [0x80000374]:sw t0, 16(sp)<br>      |
|  21|[0x800022b0]<br>0xFFFFFFC1|- rs1 : x26<br> - rs2 : x18<br> - rd : x3<br> - rs2_h1_val == -3<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                               |[0x8000038c]:KMAXDS gp, s10, s2<br> [0x80000390]:csrrs s10, vxsat, zero<br> [0x80000394]:sw gp, 24(sp)<br>    |
|  22|[0x800022b8]<br>0xF8074040|- rs1 : x20<br> - rs2 : x3<br> - rd : x9<br> - rs2_h1_val == -2<br> - rs1_h1_val == -33<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                         |[0x800003a8]:KMAXDS s1, s4, gp<br> [0x800003ac]:csrrs s4, vxsat, zero<br> [0x800003b0]:sw s1, 32(sp)<br>      |
|  23|[0x800022c0]<br>0x00037CFD|- rs1 : x7<br> - rs2 : x19<br> - rd : x27<br> - rs2_h1_val == -32768<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                          |[0x800003c8]:KMAXDS s11, t2, s3<br> [0x800003cc]:csrrs t2, vxsat, zero<br> [0x800003d0]:sw s11, 40(sp)<br>    |
|  24|[0x800022c8]<br>0x0001BF80|- rs1 : x4<br> - rs2 : x28<br> - rd : x6<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 128<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                    |[0x800003e8]:KMAXDS t1, tp, t3<br> [0x800003ec]:csrrs tp, vxsat, zero<br> [0x800003f0]:sw t1, 48(sp)<br>      |
|  25|[0x800022d0]<br>0xB6FAB7FB|- rs1 : x1<br> - rs2 : x0<br> - rd : x23<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                             |[0x80000408]:KMAXDS s7, ra, zero<br> [0x8000040c]:csrrs ra, vxsat, zero<br> [0x80000410]:sw s7, 56(sp)<br>    |
|  26|[0x800022d8]<br>0x80025808|- rs1 : x25<br> - rs2 : x4<br> - rd : x19<br> - rs2_h1_val == 2048<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                   |[0x80000428]:KMAXDS s3, s9, tp<br> [0x8000042c]:csrrs s9, vxsat, zero<br> [0x80000430]:sw s3, 64(sp)<br>      |
|  27|[0x800022e0]<br>0x00016000|- rs1 : x9<br> - rs2 : x1<br> - rd : x10<br> - rs2_h1_val == 1024<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                      |[0x80000448]:KMAXDS a0, s1, ra<br> [0x8000044c]:csrrs s1, vxsat, zero<br> [0x80000450]:sw a0, 72(sp)<br>      |
|  28|[0x800022e8]<br>0xF7BFC000|- rs1 : x18<br> - rs2 : x16<br> - rd : x17<br> - rs2_h1_val == 512<br> - rs2_h0_val == -8193<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                  |[0x80000464]:KMAXDS a7, s2, a6<br> [0x80000468]:csrrs s2, vxsat, zero<br> [0x8000046c]:sw a7, 80(sp)<br>      |
|  29|[0x800022f0]<br>0x7F7F4555|- rs1 : x12<br> - rs2 : x21<br> - rd : x14<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                     |[0x80000484]:KMAXDS a4, a2, s5<br> [0x80000488]:csrrs a2, vxsat, zero<br> [0x8000048c]:sw a4, 88(sp)<br>      |
|  30|[0x800022f8]<br>0x0008A020|- rs1 : x23<br> - rs2 : x8<br> - rd : x18<br> - rs2_h1_val == 32<br> - rs2_h0_val == -32768<br> - rs1_h1_val == -17<br> - rs1_h0_val == -257<br>                                                                                                                                                                                           |[0x800004a0]:KMAXDS s2, s7, fp<br> [0x800004a4]:csrrs s7, vxsat, zero<br> [0x800004a8]:sw s2, 96(sp)<br>      |
|  31|[0x80002300]<br>0x00000000|- rs1 : x14<br> - rs2 : x23<br> - rd : x0<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                     |[0x800004c0]:KMAXDS zero, a4, s7<br> [0x800004c4]:csrrs a4, vxsat, zero<br> [0x800004c8]:sw zero, 104(sp)<br> |
|  32|[0x80002308]<br>0x02010083|- rs1 : x21<br> - rs2 : x17<br> - rd : x16<br> - rs2_h1_val == 4<br> - rs2_h0_val == 512<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                       |[0x800004e0]:KMAXDS a6, s5, a7<br> [0x800004e4]:csrrs s5, vxsat, zero<br> [0x800004e8]:sw a6, 112(sp)<br>     |
|  33|[0x80002310]<br>0x007E4000|- rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                     |[0x800004fc]:KMAXDS t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 120(sp)<br>     |
|  34|[0x80002318]<br>0x027FB001|- rs2_h0_val == -4097<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                 |[0x8000051c]:KMAXDS t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 128(sp)<br>     |
|  35|[0x80002320]<br>0x027E2FF5|- rs2_h0_val == 16384<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                           |[0x80000538]:KMAXDS t6, t5, t4<br> [0x8000053c]:csrrs t5, vxsat, zero<br> [0x80000540]:sw t6, 136(sp)<br>     |
|  36|[0x80002328]<br>0x037E33F2|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                   |[0x80000554]:KMAXDS t6, t5, t4<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 144(sp)<br>     |
|  37|[0x80002330]<br>0x037E3C03|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                  |[0x80000574]:KMAXDS t6, t5, t4<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 152(sp)<br>     |
|  38|[0x80002338]<br>0x037D7C00|- rs1_h1_val == -16385<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                         |[0x80000590]:KMAXDS t6, t5, t4<br> [0x80000594]:csrrs t5, vxsat, zero<br> [0x80000598]:sw t6, 160(sp)<br>     |
|  39|[0x80002340]<br>0x037D72B8|- rs2_h0_val == -257<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                            |[0x800005b0]:KMAXDS t6, t5, t4<br> [0x800005b4]:csrrs t5, vxsat, zero<br> [0x800005b8]:sw t6, 168(sp)<br>     |
|  40|[0x80002348]<br>0x03817338|- rs2_h0_val == 16<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                              |[0x800005d0]:KMAXDS t6, t5, t4<br> [0x800005d4]:csrrs t5, vxsat, zero<br> [0x800005d8]:sw t6, 176(sp)<br>     |
|  41|[0x80002358]<br>0x0356D8E0|- rs2_h1_val == 128<br> - rs1_h1_val == -513<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                 |[0x8000060c]:KMAXDS t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 192(sp)<br>     |
|  42|[0x80002360]<br>0x03479920|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                     |[0x8000062c]:KMAXDS t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 200(sp)<br>     |
|  43|[0x80002368]<br>0x034798DE|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                      |[0x8000064c]:KMAXDS t6, t5, t4<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 208(sp)<br>     |
|  44|[0x80002370]<br>0x034398F0|- rs2_h1_val == 2<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                            |[0x8000066c]:KMAXDS t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 216(sp)<br>     |
|  45|[0x80002378]<br>0x03439ADF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                      |[0x8000068c]:KMAXDS t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 224(sp)<br>     |
|  46|[0x80002380]<br>0x0343F7DF|- rs2_h0_val == -3<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                             |[0x800006a8]:KMAXDS t6, t5, t4<br> [0x800006ac]:csrrs t5, vxsat, zero<br> [0x800006b0]:sw t6, 232(sp)<br>     |
|  47|[0x80002388]<br>0x18958934|- rs2_h0_val == 1024<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                        |[0x800006c8]:KMAXDS t6, t5, t4<br> [0x800006cc]:csrrs t5, vxsat, zero<br> [0x800006d0]:sw t6, 240(sp)<br>     |
|  48|[0x80002390]<br>0x189853DC|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                    |[0x800006e8]:KMAXDS t6, t5, t4<br> [0x800006ec]:csrrs t5, vxsat, zero<br> [0x800006f0]:sw t6, 248(sp)<br>     |
|  49|[0x80002398]<br>0x189857C1|- rs2_h0_val == 8<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                              |[0x80000708]:KMAXDS t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 256(sp)<br>     |
|  50|[0x800023a0]<br>0x189AAD19|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                      |[0x80000728]:KMAXDS t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 264(sp)<br>     |
|  51|[0x800023b0]<br>0x1745C277|- rs2_h0_val == -21846<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                       |[0x80000760]:KMAXDS t6, t5, t4<br> [0x80000764]:csrrs t5, vxsat, zero<br> [0x80000768]:sw t6, 280(sp)<br>     |
|  52|[0x800023b8]<br>0x1745C277|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                   |[0x80000780]:KMAXDS t6, t5, t4<br> [0x80000784]:csrrs t5, vxsat, zero<br> [0x80000788]:sw t6, 288(sp)<br>     |
|  53|[0x800023c0]<br>0x1847DAB8|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                    |[0x8000079c]:KMAXDS t6, t5, t4<br> [0x800007a0]:csrrs t5, vxsat, zero<br> [0x800007a4]:sw t6, 296(sp)<br>     |
|  54|[0x800023c8]<br>0x184A1A70|- rs2_h0_val == -16385<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                          |[0x800007bc]:KMAXDS t6, t5, t4<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sw t6, 304(sp)<br>     |
|  55|[0x800023d0]<br>0x184A3299|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                     |[0x800007dc]:KMAXDS t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 312(sp)<br>     |
|  56|[0x800023d8]<br>0x180A33B7|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                     |[0x800007fc]:KMAXDS t6, t5, t4<br> [0x80000800]:csrrs t5, vxsat, zero<br> [0x80000804]:sw t6, 320(sp)<br>     |
|  57|[0x800023e0]<br>0x1D6493B7|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                 |[0x80000818]:KMAXDS t6, t5, t4<br> [0x8000081c]:csrrs t5, vxsat, zero<br> [0x80000820]:sw t6, 328(sp)<br>     |
|  58|[0x800023e8]<br>0x1D8393B9|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                   |[0x80000838]:KMAXDS t6, t5, t4<br> [0x8000083c]:csrrs t5, vxsat, zero<br> [0x80000840]:sw t6, 336(sp)<br>     |
|  59|[0x800023f0]<br>0xFD8553B8|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                   |[0x80000858]:KMAXDS t6, t5, t4<br> [0x8000085c]:csrrs t5, vxsat, zero<br> [0x80000860]:sw t6, 344(sp)<br>     |
|  60|[0x800023f8]<br>0xFD8549BA|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                     |[0x80000878]:KMAXDS t6, t5, t4<br> [0x8000087c]:csrrs t5, vxsat, zero<br> [0x80000880]:sw t6, 352(sp)<br>     |
|  61|[0x80002400]<br>0xDD8989CA|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                  |[0x80000898]:KMAXDS t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 360(sp)<br>     |
|  62|[0x80002408]<br>0xDD8AE8C4|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                    |[0x800008b8]:KMAXDS t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 368(sp)<br>     |
|  63|[0x80002410]<br>0xD58968C4|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x800008d4]:KMAXDS t6, t5, t4<br> [0x800008d8]:csrrs t5, vxsat, zero<br> [0x800008dc]:sw t6, 376(sp)<br>     |
|  64|[0x80002418]<br>0xD588C8C7|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                      |[0x800008f0]:KMAXDS t6, t5, t4<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sw t6, 384(sp)<br>     |
|  65|[0x80002420]<br>0xD5C8DAC8|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                  |[0x80000910]:KMAXDS t6, t5, t4<br> [0x80000914]:csrrs t5, vxsat, zero<br> [0x80000918]:sw t6, 392(sp)<br>     |
|  66|[0x80002428]<br>0xD5C68577|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                 |[0x80000930]:KMAXDS t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 400(sp)<br>     |
|  67|[0x80002430]<br>0xD5C63577|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                   |[0x8000094c]:KMAXDS t6, t5, t4<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sw t6, 408(sp)<br>     |
|  68|[0x80002438]<br>0xE5869576|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                  |[0x8000096c]:KMAXDS t6, t5, t4<br> [0x80000970]:csrrs t5, vxsat, zero<br> [0x80000974]:sw t6, 416(sp)<br>     |
|  69|[0x80002440]<br>0xE586DACE|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                    |[0x8000098c]:KMAXDS t6, t5, t4<br> [0x80000990]:csrrs t5, vxsat, zero<br> [0x80000994]:sw t6, 424(sp)<br>     |
|  70|[0x80002448]<br>0xE58592A9|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                  |[0x800009ac]:KMAXDS t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 432(sp)<br>     |
|  71|[0x80002450]<br>0xF58562A9|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                 |[0x800009c8]:KMAXDS t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 440(sp)<br>     |
|  72|[0x80002468]<br>0xF5A6D056|- rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                   |[0x80000a28]:KMAXDS t6, t5, t4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sw t6, 464(sp)<br>     |
