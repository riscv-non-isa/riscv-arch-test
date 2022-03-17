
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b40')]      |
| SIG_REGION                | [('0x80002210', '0x800024b0', '168 words')]      |
| COV_LABELS                | kmads      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmads-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 166      |
| STAT1                     | 79      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 83     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000878]:KMADS t6, t5, t4
      [0x8000087c]:csrrs t5, vxsat, zero
      [0x80000880]:sw t6, 248(ra)
 -- Signature Address: 0x800023f0 Data: 0x823DBAB3
 -- Redundant Coverpoints hit by the op
      - opcode : kmads
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 128
      - rs2_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac8]:KMADS t6, t5, t4
      [0x80000acc]:csrrs t5, vxsat, zero
      [0x80000ad0]:sw t6, 400(ra)
 -- Signature Address: 0x80002488 Data: 0x90F52E64
 -- Redundant Coverpoints hit by the op
      - opcode : kmads
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs2_h0_val == -17
      - rs1_h1_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ae8]:KMADS t6, t5, t4
      [0x80000aec]:csrrs t5, vxsat, zero
      [0x80000af0]:sw t6, 408(ra)
 -- Signature Address: 0x80002490 Data: 0x90F65EEE
 -- Redundant Coverpoints hit by the op
      - opcode : kmads
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -65
      - rs2_h0_val == -8193
      - rs1_h1_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b28]:KMADS t6, t5, t4
      [0x80000b2c]:csrrs t5, vxsat, zero
      [0x80000b30]:sw t6, 424(ra)
 -- Signature Address: 0x800024a0 Data: 0x8FF63A1F
 -- Redundant Coverpoints hit by the op
      - opcode : kmads
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h0_val == 128
      - rs1_h1_val == -5






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmads', 'rs1 : x30', 'rs2 : x30', 'rd : x30', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs2_h0_val == -17', 'rs1_h1_val == 0', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000118]:KMADS t5, t5, t5
	-[0x8000011c]:csrrs t5, vxsat, zero
	-[0x80000120]:sw t5, 0(a5)
Current Store : [0x80000124] : sw t5, 4(a5) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x4', 'rd : x28', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h1_val == -65', 'rs2_h0_val == -8193', 'rs1_h1_val == -65', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000138]:KMADS t3, tp, tp
	-[0x8000013c]:csrrs tp, vxsat, zero
	-[0x80000140]:sw t3, 8(a5)
Current Store : [0x80000144] : sw tp, 12(a5) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x2', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 1', 'rs2_h0_val == -21846', 'rs1_h1_val == -513', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000158]:KMADS sp, a2, s6
	-[0x8000015c]:csrrs a2, vxsat, zero
	-[0x80000160]:sw sp, 16(a5)
Current Store : [0x80000164] : sw a2, 20(a5) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x21', 'rd : x21', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -17', 'rs2_h0_val == -1025', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000178]:KMADS s5, t0, s5
	-[0x8000017c]:csrrs t0, vxsat, zero
	-[0x80000180]:sw s5, 24(a5)
Current Store : [0x80000184] : sw t0, 28(a5) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x9', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 16384', 'rs2_h0_val == -1', 'rs1_h1_val == 16', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000198]:KMADS s1, s1, a3
	-[0x8000019c]:csrrs s1, vxsat, zero
	-[0x800001a0]:sw s1, 32(a5)
Current Store : [0x800001a4] : sw s1, 36(a5) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x0', 'rd : x20', 'rs2_h0_val == 0', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800001b8]:KMADS s4, t6, zero
	-[0x800001bc]:csrrs t6, vxsat, zero
	-[0x800001c0]:sw s4, 40(a5)
Current Store : [0x800001c4] : sw t6, 44(a5) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x16', 'rd : x11', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs1_h1_val == 128', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800001d8]:KMADS a1, s7, a6
	-[0x800001dc]:csrrs s7, vxsat, zero
	-[0x800001e0]:sw a1, 48(a5)
Current Store : [0x800001e4] : sw s7, 52(a5) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x18', 'rd : x0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 128', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800001f8]:KMADS zero, t4, s2
	-[0x800001fc]:csrrs t4, vxsat, zero
	-[0x80000200]:sw zero, 56(a5)
Current Store : [0x80000204] : sw t4, 60(a5) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x17', 'rd : x6', 'rs2_h1_val == -21846', 'rs2_h0_val == 8', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000218]:KMADS t1, fp, a7
	-[0x8000021c]:csrrs fp, vxsat, zero
	-[0x80000220]:sw t1, 64(a5)
Current Store : [0x80000224] : sw fp, 68(a5) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x1', 'rd : x31', 'rs2_h1_val == 32767', 'rs1_h1_val == 256', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000238]:KMADS t6, a3, ra
	-[0x8000023c]:csrrs a3, vxsat, zero
	-[0x80000240]:sw t6, 72(a5)
Current Store : [0x80000244] : sw a3, 76(a5) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x8', 'rd : x7', 'rs2_h1_val == -16385', 'rs2_h0_val == 64', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000258]:KMADS t2, sp, fp
	-[0x8000025c]:csrrs sp, vxsat, zero
	-[0x80000260]:sw t2, 80(a5)
Current Store : [0x80000264] : sw sp, 84(a5) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x25', 'rs2_h1_val == -8193', 'rs2_h0_val == 16', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000278]:KMADS s9, s6, s8
	-[0x8000027c]:csrrs s6, vxsat, zero
	-[0x80000280]:sw s9, 88(a5)
Current Store : [0x80000284] : sw s6, 92(a5) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x28', 'rd : x16', 'rs2_h1_val == -4097', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000298]:KMADS a6, a7, t3
	-[0x8000029c]:csrrs a7, vxsat, zero
	-[0x800002a0]:sw a6, 96(a5)
Current Store : [0x800002a4] : sw a7, 100(a5) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x9', 'rd : x10', 'rs2_h1_val == -2049', 'rs2_h0_val == 256', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800002b8]:KMADS a0, s8, s1
	-[0x800002bc]:csrrs s8, vxsat, zero
	-[0x800002c0]:sw a0, 104(a5)
Current Store : [0x800002c4] : sw s8, 108(a5) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x7', 'rd : x14', 'rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x800002d8]:KMADS a4, gp, t2
	-[0x800002dc]:csrrs gp, vxsat, zero
	-[0x800002e0]:sw a4, 112(a5)
Current Store : [0x800002e4] : sw gp, 116(a5) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x3', 'rd : x26', 'rs2_h1_val == -513', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800002fc]:KMADS s10, ra, gp
	-[0x80000300]:csrrs ra, vxsat, zero
	-[0x80000304]:sw s10, 0(tp)
Current Store : [0x80000308] : sw ra, 4(tp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x23', 'rd : x18', 'rs2_h1_val == -257', 'rs2_h0_val == -32768', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000318]:KMADS s2, zero, s7
	-[0x8000031c]:csrrs zero, vxsat, zero
	-[0x80000320]:sw s2, 8(tp)
Current Store : [0x80000324] : sw zero, 12(tp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rd : x17', 'rs2_h1_val == -129', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000338]:KMADS a7, a5, a4
	-[0x8000033c]:csrrs a5, vxsat, zero
	-[0x80000340]:sw a7, 16(tp)
Current Store : [0x80000344] : sw a5, 20(tp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x25', 'rd : x8', 'rs2_h1_val == -33', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000358]:KMADS fp, a4, s9
	-[0x8000035c]:csrrs a4, vxsat, zero
	-[0x80000360]:sw fp, 24(tp)
Current Store : [0x80000364] : sw a4, 28(tp) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x20', 'rd : x3', 'rs2_h1_val == -9', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000374]:KMADS gp, a0, s4
	-[0x80000378]:csrrs a0, vxsat, zero
	-[0x8000037c]:sw gp, 32(tp)
Current Store : [0x80000380] : sw a0, 36(tp) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x12', 'rs2_h1_val == -5', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000394]:KMADS a2, t1, a1
	-[0x80000398]:csrrs t1, vxsat, zero
	-[0x8000039c]:sw a2, 40(tp)
Current Store : [0x800003a0] : sw t1, 44(tp) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x6', 'rd : x15', 'rs2_h1_val == -3', 'rs2_h0_val == 8192', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x800003b0]:KMADS a5, s11, t1
	-[0x800003b4]:csrrs s11, vxsat, zero
	-[0x800003b8]:sw a5, 48(tp)
Current Store : [0x800003bc] : sw s11, 52(tp) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x29', 'rd : x1', 'rs2_h1_val == -2', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800003d0]:KMADS ra, a6, t4
	-[0x800003d4]:csrrs a6, vxsat, zero
	-[0x800003d8]:sw ra, 56(tp)
Current Store : [0x800003dc] : sw a6, 60(tp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x31', 'rd : x5', 'rs2_h1_val == -32768', 'rs1_h1_val == -33', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800003f0]:KMADS t0, a1, t6
	-[0x800003f4]:csrrs a1, vxsat, zero
	-[0x800003f8]:sw t0, 64(tp)
Current Store : [0x800003fc] : sw a1, 68(tp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x15', 'rd : x19', 'rs2_h1_val == 8192', 'rs1_h1_val == -17', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000410]:KMADS s3, t3, a5
	-[0x80000414]:csrrs t3, vxsat, zero
	-[0x80000418]:sw s3, 72(tp)
Current Store : [0x8000041c] : sw t3, 76(tp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x12', 'rd : x24', 'rs2_h1_val == 4096', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x8000042c]:KMADS s8, s3, a2
	-[0x80000430]:csrrs s3, vxsat, zero
	-[0x80000434]:sw s8, 80(tp)
Current Store : [0x80000438] : sw s3, 84(tp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x5', 'rd : x22', 'rs2_h1_val == 2048', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000044c]:KMADS s6, t2, t0
	-[0x80000450]:csrrs t2, vxsat, zero
	-[0x80000454]:sw s6, 88(tp)
Current Store : [0x80000458] : sw t2, 92(tp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x2', 'rd : x29', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x8000046c]:KMADS t4, s10, sp
	-[0x80000470]:csrrs s10, vxsat, zero
	-[0x80000474]:sw t4, 96(tp)
Current Store : [0x80000478] : sw s10, 100(tp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x13', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x8000048c]:KMADS a3, s9, s10
	-[0x80000490]:csrrs s9, vxsat, zero
	-[0x80000494]:sw a3, 104(tp)
Current Store : [0x80000498] : sw s9, 108(tp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x10', 'rd : x23', 'rs2_h1_val == 256', 'rs2_h0_val == -129', 'rs1_h1_val == -1025', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004b4]:KMADS s7, s2, a0
	-[0x800004b8]:csrrs s2, vxsat, zero
	-[0x800004bc]:sw s7, 0(ra)
Current Store : [0x800004c0] : sw s2, 4(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x27', 'rd : x4', 'rs2_h1_val == 128', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800004d4]:KMADS tp, s5, s11
	-[0x800004d8]:csrrs s5, vxsat, zero
	-[0x800004dc]:sw tp, 8(ra)
Current Store : [0x800004e0] : sw s5, 12(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x19', 'rd : x27', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004f4]:KMADS s11, s4, s3
	-[0x800004f8]:csrrs s4, vxsat, zero
	-[0x800004fc]:sw s11, 16(ra)
Current Store : [0x80000500] : sw s4, 20(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000514]:KMADS t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 24(ra)
Current Store : [0x80000520] : sw t5, 28(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000534]:KMADS t6, t5, t4
	-[0x80000538]:csrrs t5, vxsat, zero
	-[0x8000053c]:sw t6, 32(ra)
Current Store : [0x80000540] : sw t5, 36(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -16385', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000554]:KMADS t6, t5, t4
	-[0x80000558]:csrrs t5, vxsat, zero
	-[0x8000055c]:sw t6, 40(ra)
Current Store : [0x80000560] : sw t5, 44(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h1_val == 64', 'rs2_h0_val == 1', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000574]:KMADS t6, t5, t4
	-[0x80000578]:csrrs t5, vxsat, zero
	-[0x8000057c]:sw t6, 48(ra)
Current Store : [0x80000580] : sw t5, 52(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000594]:KMADS t6, t5, t4
	-[0x80000598]:csrrs t5, vxsat, zero
	-[0x8000059c]:sw t6, 56(ra)
Current Store : [0x800005a0] : sw t5, 60(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800005b0]:KMADS t6, t5, t4
	-[0x800005b4]:csrrs t5, vxsat, zero
	-[0x800005b8]:sw t6, 64(ra)
Current Store : [0x800005bc] : sw t5, 68(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800005cc]:KMADS t6, t5, t4
	-[0x800005d0]:csrrs t5, vxsat, zero
	-[0x800005d4]:sw t6, 72(ra)
Current Store : [0x800005d8] : sw t5, 76(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800005ec]:KMADS t6, t5, t4
	-[0x800005f0]:csrrs t5, vxsat, zero
	-[0x800005f4]:sw t6, 80(ra)
Current Store : [0x800005f8] : sw t5, 84(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x8000060c]:KMADS t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 88(ra)
Current Store : [0x80000618] : sw t5, 92(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000062c]:KMADS t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 96(ra)
Current Store : [0x80000638] : sw t5, 100(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000064c]:KMADS t6, t5, t4
	-[0x80000650]:csrrs t5, vxsat, zero
	-[0x80000654]:sw t6, 104(ra)
Current Store : [0x80000658] : sw t5, 108(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000066c]:KMADS t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 112(ra)
Current Store : [0x80000678] : sw t5, 116(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000068c]:KMADS t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 120(ra)
Current Store : [0x80000698] : sw t5, 124(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800006ac]:KMADS t6, t5, t4
	-[0x800006b0]:csrrs t5, vxsat, zero
	-[0x800006b4]:sw t6, 128(ra)
Current Store : [0x800006b8] : sw t5, 132(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800006cc]:KMADS t6, t5, t4
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 136(ra)
Current Store : [0x800006d8] : sw t5, 140(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x800006ec]:KMADS t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 144(ra)
Current Store : [0x800006f8] : sw t5, 148(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000704]:KMADS t6, t5, t4
	-[0x80000708]:csrrs t5, vxsat, zero
	-[0x8000070c]:sw t6, 152(ra)
Current Store : [0x80000710] : sw t5, 156(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000724]:KMADS t6, t5, t4
	-[0x80000728]:csrrs t5, vxsat, zero
	-[0x8000072c]:sw t6, 160(ra)
Current Store : [0x80000730] : sw t5, 164(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000744]:KMADS t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 168(ra)
Current Store : [0x80000750] : sw t5, 172(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80000764]:KMADS t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 176(ra)
Current Store : [0x80000770] : sw t5, 180(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000784]:KMADS t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 184(ra)
Current Store : [0x80000790] : sw t5, 188(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800007a4]:KMADS t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 192(ra)
Current Store : [0x800007b0] : sw t5, 196(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800007c0]:KMADS t6, t5, t4
	-[0x800007c4]:csrrs t5, vxsat, zero
	-[0x800007c8]:sw t6, 200(ra)
Current Store : [0x800007cc] : sw t5, 204(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800007dc]:KMADS t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 208(ra)
Current Store : [0x800007e8] : sw t5, 212(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x800007fc]:KMADS t6, t5, t4
	-[0x80000800]:csrrs t5, vxsat, zero
	-[0x80000804]:sw t6, 216(ra)
Current Store : [0x80000808] : sw t5, 220(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x8000081c]:KMADS t6, t5, t4
	-[0x80000820]:csrrs t5, vxsat, zero
	-[0x80000824]:sw t6, 224(ra)
Current Store : [0x80000828] : sw t5, 228(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x8000083c]:KMADS t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 232(ra)
Current Store : [0x80000848] : sw t5, 236(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x8000085c]:KMADS t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 240(ra)
Current Store : [0x80000868] : sw t5, 244(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['opcode : kmads', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 128', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000878]:KMADS t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 248(ra)
Current Store : [0x80000884] : sw t5, 252(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000898]:KMADS t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 256(ra)
Current Store : [0x800008a4] : sw t5, 260(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800008b8]:KMADS t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 264(ra)
Current Store : [0x800008c4] : sw t5, 268(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800008d8]:KMADS t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 272(ra)
Current Store : [0x800008e4] : sw t5, 276(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800008f0]:KMADS t6, t5, t4
	-[0x800008f4]:csrrs t5, vxsat, zero
	-[0x800008f8]:sw t6, 280(ra)
Current Store : [0x800008fc] : sw t5, 284(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000910]:KMADS t6, t5, t4
	-[0x80000914]:csrrs t5, vxsat, zero
	-[0x80000918]:sw t6, 288(ra)
Current Store : [0x8000091c] : sw t5, 292(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000930]:KMADS t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 296(ra)
Current Store : [0x8000093c] : sw t5, 300(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000950]:KMADS t6, t5, t4
	-[0x80000954]:csrrs t5, vxsat, zero
	-[0x80000958]:sw t6, 304(ra)
Current Store : [0x8000095c] : sw t5, 308(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000970]:KMADS t6, t5, t4
	-[0x80000974]:csrrs t5, vxsat, zero
	-[0x80000978]:sw t6, 312(ra)
Current Store : [0x8000097c] : sw t5, 316(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000990]:KMADS t6, t5, t4
	-[0x80000994]:csrrs t5, vxsat, zero
	-[0x80000998]:sw t6, 320(ra)
Current Store : [0x8000099c] : sw t5, 324(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 512', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800009b0]:KMADS t6, t5, t4
	-[0x800009b4]:csrrs t5, vxsat, zero
	-[0x800009b8]:sw t6, 328(ra)
Current Store : [0x800009bc] : sw t5, 332(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800009d0]:KMADS t6, t5, t4
	-[0x800009d4]:csrrs t5, vxsat, zero
	-[0x800009d8]:sw t6, 336(ra)
Current Store : [0x800009dc] : sw t5, 340(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800009ec]:KMADS t6, t5, t4
	-[0x800009f0]:csrrs t5, vxsat, zero
	-[0x800009f4]:sw t6, 344(ra)
Current Store : [0x800009f8] : sw t5, 348(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000a0c]:KMADS t6, t5, t4
	-[0x80000a10]:csrrs t5, vxsat, zero
	-[0x80000a14]:sw t6, 352(ra)
Current Store : [0x80000a18] : sw t5, 356(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000a2c]:KMADS t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 360(ra)
Current Store : [0x80000a38] : sw t5, 364(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000a4c]:KMADS t6, t5, t4
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sw t6, 368(ra)
Current Store : [0x80000a58] : sw t5, 372(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000a6c]:KMADS t6, t5, t4
	-[0x80000a70]:csrrs t5, vxsat, zero
	-[0x80000a74]:sw t6, 376(ra)
Current Store : [0x80000a78] : sw t5, 380(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80000a8c]:KMADS t6, t5, t4
	-[0x80000a90]:csrrs t5, vxsat, zero
	-[0x80000a94]:sw t6, 384(ra)
Current Store : [0x80000a98] : sw t5, 388(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000aac]:KMADS t6, t5, t4
	-[0x80000ab0]:csrrs t5, vxsat, zero
	-[0x80000ab4]:sw t6, 392(ra)
Current Store : [0x80000ab8] : sw t5, 396(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['opcode : kmads', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs2_h0_val == -17', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000ac8]:KMADS t6, t5, t4
	-[0x80000acc]:csrrs t5, vxsat, zero
	-[0x80000ad0]:sw t6, 400(ra)
Current Store : [0x80000ad4] : sw t5, 404(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['opcode : kmads', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -65', 'rs2_h0_val == -8193', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000ae8]:KMADS t6, t5, t4
	-[0x80000aec]:csrrs t5, vxsat, zero
	-[0x80000af0]:sw t6, 408(ra)
Current Store : [0x80000af4] : sw t5, 412(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000b08]:KMADS t6, t5, t4
	-[0x80000b0c]:csrrs t5, vxsat, zero
	-[0x80000b10]:sw t6, 416(ra)
Current Store : [0x80000b14] : sw t5, 420(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['opcode : kmads', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 128', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000b28]:KMADS t6, t5, t4
	-[0x80000b2c]:csrrs t5, vxsat, zero
	-[0x80000b30]:sw t6, 424(ra)
Current Store : [0x80000b34] : sw t5, 428(ra) -- Store: [0x800024a4]:0x00000001





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

|s.no|        signature         |                                                                                                                                            coverpoints                                                                                                                                            |                                                    code                                                    |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmads<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == -17<br> - rs1_h1_val == 0<br> - rs1_h0_val == -17<br>       |[0x80000118]:KMADS t5, t5, t5<br> [0x8000011c]:csrrs t5, vxsat, zero<br> [0x80000120]:sw t5, 0(a5)<br>      |
|   2|[0x80002218]<br>0xD9B7A63F|- rs1 : x4<br> - rs2 : x4<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h1_val == -65<br> - rs2_h0_val == -8193<br> - rs1_h1_val == -65<br> - rs1_h0_val == -8193<br>                                                                                    |[0x80000138]:KMADS t3, tp, tp<br> [0x8000013c]:csrrs tp, vxsat, zero<br> [0x80000140]:sw t3, 8(a5)<br>      |
|   3|[0x80002220]<br>0xFF7532A7|- rs1 : x12<br> - rs2 : x22<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 1<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -513<br> - rs1_h0_val == -5<br> |[0x80000158]:KMADS sp, a2, s6<br> [0x8000015c]:csrrs a2, vxsat, zero<br> [0x80000160]:sw sp, 16(a5)<br>     |
|   4|[0x80002228]<br>0xFFFFFF66|- rs1 : x5<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -17<br> - rs2_h0_val == -1025<br> - rs1_h0_val == 1024<br>                                                                    |[0x80000178]:KMADS s5, t0, s5<br> [0x8000017c]:csrrs t0, vxsat, zero<br> [0x80000180]:sw s5, 24(a5)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x9<br> - rs2 : x13<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -1<br> - rs1_h1_val == 16<br> - rs1_h0_val == 512<br>                                                                                        |[0x80000198]:KMADS s1, s1, a3<br> [0x8000019c]:csrrs s1, vxsat, zero<br> [0x800001a0]:sw s1, 32(a5)<br>     |
|   6|[0x80002238]<br>0xB7D5BFDD|- rs1 : x31<br> - rs2 : x0<br> - rd : x20<br> - rs2_h0_val == 0<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                      |[0x800001b8]:KMADS s4, t6, zero<br> [0x800001bc]:csrrs t6, vxsat, zero<br> [0x800001c0]:sw s4, 40(a5)<br>   |
|   7|[0x80002240]<br>0xABAC25F6|- rs1 : x23<br> - rs2 : x16<br> - rd : x11<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 128<br> - rs1_h0_val == -16385<br>                                                                                                                                |[0x800001d8]:KMADS a1, s7, a6<br> [0x800001dc]:csrrs s7, vxsat, zero<br> [0x800001e0]:sw a1, 48(a5)<br>     |
|   8|[0x80002248]<br>0x00000000|- rs1 : x29<br> - rs2 : x18<br> - rd : x0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 128<br> - rs1_h1_val == -5<br>                                                                                                                                                               |[0x800001f8]:KMADS zero, t4, s2<br> [0x800001fc]:csrrs t4, vxsat, zero<br> [0x80000200]:sw zero, 56(a5)<br> |
|   9|[0x80002250]<br>0x80000000|- rs1 : x8<br> - rs2 : x17<br> - rd : x6<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 8<br> - rs1_h1_val == 4096<br>                                                                                                                                                                             |[0x80000218]:KMADS t1, fp, a7<br> [0x8000021c]:csrrs fp, vxsat, zero<br> [0x80000220]:sw t1, 64(a5)<br>     |
|  10|[0x80002258]<br>0x007FFF02|- rs1 : x13<br> - rs2 : x1<br> - rd : x31<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 256<br> - rs1_h0_val == 2<br>                                                                                                                                                                              |[0x80000238]:KMADS t6, a3, ra<br> [0x8000023c]:csrrs a3, vxsat, zero<br> [0x80000240]:sw t6, 72(a5)<br>     |
|  11|[0x80002260]<br>0xB7FD3740|- rs1 : x2<br> - rs2 : x8<br> - rd : x7<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 64<br> - rs1_h0_val == -1<br>                                                                                                                                                                               |[0x80000258]:KMADS t2, sp, fp<br> [0x8000025c]:csrrs sp, vxsat, zero<br> [0x80000260]:sw t2, 80(a5)<br>     |
|  12|[0x80002268]<br>0xF869C464|- rs1 : x22<br> - rs2 : x24<br> - rd : x25<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 16<br> - rs1_h1_val == -21846<br>                                                                                                                                                                         |[0x80000278]:KMADS s9, s6, s8<br> [0x8000027c]:csrrs s6, vxsat, zero<br> [0x80000280]:sw s9, 88(a5)<br>     |
|  13|[0x80002270]<br>0x5755302B|- rs1 : x17<br> - rs2 : x28<br> - rd : x16<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                 |[0x80000298]:KMADS a6, a7, t3<br> [0x8000029c]:csrrs a7, vxsat, zero<br> [0x800002a0]:sw a6, 96(a5)<br>     |
|  14|[0x80002278]<br>0xFF804308|- rs1 : x24<br> - rs2 : x9<br> - rd : x10<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 256<br> - rs1_h0_val == 32767<br>                                                                                                                                                                          |[0x800002b8]:KMADS a0, s8, s1<br> [0x800002bc]:csrrs s8, vxsat, zero<br> [0x800002c0]:sw a0, 104(a5)<br>    |
|  15|[0x80002280]<br>0xF56FD566|- rs1 : x3<br> - rs2 : x7<br> - rd : x14<br> - rs2_h1_val == -1025<br>                                                                                                                                                                                                                             |[0x800002d8]:KMADS a4, gp, t2<br> [0x800002dc]:csrrs gp, vxsat, zero<br> [0x800002e0]:sw a4, 112(a5)<br>    |
|  16|[0x80002288]<br>0x7A5F3900|- rs1 : x1<br> - rs2 : x3<br> - rd : x26<br> - rs2_h1_val == -513<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                     |[0x800002fc]:KMADS s10, ra, gp<br> [0x80000300]:csrrs ra, vxsat, zero<br> [0x80000304]:sw s10, 0(tp)<br>    |
|  17|[0x80002290]<br>0xFFF60080|- rs1 : x0<br> - rs2 : x23<br> - rd : x18<br> - rs2_h1_val == -257<br> - rs2_h0_val == -32768<br> - rs1_h0_val == 0<br>                                                                                                                                                                            |[0x80000318]:KMADS s2, zero, s7<br> [0x8000031c]:csrrs zero, vxsat, zero<br> [0x80000320]:sw s2, 8(tp)<br>  |
|  18|[0x80002298]<br>0xFFF19FFA|- rs1 : x15<br> - rs2 : x14<br> - rd : x17<br> - rs2_h1_val == -129<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                   |[0x80000338]:KMADS a7, a5, a4<br> [0x8000033c]:csrrs a5, vxsat, zero<br> [0x80000340]:sw a7, 16(tp)<br>     |
|  19|[0x800022a0]<br>0xBFFC9A66|- rs1 : x14<br> - rs2 : x25<br> - rd : x8<br> - rs2_h1_val == -33<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                   |[0x80000358]:KMADS fp, a4, s9<br> [0x8000035c]:csrrs a4, vxsat, zero<br> [0x80000360]:sw fp, 24(tp)<br>     |
|  20|[0x800022a8]<br>0xFDF36008|- rs1 : x10<br> - rs2 : x20<br> - rd : x3<br> - rs2_h1_val == -9<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                     |[0x80000374]:KMADS gp, a0, s4<br> [0x80000378]:csrrs a0, vxsat, zero<br> [0x8000037c]:sw gp, 32(tp)<br>     |
|  21|[0x800022b0]<br>0xFFFF8FFC|- rs1 : x6<br> - rs2 : x11<br> - rd : x12<br> - rs2_h1_val == -5<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                     |[0x80000394]:KMADS a2, t1, a1<br> [0x80000398]:csrrs t1, vxsat, zero<br> [0x8000039c]:sw a2, 40(tp)<br>     |
|  22|[0x800022b8]<br>0x0002C001|- rs1 : x27<br> - rs2 : x6<br> - rd : x15<br> - rs2_h1_val == -3<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -32768<br>                                                                                                                                                                           |[0x800003b0]:KMADS a5, s11, t1<br> [0x800003b4]:csrrs s11, vxsat, zero<br> [0x800003b8]:sw a5, 48(tp)<br>   |
|  23|[0x800022c0]<br>0xFFFFC7FB|- rs1 : x16<br> - rs2 : x29<br> - rd : x1<br> - rs2_h1_val == -2<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                      |[0x800003d0]:KMADS ra, a6, t4<br> [0x800003d4]:csrrs a6, vxsat, zero<br> [0x800003d8]:sw ra, 56(tp)<br>     |
|  24|[0x800022c8]<br>0x00107FF8|- rs1 : x11<br> - rs2 : x31<br> - rd : x5<br> - rs2_h1_val == -32768<br> - rs1_h1_val == -33<br> - rs1_h0_val == 1<br>                                                                                                                                                                             |[0x800003f0]:KMADS t0, a1, t6<br> [0x800003f4]:csrrs a1, vxsat, zero<br> [0x800003f8]:sw t0, 64(tp)<br>     |
|  25|[0x800022d0]<br>0x6FA94FB3|- rs1 : x28<br> - rs2 : x15<br> - rd : x19<br> - rs2_h1_val == 8192<br> - rs1_h1_val == -17<br> - rs1_h0_val == -513<br>                                                                                                                                                                           |[0x80000410]:KMADS s3, t3, a5<br> [0x80000414]:csrrs t3, vxsat, zero<br> [0x80000418]:sw s3, 72(tp)<br>     |
|  26|[0x800022d8]<br>0x00040001|- rs1 : x19<br> - rs2 : x12<br> - rd : x24<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                     |[0x8000042c]:KMADS s8, s3, a2<br> [0x80000430]:csrrs s3, vxsat, zero<br> [0x80000434]:sw s8, 80(tp)<br>     |
|  27|[0x800022e0]<br>0xFDFFFE01|- rs1 : x7<br> - rs2 : x5<br> - rd : x22<br> - rs2_h1_val == 2048<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                        |[0x8000044c]:KMADS s6, t2, t0<br> [0x80000450]:csrrs t2, vxsat, zero<br> [0x80000454]:sw s6, 88(tp)<br>     |
|  28|[0x800022e8]<br>0xFFFFE402|- rs1 : x26<br> - rs2 : x2<br> - rd : x29<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                             |[0x8000046c]:KMADS t4, s10, sp<br> [0x80000470]:csrrs s10, vxsat, zero<br> [0x80000474]:sw t4, 96(tp)<br>   |
|  29|[0x800022f0]<br>0x00008000|- rs1 : x25<br> - rs2 : x26<br> - rd : x13<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                             |[0x8000048c]:KMADS a3, s9, s10<br> [0x80000490]:csrrs s9, vxsat, zero<br> [0x80000494]:sw a3, 104(tp)<br>   |
|  30|[0x800022f8]<br>0xFEFB3DFF|- rs1 : x18<br> - rs2 : x10<br> - rd : x23<br> - rs2_h1_val == 256<br> - rs2_h0_val == -129<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -129<br>                                                                                                                                                 |[0x800004b4]:KMADS s7, s2, a0<br> [0x800004b8]:csrrs s2, vxsat, zero<br> [0x800004bc]:sw s7, 0(ra)<br>      |
|  31|[0x80002300]<br>0x80002687|- rs1 : x21<br> - rs2 : x27<br> - rd : x4<br> - rs2_h1_val == 128<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                    |[0x800004d4]:KMADS tp, s5, s11<br> [0x800004d8]:csrrs s5, vxsat, zero<br> [0x800004dc]:sw tp, 8(ra)<br>     |
|  32|[0x80002308]<br>0x0081FAF9|- rs1 : x20<br> - rs2 : x19<br> - rd : x27<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                            |[0x800004f4]:KMADS s11, s4, s3<br> [0x800004f8]:csrrs s4, vxsat, zero<br> [0x800004fc]:sw s11, 16(ra)<br>   |
|  33|[0x80002310]<br>0x80000000|- rs2_h0_val == -16385<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                 |[0x80000514]:KMADS t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 24(ra)<br>     |
|  34|[0x80002318]<br>0x80000000|- rs2_h0_val == 4<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                      |[0x80000534]:KMADS t6, t5, t4<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 32(ra)<br>     |
|  35|[0x80002320]<br>0x80000000|- rs1_h1_val == -16385<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                  |[0x80000554]:KMADS t6, t5, t4<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 40(ra)<br>     |
|  36|[0x80002328]<br>0x80000000|- rs2_h1_val == 64<br> - rs2_h0_val == 1<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                |[0x80000574]:KMADS t6, t5, t4<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 48(ra)<br>     |
|  37|[0x80002330]<br>0x87FFDF7E|- rs2_h0_val == -65<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                     |[0x80000594]:KMADS t6, t5, t4<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 56(ra)<br>     |
|  38|[0x80002338]<br>0x88015F4E|- rs2_h1_val == 8<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                    |[0x800005b0]:KMADS t6, t5, t4<br> [0x800005b4]:csrrs t5, vxsat, zero<br> [0x800005b8]:sw t6, 64(ra)<br>     |
|  39|[0x80002340]<br>0x88096F84|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                           |[0x800005cc]:KMADS t6, t5, t4<br> [0x800005d0]:csrrs t5, vxsat, zero<br> [0x800005d4]:sw t6, 72(ra)<br>     |
|  40|[0x80002348]<br>0x88099786|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                           |[0x800005ec]:KMADS t6, t5, t4<br> [0x800005f0]:csrrs t5, vxsat, zero<br> [0x800005f4]:sw t6, 80(ra)<br>     |
|  41|[0x80002350]<br>0x88059E86|- rs2_h1_val == 16<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                     |[0x8000060c]:KMADS t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 88(ra)<br>     |
|  42|[0x80002358]<br>0x88259EEE|- rs2_h1_val == 4<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                      |[0x8000062c]:KMADS t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 96(ra)<br>     |
|  43|[0x80002360]<br>0x88249DA6|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                             |[0x8000064c]:KMADS t6, t5, t4<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 104(ra)<br>    |
|  44|[0x80002368]<br>0x80000000|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                             |[0x8000066c]:KMADS t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 112(ra)<br>    |
|  45|[0x80002370]<br>0x80000F70|- rs1_h1_val == 2<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                       |[0x8000068c]:KMADS t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 120(ra)<br>    |
|  46|[0x80002378]<br>0x80000B77|- rs2_h0_val == 1024<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                     |[0x800006ac]:KMADS t6, t5, t4<br> [0x800006b0]:csrrs t5, vxsat, zero<br> [0x800006b4]:sw t6, 128(ra)<br>    |
|  47|[0x80002380]<br>0x80000000|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                             |[0x800006cc]:KMADS t6, t5, t4<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 136(ra)<br>    |
|  48|[0x80002388]<br>0x80000FF4|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                              |[0x800006ec]:KMADS t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 144(ra)<br>    |
|  49|[0x80002390]<br>0x80000000|- rs2_h1_val == -1<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                       |[0x80000704]:KMADS t6, t5, t4<br> [0x80000708]:csrrs t5, vxsat, zero<br> [0x8000070c]:sw t6, 152(ra)<br>    |
|  50|[0x80002398]<br>0x8755A555|- rs2_h0_val == 21845<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                 |[0x80000724]:KMADS t6, t5, t4<br> [0x80000728]:csrrs t5, vxsat, zero<br> [0x8000072c]:sw t6, 160(ra)<br>    |
|  51|[0x800023a0]<br>0x8756455F|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                          |[0x80000744]:KMADS t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 168(ra)<br>    |
|  52|[0x800023a8]<br>0x8756402D|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                             |[0x80000764]:KMADS t6, t5, t4<br> [0x80000768]:csrrs t5, vxsat, zero<br> [0x8000076c]:sw t6, 176(ra)<br>    |
|  53|[0x800023b0]<br>0x87563CC1|- rs2_h0_val == -3<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                    |[0x80000784]:KMADS t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 184(ra)<br>    |
|  54|[0x800023b8]<br>0x875A3CC5|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                             |[0x800007a4]:KMADS t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 192(ra)<br>    |
|  55|[0x800023c0]<br>0x87563BC5|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                          |[0x800007c0]:KMADS t6, t5, t4<br> [0x800007c4]:csrrs t5, vxsat, zero<br> [0x800007c8]:sw t6, 200(ra)<br>    |
|  56|[0x800023c8]<br>0x87523D0F|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                           |[0x800007dc]:KMADS t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 208(ra)<br>    |
|  57|[0x800023d0]<br>0x87524914|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                           |[0x800007fc]:KMADS t6, t5, t4<br> [0x80000800]:csrrs t5, vxsat, zero<br> [0x80000804]:sw t6, 216(ra)<br>    |
|  58|[0x800023d8]<br>0x863CF594|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                            |[0x8000081c]:KMADS t6, t5, t4<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sw t6, 224(ra)<br>    |
|  59|[0x800023e0]<br>0x863DDDB5|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                             |[0x8000083c]:KMADS t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 232(ra)<br>    |
|  60|[0x800023e8]<br>0x823DBDB3|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                              |[0x8000085c]:KMADS t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 240(ra)<br>    |
|  61|[0x800023f8]<br>0x823FB7AB|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                          |[0x80000898]:KMADS t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 256(ra)<br>    |
|  62|[0x80002400]<br>0x833FD7DD|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                          |[0x800008b8]:KMADS t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 264(ra)<br>    |
|  63|[0x80002408]<br>0x8367E1DE|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                          |[0x800008d8]:KMADS t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 272(ra)<br>    |
|  64|[0x80002410]<br>0x9367EAE7|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                           |[0x800008f0]:KMADS t6, t5, t4<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sw t6, 280(ra)<br>    |
|  65|[0x80002418]<br>0x9367EB15|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                             |[0x80000910]:KMADS t6, t5, t4<br> [0x80000914]:csrrs t5, vxsat, zero<br> [0x80000918]:sw t6, 288(ra)<br>    |
|  66|[0x80002420]<br>0x93BE16EB|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                           |[0x80000930]:KMADS t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 296(ra)<br>    |
|  67|[0x80002428]<br>0x93BF96FF|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                             |[0x80000950]:KMADS t6, t5, t4<br> [0x80000954]:csrrs t5, vxsat, zero<br> [0x80000958]:sw t6, 304(ra)<br>    |
|  68|[0x80002430]<br>0x93BF9877|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                             |[0x80000970]:KMADS t6, t5, t4<br> [0x80000974]:csrrs t5, vxsat, zero<br> [0x80000978]:sw t6, 312(ra)<br>    |
|  69|[0x80002438]<br>0x93BDD8A1|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                          |[0x80000990]:KMADS t6, t5, t4<br> [0x80000994]:csrrs t5, vxsat, zero<br> [0x80000998]:sw t6, 320(ra)<br>    |
|  70|[0x80002440]<br>0x93133EA1|- rs1_h1_val == 512<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                  |[0x800009b0]:KMADS t6, t5, t4<br> [0x800009b4]:csrrs t5, vxsat, zero<br> [0x800009b8]:sw t6, 328(ra)<br>    |
|  71|[0x80002448]<br>0x93132661|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                             |[0x800009d0]:KMADS t6, t5, t4<br> [0x800009d4]:csrrs t5, vxsat, zero<br> [0x800009d8]:sw t6, 336(ra)<br>    |
|  72|[0x80002450]<br>0x9112A655|- rs1_h0_val == -32768<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                   |[0x800009ec]:KMADS t6, t5, t4<br> [0x800009f0]:csrrs t5, vxsat, zero<br> [0x800009f4]:sw t6, 344(ra)<br>    |
|  73|[0x80002458]<br>0x9112A5DB|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                              |[0x80000a0c]:KMADS t6, t5, t4<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sw t6, 352(ra)<br>    |
|  74|[0x80002460]<br>0x910E9D5A|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                          |[0x80000a2c]:KMADS t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 360(ra)<br>    |
|  75|[0x80002468]<br>0x910E9D45|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                             |[0x80000a4c]:KMADS t6, t5, t4<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sw t6, 368(ra)<br>    |
|  76|[0x80002470]<br>0x910E6F2E|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                           |[0x80000a6c]:KMADS t6, t5, t4<br> [0x80000a70]:csrrs t5, vxsat, zero<br> [0x80000a74]:sw t6, 376(ra)<br>    |
|  77|[0x80002478]<br>0x90FDAF1E|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                            |[0x80000a8c]:KMADS t6, t5, t4<br> [0x80000a90]:csrrs t5, vxsat, zero<br> [0x80000a94]:sw t6, 384(ra)<br>    |
|  78|[0x80002480]<br>0x90FDAE64|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                             |[0x80000aac]:KMADS t6, t5, t4<br> [0x80000ab0]:csrrs t5, vxsat, zero<br> [0x80000ab4]:sw t6, 392(ra)<br>    |
|  79|[0x80002498]<br>0x8FF63C6D|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                          |[0x80000b08]:KMADS t6, t5, t4<br> [0x80000b0c]:csrrs t5, vxsat, zero<br> [0x80000b10]:sw t6, 416(ra)<br>    |
