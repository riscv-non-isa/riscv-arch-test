
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b50')]      |
| SIG_REGION                | [('0x80002210', '0x800024e0', '180 words')]      |
| COV_LABELS                | kmmawb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmawb-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 180      |
| STAT1                     | 88      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 90     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c8]:KMMAWB t6, t5, t4
      [0x800005cc]:csrrs t5, vxsat, zero
      [0x800005d0]:sw t6, 80(ra)
 -- Signature Address: 0x80002358 Data: 0xFFFFFE0E
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 4096
      - rs2_h0_val == 32767
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b18]:KMMAWB t6, t5, t4
      [0x80000b1c]:csrrs t5, vxsat, zero
      [0x80000b20]:sw t6, 456(ra)
 -- Signature Address: 0x800024d0 Data: 0xFFC2BAAA
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 128
      - rs2_h0_val == 21845
      - rs1_w0_val == -268435457






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawb', 'rs1 : x12', 'rs2 : x12', 'rd : x12', 'rs1 == rs2 == rd', 'rs2_h1_val == -257']
Last Code Sequence : 
	-[0x80000118]:KMMAWB a2, a2, a2
	-[0x8000011c]:csrrs a2, vxsat, zero
	-[0x80000120]:sw a2, 0(a4)
Current Store : [0x80000124] : sw a2, 4(a4) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x22', 'rs1 == rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000134]:KMMAWB s6, a3, a3
	-[0x80000138]:csrrs a3, vxsat, zero
	-[0x8000013c]:sw s6, 8(a4)
Current Store : [0x80000140] : sw a3, 12(a4) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rd : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845', 'rs2_h0_val == 4', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000150]:KMMAWB t4, a0, s3
	-[0x80000154]:csrrs a0, vxsat, zero
	-[0x80000158]:sw t4, 16(a4)
Current Store : [0x8000015c] : sw a0, 20(a4) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x3', 'rd : x3', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x8000016c]:KMMAWB gp, t0, gp
	-[0x80000170]:csrrs t0, vxsat, zero
	-[0x80000174]:sw gp, 24(a4)
Current Store : [0x80000178] : sw t0, 28(a4) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x11', 'rd : x16', 'rs1 == rd != rs2', 'rs2_h1_val == -16385', 'rs2_h0_val == -129']
Last Code Sequence : 
	-[0x8000018c]:KMMAWB a6, a6, a1
	-[0x80000190]:csrrs a6, vxsat, zero
	-[0x80000194]:sw a6, 32(a4)
Current Store : [0x80000198] : sw a6, 36(a4) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x15', 'rd : x2', 'rs2_h1_val == -8193', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800001a8]:KMMAWB sp, t4, a5
	-[0x800001ac]:csrrs t4, vxsat, zero
	-[0x800001b0]:sw sp, 40(a4)
Current Store : [0x800001b4] : sw t4, 44(a4) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x4', 'rd : x31', 'rs2_h1_val == -4097', 'rs2_h0_val == -4097', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800001c8]:KMMAWB t6, sp, tp
	-[0x800001cc]:csrrs sp, vxsat, zero
	-[0x800001d0]:sw t6, 48(a4)
Current Store : [0x800001d4] : sw sp, 52(a4) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x2', 'rd : x21', 'rs2_h1_val == -2049', 'rs2_h0_val == 16384', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800001e0]:KMMAWB s5, s2, sp
	-[0x800001e4]:csrrs s2, vxsat, zero
	-[0x800001e8]:sw s5, 56(a4)
Current Store : [0x800001ec] : sw s2, 60(a4) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x27', 'rd : x17', 'rs2_h1_val == -1025', 'rs2_h0_val == 1024', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800001fc]:KMMAWB a7, s3, s11
	-[0x80000200]:csrrs s3, vxsat, zero
	-[0x80000204]:sw a7, 64(a4)
Current Store : [0x80000208] : sw s3, 68(a4) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x28', 'rd : x6', 'rs2_h1_val == -513', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x8000021c]:KMMAWB t1, s10, t3
	-[0x80000220]:csrrs s10, vxsat, zero
	-[0x80000224]:sw t1, 72(a4)
Current Store : [0x80000228] : sw s10, 76(a4) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x16', 'rd : x4', 'rs2_h1_val == -129', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x8000023c]:KMMAWB tp, s4, a6
	-[0x80000240]:csrrs s4, vxsat, zero
	-[0x80000244]:sw tp, 80(a4)
Current Store : [0x80000248] : sw s4, 84(a4) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x28', 'rs2_h1_val == -65', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000258]:KMMAWB t3, s11, ra
	-[0x8000025c]:csrrs s11, vxsat, zero
	-[0x80000260]:sw t3, 88(a4)
Current Store : [0x80000264] : sw s11, 92(a4) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x30', 'rd : x7', 'rs2_h1_val == -33', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000278]:KMMAWB t2, s8, t5
	-[0x8000027c]:csrrs s8, vxsat, zero
	-[0x80000280]:sw t2, 96(a4)
Current Store : [0x80000284] : sw s8, 100(a4) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x15', 'rs2_h1_val == -17', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000294]:KMMAWB a5, fp, s1
	-[0x80000298]:csrrs fp, vxsat, zero
	-[0x8000029c]:sw a5, 104(a4)
Current Store : [0x800002a0] : sw fp, 108(a4) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x10', 'rd : x5', 'rs2_h1_val == -9', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800002b4]:KMMAWB t0, a4, a0
	-[0x800002b8]:csrrs a4, vxsat, zero
	-[0x800002bc]:sw t0, 0(sp)
Current Store : [0x800002c0] : sw a4, 4(sp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x29', 'rd : x30', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x800002d4]:KMMAWB t5, t3, t4
	-[0x800002d8]:csrrs t3, vxsat, zero
	-[0x800002dc]:sw t5, 8(sp)
Current Store : [0x800002e0] : sw t3, 12(sp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x6', 'rd : x8', 'rs2_h1_val == -3', 'rs2_h0_val == -8193', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800002f4]:KMMAWB fp, ra, t1
	-[0x800002f8]:csrrs ra, vxsat, zero
	-[0x800002fc]:sw fp, 16(sp)
Current Store : [0x80000300] : sw ra, 20(sp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x26', 'rd : x18', 'rs2_h1_val == -2', 'rs2_h0_val == -17', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000310]:KMMAWB s2, t1, s10
	-[0x80000314]:csrrs t1, vxsat, zero
	-[0x80000318]:sw s2, 24(sp)
Current Store : [0x8000031c] : sw t1, 28(sp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rd : x25', 'rs2_h1_val == -32768', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000032c]:KMMAWB s9, t5, a7
	-[0x80000330]:csrrs t5, vxsat, zero
	-[0x80000334]:sw s9, 32(sp)
Current Store : [0x80000338] : sw t5, 36(sp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rd : x24', 'rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x8000034c]:KMMAWB s8, s1, t0
	-[0x80000350]:csrrs s1, vxsat, zero
	-[0x80000354]:sw s8, 40(sp)
Current Store : [0x80000358] : sw s1, 44(sp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x24', 'rd : x20', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x8000036c]:KMMAWB s4, s7, s8
	-[0x80000370]:csrrs s7, vxsat, zero
	-[0x80000374]:sw s4, 48(sp)
Current Store : [0x80000378] : sw s7, 52(sp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x18', 'rd : x13', 'rs2_h1_val == 4096', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000388]:KMMAWB a3, a5, s2
	-[0x8000038c]:csrrs a5, vxsat, zero
	-[0x80000390]:sw a3, 56(sp)
Current Store : [0x80000394] : sw a5, 60(sp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x7', 'rd : x11', 'rs2_h1_val == 2048', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800003a4]:KMMAWB a1, a7, t2
	-[0x800003a8]:csrrs a7, vxsat, zero
	-[0x800003ac]:sw a1, 64(sp)
Current Store : [0x800003b0] : sw a7, 68(sp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x0', 'rd : x9', 'rs2_h1_val == 0', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x800003c0]:KMMAWB s1, s9, zero
	-[0x800003c4]:csrrs s9, vxsat, zero
	-[0x800003c8]:sw s1, 72(sp)
Current Store : [0x800003cc] : sw s9, 76(sp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x31', 'rd : x10', 'rs2_h1_val == 512', 'rs2_h0_val == 64', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800003e0]:KMMAWB a0, gp, t6
	-[0x800003e4]:csrrs gp, vxsat, zero
	-[0x800003e8]:sw a0, 80(sp)
Current Store : [0x800003ec] : sw gp, 84(sp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x25', 'rd : x14', 'rs2_h1_val == 256', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000400]:KMMAWB a4, t2, s9
	-[0x80000404]:csrrs t2, vxsat, zero
	-[0x80000408]:sw a4, 88(sp)
Current Store : [0x8000040c] : sw t2, 92(sp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x14', 'rd : x0', 'rs2_h1_val == 128', 'rs2_h0_val == 21845', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000420]:KMMAWB zero, a1, a4
	-[0x80000424]:csrrs a1, vxsat, zero
	-[0x80000428]:sw zero, 96(sp)
Current Store : [0x8000042c] : sw a1, 100(sp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x22', 'rd : x1', 'rs2_h1_val == 64', 'rs2_h0_val == 8192', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x8000043c]:KMMAWB ra, tp, s6
	-[0x80000440]:csrrs tp, vxsat, zero
	-[0x80000444]:sw ra, 104(sp)
Current Store : [0x80000448] : sw tp, 108(sp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x8', 'rd : x26', 'rs2_h1_val == 32', 'rs2_h0_val == 4096', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000458]:KMMAWB s10, zero, fp
	-[0x8000045c]:csrrs zero, vxsat, zero
	-[0x80000460]:sw s10, 112(sp)
Current Store : [0x80000464] : sw zero, 116(sp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x20', 'rd : x23', 'rs2_h1_val == 16', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000474]:KMMAWB s7, s5, s4
	-[0x80000478]:csrrs s5, vxsat, zero
	-[0x8000047c]:sw s7, 120(sp)
Current Store : [0x80000480] : sw s5, 124(sp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x21', 'rd : x19', 'rs2_h1_val == 8', 'rs2_h0_val == 128', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000494]:KMMAWB s3, t6, s5
	-[0x80000498]:csrrs t6, vxsat, zero
	-[0x8000049c]:sw s3, 128(sp)
Current Store : [0x800004a0] : sw t6, 132(sp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x23', 'rd : x27', 'rs2_h1_val == 4', 'rs2_h0_val == -65', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800004b8]:KMMAWB s11, s6, s7
	-[0x800004bc]:csrrs s6, vxsat, zero
	-[0x800004c0]:sw s11, 0(ra)
Current Store : [0x800004c4] : sw s6, 4(ra) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == -257', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800004d4]:KMMAWB t6, t5, t4
	-[0x800004d8]:csrrs t5, vxsat, zero
	-[0x800004dc]:sw t6, 8(ra)
Current Store : [0x800004e0] : sw t5, 12(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800004f0]:KMMAWB t6, t5, t4
	-[0x800004f4]:csrrs t5, vxsat, zero
	-[0x800004f8]:sw t6, 16(ra)
Current Store : [0x800004fc] : sw t5, 20(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000508]:KMMAWB t6, t5, t4
	-[0x8000050c]:csrrs t5, vxsat, zero
	-[0x80000510]:sw t6, 24(ra)
Current Store : [0x80000514] : sw t5, 28(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000524]:KMMAWB t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 32(ra)
Current Store : [0x80000530] : sw t5, 36(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x8000053c]:KMMAWB t6, t5, t4
	-[0x80000540]:csrrs t5, vxsat, zero
	-[0x80000544]:sw t6, 40(ra)
Current Store : [0x80000548] : sw t5, 44(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000558]:KMMAWB t6, t5, t4
	-[0x8000055c]:csrrs t5, vxsat, zero
	-[0x80000560]:sw t6, 48(ra)
Current Store : [0x80000564] : sw t5, 52(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000574]:KMMAWB t6, t5, t4
	-[0x80000578]:csrrs t5, vxsat, zero
	-[0x8000057c]:sw t6, 56(ra)
Current Store : [0x80000580] : sw t5, 60(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000590]:KMMAWB t6, t5, t4
	-[0x80000594]:csrrs t5, vxsat, zero
	-[0x80000598]:sw t6, 64(ra)
Current Store : [0x8000059c] : sw t5, 68(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800005ac]:KMMAWB t6, t5, t4
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 72(ra)
Current Store : [0x800005b8] : sw t5, 76(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['opcode : kmmawb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 4096', 'rs2_h0_val == 32767', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800005c8]:KMMAWB t6, t5, t4
	-[0x800005cc]:csrrs t5, vxsat, zero
	-[0x800005d0]:sw t6, 80(ra)
Current Store : [0x800005d4] : sw t5, 84(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800005e4]:KMMAWB t6, t5, t4
	-[0x800005e8]:csrrs t5, vxsat, zero
	-[0x800005ec]:sw t6, 88(ra)
Current Store : [0x800005f0] : sw t5, 92(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000604]:KMMAWB t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 96(ra)
Current Store : [0x80000610] : sw t5, 100(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000620]:KMMAWB t6, t5, t4
	-[0x80000624]:csrrs t5, vxsat, zero
	-[0x80000628]:sw t6, 104(ra)
Current Store : [0x8000062c] : sw t5, 108(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000640]:KMMAWB t6, t5, t4
	-[0x80000644]:csrrs t5, vxsat, zero
	-[0x80000648]:sw t6, 112(ra)
Current Store : [0x8000064c] : sw t5, 116(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1024', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x8000065c]:KMMAWB t6, t5, t4
	-[0x80000660]:csrrs t5, vxsat, zero
	-[0x80000664]:sw t6, 120(ra)
Current Store : [0x80000668] : sw t5, 124(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x8000067c]:KMMAWB t6, t5, t4
	-[0x80000680]:csrrs t5, vxsat, zero
	-[0x80000684]:sw t6, 128(ra)
Current Store : [0x80000688] : sw t5, 132(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80000698]:KMMAWB t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 136(ra)
Current Store : [0x800006a4] : sw t5, 140(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800006b4]:KMMAWB t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 144(ra)
Current Store : [0x800006c0] : sw t5, 148(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800006d4]:KMMAWB t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 152(ra)
Current Store : [0x800006e0] : sw t5, 156(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800006f4]:KMMAWB t6, t5, t4
	-[0x800006f8]:csrrs t5, vxsat, zero
	-[0x800006fc]:sw t6, 160(ra)
Current Store : [0x80000700] : sw t5, 164(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000710]:KMMAWB t6, t5, t4
	-[0x80000714]:csrrs t5, vxsat, zero
	-[0x80000718]:sw t6, 168(ra)
Current Store : [0x8000071c] : sw t5, 172(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000728]:KMMAWB t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 176(ra)
Current Store : [0x80000734] : sw t5, 180(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000744]:KMMAWB t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 184(ra)
Current Store : [0x80000750] : sw t5, 188(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000760]:KMMAWB t6, t5, t4
	-[0x80000764]:csrrs t5, vxsat, zero
	-[0x80000768]:sw t6, 192(ra)
Current Store : [0x8000076c] : sw t5, 196(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x8000077c]:KMMAWB t6, t5, t4
	-[0x80000780]:csrrs t5, vxsat, zero
	-[0x80000784]:sw t6, 200(ra)
Current Store : [0x80000788] : sw t5, 204(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80000798]:KMMAWB t6, t5, t4
	-[0x8000079c]:csrrs t5, vxsat, zero
	-[0x800007a0]:sw t6, 208(ra)
Current Store : [0x800007a4] : sw t5, 212(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800007b8]:KMMAWB t6, t5, t4
	-[0x800007bc]:csrrs t5, vxsat, zero
	-[0x800007c0]:sw t6, 216(ra)
Current Store : [0x800007c4] : sw t5, 220(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800007d8]:KMMAWB t6, t5, t4
	-[0x800007dc]:csrrs t5, vxsat, zero
	-[0x800007e0]:sw t6, 224(ra)
Current Store : [0x800007e4] : sw t5, 228(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800007f0]:KMMAWB t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 232(ra)
Current Store : [0x800007fc] : sw t5, 236(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000810]:KMMAWB t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 240(ra)
Current Store : [0x8000081c] : sw t5, 244(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000830]:KMMAWB t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 248(ra)
Current Store : [0x8000083c] : sw t5, 252(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000850]:KMMAWB t6, t5, t4
	-[0x80000854]:csrrs t5, vxsat, zero
	-[0x80000858]:sw t6, 256(ra)
Current Store : [0x8000085c] : sw t5, 260(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000870]:KMMAWB t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 264(ra)
Current Store : [0x8000087c] : sw t5, 268(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000890]:KMMAWB t6, t5, t4
	-[0x80000894]:csrrs t5, vxsat, zero
	-[0x80000898]:sw t6, 272(ra)
Current Store : [0x8000089c] : sw t5, 276(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800008b0]:KMMAWB t6, t5, t4
	-[0x800008b4]:csrrs t5, vxsat, zero
	-[0x800008b8]:sw t6, 280(ra)
Current Store : [0x800008bc] : sw t5, 284(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800008d0]:KMMAWB t6, t5, t4
	-[0x800008d4]:csrrs t5, vxsat, zero
	-[0x800008d8]:sw t6, 288(ra)
Current Store : [0x800008dc] : sw t5, 292(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800008f0]:KMMAWB t6, t5, t4
	-[0x800008f4]:csrrs t5, vxsat, zero
	-[0x800008f8]:sw t6, 296(ra)
Current Store : [0x800008fc] : sw t5, 300(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x8000090c]:KMMAWB t6, t5, t4
	-[0x80000910]:csrrs t5, vxsat, zero
	-[0x80000914]:sw t6, 304(ra)
Current Store : [0x80000918] : sw t5, 308(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000928]:KMMAWB t6, t5, t4
	-[0x8000092c]:csrrs t5, vxsat, zero
	-[0x80000930]:sw t6, 312(ra)
Current Store : [0x80000934] : sw t5, 316(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000944]:KMMAWB t6, t5, t4
	-[0x80000948]:csrrs t5, vxsat, zero
	-[0x8000094c]:sw t6, 320(ra)
Current Store : [0x80000950] : sw t5, 324(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000960]:KMMAWB t6, t5, t4
	-[0x80000964]:csrrs t5, vxsat, zero
	-[0x80000968]:sw t6, 328(ra)
Current Store : [0x8000096c] : sw t5, 332(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000978]:KMMAWB t6, t5, t4
	-[0x8000097c]:csrrs t5, vxsat, zero
	-[0x80000980]:sw t6, 336(ra)
Current Store : [0x80000984] : sw t5, 340(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000994]:KMMAWB t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 344(ra)
Current Store : [0x800009a0] : sw t5, 348(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800009ac]:KMMAWB t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 352(ra)
Current Store : [0x800009b8] : sw t5, 356(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800009c8]:KMMAWB t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 360(ra)
Current Store : [0x800009d4] : sw t5, 364(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800009e4]:KMMAWB t6, t5, t4
	-[0x800009e8]:csrrs t5, vxsat, zero
	-[0x800009ec]:sw t6, 368(ra)
Current Store : [0x800009f0] : sw t5, 372(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a00]:KMMAWB t6, t5, t4
	-[0x80000a04]:csrrs t5, vxsat, zero
	-[0x80000a08]:sw t6, 376(ra)
Current Store : [0x80000a0c] : sw t5, 380(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000a18]:KMMAWB t6, t5, t4
	-[0x80000a1c]:csrrs t5, vxsat, zero
	-[0x80000a20]:sw t6, 384(ra)
Current Store : [0x80000a24] : sw t5, 388(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000a34]:KMMAWB t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 392(ra)
Current Store : [0x80000a40] : sw t5, 396(ra) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000a50]:KMMAWB t6, t5, t4
	-[0x80000a54]:csrrs t5, vxsat, zero
	-[0x80000a58]:sw t6, 400(ra)
Current Store : [0x80000a5c] : sw t5, 404(ra) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a6c]:KMMAWB t6, t5, t4
	-[0x80000a70]:csrrs t5, vxsat, zero
	-[0x80000a74]:sw t6, 408(ra)
Current Store : [0x80000a78] : sw t5, 412(ra) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000a88]:KMMAWB t6, t5, t4
	-[0x80000a8c]:csrrs t5, vxsat, zero
	-[0x80000a90]:sw t6, 416(ra)
Current Store : [0x80000a94] : sw t5, 420(ra) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000aa4]:KMMAWB t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 424(ra)
Current Store : [0x80000ab0] : sw t5, 428(ra) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000ac0]:KMMAWB t6, t5, t4
	-[0x80000ac4]:csrrs t5, vxsat, zero
	-[0x80000ac8]:sw t6, 432(ra)
Current Store : [0x80000acc] : sw t5, 436(ra) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000adc]:KMMAWB t6, t5, t4
	-[0x80000ae0]:csrrs t5, vxsat, zero
	-[0x80000ae4]:sw t6, 440(ra)
Current Store : [0x80000ae8] : sw t5, 444(ra) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000af8]:KMMAWB t6, t5, t4
	-[0x80000afc]:csrrs t5, vxsat, zero
	-[0x80000b00]:sw t6, 448(ra)
Current Store : [0x80000b04] : sw t5, 452(ra) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['opcode : kmmawb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 128', 'rs2_h0_val == 21845', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000b18]:KMMAWB t6, t5, t4
	-[0x80000b1c]:csrrs t5, vxsat, zero
	-[0x80000b20]:sw t6, 456(ra)
Current Store : [0x80000b24] : sw t5, 460(ra) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000b34]:KMMAWB t6, t5, t4
	-[0x80000b38]:csrrs t5, vxsat, zero
	-[0x80000b3c]:sw t6, 464(ra)
Current Store : [0x80000b40] : sw t5, 468(ra) -- Store: [0x800024dc]:0x00000000





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

|s.no|        signature         |                                                                            coverpoints                                                                             |                                                      code                                                      |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmawb<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs2_h1_val == -257<br>                                                |[0x80000118]:KMMAWB a2, a2, a2<br> [0x8000011c]:csrrs a2, vxsat, zero<br> [0x80000120]:sw a2, 0(a4)<br>         |
|   2|[0x80002218]<br>0x6F4B195C|- rs1 : x13<br> - rs2 : x13<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -1025<br>                                          |[0x80000134]:KMMAWB s6, a3, a3<br> [0x80000138]:csrrs a3, vxsat, zero<br> [0x8000013c]:sw s6, 8(a4)<br>         |
|   3|[0x80002220]<br>0xEEDBEADE|- rs1 : x10<br> - rs2 : x19<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 4<br> - rs1_w0_val == -9<br> |[0x80000150]:KMMAWB t4, a0, s3<br> [0x80000154]:csrrs a0, vxsat, zero<br> [0x80000158]:sw t4, 16(a4)<br>        |
|   4|[0x80002228]<br>0x7FFF0009|- rs1 : x5<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs1_w0_val == 256<br>                                                |[0x8000016c]:KMMAWB gp, t0, gp<br> [0x80000170]:csrrs t0, vxsat, zero<br> [0x80000174]:sw gp, 24(a4)<br>        |
|   5|[0x80002230]<br>0x00000000|- rs1 : x16<br> - rs2 : x11<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -129<br>                                           |[0x8000018c]:KMMAWB a6, a6, a1<br> [0x80000190]:csrrs a6, vxsat, zero<br> [0x80000194]:sw a6, 32(a4)<br>        |
|   6|[0x80002238]<br>0xFF76DF55|- rs1 : x29<br> - rs2 : x15<br> - rd : x2<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 512<br>                                                                     |[0x800001a8]:KMMAWB sp, t4, a5<br> [0x800001ac]:csrrs t4, vxsat, zero<br> [0x800001b0]:sw sp, 40(a4)<br>        |
|   7|[0x80002240]<br>0xFBB6FA36|- rs1 : x2<br> - rs2 : x4<br> - rd : x31<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -4097<br> - rs1_w0_val == 2048<br>                                           |[0x800001c8]:KMMAWB t6, sp, tp<br> [0x800001cc]:csrrs sp, vxsat, zero<br> [0x800001d0]:sw t6, 48(a4)<br>        |
|   8|[0x80002248]<br>0xDBEEDFEE|- rs1 : x18<br> - rs2 : x2<br> - rd : x21<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 16384<br> - rs1_w0_val == 1048576<br>                                       |[0x800001e0]:KMMAWB s5, s2, sp<br> [0x800001e4]:csrrs s2, vxsat, zero<br> [0x800001e8]:sw s5, 56(a4)<br>        |
|   9|[0x80002250]<br>0xBEAFFEED|- rs1 : x19<br> - rs2 : x27<br> - rd : x17<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 1024<br> - rs1_w0_val == 8388608<br>                                       |[0x800001fc]:KMMAWB a7, s3, s11<br> [0x80000200]:csrrs s3, vxsat, zero<br> [0x80000204]:sw a7, 64(a4)<br>       |
|  10|[0x80002258]<br>0x80007000|- rs1 : x26<br> - rs2 : x28<br> - rd : x6<br> - rs2_h1_val == -513<br> - rs1_w0_val == -134217729<br>                                                               |[0x8000021c]:KMMAWB t1, s10, t3<br> [0x80000220]:csrrs s10, vxsat, zero<br> [0x80000224]:sw t1, 72(a4)<br>      |
|  11|[0x80002260]<br>0xEFFFE7FE|- rs1 : x20<br> - rs2 : x16<br> - rd : x4<br> - rs2_h1_val == -129<br> - rs1_w0_val == -131073<br>                                                                  |[0x8000023c]:KMMAWB tp, s4, a6<br> [0x80000240]:csrrs s4, vxsat, zero<br> [0x80000244]:sw tp, 80(a4)<br>        |
|  12|[0x80002268]<br>0xFE000056|- rs1 : x27<br> - rs2 : x1<br> - rd : x28<br> - rs2_h1_val == -65<br> - rs1_w0_val == 2097152<br>                                                                   |[0x80000258]:KMMAWB t3, s11, ra<br> [0x8000025c]:csrrs s11, vxsat, zero<br> [0x80000260]:sw t3, 88(a4)<br>      |
|  13|[0x80002270]<br>0xB7FBA6FA|- rs1 : x24<br> - rs2 : x30<br> - rd : x7<br> - rs2_h1_val == -33<br> - rs1_w0_val == -16385<br>                                                                    |[0x80000278]:KMMAWB t2, s8, t5<br> [0x8000027c]:csrrs s8, vxsat, zero<br> [0x80000280]:sw t2, 96(a4)<br>        |
|  14|[0x80002278]<br>0xE0030200|- rs1 : x8<br> - rs2 : x9<br> - rd : x15<br> - rs2_h1_val == -17<br> - rs2_h0_val == 2048<br>                                                                       |[0x80000294]:KMMAWB a5, fp, s1<br> [0x80000298]:csrrs fp, vxsat, zero<br> [0x8000029c]:sw a5, 104(a4)<br>       |
|  15|[0x80002280]<br>0xFFFFFFEF|- rs1 : x14<br> - rs2 : x10<br> - rd : x5<br> - rs2_h1_val == -9<br> - rs1_w0_val == -65<br>                                                                        |[0x800002b4]:KMMAWB t0, a4, a0<br> [0x800002b8]:csrrs a4, vxsat, zero<br> [0x800002bc]:sw t0, 0(sp)<br>         |
|  16|[0x80002288]<br>0xFBDEFFFF|- rs1 : x28<br> - rs2 : x29<br> - rd : x30<br> - rs2_h1_val == -5<br>                                                                                               |[0x800002d4]:KMMAWB t5, t3, t4<br> [0x800002d8]:csrrs t3, vxsat, zero<br> [0x800002dc]:sw t5, 8(sp)<br>         |
|  17|[0x80002290]<br>0x04002000|- rs1 : x1<br> - rs2 : x6<br> - rd : x8<br> - rs2_h1_val == -3<br> - rs2_h0_val == -8193<br> - rs1_w0_val == -536870913<br>                                         |[0x800002f4]:KMMAWB fp, ra, t1<br> [0x800002f8]:csrrs ra, vxsat, zero<br> [0x800002fc]:sw fp, 16(sp)<br>        |
|  18|[0x80002298]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x26<br> - rd : x18<br> - rs2_h1_val == -2<br> - rs2_h0_val == -17<br> - rs1_w0_val == 1024<br>                                               |[0x80000310]:KMMAWB s2, t1, s10<br> [0x80000314]:csrrs t1, vxsat, zero<br> [0x80000318]:sw s2, 24(sp)<br>       |
|  19|[0x800022a0]<br>0xEDBEADDD|- rs1 : x30<br> - rs2 : x17<br> - rd : x25<br> - rs2_h1_val == -32768<br> - rs1_w0_val == 16384<br>                                                                 |[0x8000032c]:KMMAWB s9, t5, a7<br> [0x80000330]:csrrs t5, vxsat, zero<br> [0x80000334]:sw s9, 32(sp)<br>        |
|  20|[0x800022a8]<br>0x00000102|- rs1 : x9<br> - rs2 : x5<br> - rd : x24<br> - rs2_h1_val == 16384<br>                                                                                              |[0x8000034c]:KMMAWB s8, s1, t0<br> [0x80000350]:csrrs s1, vxsat, zero<br> [0x80000354]:sw s8, 40(sp)<br>        |
|  21|[0x800022b0]<br>0xFFFE4000|- rs1 : x23<br> - rs2 : x24<br> - rd : x20<br> - rs2_h1_val == 8192<br>                                                                                             |[0x8000036c]:KMMAWB s4, s7, s8<br> [0x80000370]:csrrs s7, vxsat, zero<br> [0x80000374]:sw s4, 48(sp)<br>        |
|  22|[0x800022b8]<br>0xFFFFFFBC|- rs1 : x15<br> - rs2 : x18<br> - rd : x13<br> - rs2_h1_val == 4096<br> - rs1_w0_val == 262144<br>                                                                  |[0x80000388]:KMMAWB a3, a5, s2<br> [0x8000038c]:csrrs a5, vxsat, zero<br> [0x80000390]:sw a3, 56(sp)<br>        |
|  23|[0x800022c0]<br>0xBFFFFF7F|- rs1 : x17<br> - rs2 : x7<br> - rd : x11<br> - rs2_h1_val == 2048<br> - rs1_w0_val == -257<br>                                                                     |[0x800003a4]:KMMAWB a1, a7, t2<br> [0x800003a8]:csrrs a7, vxsat, zero<br> [0x800003ac]:sw a1, 64(sp)<br>        |
|  24|[0x800022c8]<br>0x00000000|- rs1 : x25<br> - rs2 : x0<br> - rd : x9<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                            |[0x800003c0]:KMMAWB s1, s9, zero<br> [0x800003c4]:csrrs s9, vxsat, zero<br> [0x800003c8]:sw s1, 72(sp)<br>      |
|  25|[0x800022d0]<br>0xFFF737FF|- rs1 : x3<br> - rs2 : x31<br> - rd : x10<br> - rs2_h1_val == 512<br> - rs2_h0_val == 64<br> - rs1_w0_val == -2097153<br>                                           |[0x800003e0]:KMMAWB a0, gp, t6<br> [0x800003e4]:csrrs gp, vxsat, zero<br> [0x800003e8]:sw a0, 80(sp)<br>        |
|  26|[0x800022d8]<br>0x00001800|- rs1 : x7<br> - rs2 : x25<br> - rd : x14<br> - rs2_h1_val == 256<br> - rs1_w0_val == -67108865<br>                                                                 |[0x80000400]:KMMAWB a4, t2, s9<br> [0x80000404]:csrrs t2, vxsat, zero<br> [0x80000408]:sw a4, 88(sp)<br>        |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x11<br> - rs2 : x14<br> - rd : x0<br> - rs2_h1_val == 128<br> - rs2_h0_val == 21845<br> - rs1_w0_val == -268435457<br>                                      |[0x80000420]:KMMAWB zero, a1, a4<br> [0x80000424]:csrrs a1, vxsat, zero<br> [0x80000428]:sw zero, 96(sp)<br>    |
|  28|[0x800022e8]<br>0xFFEFFFFF|- rs1 : x4<br> - rs2 : x22<br> - rd : x1<br> - rs2_h1_val == 64<br> - rs2_h0_val == 8192<br> - rs1_w0_val == -8388609<br>                                           |[0x8000043c]:KMMAWB ra, tp, s6<br> [0x80000440]:csrrs tp, vxsat, zero<br> [0x80000444]:sw ra, 104(sp)<br>       |
|  29|[0x800022f0]<br>0xFFFEFFEF|- rs1 : x0<br> - rs2 : x8<br> - rd : x26<br> - rs2_h1_val == 32<br> - rs2_h0_val == 4096<br> - rs1_w0_val == 0<br>                                                  |[0x80000458]:KMMAWB s10, zero, fp<br> [0x8000045c]:csrrs zero, vxsat, zero<br> [0x80000460]:sw s10, 112(sp)<br> |
|  30|[0x800022f8]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2 : x20<br> - rd : x23<br> - rs2_h1_val == 16<br> - rs1_w0_val == 512<br>                                                                       |[0x80000474]:KMMAWB s7, s5, s4<br> [0x80000478]:csrrs s5, vxsat, zero<br> [0x8000047c]:sw s7, 120(sp)<br>       |
|  31|[0x80002300]<br>0xFFFFF7FF|- rs1 : x31<br> - rs2 : x21<br> - rd : x19<br> - rs2_h1_val == 8<br> - rs2_h0_val == 128<br> - rs1_w0_val == -1048577<br>                                           |[0x80000494]:KMMAWB s3, t6, s5<br> [0x80000498]:csrrs t6, vxsat, zero<br> [0x8000049c]:sw s3, 128(sp)<br>       |
|  32|[0x80002308]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x23<br> - rd : x27<br> - rs2_h1_val == 4<br> - rs2_h0_val == -65<br> - rs1_w0_val == 2<br>                                                  |[0x800004b8]:KMMAWB s11, s6, s7<br> [0x800004bc]:csrrs s6, vxsat, zero<br> [0x800004c0]:sw s11, 0(ra)<br>       |
|  33|[0x80002310]<br>0xFFFFFDFE|- rs2_h1_val == 2<br> - rs2_h0_val == -257<br> - rs1_w0_val == 131072<br>                                                                                           |[0x800004d4]:KMMAWB t6, t5, t4<br> [0x800004d8]:csrrs t5, vxsat, zero<br> [0x800004dc]:sw t6, 8(ra)<br>         |
|  34|[0x80002318]<br>0xFFFFFDFE|- rs2_h1_val == 1<br> - rs1_w0_val == -5<br>                                                                                                                        |[0x800004f0]:KMMAWB t6, t5, t4<br> [0x800004f4]:csrrs t5, vxsat, zero<br> [0x800004f8]:sw t6, 16(ra)<br>        |
|  35|[0x80002320]<br>0xFFFFFE06|- rs1_w0_val == 128<br>                                                                                                                                             |[0x80000508]:KMMAWB t6, t5, t4<br> [0x8000050c]:csrrs t5, vxsat, zero<br> [0x80000510]:sw t6, 24(ra)<br>        |
|  36|[0x80002328]<br>0xFFFFFE05|- rs1_w0_val == 64<br>                                                                                                                                              |[0x80000524]:KMMAWB t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 32(ra)<br>        |
|  37|[0x80002330]<br>0xFFFFFE0D|- rs1_w0_val == 32<br>                                                                                                                                              |[0x8000053c]:KMMAWB t6, t5, t4<br> [0x80000540]:csrrs t5, vxsat, zero<br> [0x80000544]:sw t6, 40(ra)<br>        |
|  38|[0x80002338]<br>0xFFFFFE0C|- rs2_h0_val == -1<br> - rs1_w0_val == 16<br>                                                                                                                       |[0x80000558]:KMMAWB t6, t5, t4<br> [0x8000055c]:csrrs t5, vxsat, zero<br> [0x80000560]:sw t6, 48(ra)<br>        |
|  39|[0x80002340]<br>0xFFFFFE0F|- rs2_h0_val == 32767<br> - rs1_w0_val == 8<br>                                                                                                                     |[0x80000574]:KMMAWB t6, t5, t4<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 56(ra)<br>        |
|  40|[0x80002348]<br>0xFFFFFE0E|- rs1_w0_val == 4<br>                                                                                                                                               |[0x80000590]:KMMAWB t6, t5, t4<br> [0x80000594]:csrrs t5, vxsat, zero<br> [0x80000598]:sw t6, 64(ra)<br>        |
|  41|[0x80002350]<br>0xFFFFFE0E|- rs1_w0_val == 1<br>                                                                                                                                               |[0x800005ac]:KMMAWB t6, t5, t4<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 72(ra)<br>        |
|  42|[0x80002360]<br>0xFFFFFE0E|- rs1_w0_val == -1<br>                                                                                                                                              |[0x800005e4]:KMMAWB t6, t5, t4<br> [0x800005e8]:csrrs t5, vxsat, zero<br> [0x800005ec]:sw t6, 88(ra)<br>        |
|  43|[0x80002368]<br>0x0555A8B8|- rs1_w0_val == -1431655766<br>                                                                                                                                     |[0x80000604]:KMMAWB t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 96(ra)<br>        |
|  44|[0x80002370]<br>0x0555A897|- rs2_h1_val == -1<br>                                                                                                                                              |[0x80000620]:KMMAWB t6, t5, t4<br> [0x80000624]:csrrs t5, vxsat, zero<br> [0x80000628]:sw t6, 104(ra)<br>       |
|  45|[0x80002378]<br>0x055AFDF7|- rs2_h0_val == -21846<br>                                                                                                                                          |[0x80000640]:KMMAWB t6, t5, t4<br> [0x80000644]:csrrs t5, vxsat, zero<br> [0x80000648]:sw t6, 112(ra)<br>       |
|  46|[0x80002380]<br>0x055AFDF7|- rs2_h1_val == 1024<br> - rs2_h0_val == -16385<br>                                                                                                                 |[0x8000065c]:KMMAWB t6, t5, t4<br> [0x80000660]:csrrs t5, vxsat, zero<br> [0x80000664]:sw t6, 120(ra)<br>       |
|  47|[0x80002388]<br>0x059B1DF7|- rs2_h0_val == -513<br>                                                                                                                                            |[0x8000067c]:KMMAWB t6, t5, t4<br> [0x80000680]:csrrs t5, vxsat, zero<br> [0x80000684]:sw t6, 128(ra)<br>       |
|  48|[0x80002390]<br>0x059B1BE7|- rs2_h0_val == -33<br>                                                                                                                                             |[0x80000698]:KMMAWB t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 136(ra)<br>       |
|  49|[0x80002398]<br>0x059B1BE7|- rs2_h0_val == -9<br>                                                                                                                                              |[0x800006b4]:KMMAWB t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 144(ra)<br>       |
|  50|[0x800023a0]<br>0x059B1BE7|- rs2_h0_val == -5<br> - rs1_w0_val == -2049<br>                                                                                                                    |[0x800006d4]:KMMAWB t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 152(ra)<br>       |
|  51|[0x800023a8]<br>0x059B1CA7|- rs2_h0_val == -3<br> - rs1_w0_val == -4194305<br>                                                                                                                 |[0x800006f4]:KMMAWB t6, t5, t4<br> [0x800006f8]:csrrs t5, vxsat, zero<br> [0x800006fc]:sw t6, 160(ra)<br>       |
|  52|[0x800023b0]<br>0x059B1CA7|- rs2_h0_val == -2<br> - rs1_w0_val == -513<br>                                                                                                                     |[0x80000710]:KMMAWB t6, t5, t4<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sw t6, 168(ra)<br>       |
|  53|[0x800023b8]<br>0x059B1CC7|- rs2_h0_val == -32768<br>                                                                                                                                          |[0x80000728]:KMMAWB t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 176(ra)<br>       |
|  54|[0x800023c0]<br>0x059B20C7|- rs2_h0_val == 256<br>                                                                                                                                             |[0x80000744]:KMMAWB t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 184(ra)<br>       |
|  55|[0x800023c8]<br>0x059D20C7|- rs2_h0_val == 32<br> - rs1_w0_val == 268435456<br>                                                                                                                |[0x80000760]:KMMAWB t6, t5, t4<br> [0x80000764]:csrrs t5, vxsat, zero<br> [0x80000768]:sw t6, 192(ra)<br>       |
|  56|[0x800023d0]<br>0x059D20E7|- rs2_h0_val == 16<br>                                                                                                                                              |[0x8000077c]:KMMAWB t6, t5, t4<br> [0x80000780]:csrrs t5, vxsat, zero<br> [0x80000784]:sw t6, 200(ra)<br>       |
|  57|[0x800023d8]<br>0x059D20E6|- rs2_h0_val == 8<br>                                                                                                                                               |[0x80000798]:KMMAWB t6, t5, t4<br> [0x8000079c]:csrrs t5, vxsat, zero<br> [0x800007a0]:sw t6, 208(ra)<br>       |
|  58|[0x800023e0]<br>0x059CA0E5|- rs2_h0_val == 2<br> - rs1_w0_val == -1073741825<br>                                                                                                               |[0x800007b8]:KMMAWB t6, t5, t4<br> [0x800007bc]:csrrs t5, vxsat, zero<br> [0x800007c0]:sw t6, 216(ra)<br>       |
|  59|[0x800023e8]<br>0x059CA0E4|- rs2_h0_val == 1<br>                                                                                                                                               |[0x800007d8]:KMMAWB t6, t5, t4<br> [0x800007dc]:csrrs t5, vxsat, zero<br> [0x800007e0]:sw t6, 224(ra)<br>       |
|  60|[0x800023f0]<br>0x059CA0E4|- rs1_w0_val == 8192<br>                                                                                                                                            |[0x800007f0]:KMMAWB t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 232(ra)<br>       |
|  61|[0x800023f8]<br>0x059A4B8E|- rs1_w0_val == 1431655765<br>                                                                                                                                      |[0x80000810]:KMMAWB t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 240(ra)<br>       |
|  62|[0x80002400]<br>0x059DCB8D|- rs1_w0_val == 2147483647<br>                                                                                                                                      |[0x80000830]:KMMAWB t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 248(ra)<br>       |
|  63|[0x80002408]<br>0x059DDC8D|- rs1_w0_val == -16777217<br>                                                                                                                                       |[0x80000850]:KMMAWB t6, t5, t4<br> [0x80000854]:csrrs t5, vxsat, zero<br> [0x80000858]:sw t6, 256(ra)<br>       |
|  64|[0x80002410]<br>0x059DE095|- rs1_w0_val == -524289<br>                                                                                                                                         |[0x80000870]:KMMAWB t6, t5, t4<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sw t6, 264(ra)<br>       |
|  65|[0x80002418]<br>0x059CE098|- rs1_w0_val == -262145<br>                                                                                                                                         |[0x80000890]:KMMAWB t6, t5, t4<br> [0x80000894]:csrrs t5, vxsat, zero<br> [0x80000898]:sw t6, 272(ra)<br>       |
|  66|[0x80002420]<br>0x059CE057|- rs1_w0_val == -65537<br>                                                                                                                                          |[0x800008b0]:KMMAWB t6, t5, t4<br> [0x800008b4]:csrrs t5, vxsat, zero<br> [0x800008b8]:sw t6, 280(ra)<br>       |
|  67|[0x80002428]<br>0x059CE053|- rs1_w0_val == -32769<br>                                                                                                                                          |[0x800008d0]:KMMAWB t6, t5, t4<br> [0x800008d4]:csrrs t5, vxsat, zero<br> [0x800008d8]:sw t6, 288(ra)<br>       |
|  68|[0x80002430]<br>0x059CE057|- rs1_w0_val == -8193<br>                                                                                                                                           |[0x800008f0]:KMMAWB t6, t5, t4<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sw t6, 296(ra)<br>       |
|  69|[0x80002438]<br>0x059CDC56|- rs1_w0_val == -4097<br>                                                                                                                                           |[0x8000090c]:KMMAWB t6, t5, t4<br> [0x80000910]:csrrs t5, vxsat, zero<br> [0x80000914]:sw t6, 304(ra)<br>       |
|  70|[0x80002440]<br>0x059CDB00|- rs1_w0_val == -1025<br>                                                                                                                                           |[0x80000928]:KMMAWB t6, t5, t4<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sw t6, 312(ra)<br>       |
|  71|[0x80002448]<br>0x059CDB00|- rs1_w0_val == -129<br>                                                                                                                                            |[0x80000944]:KMMAWB t6, t5, t4<br> [0x80000948]:csrrs t5, vxsat, zero<br> [0x8000094c]:sw t6, 320(ra)<br>       |
|  72|[0x80002450]<br>0x059CDB01|- rs2_h0_val == -2049<br> - rs1_w0_val == -33<br>                                                                                                                   |[0x80000960]:KMMAWB t6, t5, t4<br> [0x80000964]:csrrs t5, vxsat, zero<br> [0x80000968]:sw t6, 328(ra)<br>       |
|  73|[0x80002458]<br>0x059CDB09|- rs1_w0_val == -17<br>                                                                                                                                             |[0x80000978]:KMMAWB t6, t5, t4<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sw t6, 336(ra)<br>       |
|  74|[0x80002460]<br>0x059CDB07|- rs1_w0_val == -3<br>                                                                                                                                              |[0x80000994]:KMMAWB t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 344(ra)<br>       |
|  75|[0x80002468]<br>0x059CDB08|- rs1_w0_val == -2<br>                                                                                                                                              |[0x800009ac]:KMMAWB t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 352(ra)<br>       |
|  76|[0x80002470]<br>0x061CDB08|- rs1_w0_val == 1073741824<br>                                                                                                                                      |[0x800009c8]:KMMAWB t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 360(ra)<br>       |
|  77|[0x80002478]<br>0x021CBB08|- rs1_w0_val == 536870912<br>                                                                                                                                       |[0x800009e4]:KMMAWB t6, t5, t4<br> [0x800009e8]:csrrs t5, vxsat, zero<br> [0x800009ec]:sw t6, 368(ra)<br>       |
|  78|[0x80002480]<br>0x041CB308|- rs1_w0_val == 134217728<br>                                                                                                                                       |[0x80000a00]:KMMAWB t6, t5, t4<br> [0x80000a04]:csrrs t5, vxsat, zero<br> [0x80000a08]:sw t6, 376(ra)<br>       |
|  79|[0x80002488]<br>0x051CB308|- rs1_w0_val == 67108864<br>                                                                                                                                        |[0x80000a18]:KMMAWB t6, t5, t4<br> [0x80000a1c]:csrrs t5, vxsat, zero<br> [0x80000a20]:sw t6, 384(ra)<br>       |
|  80|[0x80002490]<br>0x051CB108|- rs1_w0_val == 33554432<br>                                                                                                                                        |[0x80000a34]:KMMAWB t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 392(ra)<br>       |
|  81|[0x80002498]<br>0x051CAB08|- rs1_w0_val == 16777216<br>                                                                                                                                        |[0x80000a50]:KMMAWB t6, t5, t4<br> [0x80000a54]:csrrs t5, vxsat, zero<br> [0x80000a58]:sw t6, 400(ra)<br>       |
|  82|[0x800024a0]<br>0x051CAA88|- rs1_w0_val == 4194304<br>                                                                                                                                         |[0x80000a6c]:KMMAWB t6, t5, t4<br> [0x80000a70]:csrrs t5, vxsat, zero<br> [0x80000a74]:sw t6, 408(ra)<br>       |
|  83|[0x800024a8]<br>0x051CAA8F|- rs1_w0_val == 65536<br>                                                                                                                                           |[0x80000a88]:KMMAWB t6, t5, t4<br> [0x80000a8c]:csrrs t5, vxsat, zero<br> [0x80000a90]:sw t6, 416(ra)<br>       |
|  84|[0x800024b0]<br>0x051C8A8E|- rs1_w0_val == 32768<br>                                                                                                                                           |[0x80000aa4]:KMMAWB t6, t5, t4<br> [0x80000aa8]:csrrs t5, vxsat, zero<br> [0x80000aac]:sw t6, 424(ra)<br>       |
|  85|[0x800024b8]<br>0x051C8A8B|- rs1_w0_val == 4096<br>                                                                                                                                            |[0x80000ac0]:KMMAWB t6, t5, t4<br> [0x80000ac4]:csrrs t5, vxsat, zero<br> [0x80000ac8]:sw t6, 432(ra)<br>       |
|  86|[0x800024c0]<br>0x051C8AAB|- rs1_w0_val == 524288<br>                                                                                                                                          |[0x80000adc]:KMMAWB t6, t5, t4<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sw t6, 440(ra)<br>       |
|  87|[0x800024c8]<br>0x05180AAB|- rs1_w0_val == -2147483648<br>                                                                                                                                     |[0x80000af8]:KMMAWB t6, t5, t4<br> [0x80000afc]:csrrs t5, vxsat, zero<br> [0x80000b00]:sw t6, 448(ra)<br>       |
|  88|[0x800024d8]<br>0xFFA2BAA9|- rs1_w0_val == -33554433<br>                                                                                                                                       |[0x80000b34]:KMMAWB t6, t5, t4<br> [0x80000b38]:csrrs t5, vxsat, zero<br> [0x80000b3c]:sw t6, 464(ra)<br>       |
