
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000ba0')]      |
| SIG_REGION                | [('0x80002210', '0x80002500', '188 words')]      |
| COV_LABELS                | kmmwb2      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmwb2-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 188      |
| STAT1                     | 92      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 94     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005f4]:KMMWB2 t6, t5, t4
      [0x800005f8]:csrrs t5, vxsat, zero
      [0x800005fc]:sw t6, 88(ra)
 -- Signature Address: 0x80002370 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -8193
      - rs2_h0_val == 8192
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b6c]:KMMWB2 t6, t5, t4
      [0x80000b70]:csrrs t5, vxsat, zero
      [0x80000b74]:sw t6, 472(ra)
 -- Signature Address: 0x800024f0 Data: 0x007FFF00
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 512
      - rs2_h0_val == 32767
      - rs1_w0_val == 8388608






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmwb2', 'rs1 : x11', 'rs2 : x11', 'rd : x11', 'rs1 == rs2 == rd', 'rs2_h1_val == -32768', 'rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000118]:KMMWB2 a1, a1, a1
	-[0x8000011c]:csrrs a1, vxsat, zero
	-[0x80000120]:sw a1, 0(sp)
Current Store : [0x80000124] : sw a1, 4(sp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x8', 'rd : x31', 'rs1 == rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000130]:KMMWB2 t6, fp, fp
	-[0x80000134]:csrrs fp, vxsat, zero
	-[0x80000138]:sw t6, 8(sp)
Current Store : [0x8000013c] : sw fp, 12(sp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x19', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000014c]:KMMWB2 s3, t0, s10
	-[0x80000150]:csrrs t0, vxsat, zero
	-[0x80000154]:sw s3, 16(sp)
Current Store : [0x80000158] : sw t0, 20(sp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x25', 'rd : x25', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000168]:KMMWB2 s9, a5, s9
	-[0x8000016c]:csrrs a5, vxsat, zero
	-[0x80000170]:sw s9, 24(sp)
Current Store : [0x80000174] : sw a5, 28(sp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x9', 'rd : x13', 'rs1 == rd != rs2', 'rs2_h1_val == -16385', 'rs2_h0_val == 16', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000184]:KMMWB2 a3, a3, s1
	-[0x80000188]:csrrs a3, vxsat, zero
	-[0x8000018c]:sw a3, 32(sp)
Current Store : [0x80000190] : sw a3, 36(sp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x21', 'rd : x8', 'rs2_h1_val == -8193', 'rs2_h0_val == -2049', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800001a4]:KMMWB2 fp, a7, s5
	-[0x800001a8]:csrrs a7, vxsat, zero
	-[0x800001ac]:sw fp, 40(sp)
Current Store : [0x800001b0] : sw a7, 44(sp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x10', 'rd : x0', 'rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x800001c0]:KMMWB2 zero, a4, a0
	-[0x800001c4]:csrrs a4, vxsat, zero
	-[0x800001c8]:sw zero, 48(sp)
Current Store : [0x800001cc] : sw a4, 52(sp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x16', 'rd : x1', 'rs2_h1_val == -2049', 'rs2_h0_val == 4', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800001e0]:KMMWB2 ra, t5, a6
	-[0x800001e4]:csrrs t5, vxsat, zero
	-[0x800001e8]:sw ra, 56(sp)
Current Store : [0x800001ec] : sw t5, 60(sp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x28', 'rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x800001fc]:KMMWB2 t3, ra, s4
	-[0x80000200]:csrrs ra, vxsat, zero
	-[0x80000204]:sw t3, 64(sp)
Current Store : [0x80000208] : sw ra, 68(sp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x24', 'rd : x12', 'rs2_h1_val == -513', 'rs2_h0_val == -33', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000218]:KMMWB2 a2, gp, s8
	-[0x8000021c]:csrrs gp, vxsat, zero
	-[0x80000220]:sw a2, 72(sp)
Current Store : [0x80000224] : sw gp, 76(sp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x30', 'rd : x15', 'rs2_h1_val == -257', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000234]:KMMWB2 a5, a0, t5
	-[0x80000238]:csrrs a0, vxsat, zero
	-[0x8000023c]:sw a5, 80(sp)
Current Store : [0x80000240] : sw a0, 84(sp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x31', 'rd : x24', 'rs2_h1_val == -129', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000250]:KMMWB2 s8, t2, t6
	-[0x80000254]:csrrs t2, vxsat, zero
	-[0x80000258]:sw s8, 88(sp)
Current Store : [0x8000025c] : sw t2, 92(sp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x3', 'rd : x4', 'rs2_h1_val == -65', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x8000026c]:KMMWB2 tp, s2, gp
	-[0x80000270]:csrrs s2, vxsat, zero
	-[0x80000274]:sw tp, 96(sp)
Current Store : [0x80000278] : sw s2, 100(sp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x15', 'rd : x9', 'rs2_h1_val == -33', 'rs2_h0_val == 512', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000288]:KMMWB2 s1, t3, a5
	-[0x8000028c]:csrrs t3, vxsat, zero
	-[0x80000290]:sw s1, 104(sp)
Current Store : [0x80000294] : sw t3, 108(sp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x7', 'rs2_h1_val == -17', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800002a0]:KMMWB2 t2, a6, s7
	-[0x800002a4]:csrrs a6, vxsat, zero
	-[0x800002a8]:sw t2, 112(sp)
Current Store : [0x800002ac] : sw a6, 116(sp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x5', 'rd : x30', 'rs2_h1_val == -9']
Last Code Sequence : 
	-[0x800002bc]:KMMWB2 t5, s9, t0
	-[0x800002c0]:csrrs s9, vxsat, zero
	-[0x800002c4]:sw t5, 120(sp)
Current Store : [0x800002c8] : sw s9, 124(sp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x14', 'rd : x20', 'rs2_h1_val == -5', 'rs2_h0_val == 2048', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800002dc]:KMMWB2 s4, s11, a4
	-[0x800002e0]:csrrs s11, vxsat, zero
	-[0x800002e4]:sw s4, 128(sp)
Current Store : [0x800002e8] : sw s11, 132(sp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x18', 'rd : x5', 'rs2_h1_val == -3', 'rs2_h0_val == 256', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000300]:KMMWB2 t0, t6, s2
	-[0x80000304]:csrrs t6, vxsat, zero
	-[0x80000308]:sw t0, 0(fp)
Current Store : [0x8000030c] : sw t6, 4(fp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x19', 'rd : x18', 'rs2_h1_val == -2', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x8000031c]:KMMWB2 s2, s1, s3
	-[0x80000320]:csrrs s1, vxsat, zero
	-[0x80000324]:sw s2, 8(fp)
Current Store : [0x80000328] : sw s1, 12(fp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x2', 'rd : x21', 'rs2_h1_val == 16384', 'rs2_h0_val == -65', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x8000033c]:KMMWB2 s5, a2, sp
	-[0x80000340]:csrrs a2, vxsat, zero
	-[0x80000344]:sw s5, 16(fp)
Current Store : [0x80000348] : sw a2, 20(fp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x17', 'rd : x23', 'rs2_h1_val == 8192', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x8000035c]:KMMWB2 s7, tp, a7
	-[0x80000360]:csrrs tp, vxsat, zero
	-[0x80000364]:sw s7, 24(fp)
Current Store : [0x80000368] : sw tp, 28(fp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x29', 'rd : x14', 'rs2_h1_val == 4096', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000378]:KMMWB2 a4, s7, t4
	-[0x8000037c]:csrrs s7, vxsat, zero
	-[0x80000380]:sw a4, 32(fp)
Current Store : [0x80000384] : sw s7, 36(fp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x6', 'rd : x17', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x80000394]:KMMWB2 a7, s8, t1
	-[0x80000398]:csrrs s8, vxsat, zero
	-[0x8000039c]:sw a7, 40(fp)
Current Store : [0x800003a0] : sw s8, 44(fp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x1', 'rd : x6', 'rs2_h1_val == 1024', 'rs2_h0_val == 128', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800003b0]:KMMWB2 t1, t4, ra
	-[0x800003b4]:csrrs t4, vxsat, zero
	-[0x800003b8]:sw t1, 48(fp)
Current Store : [0x800003bc] : sw t4, 52(fp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x0', 'rd : x29', 'rs2_h1_val == 0', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800003cc]:KMMWB2 t4, t1, zero
	-[0x800003d0]:csrrs t1, vxsat, zero
	-[0x800003d4]:sw t4, 56(fp)
Current Store : [0x800003d8] : sw t1, 60(fp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x13', 'rd : x10', 'rs2_h1_val == 256', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800003e4]:KMMWB2 a0, s6, a3
	-[0x800003e8]:csrrs s6, vxsat, zero
	-[0x800003ec]:sw a0, 64(fp)
Current Store : [0x800003f0] : sw s6, 68(fp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x27', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80000400]:KMMWB2 s11, sp, a2
	-[0x80000404]:csrrs sp, vxsat, zero
	-[0x80000408]:sw s11, 72(fp)
Current Store : [0x8000040c] : sw sp, 76(fp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x22', 'rd : x3', 'rs2_h1_val == 64', 'rs2_h0_val == -16385', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000041c]:KMMWB2 gp, s10, s6
	-[0x80000420]:csrrs s10, vxsat, zero
	-[0x80000424]:sw gp, 80(fp)
Current Store : [0x80000428] : sw s10, 84(fp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x28', 'rd : x2', 'rs2_h1_val == 32', 'rs2_h0_val == -3', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000043c]:KMMWB2 sp, zero, t3
	-[0x80000440]:csrrs zero, vxsat, zero
	-[0x80000444]:sw sp, 88(fp)
Current Store : [0x80000448] : sw zero, 92(fp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x4', 'rd : x22', 'rs2_h1_val == 16', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80000458]:KMMWB2 s6, s4, tp
	-[0x8000045c]:csrrs s4, vxsat, zero
	-[0x80000460]:sw s6, 96(fp)
Current Store : [0x80000464] : sw s4, 100(fp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x7', 'rd : x26', 'rs2_h1_val == 8', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000470]:KMMWB2 s10, s5, t2
	-[0x80000474]:csrrs s5, vxsat, zero
	-[0x80000478]:sw s10, 104(fp)
Current Store : [0x8000047c] : sw s5, 108(fp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x27', 'rd : x16', 'rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80000488]:KMMWB2 a6, s3, s11
	-[0x8000048c]:csrrs s3, vxsat, zero
	-[0x80000490]:sw a6, 112(fp)
Current Store : [0x80000494] : sw s3, 116(fp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 21845', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800004a4]:KMMWB2 t6, t5, t4
	-[0x800004a8]:csrrs t5, vxsat, zero
	-[0x800004ac]:sw t6, 120(fp)
Current Store : [0x800004b0] : sw t5, 124(fp) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800004cc]:KMMWB2 t6, t5, t4
	-[0x800004d0]:csrrs t5, vxsat, zero
	-[0x800004d4]:sw t6, 0(ra)
Current Store : [0x800004d8] : sw t5, 4(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x800004e4]:KMMWB2 t6, t5, t4
	-[0x800004e8]:csrrs t5, vxsat, zero
	-[0x800004ec]:sw t6, 8(ra)
Current Store : [0x800004f0] : sw t5, 12(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000500]:KMMWB2 t6, t5, t4
	-[0x80000504]:csrrs t5, vxsat, zero
	-[0x80000508]:sw t6, 16(ra)
Current Store : [0x8000050c] : sw t5, 20(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x8000051c]:KMMWB2 t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 24(ra)
Current Store : [0x80000528] : sw t5, 28(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000534]:KMMWB2 t6, t5, t4
	-[0x80000538]:csrrs t5, vxsat, zero
	-[0x8000053c]:sw t6, 32(ra)
Current Store : [0x80000540] : sw t5, 36(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000550]:KMMWB2 t6, t5, t4
	-[0x80000554]:csrrs t5, vxsat, zero
	-[0x80000558]:sw t6, 40(ra)
Current Store : [0x8000055c] : sw t5, 44(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x8000056c]:KMMWB2 t6, t5, t4
	-[0x80000570]:csrrs t5, vxsat, zero
	-[0x80000574]:sw t6, 48(ra)
Current Store : [0x80000578] : sw t5, 52(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000588]:KMMWB2 t6, t5, t4
	-[0x8000058c]:csrrs t5, vxsat, zero
	-[0x80000590]:sw t6, 56(ra)
Current Store : [0x80000594] : sw t5, 60(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800005a4]:KMMWB2 t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 64(ra)
Current Store : [0x800005b0] : sw t5, 68(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800005c0]:KMMWB2 t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 72(ra)
Current Store : [0x800005cc] : sw t5, 76(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800005dc]:KMMWB2 t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 80(ra)
Current Store : [0x800005e8] : sw t5, 84(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['opcode : kmmwb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -8193', 'rs2_h0_val == 8192', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800005f4]:KMMWB2 t6, t5, t4
	-[0x800005f8]:csrrs t5, vxsat, zero
	-[0x800005fc]:sw t6, 88(ra)
Current Store : [0x80000600] : sw t5, 92(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000610]:KMMWB2 t6, t5, t4
	-[0x80000614]:csrrs t5, vxsat, zero
	-[0x80000618]:sw t6, 96(ra)
Current Store : [0x8000061c] : sw t5, 100(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000062c]:KMMWB2 t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 104(ra)
Current Store : [0x80000638] : sw t5, 108(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000648]:KMMWB2 t6, t5, t4
	-[0x8000064c]:csrrs t5, vxsat, zero
	-[0x80000650]:sw t6, 112(ra)
Current Store : [0x80000654] : sw t5, 116(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000664]:KMMWB2 t6, t5, t4
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 120(ra)
Current Store : [0x80000670] : sw t5, 124(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000680]:KMMWB2 t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 128(ra)
Current Store : [0x8000068c] : sw t5, 132(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x8000069c]:KMMWB2 t6, t5, t4
	-[0x800006a0]:csrrs t5, vxsat, zero
	-[0x800006a4]:sw t6, 136(ra)
Current Store : [0x800006a8] : sw t5, 140(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x800006b8]:KMMWB2 t6, t5, t4
	-[0x800006bc]:csrrs t5, vxsat, zero
	-[0x800006c0]:sw t6, 144(ra)
Current Store : [0x800006c4] : sw t5, 148(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800006d8]:KMMWB2 t6, t5, t4
	-[0x800006dc]:csrrs t5, vxsat, zero
	-[0x800006e0]:sw t6, 152(ra)
Current Store : [0x800006e4] : sw t5, 156(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800006f8]:KMMWB2 t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 160(ra)
Current Store : [0x80000704] : sw t5, 164(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h1_val == 512', 'rs2_h0_val == -17', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000714]:KMMWB2 t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 168(ra)
Current Store : [0x80000720] : sw t5, 172(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000730]:KMMWB2 t6, t5, t4
	-[0x80000734]:csrrs t5, vxsat, zero
	-[0x80000738]:sw t6, 176(ra)
Current Store : [0x8000073c] : sw t5, 180(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80000750]:KMMWB2 t6, t5, t4
	-[0x80000754]:csrrs t5, vxsat, zero
	-[0x80000758]:sw t6, 184(ra)
Current Store : [0x8000075c] : sw t5, 188(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000770]:KMMWB2 t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 192(ra)
Current Store : [0x8000077c] : sw t5, 196(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000078c]:KMMWB2 t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 200(ra)
Current Store : [0x80000798] : sw t5, 204(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800007a4]:KMMWB2 t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 208(ra)
Current Store : [0x800007b0] : sw t5, 212(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800007c0]:KMMWB2 t6, t5, t4
	-[0x800007c4]:csrrs t5, vxsat, zero
	-[0x800007c8]:sw t6, 216(ra)
Current Store : [0x800007cc] : sw t5, 220(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800007e0]:KMMWB2 t6, t5, t4
	-[0x800007e4]:csrrs t5, vxsat, zero
	-[0x800007e8]:sw t6, 224(ra)
Current Store : [0x800007ec] : sw t5, 228(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800007fc]:KMMWB2 t6, t5, t4
	-[0x80000800]:csrrs t5, vxsat, zero
	-[0x80000804]:sw t6, 232(ra)
Current Store : [0x80000808] : sw t5, 236(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000081c]:KMMWB2 t6, t5, t4
	-[0x80000820]:csrrs t5, vxsat, zero
	-[0x80000824]:sw t6, 240(ra)
Current Store : [0x80000828] : sw t5, 244(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000083c]:KMMWB2 t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 248(ra)
Current Store : [0x80000848] : sw t5, 252(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000085c]:KMMWB2 t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 256(ra)
Current Store : [0x80000868] : sw t5, 260(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x8000087c]:KMMWB2 t6, t5, t4
	-[0x80000880]:csrrs t5, vxsat, zero
	-[0x80000884]:sw t6, 264(ra)
Current Store : [0x80000888] : sw t5, 268(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000089c]:KMMWB2 t6, t5, t4
	-[0x800008a0]:csrrs t5, vxsat, zero
	-[0x800008a4]:sw t6, 272(ra)
Current Store : [0x800008a8] : sw t5, 276(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800008bc]:KMMWB2 t6, t5, t4
	-[0x800008c0]:csrrs t5, vxsat, zero
	-[0x800008c4]:sw t6, 280(ra)
Current Store : [0x800008c8] : sw t5, 284(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800008d8]:KMMWB2 t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 288(ra)
Current Store : [0x800008e4] : sw t5, 292(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800008f4]:KMMWB2 t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 296(ra)
Current Store : [0x80000900] : sw t5, 300(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000914]:KMMWB2 t6, t5, t4
	-[0x80000918]:csrrs t5, vxsat, zero
	-[0x8000091c]:sw t6, 304(ra)
Current Store : [0x80000920] : sw t5, 308(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000934]:KMMWB2 t6, t5, t4
	-[0x80000938]:csrrs t5, vxsat, zero
	-[0x8000093c]:sw t6, 312(ra)
Current Store : [0x80000940] : sw t5, 316(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000954]:KMMWB2 t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 320(ra)
Current Store : [0x80000960] : sw t5, 324(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000974]:KMMWB2 t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 328(ra)
Current Store : [0x80000980] : sw t5, 332(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000994]:KMMWB2 t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 336(ra)
Current Store : [0x800009a0] : sw t5, 340(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800009b0]:KMMWB2 t6, t5, t4
	-[0x800009b4]:csrrs t5, vxsat, zero
	-[0x800009b8]:sw t6, 344(ra)
Current Store : [0x800009bc] : sw t5, 348(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800009cc]:KMMWB2 t6, t5, t4
	-[0x800009d0]:csrrs t5, vxsat, zero
	-[0x800009d4]:sw t6, 352(ra)
Current Store : [0x800009d8] : sw t5, 356(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800009e8]:KMMWB2 t6, t5, t4
	-[0x800009ec]:csrrs t5, vxsat, zero
	-[0x800009f0]:sw t6, 360(ra)
Current Store : [0x800009f4] : sw t5, 364(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000a04]:KMMWB2 t6, t5, t4
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sw t6, 368(ra)
Current Store : [0x80000a10] : sw t5, 372(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000a20]:KMMWB2 t6, t5, t4
	-[0x80000a24]:csrrs t5, vxsat, zero
	-[0x80000a28]:sw t6, 376(ra)
Current Store : [0x80000a2c] : sw t5, 380(ra) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000a3c]:KMMWB2 t6, t5, t4
	-[0x80000a40]:csrrs t5, vxsat, zero
	-[0x80000a44]:sw t6, 384(ra)
Current Store : [0x80000a48] : sw t5, 388(ra) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000a58]:KMMWB2 t6, t5, t4
	-[0x80000a5c]:csrrs t5, vxsat, zero
	-[0x80000a60]:sw t6, 392(ra)
Current Store : [0x80000a64] : sw t5, 396(ra) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000a74]:KMMWB2 t6, t5, t4
	-[0x80000a78]:csrrs t5, vxsat, zero
	-[0x80000a7c]:sw t6, 400(ra)
Current Store : [0x80000a80] : sw t5, 404(ra) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000a90]:KMMWB2 t6, t5, t4
	-[0x80000a94]:csrrs t5, vxsat, zero
	-[0x80000a98]:sw t6, 408(ra)
Current Store : [0x80000a9c] : sw t5, 412(ra) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000aac]:KMMWB2 t6, t5, t4
	-[0x80000ab0]:csrrs t5, vxsat, zero
	-[0x80000ab4]:sw t6, 416(ra)
Current Store : [0x80000ab8] : sw t5, 420(ra) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000ac4]:KMMWB2 t6, t5, t4
	-[0x80000ac8]:csrrs t5, vxsat, zero
	-[0x80000acc]:sw t6, 424(ra)
Current Store : [0x80000ad0] : sw t5, 428(ra) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ae0]:KMMWB2 t6, t5, t4
	-[0x80000ae4]:csrrs t5, vxsat, zero
	-[0x80000ae8]:sw t6, 432(ra)
Current Store : [0x80000aec] : sw t5, 436(ra) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000af8]:KMMWB2 t6, t5, t4
	-[0x80000afc]:csrrs t5, vxsat, zero
	-[0x80000b00]:sw t6, 440(ra)
Current Store : [0x80000b04] : sw t5, 444(ra) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000b14]:KMMWB2 t6, t5, t4
	-[0x80000b18]:csrrs t5, vxsat, zero
	-[0x80000b1c]:sw t6, 448(ra)
Current Store : [0x80000b20] : sw t5, 452(ra) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000b34]:KMMWB2 t6, t5, t4
	-[0x80000b38]:csrrs t5, vxsat, zero
	-[0x80000b3c]:sw t6, 456(ra)
Current Store : [0x80000b40] : sw t5, 460(ra) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000b50]:KMMWB2 t6, t5, t4
	-[0x80000b54]:csrrs t5, vxsat, zero
	-[0x80000b58]:sw t6, 464(ra)
Current Store : [0x80000b5c] : sw t5, 468(ra) -- Store: [0x800024ec]:0x00000000




Last Coverpoint : ['opcode : kmmwb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 512', 'rs2_h0_val == 32767', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000b6c]:KMMWB2 t6, t5, t4
	-[0x80000b70]:csrrs t5, vxsat, zero
	-[0x80000b74]:sw t6, 472(ra)
Current Store : [0x80000b78] : sw t5, 476(ra) -- Store: [0x800024f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000b88]:KMMWB2 t6, t5, t4
	-[0x80000b8c]:csrrs t5, vxsat, zero
	-[0x80000b90]:sw t6, 480(ra)
Current Store : [0x80000b94] : sw t5, 484(ra) -- Store: [0x800024fc]:0x00000000





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

|s.no|        signature         |                                                                   coverpoints                                                                    |                                                    code                                                     |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmwb2<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x11<br> - rs1 == rs2 == rd<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 64<br>     |[0x80000118]:KMMWB2 a1, a1, a1<br> [0x8000011c]:csrrs a1, vxsat, zero<br> [0x80000120]:sw a1, 0(sp)<br>      |
|   2|[0x80002218]<br>0x00000000|- rs1 : x8<br> - rs2 : x8<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 0<br>                              |[0x80000130]:KMMWB2 t6, fp, fp<br> [0x80000134]:csrrs fp, vxsat, zero<br> [0x80000138]:sw t6, 8(sp)<br>      |
|   3|[0x80002220]<br>0x00000000|- rs1 : x5<br> - rs2 : x26<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs1_w0_val == -1025<br>   |[0x8000014c]:KMMWB2 s3, t0, s10<br> [0x80000150]:csrrs t0, vxsat, zero<br> [0x80000154]:sw s3, 16(sp)<br>    |
|   4|[0x80002228]<br>0xFFFFFFFF|- rs1 : x15<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs1_w0_val == -257<br>                          |[0x80000168]:KMMWB2 s9, a5, s9<br> [0x8000016c]:csrrs a5, vxsat, zero<br> [0x80000170]:sw s9, 24(sp)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x13<br> - rs2 : x9<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 16<br> - rs1_w0_val == 262144<br> |[0x80000184]:KMMWB2 a3, a3, s1<br> [0x80000188]:csrrs a3, vxsat, zero<br> [0x8000018c]:sw a3, 32(sp)<br>     |
|   6|[0x80002238]<br>0x00801000|- rs1 : x17<br> - rs2 : x21<br> - rd : x8<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -2049<br> - rs1_w0_val == -134217729<br>                  |[0x800001a4]:KMMWB2 fp, a7, s5<br> [0x800001a8]:csrrs a7, vxsat, zero<br> [0x800001ac]:sw fp, 40(sp)<br>     |
|   7|[0x80002240]<br>0x00000000|- rs1 : x14<br> - rs2 : x10<br> - rd : x0<br> - rs2_h1_val == -4097<br>                                                                           |[0x800001c0]:KMMWB2 zero, a4, a0<br> [0x800001c4]:csrrs a4, vxsat, zero<br> [0x800001c8]:sw zero, 48(sp)<br> |
|   8|[0x80002248]<br>0xFFFFFDFF|- rs1 : x30<br> - rs2 : x16<br> - rd : x1<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 4<br> - rs1_w0_val == -4194305<br>                        |[0x800001e0]:KMMWB2 ra, t5, a6<br> [0x800001e4]:csrrs t5, vxsat, zero<br> [0x800001e8]:sw ra, 56(sp)<br>     |
|   9|[0x80002250]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x20<br> - rd : x28<br> - rs2_h1_val == -1025<br>                                                                           |[0x800001fc]:KMMWB2 t3, ra, s4<br> [0x80000200]:csrrs ra, vxsat, zero<br> [0x80000204]:sw t3, 64(sp)<br>     |
|  10|[0x80002258]<br>0x00000000|- rs1 : x3<br> - rs2 : x24<br> - rd : x12<br> - rs2_h1_val == -513<br> - rs2_h0_val == -33<br> - rs1_w0_val == -513<br>                           |[0x80000218]:KMMWB2 a2, gp, s8<br> [0x8000021c]:csrrs gp, vxsat, zero<br> [0x80000220]:sw a2, 72(sp)<br>     |
|  11|[0x80002260]<br>0xFFFFFFFF|- rs1 : x10<br> - rs2 : x30<br> - rd : x15<br> - rs2_h1_val == -257<br> - rs1_w0_val == 16<br>                                                    |[0x80000234]:KMMWB2 a5, a0, t5<br> [0x80000238]:csrrs a0, vxsat, zero<br> [0x8000023c]:sw a5, 80(sp)<br>     |
|  12|[0x80002268]<br>0xFFFFF200|- rs1 : x7<br> - rs2 : x31<br> - rd : x24<br> - rs2_h1_val == -129<br> - rs1_w0_val == 16777216<br>                                               |[0x80000250]:KMMWB2 s8, t2, t6<br> [0x80000254]:csrrs t2, vxsat, zero<br> [0x80000258]:sw s8, 88(sp)<br>     |
|  13|[0x80002270]<br>0x00000000|- rs1 : x18<br> - rs2 : x3<br> - rd : x4<br> - rs2_h1_val == -65<br> - rs2_h0_val == 32<br>                                                       |[0x8000026c]:KMMWB2 tp, s2, gp<br> [0x80000270]:csrrs s2, vxsat, zero<br> [0x80000274]:sw tp, 96(sp)<br>     |
|  14|[0x80002278]<br>0xFFFFFFFE|- rs1 : x28<br> - rs2 : x15<br> - rd : x9<br> - rs2_h1_val == -33<br> - rs2_h0_val == 512<br> - rs1_w0_val == -65<br>                             |[0x80000288]:KMMWB2 s1, t3, a5<br> [0x8000028c]:csrrs t3, vxsat, zero<br> [0x80000290]:sw s1, 104(sp)<br>    |
|  15|[0x80002280]<br>0x00000000|- rs1 : x16<br> - rs2 : x23<br> - rd : x7<br> - rs2_h1_val == -17<br> - rs1_w0_val == 268435456<br>                                               |[0x800002a0]:KMMWB2 t2, a6, s7<br> [0x800002a4]:csrrs a6, vxsat, zero<br> [0x800002a8]:sw t2, 112(sp)<br>    |
|  16|[0x80002288]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x5<br> - rd : x30<br> - rs2_h1_val == -9<br>                                                                              |[0x800002bc]:KMMWB2 t5, s9, t0<br> [0x800002c0]:csrrs s9, vxsat, zero<br> [0x800002c4]:sw t5, 120(sp)<br>    |
|  17|[0x80002290]<br>0xFFFF7FFF|- rs1 : x27<br> - rs2 : x14<br> - rd : x20<br> - rs2_h1_val == -5<br> - rs2_h0_val == 2048<br> - rs1_w0_val == -524289<br>                        |[0x800002dc]:KMMWB2 s4, s11, a4<br> [0x800002e0]:csrrs s11, vxsat, zero<br> [0x800002e4]:sw s4, 128(sp)<br>  |
|  18|[0x80002298]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x18<br> - rd : x5<br> - rs2_h1_val == -3<br> - rs2_h0_val == 256<br> - rs1_w0_val == -2<br>                               |[0x80000300]:KMMWB2 t0, t6, s2<br> [0x80000304]:csrrs t6, vxsat, zero<br> [0x80000308]:sw t0, 0(fp)<br>      |
|  19|[0x800022a0]<br>0x000001FF|- rs1 : x9<br> - rs2 : x19<br> - rd : x18<br> - rs2_h1_val == -2<br> - rs1_w0_val == 1024<br>                                                     |[0x8000031c]:KMMWB2 s2, s1, s3<br> [0x80000320]:csrrs s1, vxsat, zero<br> [0x80000324]:sw s2, 8(fp)<br>      |
|  20|[0x800022a8]<br>0x00208000|- rs1 : x12<br> - rs2 : x2<br> - rd : x21<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -65<br> - rs1_w0_val == -1073741825<br>                   |[0x8000033c]:KMMWB2 s5, a2, sp<br> [0x80000340]:csrrs a2, vxsat, zero<br> [0x80000344]:sw s5, 16(fp)<br>     |
|  21|[0x800022b0]<br>0x00002004|- rs1 : x4<br> - rs2 : x17<br> - rd : x23<br> - rs2_h1_val == 8192<br> - rs1_w0_val == -131073<br>                                                |[0x8000035c]:KMMWB2 s7, tp, a7<br> [0x80000360]:csrrs tp, vxsat, zero<br> [0x80000364]:sw s7, 24(fp)<br>     |
|  22|[0x800022b8]<br>0x00010000|- rs1 : x23<br> - rs2 : x29<br> - rd : x14<br> - rs2_h1_val == 4096<br> - rs1_w0_val == 536870912<br>                                             |[0x80000378]:KMMWB2 a4, s7, t4<br> [0x8000037c]:csrrs s7, vxsat, zero<br> [0x80000380]:sw a4, 32(fp)<br>     |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x24<br> - rs2 : x6<br> - rd : x17<br> - rs2_h1_val == 2048<br>                                                                            |[0x80000394]:KMMWB2 a7, s8, t1<br> [0x80000398]:csrrs s8, vxsat, zero<br> [0x8000039c]:sw a7, 40(fp)<br>     |
|  24|[0x800022c8]<br>0x00080000|- rs1 : x29<br> - rs2 : x1<br> - rd : x6<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 128<br> - rs1_w0_val == 134217728<br>                       |[0x800003b0]:KMMWB2 t1, t4, ra<br> [0x800003b4]:csrrs t4, vxsat, zero<br> [0x800003b8]:sw t1, 48(fp)<br>     |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x6<br> - rs2 : x0<br> - rd : x29<br> - rs2_h1_val == 0<br> - rs1_w0_val == 8388608<br>                                                    |[0x800003cc]:KMMWB2 t4, t1, zero<br> [0x800003d0]:csrrs t1, vxsat, zero<br> [0x800003d4]:sw t4, 56(fp)<br>   |
|  26|[0x800022d8]<br>0xFFFFFFFD|- rs1 : x22<br> - rs2 : x13<br> - rd : x10<br> - rs2_h1_val == 256<br> - rs2_h0_val == 8192<br>                                                   |[0x800003e4]:KMMWB2 a0, s6, a3<br> [0x800003e8]:csrrs s6, vxsat, zero<br> [0x800003ec]:sw a0, 64(fp)<br>     |
|  27|[0x800022e0]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x12<br> - rd : x27<br> - rs2_h1_val == 128<br>                                                                             |[0x80000400]:KMMWB2 s11, sp, a2<br> [0x80000404]:csrrs sp, vxsat, zero<br> [0x80000408]:sw s11, 72(fp)<br>   |
|  28|[0x800022e8]<br>0xFFDFFF80|- rs1 : x26<br> - rs2 : x22<br> - rd : x3<br> - rs2_h1_val == 64<br> - rs2_h0_val == -16385<br> - rs1_w0_val == 4194304<br>                       |[0x8000041c]:KMMWB2 gp, s10, s6<br> [0x80000420]:csrrs s10, vxsat, zero<br> [0x80000424]:sw gp, 80(fp)<br>   |
|  29|[0x800022f0]<br>0x00000000|- rs1 : x0<br> - rs2 : x28<br> - rd : x2<br> - rs2_h1_val == 32<br> - rs2_h0_val == -3<br> - rs1_w0_val == 0<br>                                  |[0x8000043c]:KMMWB2 sp, zero, t3<br> [0x80000440]:csrrs zero, vxsat, zero<br> [0x80000444]:sw sp, 88(fp)<br> |
|  30|[0x800022f8]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x4<br> - rd : x22<br> - rs2_h1_val == 16<br> - rs2_h0_val == 1024<br>                                                     |[0x80000458]:KMMWB2 s6, s4, tp<br> [0x8000045c]:csrrs s4, vxsat, zero<br> [0x80000460]:sw s6, 96(fp)<br>     |
|  31|[0x80002300]<br>0xFFF80000|- rs1 : x21<br> - rs2 : x7<br> - rd : x26<br> - rs2_h1_val == 8<br> - rs1_w0_val == 1048576<br>                                                   |[0x80000470]:KMMWB2 s10, s5, t2<br> [0x80000474]:csrrs s5, vxsat, zero<br> [0x80000478]:sw s10, 104(fp)<br>  |
|  32|[0x80002308]<br>0x00000001|- rs1 : x19<br> - rs2 : x27<br> - rd : x16<br> - rs2_h1_val == 4<br>                                                                              |[0x80000488]:KMMWB2 a6, s3, s11<br> [0x8000048c]:csrrs s3, vxsat, zero<br> [0x80000490]:sw a6, 112(fp)<br>   |
|  33|[0x80002310]<br>0x2AAA8000|- rs2_h1_val == 2<br> - rs2_h0_val == 21845<br> - rs1_w0_val == 1073741824<br>                                                                    |[0x800004a4]:KMMWB2 t6, t5, t4<br> [0x800004a8]:csrrs t5, vxsat, zero<br> [0x800004ac]:sw t6, 120(fp)<br>    |
|  34|[0x80002318]<br>0xFFFFFFF7|- rs2_h1_val == 1<br> - rs1_w0_val == -4097<br>                                                                                                   |[0x800004cc]:KMMWB2 t6, t5, t4<br> [0x800004d0]:csrrs t5, vxsat, zero<br> [0x800004d4]:sw t6, 0(ra)<br>      |
|  35|[0x80002320]<br>0x00000041|- rs2_h0_val == -32768<br>                                                                                                                        |[0x800004e4]:KMMWB2 t6, t5, t4<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 8(ra)<br>      |
|  36|[0x80002328]<br>0x000000FF|- rs1_w0_val == 512<br>                                                                                                                           |[0x80000500]:KMMWB2 t6, t5, t4<br> [0x80000504]:csrrs t5, vxsat, zero<br> [0x80000508]:sw t6, 16(ra)<br>     |
|  37|[0x80002330]<br>0x00000000|- rs1_w0_val == 256<br>                                                                                                                           |[0x8000051c]:KMMWB2 t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 24(ra)<br>     |
|  38|[0x80002338]<br>0x00000000|- rs1_w0_val == 128<br>                                                                                                                           |[0x80000534]:KMMWB2 t6, t5, t4<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 32(ra)<br>     |
|  39|[0x80002340]<br>0xFFFFFFFF|- rs1_w0_val == 64<br>                                                                                                                            |[0x80000550]:KMMWB2 t6, t5, t4<br> [0x80000554]:csrrs t5, vxsat, zero<br> [0x80000558]:sw t6, 40(ra)<br>     |
|  40|[0x80002348]<br>0x00000000|- rs2_h0_val == 1<br> - rs1_w0_val == 32<br>                                                                                                      |[0x8000056c]:KMMWB2 t6, t5, t4<br> [0x80000570]:csrrs t5, vxsat, zero<br> [0x80000574]:sw t6, 48(ra)<br>     |
|  41|[0x80002350]<br>0x00000000|- rs1_w0_val == 8<br>                                                                                                                             |[0x80000588]:KMMWB2 t6, t5, t4<br> [0x8000058c]:csrrs t5, vxsat, zero<br> [0x80000590]:sw t6, 56(ra)<br>     |
|  42|[0x80002358]<br>0xFFFFFFFF|- rs1_w0_val == 4<br>                                                                                                                             |[0x800005a4]:KMMWB2 t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 64(ra)<br>     |
|  43|[0x80002360]<br>0x00000000|- rs1_w0_val == 2<br>                                                                                                                             |[0x800005c0]:KMMWB2 t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 72(ra)<br>     |
|  44|[0x80002368]<br>0x00000000|- rs1_w0_val == 1<br>                                                                                                                             |[0x800005dc]:KMMWB2 t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 80(ra)<br>     |
|  45|[0x80002378]<br>0xFFFFFFFF|- rs1_w0_val == -1<br>                                                                                                                            |[0x80000610]:KMMWB2 t6, t5, t4<br> [0x80000614]:csrrs t5, vxsat, zero<br> [0x80000618]:sw t6, 96(ra)<br>     |
|  46|[0x80002380]<br>0xEAAAAAAA|- rs2_h1_val == -1<br> - rs1_w0_val == -1431655766<br>                                                                                            |[0x8000062c]:KMMWB2 t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 104(ra)<br>    |
|  47|[0x80002388]<br>0xFFFFFFFB|- rs2_h0_val == -21846<br>                                                                                                                        |[0x80000648]:KMMWB2 t6, t5, t4<br> [0x8000064c]:csrrs t5, vxsat, zero<br> [0x80000650]:sw t6, 112(ra)<br>    |
|  48|[0x80002390]<br>0xFFFBFFE0|- rs2_h0_val == -8193<br>                                                                                                                         |[0x80000664]:KMMWB2 t6, t5, t4<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 120(ra)<br>    |
|  49|[0x80002398]<br>0x08008000|- rs2_h0_val == -4097<br>                                                                                                                         |[0x80000680]:KMMWB2 t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 128(ra)<br>    |
|  50|[0x800023a0]<br>0xFFFFFFFE|- rs2_h0_val == -1025<br>                                                                                                                         |[0x8000069c]:KMMWB2 t6, t5, t4<br> [0x800006a0]:csrrs t5, vxsat, zero<br> [0x800006a4]:sw t6, 136(ra)<br>    |
|  51|[0x800023a8]<br>0xFFFFEFF8|- rs2_h0_val == -513<br>                                                                                                                          |[0x800006b8]:KMMWB2 t6, t5, t4<br> [0x800006bc]:csrrs t5, vxsat, zero<br> [0x800006c0]:sw t6, 144(ra)<br>    |
|  52|[0x800023b0]<br>0x00000101|- rs2_h0_val == -257<br> - rs1_w0_val == -32769<br>                                                                                               |[0x800006d8]:KMMWB2 t6, t5, t4<br> [0x800006dc]:csrrs t5, vxsat, zero<br> [0x800006e0]:sw t6, 152(ra)<br>    |
|  53|[0x800023b8]<br>0xFFFFFFF7|- rs2_h0_val == -129<br> - rs1_w0_val == 2048<br>                                                                                                 |[0x800006f8]:KMMWB2 t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 160(ra)<br>    |
|  54|[0x800023c0]<br>0xFFFFFEF0|- rs2_h1_val == 512<br> - rs2_h0_val == -17<br> - rs1_w0_val == 524288<br>                                                                        |[0x80000714]:KMMWB2 t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 168(ra)<br>    |
|  55|[0x800023c8]<br>0x00000000|- rs2_h0_val == -9<br>                                                                                                                            |[0x80000730]:KMMWB2 t6, t5, t4<br> [0x80000734]:csrrs t5, vxsat, zero<br> [0x80000738]:sw t6, 176(ra)<br>    |
|  56|[0x800023d0]<br>0xFFFFFFFF|- rs2_h0_val == -5<br>                                                                                                                            |[0x80000750]:KMMWB2 t6, t5, t4<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sw t6, 184(ra)<br>    |
|  57|[0x800023d8]<br>0x00000020|- rs2_h0_val == -2<br>                                                                                                                            |[0x80000770]:KMMWB2 t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 192(ra)<br>    |
|  58|[0x800023e0]<br>0xFFFFDFFF|- rs2_h0_val == 16384<br> - rs1_w0_val == -16385<br>                                                                                              |[0x8000078c]:KMMWB2 t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 200(ra)<br>    |
|  59|[0x800023e8]<br>0xFFFFFFDF|- rs2_h0_val == 4096<br>                                                                                                                          |[0x800007a4]:KMMWB2 t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 208(ra)<br>    |
|  60|[0x800023f0]<br>0x00010000|- rs2_h0_val == 8<br>                                                                                                                             |[0x800007c0]:KMMWB2 t6, t5, t4<br> [0x800007c4]:csrrs t5, vxsat, zero<br> [0x800007c8]:sw t6, 216(ra)<br>    |
|  61|[0x800023f8]<br>0xFFFEAAAA|- rs2_h0_val == 2<br>                                                                                                                             |[0x800007e0]:KMMWB2 t6, t5, t4<br> [0x800007e4]:csrrs t5, vxsat, zero<br> [0x800007e8]:sw t6, 224(ra)<br>    |
|  62|[0x80002400]<br>0xFFFFFFF8|- rs2_h0_val == -1<br>                                                                                                                            |[0x800007fc]:KMMWB2 t6, t5, t4<br> [0x80000800]:csrrs t5, vxsat, zero<br> [0x80000804]:sw t6, 232(ra)<br>    |
|  63|[0x80002408]<br>0xD554AAAA|- rs1_w0_val == 1431655765<br>                                                                                                                    |[0x8000081c]:KMMWB2 t6, t5, t4<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sw t6, 240(ra)<br>    |
|  64|[0x80002410]<br>0x07FFFFFF|- rs1_w0_val == 2147483647<br>                                                                                                                    |[0x8000083c]:KMMWB2 t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 248(ra)<br>    |
|  65|[0x80002418]<br>0xFFFDFFFF|- rs1_w0_val == -536870913<br>                                                                                                                    |[0x8000085c]:KMMWB2 t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 256(ra)<br>    |
|  66|[0x80002420]<br>0xFFFFDFFF|- rs1_w0_val == -268435457<br>                                                                                                                    |[0x8000087c]:KMMWB2 t6, t5, t4<br> [0x80000880]:csrrs t5, vxsat, zero<br> [0x80000884]:sw t6, 264(ra)<br>    |
|  67|[0x80002428]<br>0xFE0007FF|- rs1_w0_val == -67108865<br>                                                                                                                     |[0x8000089c]:KMMWB2 t6, t5, t4<br> [0x800008a0]:csrrs t5, vxsat, zero<br> [0x800008a4]:sw t6, 272(ra)<br>    |
|  68|[0x80002430]<br>0xFFFF7FFF|- rs1_w0_val == -33554433<br>                                                                                                                     |[0x800008bc]:KMMWB2 t6, t5, t4<br> [0x800008c0]:csrrs t5, vxsat, zero<br> [0x800008c4]:sw t6, 280(ra)<br>    |
|  69|[0x80002438]<br>0xFFBFFFFF|- rs1_w0_val == -16777217<br>                                                                                                                     |[0x800008d8]:KMMWB2 t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 288(ra)<br>    |
|  70|[0x80002440]<br>0x00800001|- rs1_w0_val == -8388609<br>                                                                                                                      |[0x800008f4]:KMMWB2 t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 296(ra)<br>    |
|  71|[0x80002448]<br>0xFFFEFFFF|- rs1_w0_val == -2097153<br>                                                                                                                      |[0x80000914]:KMMWB2 t6, t5, t4<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sw t6, 304(ra)<br>    |
|  72|[0x80002450]<br>0x000AAAC0|- rs1_w0_val == -1048577<br>                                                                                                                      |[0x80000934]:KMMWB2 t6, t5, t4<br> [0x80000938]:csrrs t5, vxsat, zero<br> [0x8000093c]:sw t6, 312(ra)<br>    |
|  73|[0x80002458]<br>0x00000030|- rs1_w0_val == -262145<br>                                                                                                                       |[0x80000954]:KMMWB2 t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 320(ra)<br>    |
|  74|[0x80002460]<br>0xFFFFFFFB|- rs1_w0_val == -65537<br>                                                                                                                        |[0x80000974]:KMMWB2 t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 328(ra)<br>    |
|  75|[0x80002468]<br>0x00000020|- rs1_w0_val == -8193<br>                                                                                                                         |[0x80000994]:KMMWB2 t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 336(ra)<br>    |
|  76|[0x80002470]<br>0xFFFFFFFB|- rs1_w0_val == -129<br>                                                                                                                          |[0x800009b0]:KMMWB2 t6, t5, t4<br> [0x800009b4]:csrrs t5, vxsat, zero<br> [0x800009b8]:sw t6, 344(ra)<br>    |
|  77|[0x80002478]<br>0x00000000|- rs1_w0_val == -33<br>                                                                                                                           |[0x800009cc]:KMMWB2 t6, t5, t4<br> [0x800009d0]:csrrs t5, vxsat, zero<br> [0x800009d4]:sw t6, 352(ra)<br>    |
|  78|[0x80002480]<br>0xFFFFFFFF|- rs1_w0_val == -17<br>                                                                                                                           |[0x800009e8]:KMMWB2 t6, t5, t4<br> [0x800009ec]:csrrs t5, vxsat, zero<br> [0x800009f0]:sw t6, 360(ra)<br>    |
|  79|[0x80002488]<br>0xFFFFFFFF|- rs1_w0_val == -9<br>                                                                                                                            |[0x80000a04]:KMMWB2 t6, t5, t4<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sw t6, 368(ra)<br>    |
|  80|[0x80002490]<br>0x00000000|- rs1_w0_val == -5<br>                                                                                                                            |[0x80000a20]:KMMWB2 t6, t5, t4<br> [0x80000a24]:csrrs t5, vxsat, zero<br> [0x80000a28]:sw t6, 376(ra)<br>    |
|  81|[0x80002498]<br>0x00000000|- rs1_w0_val == -3<br>                                                                                                                            |[0x80000a3c]:KMMWB2 t6, t5, t4<br> [0x80000a40]:csrrs t5, vxsat, zero<br> [0x80000a44]:sw t6, 384(ra)<br>    |
|  82|[0x800024a0]<br>0x00003800|- rs1_w0_val == 67108864<br>                                                                                                                      |[0x80000a58]:KMMWB2 t6, t5, t4<br> [0x80000a5c]:csrrs t5, vxsat, zero<br> [0x80000a60]:sw t6, 392(ra)<br>    |
|  83|[0x800024a8]<br>0x01FFFC00|- rs2_h0_val == 32767<br> - rs1_w0_val == 33554432<br>                                                                                            |[0x80000a74]:KMMWB2 t6, t5, t4<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sw t6, 400(ra)<br>    |
|  84|[0x800024b0]<br>0x00000200|- rs1_w0_val == 2097152<br>                                                                                                                       |[0x80000a90]:KMMWB2 t6, t5, t4<br> [0x80000a94]:csrrs t5, vxsat, zero<br> [0x80000a98]:sw t6, 408(ra)<br>    |
|  85|[0x800024b8]<br>0x00000014|- rs1_w0_val == 131072<br>                                                                                                                        |[0x80000aac]:KMMWB2 t6, t5, t4<br> [0x80000ab0]:csrrs t5, vxsat, zero<br> [0x80000ab4]:sw t6, 416(ra)<br>    |
|  86|[0x800024c0]<br>0x00008000|- rs1_w0_val == 65536<br>                                                                                                                         |[0x80000ac4]:KMMWB2 t6, t5, t4<br> [0x80000ac8]:csrrs t5, vxsat, zero<br> [0x80000acc]:sw t6, 424(ra)<br>    |
|  87|[0x800024c8]<br>0x00003FFF|- rs1_w0_val == 32768<br>                                                                                                                         |[0x80000ae0]:KMMWB2 t6, t5, t4<br> [0x80000ae4]:csrrs t5, vxsat, zero<br> [0x80000ae8]:sw t6, 432(ra)<br>    |
|  88|[0x800024d0]<br>0x00000800|- rs1_w0_val == 8192<br>                                                                                                                          |[0x80000af8]:KMMWB2 t6, t5, t4<br> [0x80000afc]:csrrs t5, vxsat, zero<br> [0x80000b00]:sw t6, 440(ra)<br>    |
|  89|[0x800024d8]<br>0x00000000|- rs1_w0_val == 4096<br>                                                                                                                          |[0x80000b14]:KMMWB2 t6, t5, t4<br> [0x80000b18]:csrrs t5, vxsat, zero<br> [0x80000b1c]:sw t6, 448(ra)<br>    |
|  90|[0x800024e0]<br>0x00000556|- rs1_w0_val == -2049<br>                                                                                                                         |[0x80000b34]:KMMWB2 t6, t5, t4<br> [0x80000b38]:csrrs t5, vxsat, zero<br> [0x80000b3c]:sw t6, 456(ra)<br>    |
|  91|[0x800024e8]<br>0xFFC00000|- rs1_w0_val == -2147483648<br>                                                                                                                   |[0x80000b50]:KMMWB2 t6, t5, t4<br> [0x80000b54]:csrrs t5, vxsat, zero<br> [0x80000b58]:sw t6, 464(ra)<br>    |
|  92|[0x800024f8]<br>0xFFFFFFFE|- rs1_w0_val == 16384<br>                                                                                                                         |[0x80000b88]:KMMWB2 t6, t5, t4<br> [0x80000b8c]:csrrs t5, vxsat, zero<br> [0x80000b90]:sw t6, 480(ra)<br>    |
