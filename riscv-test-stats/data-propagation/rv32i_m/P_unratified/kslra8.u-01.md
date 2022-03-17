
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000ad0')]      |
| SIG_REGION                | [('0x80002210', '0x800024b0', '168 words')]      |
| COV_LABELS                | kslra8.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslra8.u-01.S    |
| Total Number of coverpoints| 254     |
| Total Coverpoints Hit     | 248      |
| Total Signature Updates   | 168      |
| STAT1                     | 81      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 84     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a3c]:KSLRA8_U t6, t5, t4
      [0x80000a40]:csrrs t5, vxsat, zero
      [0x80000a44]:sw t6, 488(a7)
 -- Signature Address: 0x80002488 Data: 0xC0807F00
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 1431655765
      - rs1_b3_val == 254
      - rs1_b2_val == 251
      - rs1_b0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a7c]:KSLRA8_U t6, t5, t4
      [0x80000a80]:csrrs t5, vxsat, zero
      [0x80000a84]:sw t6, 504(a7)
 -- Signature Address: 0x80002498 Data: 0x00E00006
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -8388609
      - rs1_b3_val == 0
      - rs1_b2_val == 191
      - rs1_b1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a9c]:KSLRA8_U t6, t5, t4
      [0x80000aa0]:csrrs t5, vxsat, zero
      [0x80000aa4]:sw t6, 512(a7)
 -- Signature Address: 0x800024a0 Data: 0x2BFF0502
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -262145
      - rs1_b3_val == 85
      - rs1_b2_val == 254
      - rs1_b0_val == 4






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x20', 'rs2 : x20', 'rd : x20', 'rs1 == rs2 == rd', 'rs2_val == 1431655765', 'rs1_b3_val == 85', 'rs1_b2_val == 85', 'rs1_b1_val == 85', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x8000011c]:KSLRA8_U s4, s4, s4
	-[0x80000120]:csrrs s4, vxsat, zero
	-[0x80000124]:sw s4, 0(ra)
Current Store : [0x80000128] : sw s4, 4(ra) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x29', 'rs1 == rs2 != rd', 'rs2_val == 2147483647', 'rs1_b3_val == 127', 'rs1_b2_val == 255', 'rs1_b1_val == 255', 'rs1_b0_val == 255']
Last Code Sequence : 
	-[0x8000013c]:KSLRA8_U t4, s11, s11
	-[0x80000140]:csrrs s11, vxsat, zero
	-[0x80000144]:sw t4, 8(ra)
Current Store : [0x80000148] : sw s11, 12(ra) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x29', 'rd : x25', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -1073741825', 'rs1_b1_val == 247', 'rs1_b0_val == 170']
Last Code Sequence : 
	-[0x8000015c]:KSLRA8_U s9, t5, t4
	-[0x80000160]:csrrs t5, vxsat, zero
	-[0x80000164]:sw s9, 16(ra)
Current Store : [0x80000168] : sw t5, 20(ra) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x13', 'rd : x13', 'rs2 == rd != rs1', 'rs2_val == -536870913', 'rs1_b3_val == 251', 'rs1_b2_val == 223', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x8000017c]:KSLRA8_U a3, tp, a3
	-[0x80000180]:csrrs tp, vxsat, zero
	-[0x80000184]:sw a3, 24(ra)
Current Store : [0x80000188] : sw tp, 28(ra) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x6', 'rd : x18', 'rs1 == rd != rs2', 'rs2_val == -268435457', 'rs1_b3_val == 64', 'rs1_b2_val == 64']
Last Code Sequence : 
	-[0x8000019c]:KSLRA8_U s2, s2, t1
	-[0x800001a0]:csrrs s2, vxsat, zero
	-[0x800001a4]:sw s2, 32(ra)
Current Store : [0x800001a8] : sw s2, 36(ra) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x10', 'rd : x11', 'rs2_val == -134217729', 'rs1_b3_val == 128', 'rs1_b1_val == 251']
Last Code Sequence : 
	-[0x800001bc]:KSLRA8_U a1, a7, a0
	-[0x800001c0]:csrrs a7, vxsat, zero
	-[0x800001c4]:sw a1, 40(ra)
Current Store : [0x800001c8] : sw a7, 44(ra) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x2', 'rd : x5', 'rs2_val == -67108865', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x800001dc]:KSLRA8_U t0, a0, sp
	-[0x800001e0]:csrrs a0, vxsat, zero
	-[0x800001e4]:sw t0, 48(ra)
Current Store : [0x800001e8] : sw a0, 52(ra) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x18', 'rd : x30', 'rs2_val == -33554433', 'rs1_b2_val == 127', 'rs1_b1_val == 254', 'rs1_b0_val == 251']
Last Code Sequence : 
	-[0x800001fc]:KSLRA8_U t5, a5, s2
	-[0x80000200]:csrrs a5, vxsat, zero
	-[0x80000204]:sw t5, 56(ra)
Current Store : [0x80000208] : sw a5, 60(ra) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x3', 'rd : x23', 'rs2_val == -16777217', 'rs1_b3_val == 247', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x8000021c]:KSLRA8_U s7, fp, gp
	-[0x80000220]:csrrs fp, vxsat, zero
	-[0x80000224]:sw s7, 64(ra)
Current Store : [0x80000228] : sw fp, 68(ra) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x19', 'rd : x21', 'rs2_val == -8388609', 'rs1_b3_val == 0', 'rs1_b2_val == 0', 'rs1_b1_val == 0', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x8000023c]:KSLRA8_U s5, zero, s3
	-[0x80000240]:csrrs zero, vxsat, zero
	-[0x80000244]:sw s5, 72(ra)
Current Store : [0x80000248] : sw zero, 76(ra) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x26', 'rd : x15', 'rs2_val == -4194305', 'rs1_b2_val == 254', 'rs1_b1_val == 191']
Last Code Sequence : 
	-[0x8000025c]:KSLRA8_U a5, s1, s10
	-[0x80000260]:csrrs s1, vxsat, zero
	-[0x80000264]:sw a5, 80(ra)
Current Store : [0x80000268] : sw s1, 84(ra) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x9', 'rd : x19', 'rs2_val == -2097153', 'rs1_b2_val == 2']
Last Code Sequence : 
	-[0x8000027c]:KSLRA8_U s3, s7, s1
	-[0x80000280]:csrrs s7, vxsat, zero
	-[0x80000284]:sw s3, 88(ra)
Current Store : [0x80000288] : sw s7, 92(ra) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x28', 'rd : x31', 'rs2_val == -1048577', 'rs1_b3_val == 191', 'rs1_b2_val == 191']
Last Code Sequence : 
	-[0x8000029c]:KSLRA8_U t6, t1, t3
	-[0x800002a0]:csrrs t1, vxsat, zero
	-[0x800002a4]:sw t6, 96(ra)
Current Store : [0x800002a8] : sw t1, 100(ra) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x31', 'rd : x17', 'rs2_val == -524289']
Last Code Sequence : 
	-[0x800002bc]:KSLRA8_U a7, a2, t6
	-[0x800002c0]:csrrs a2, vxsat, zero
	-[0x800002c4]:sw a7, 104(ra)
Current Store : [0x800002c8] : sw a2, 108(ra) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x21', 'rd : x0', 'rs2_val == -262145', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x800002dc]:KSLRA8_U zero, s3, s5
	-[0x800002e0]:csrrs s3, vxsat, zero
	-[0x800002e4]:sw zero, 112(ra)
Current Store : [0x800002e8] : sw s3, 116(ra) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x17', 'rd : x27', 'rs2_val == -131073', 'rs1_b0_val == 191']
Last Code Sequence : 
	-[0x800002fc]:KSLRA8_U s11, t0, a7
	-[0x80000300]:csrrs t0, vxsat, zero
	-[0x80000304]:sw s11, 120(ra)
Current Store : [0x80000308] : sw t0, 124(ra) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rd : x2', 'rs1_b3_val == 254', 'rs1_b2_val == 8']
Last Code Sequence : 
	-[0x80000318]:KSLRA8_U sp, t2, zero
	-[0x8000031c]:csrrs t2, vxsat, zero
	-[0x80000320]:sw sp, 128(ra)
Current Store : [0x80000324] : sw t2, 132(ra) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x11', 'rd : x26', 'rs2_val == -32769', 'rs1_b1_val == 127']
Last Code Sequence : 
	-[0x80000338]:KSLRA8_U s10, s6, a1
	-[0x8000033c]:csrrs s6, vxsat, zero
	-[0x80000340]:sw s10, 136(ra)
Current Store : [0x80000344] : sw s6, 140(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x12', 'rs2_val == -16385', 'rs1_b2_val == 239', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x80000360]:KSLRA8_U a2, a4, t2
	-[0x80000364]:csrrs a4, vxsat, zero
	-[0x80000368]:sw a2, 0(a7)
Current Store : [0x8000036c] : sw a4, 4(a7) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x8', 'rd : x28', 'rs2_val == -8193', 'rs1_b3_val == 223', 'rs1_b2_val == 1']
Last Code Sequence : 
	-[0x80000380]:KSLRA8_U t3, s9, fp
	-[0x80000384]:csrrs s9, vxsat, zero
	-[0x80000388]:sw t3, 8(a7)
Current Store : [0x8000038c] : sw s9, 12(a7) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x30', 'rd : x6', 'rs2_val == -4097', 'rs1_b1_val == 253']
Last Code Sequence : 
	-[0x800003a0]:KSLRA8_U t1, s5, t5
	-[0x800003a4]:csrrs s5, vxsat, zero
	-[0x800003a8]:sw t1, 16(a7)
Current Store : [0x800003ac] : sw s5, 20(a7) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x22', 'rd : x8', 'rs2_val == -2049', 'rs1_b2_val == 16', 'rs1_b0_val == 223']
Last Code Sequence : 
	-[0x800003c0]:KSLRA8_U fp, s10, s6
	-[0x800003c4]:csrrs s10, vxsat, zero
	-[0x800003c8]:sw fp, 24(a7)
Current Store : [0x800003cc] : sw s10, 28(a7) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x4', 'rd : x16', 'rs2_val == -1025']
Last Code Sequence : 
	-[0x800003dc]:KSLRA8_U a6, s8, tp
	-[0x800003e0]:csrrs s8, vxsat, zero
	-[0x800003e4]:sw a6, 32(a7)
Current Store : [0x800003e8] : sw s8, 36(a7) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x25', 'rd : x7', 'rs2_val == -513', 'rs1_b3_val == 253', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x800003f8]:KSLRA8_U t2, t6, s9
	-[0x800003fc]:csrrs t6, vxsat, zero
	-[0x80000400]:sw t2, 40(a7)
Current Store : [0x80000404] : sw t6, 44(a7) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x15', 'rd : x10', 'rs2_val == -257', 'rs1_b3_val == 255', 'rs1_b2_val == 128']
Last Code Sequence : 
	-[0x80000414]:KSLRA8_U a0, t3, a5
	-[0x80000418]:csrrs t3, vxsat, zero
	-[0x8000041c]:sw a0, 48(a7)
Current Store : [0x80000420] : sw t3, 52(a7) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x14', 'rd : x9', 'rs2_val == -129', 'rs1_b2_val == 251']
Last Code Sequence : 
	-[0x8000042c]:KSLRA8_U s1, a3, a4
	-[0x80000430]:csrrs a3, vxsat, zero
	-[0x80000434]:sw s1, 56(a7)
Current Store : [0x80000438] : sw a3, 60(a7) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x1', 'rs2_val == -65', 'rs1_b3_val == 170']
Last Code Sequence : 
	-[0x80000448]:KSLRA8_U ra, sp, t0
	-[0x8000044c]:csrrs sp, vxsat, zero
	-[0x80000450]:sw ra, 64(a7)
Current Store : [0x80000454] : sw sp, 68(a7) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x1', 'rd : x4', 'rs2_val == -33']
Last Code Sequence : 
	-[0x80000464]:KSLRA8_U tp, t4, ra
	-[0x80000468]:csrrs t4, vxsat, zero
	-[0x8000046c]:sw tp, 72(a7)
Current Store : [0x80000470] : sw t4, 76(a7) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x23', 'rd : x24', 'rs2_val == -17']
Last Code Sequence : 
	-[0x80000480]:KSLRA8_U s8, gp, s7
	-[0x80000484]:csrrs gp, vxsat, zero
	-[0x80000488]:sw s8, 80(a7)
Current Store : [0x8000048c] : sw gp, 84(a7) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x16', 'rd : x3', 'rs2_val == -9']
Last Code Sequence : 
	-[0x8000049c]:KSLRA8_U gp, ra, a6
	-[0x800004a0]:csrrs ra, vxsat, zero
	-[0x800004a4]:sw gp, 88(a7)
Current Store : [0x800004a8] : sw ra, 92(a7) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x12', 'rd : x14', 'rs2_val == -5', 'rs1_b3_val == 16']
Last Code Sequence : 
	-[0x800004b8]:KSLRA8_U a4, a6, a2
	-[0x800004bc]:csrrs a6, vxsat, zero
	-[0x800004c0]:sw a4, 96(a7)
Current Store : [0x800004c4] : sw a6, 100(a7) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x24', 'rd : x22', 'rs2_val == -3']
Last Code Sequence : 
	-[0x800004d4]:KSLRA8_U s6, a1, s8
	-[0x800004d8]:csrrs a1, vxsat, zero
	-[0x800004dc]:sw s6, 104(a7)
Current Store : [0x800004e0] : sw a1, 108(a7) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_b0_val == 239']
Last Code Sequence : 
	-[0x800004f0]:KSLRA8_U t6, t5, t4
	-[0x800004f4]:csrrs t5, vxsat, zero
	-[0x800004f8]:sw t6, 112(a7)
Current Store : [0x800004fc] : sw t5, 116(a7) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_b3_val == 4', 'rs1_b0_val == 247']
Last Code Sequence : 
	-[0x80000510]:KSLRA8_U t6, t5, t4
	-[0x80000514]:csrrs t5, vxsat, zero
	-[0x80000518]:sw t6, 120(a7)
Current Store : [0x8000051c] : sw t5, 124(a7) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_val == 67108864', 'rs1_b2_val == 4', 'rs1_b0_val == 253']
Last Code Sequence : 
	-[0x8000052c]:KSLRA8_U t6, t5, t4
	-[0x80000530]:csrrs t5, vxsat, zero
	-[0x80000534]:sw t6, 128(a7)
Current Store : [0x80000538] : sw t5, 132(a7) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_val == 8192', 'rs1_b0_val == 254']
Last Code Sequence : 
	-[0x80000548]:KSLRA8_U t6, t5, t4
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 136(a7)
Current Store : [0x80000554] : sw t5, 140(a7) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 1', 'rs1_b0_val == 128']
Last Code Sequence : 
	-[0x80000568]:KSLRA8_U t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 144(a7)
Current Store : [0x80000574] : sw t5, 148(a7) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_val == 128', 'rs1_b2_val == 170', 'rs1_b1_val == 4', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000584]:KSLRA8_U t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 152(a7)
Current Store : [0x80000590] : sw t5, 156(a7) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_b0_val == 16']
Last Code Sequence : 
	-[0x800005a4]:KSLRA8_U t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 160(a7)
Current Store : [0x800005b0] : sw t5, 164(a7) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_b1_val == 223', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x800005c0]:KSLRA8_U t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 168(a7)
Current Store : [0x800005cc] : sw t5, 172(a7) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_val == 16384', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800005dc]:KSLRA8_U t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 176(a7)
Current Store : [0x800005e8] : sw t5, 180(a7) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_b0_val == 1']
Last Code Sequence : 
	-[0x800005f8]:KSLRA8_U t6, t5, t4
	-[0x800005fc]:csrrs t5, vxsat, zero
	-[0x80000600]:sw t6, 184(a7)
Current Store : [0x80000604] : sw t5, 188(a7) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_val == -1431655766']
Last Code Sequence : 
	-[0x80000618]:KSLRA8_U t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 192(a7)
Current Store : [0x80000624] : sw t5, 196(a7) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_val == -2', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000634]:KSLRA8_U t6, t5, t4
	-[0x80000638]:csrrs t5, vxsat, zero
	-[0x8000063c]:sw t6, 200(a7)
Current Store : [0x80000640] : sw t5, 204(a7) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_val == -2147483648']
Last Code Sequence : 
	-[0x80000650]:KSLRA8_U t6, t5, t4
	-[0x80000654]:csrrs t5, vxsat, zero
	-[0x80000658]:sw t6, 208(a7)
Current Store : [0x8000065c] : sw t5, 212(a7) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_val == 1073741824', 'rs1_b3_val == 8']
Last Code Sequence : 
	-[0x8000066c]:KSLRA8_U t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 216(a7)
Current Store : [0x80000678] : sw t5, 220(a7) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_val == 536870912', 'rs1_b3_val == 239']
Last Code Sequence : 
	-[0x80000688]:KSLRA8_U t6, t5, t4
	-[0x8000068c]:csrrs t5, vxsat, zero
	-[0x80000690]:sw t6, 224(a7)
Current Store : [0x80000694] : sw t5, 228(a7) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_val == 268435456', 'rs1_b2_val == 253']
Last Code Sequence : 
	-[0x800006a4]:KSLRA8_U t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 232(a7)
Current Store : [0x800006b0] : sw t5, 236(a7) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_val == 134217728']
Last Code Sequence : 
	-[0x800006c0]:KSLRA8_U t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 240(a7)
Current Store : [0x800006cc] : sw t5, 244(a7) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x800006dc]:KSLRA8_U t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 248(a7)
Current Store : [0x800006e8] : sw t5, 252(a7) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_val == 1']
Last Code Sequence : 
	-[0x800006f8]:KSLRA8_U t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 256(a7)
Current Store : [0x80000704] : sw t5, 260(a7) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x80000718]:KSLRA8_U t6, t5, t4
	-[0x8000071c]:csrrs t5, vxsat, zero
	-[0x80000720]:sw t6, 264(a7)
Current Store : [0x80000724] : sw t5, 268(a7) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs1_b3_val == 32']
Last Code Sequence : 
	-[0x80000738]:KSLRA8_U t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 272(a7)
Current Store : [0x80000744] : sw t5, 276(a7) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs1_b3_val == 2']
Last Code Sequence : 
	-[0x80000754]:KSLRA8_U t6, t5, t4
	-[0x80000758]:csrrs t5, vxsat, zero
	-[0x8000075c]:sw t6, 280(a7)
Current Store : [0x80000760] : sw t5, 284(a7) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_b3_val == 1']
Last Code Sequence : 
	-[0x80000770]:KSLRA8_U t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 288(a7)
Current Store : [0x8000077c] : sw t5, 292(a7) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_b2_val == 247']
Last Code Sequence : 
	-[0x80000790]:KSLRA8_U t6, t5, t4
	-[0x80000794]:csrrs t5, vxsat, zero
	-[0x80000798]:sw t6, 296(a7)
Current Store : [0x8000079c] : sw t5, 300(a7) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x800007ac]:KSLRA8_U t6, t5, t4
	-[0x800007b0]:csrrs t5, vxsat, zero
	-[0x800007b4]:sw t6, 304(a7)
Current Store : [0x800007b8] : sw t5, 308(a7) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_val == 8388608']
Last Code Sequence : 
	-[0x800007c8]:KSLRA8_U t6, t5, t4
	-[0x800007cc]:csrrs t5, vxsat, zero
	-[0x800007d0]:sw t6, 312(a7)
Current Store : [0x800007d4] : sw t5, 316(a7) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_b1_val == 170']
Last Code Sequence : 
	-[0x800007e8]:KSLRA8_U t6, t5, t4
	-[0x800007ec]:csrrs t5, vxsat, zero
	-[0x800007f0]:sw t6, 320(a7)
Current Store : [0x800007f4] : sw t5, 324(a7) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x80000804]:KSLRA8_U t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 328(a7)
Current Store : [0x80000810] : sw t5, 332(a7) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x80000820]:KSLRA8_U t6, t5, t4
	-[0x80000824]:csrrs t5, vxsat, zero
	-[0x80000828]:sw t6, 336(a7)
Current Store : [0x8000082c] : sw t5, 340(a7) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_val == 1048576']
Last Code Sequence : 
	-[0x8000083c]:KSLRA8_U t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 344(a7)
Current Store : [0x80000848] : sw t5, 348(a7) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_val == 524288']
Last Code Sequence : 
	-[0x80000858]:KSLRA8_U t6, t5, t4
	-[0x8000085c]:csrrs t5, vxsat, zero
	-[0x80000860]:sw t6, 352(a7)
Current Store : [0x80000864] : sw t5, 356(a7) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x80000874]:KSLRA8_U t6, t5, t4
	-[0x80000878]:csrrs t5, vxsat, zero
	-[0x8000087c]:sw t6, 360(a7)
Current Store : [0x80000880] : sw t5, 364(a7) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 239']
Last Code Sequence : 
	-[0x80000894]:KSLRA8_U t6, t5, t4
	-[0x80000898]:csrrs t5, vxsat, zero
	-[0x8000089c]:sw t6, 368(a7)
Current Store : [0x800008a0] : sw t5, 372(a7) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_val == 131072', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x800008b0]:KSLRA8_U t6, t5, t4
	-[0x800008b4]:csrrs t5, vxsat, zero
	-[0x800008b8]:sw t6, 376(a7)
Current Store : [0x800008bc] : sw t5, 380(a7) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x800008cc]:KSLRA8_U t6, t5, t4
	-[0x800008d0]:csrrs t5, vxsat, zero
	-[0x800008d4]:sw t6, 384(a7)
Current Store : [0x800008d8] : sw t5, 388(a7) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x800008e8]:KSLRA8_U t6, t5, t4
	-[0x800008ec]:csrrs t5, vxsat, zero
	-[0x800008f0]:sw t6, 392(a7)
Current Store : [0x800008f4] : sw t5, 396(a7) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 128']
Last Code Sequence : 
	-[0x80000904]:KSLRA8_U t6, t5, t4
	-[0x80000908]:csrrs t5, vxsat, zero
	-[0x8000090c]:sw t6, 400(a7)
Current Store : [0x80000910] : sw t5, 404(a7) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_val == 4096']
Last Code Sequence : 
	-[0x80000920]:KSLRA8_U t6, t5, t4
	-[0x80000924]:csrrs t5, vxsat, zero
	-[0x80000928]:sw t6, 408(a7)
Current Store : [0x8000092c] : sw t5, 412(a7) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_val == 1024']
Last Code Sequence : 
	-[0x8000093c]:KSLRA8_U t6, t5, t4
	-[0x80000940]:csrrs t5, vxsat, zero
	-[0x80000944]:sw t6, 416(a7)
Current Store : [0x80000948] : sw t5, 420(a7) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x80000958]:KSLRA8_U t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 424(a7)
Current Store : [0x80000964] : sw t5, 428(a7) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x80000974]:KSLRA8_U t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 432(a7)
Current Store : [0x80000980] : sw t5, 436(a7) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x80000990]:KSLRA8_U t6, t5, t4
	-[0x80000994]:csrrs t5, vxsat, zero
	-[0x80000998]:sw t6, 440(a7)
Current Store : [0x8000099c] : sw t5, 444(a7) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x800009ac]:KSLRA8_U t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 448(a7)
Current Store : [0x800009b8] : sw t5, 452(a7) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x800009c8]:KSLRA8_U t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 456(a7)
Current Store : [0x800009d4] : sw t5, 460(a7) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x800009e4]:KSLRA8_U t6, t5, t4
	-[0x800009e8]:csrrs t5, vxsat, zero
	-[0x800009ec]:sw t6, 464(a7)
Current Store : [0x800009f0] : sw t5, 468(a7) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80000a00]:KSLRA8_U t6, t5, t4
	-[0x80000a04]:csrrs t5, vxsat, zero
	-[0x80000a08]:sw t6, 472(a7)
Current Store : [0x80000a0c] : sw t5, 476(a7) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x80000a1c]:KSLRA8_U t6, t5, t4
	-[0x80000a20]:csrrs t5, vxsat, zero
	-[0x80000a24]:sw t6, 480(a7)
Current Store : [0x80000a28] : sw t5, 484(a7) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 1431655765', 'rs1_b3_val == 254', 'rs1_b2_val == 251', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x80000a3c]:KSLRA8_U t6, t5, t4
	-[0x80000a40]:csrrs t5, vxsat, zero
	-[0x80000a44]:sw t6, 488(a7)
Current Store : [0x80000a48] : sw t5, 492(a7) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 32']
Last Code Sequence : 
	-[0x80000a5c]:KSLRA8_U t6, t5, t4
	-[0x80000a60]:csrrs t5, vxsat, zero
	-[0x80000a64]:sw t6, 496(a7)
Current Store : [0x80000a68] : sw t5, 500(a7) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -8388609', 'rs1_b3_val == 0', 'rs1_b2_val == 191', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x80000a7c]:KSLRA8_U t6, t5, t4
	-[0x80000a80]:csrrs t5, vxsat, zero
	-[0x80000a84]:sw t6, 504(a7)
Current Store : [0x80000a88] : sw t5, 508(a7) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['opcode : kslra8.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -262145', 'rs1_b3_val == 85', 'rs1_b2_val == 254', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000a9c]:KSLRA8_U t6, t5, t4
	-[0x80000aa0]:csrrs t5, vxsat, zero
	-[0x80000aa4]:sw t6, 512(a7)
Current Store : [0x80000aa8] : sw t5, 516(a7) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs2_val == -65537']
Last Code Sequence : 
	-[0x80000abc]:KSLRA8_U t6, t5, t4
	-[0x80000ac0]:csrrs t5, vxsat, zero
	-[0x80000ac4]:sw t6, 520(a7)
Current Store : [0x80000ac8] : sw t5, 524(a7) -- Store: [0x800024ac]:0x00000001





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

|s.no|        signature         |                                                                                                     coverpoints                                                                                                      |                                                      code                                                      |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : kslra8.u<br> - rs1 : x20<br> - rs2 : x20<br> - rd : x20<br> - rs1 == rs2 == rd<br> - rs2_val == 1431655765<br> - rs1_b3_val == 85<br> - rs1_b2_val == 85<br> - rs1_b1_val == 85<br> - rs1_b0_val == 85<br> |[0x8000011c]:KSLRA8_U s4, s4, s4<br> [0x80000120]:csrrs s4, vxsat, zero<br> [0x80000124]:sw s4, 0(ra)<br>       |
|   2|[0x80002218]<br>0x40000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs2_val == 2147483647<br> - rs1_b3_val == 127<br> - rs1_b2_val == 255<br> - rs1_b1_val == 255<br> - rs1_b0_val == 255<br>                     |[0x8000013c]:KSLRA8_U t4, s11, s11<br> [0x80000140]:csrrs s11, vxsat, zero<br> [0x80000144]:sw t4, 8(ra)<br>    |
|   3|[0x80002220]<br>0x0908FCD5|- rs1 : x30<br> - rs2 : x29<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -1073741825<br> - rs1_b1_val == 247<br> - rs1_b0_val == 170<br>                                             |[0x8000015c]:KSLRA8_U s9, t5, t4<br> [0x80000160]:csrrs t5, vxsat, zero<br> [0x80000164]:sw s9, 16(ra)<br>      |
|   4|[0x80002228]<br>0xFEF00510|- rs1 : x4<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs2_val == -536870913<br> - rs1_b3_val == 251<br> - rs1_b2_val == 223<br> - rs1_b0_val == 32<br>                                               |[0x8000017c]:KSLRA8_U a3, tp, a3<br> [0x80000180]:csrrs tp, vxsat, zero<br> [0x80000184]:sw a3, 24(ra)<br>      |
|   5|[0x80002230]<br>0x00000001|- rs1 : x18<br> - rs2 : x6<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_val == -268435457<br> - rs1_b3_val == 64<br> - rs1_b2_val == 64<br>                                                                        |[0x8000019c]:KSLRA8_U s2, s2, t1<br> [0x800001a0]:csrrs s2, vxsat, zero<br> [0x800001a4]:sw s2, 32(ra)<br>      |
|   6|[0x80002238]<br>0xC007FE07|- rs1 : x17<br> - rs2 : x10<br> - rd : x11<br> - rs2_val == -134217729<br> - rs1_b3_val == 128<br> - rs1_b1_val == 251<br>                                                                                            |[0x800001bc]:KSLRA8_U a1, a7, a0<br> [0x800001c0]:csrrs a7, vxsat, zero<br> [0x800001c4]:sw a1, 40(ra)<br>      |
|   7|[0x80002240]<br>0x07100805|- rs1 : x10<br> - rs2 : x2<br> - rd : x5<br> - rs2_val == -67108865<br> - rs1_b2_val == 32<br>                                                                                                                        |[0x800001dc]:KSLRA8_U t0, a0, sp<br> [0x800001e0]:csrrs a0, vxsat, zero<br> [0x800001e4]:sw t0, 48(ra)<br>      |
|   8|[0x80002248]<br>0x0640FFFE|- rs1 : x15<br> - rs2 : x18<br> - rd : x30<br> - rs2_val == -33554433<br> - rs1_b2_val == 127<br> - rs1_b1_val == 254<br> - rs1_b0_val == 251<br>                                                                     |[0x800001fc]:KSLRA8_U t5, a5, s2<br> [0x80000200]:csrrs a5, vxsat, zero<br> [0x80000204]:sw t5, 56(ra)<br>      |
|   9|[0x80002250]<br>0xFC040803|- rs1 : x8<br> - rs2 : x3<br> - rd : x23<br> - rs2_val == -16777217<br> - rs1_b3_val == 247<br> - rs1_b1_val == 16<br>                                                                                                |[0x8000021c]:KSLRA8_U s7, fp, gp<br> [0x80000220]:csrrs fp, vxsat, zero<br> [0x80000224]:sw s7, 64(ra)<br>      |
|  10|[0x80002258]<br>0x00000000|- rs1 : x0<br> - rs2 : x19<br> - rd : x21<br> - rs2_val == -8388609<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                       |[0x8000023c]:KSLRA8_U s5, zero, s3<br> [0x80000240]:csrrs zero, vxsat, zero<br> [0x80000244]:sw s5, 72(ra)<br>  |
|  11|[0x80002260]<br>0x08FFE010|- rs1 : x9<br> - rs2 : x26<br> - rd : x15<br> - rs2_val == -4194305<br> - rs1_b2_val == 254<br> - rs1_b1_val == 191<br>                                                                                               |[0x8000025c]:KSLRA8_U a5, s1, s10<br> [0x80000260]:csrrs s1, vxsat, zero<br> [0x80000264]:sw a5, 80(ra)<br>     |
|  12|[0x80002268]<br>0x03010910|- rs1 : x23<br> - rs2 : x9<br> - rd : x19<br> - rs2_val == -2097153<br> - rs1_b2_val == 2<br>                                                                                                                         |[0x8000027c]:KSLRA8_U s3, s7, s1<br> [0x80000280]:csrrs s7, vxsat, zero<br> [0x80000284]:sw s3, 88(ra)<br>      |
|  13|[0x80002270]<br>0xE0E00910|- rs1 : x6<br> - rs2 : x28<br> - rd : x31<br> - rs2_val == -1048577<br> - rs1_b3_val == 191<br> - rs1_b2_val == 191<br>                                                                                               |[0x8000029c]:KSLRA8_U t6, t1, t3<br> [0x800002a0]:csrrs t1, vxsat, zero<br> [0x800002a4]:sw t6, 96(ra)<br>      |
|  14|[0x80002278]<br>0x2B090807|- rs1 : x12<br> - rs2 : x31<br> - rd : x17<br> - rs2_val == -524289<br>                                                                                                                                               |[0x800002bc]:KSLRA8_U a7, a2, t6<br> [0x800002c0]:csrrs a2, vxsat, zero<br> [0x800002c4]:sw a7, 104(ra)<br>     |
|  15|[0x80002280]<br>0x00000000|- rs1 : x19<br> - rs2 : x21<br> - rd : x0<br> - rs2_val == -262145<br> - rs1_b0_val == 4<br>                                                                                                                          |[0x800002dc]:KSLRA8_U zero, s3, s5<br> [0x800002e0]:csrrs s3, vxsat, zero<br> [0x800002e4]:sw zero, 112(ra)<br> |
|  16|[0x80002288]<br>0x030500E0|- rs1 : x5<br> - rs2 : x17<br> - rd : x27<br> - rs2_val == -131073<br> - rs1_b0_val == 191<br>                                                                                                                        |[0x800002fc]:KSLRA8_U s11, t0, a7<br> [0x80000300]:csrrs t0, vxsat, zero<br> [0x80000304]:sw s11, 120(ra)<br>   |
|  17|[0x80002290]<br>0xFE085555|- rs1 : x7<br> - rs2 : x0<br> - rd : x2<br> - rs1_b3_val == 254<br> - rs1_b2_val == 8<br>                                                                                                                             |[0x80000318]:KSLRA8_U sp, t2, zero<br> [0x8000031c]:csrrs t2, vxsat, zero<br> [0x80000320]:sw sp, 128(ra)<br>   |
|  18|[0x80002298]<br>0x00004007|- rs1 : x22<br> - rs2 : x11<br> - rd : x26<br> - rs2_val == -32769<br> - rs1_b1_val == 127<br>                                                                                                                        |[0x80000338]:KSLRA8_U s10, s6, a1<br> [0x8000033c]:csrrs s6, vxsat, zero<br> [0x80000340]:sw s10, 136(ra)<br>   |
|  19|[0x800022a0]<br>0x08F82000|- rs1 : x14<br> - rs2 : x7<br> - rd : x12<br> - rs2_val == -16385<br> - rs1_b2_val == 239<br> - rs1_b1_val == 64<br>                                                                                                  |[0x80000360]:KSLRA8_U a2, a4, t2<br> [0x80000364]:csrrs a4, vxsat, zero<br> [0x80000368]:sw a2, 0(a7)<br>       |
|  20|[0x800022a8]<br>0xF0010308|- rs1 : x25<br> - rs2 : x8<br> - rd : x28<br> - rs2_val == -8193<br> - rs1_b3_val == 223<br> - rs1_b2_val == 1<br>                                                                                                    |[0x80000380]:KSLRA8_U t3, s9, fp<br> [0x80000384]:csrrs s9, vxsat, zero<br> [0x80000388]:sw t3, 8(a7)<br>       |
|  21|[0x800022b0]<br>0x0A00FFFE|- rs1 : x21<br> - rs2 : x30<br> - rd : x6<br> - rs2_val == -4097<br> - rs1_b1_val == 253<br>                                                                                                                          |[0x800003a0]:KSLRA8_U t1, s5, t5<br> [0x800003a4]:csrrs s5, vxsat, zero<br> [0x800003a8]:sw t1, 16(a7)<br>      |
|  22|[0x800022b8]<br>0x060803F0|- rs1 : x26<br> - rs2 : x22<br> - rd : x8<br> - rs2_val == -2049<br> - rs1_b2_val == 16<br> - rs1_b0_val == 223<br>                                                                                                   |[0x800003c0]:KSLRA8_U fp, s10, s6<br> [0x800003c4]:csrrs s10, vxsat, zero<br> [0x800003c8]:sw fp, 24(a7)<br>    |
|  23|[0x800022c0]<br>0x00010805|- rs1 : x24<br> - rs2 : x4<br> - rd : x16<br> - rs2_val == -1025<br>                                                                                                                                                  |[0x800003dc]:KSLRA8_U a6, s8, tp<br> [0x800003e0]:csrrs s8, vxsat, zero<br> [0x800003e4]:sw a6, 32(a7)<br>      |
|  24|[0x800022c8]<br>0xFF040408|- rs1 : x31<br> - rs2 : x25<br> - rd : x7<br> - rs2_val == -513<br> - rs1_b3_val == 253<br> - rs1_b1_val == 8<br>                                                                                                     |[0x800003f8]:KSLRA8_U t2, t6, s9<br> [0x800003fc]:csrrs t6, vxsat, zero<br> [0x80000400]:sw t2, 40(a7)<br>      |
|  25|[0x800022d0]<br>0x00C0FFD5|- rs1 : x28<br> - rs2 : x15<br> - rd : x10<br> - rs2_val == -257<br> - rs1_b3_val == 255<br> - rs1_b2_val == 128<br>                                                                                                  |[0x80000414]:KSLRA8_U a0, t3, a5<br> [0x80000418]:csrrs t3, vxsat, zero<br> [0x8000041c]:sw a0, 48(a7)<br>      |
|  26|[0x800022d8]<br>0x05FE0800|- rs1 : x13<br> - rs2 : x14<br> - rd : x9<br> - rs2_val == -129<br> - rs1_b2_val == 251<br>                                                                                                                           |[0x8000042c]:KSLRA8_U s1, a3, a4<br> [0x80000430]:csrrs a3, vxsat, zero<br> [0x80000434]:sw s1, 56(a7)<br>      |
|  27|[0x800022e0]<br>0xD52B0307|- rs1 : x2<br> - rs2 : x5<br> - rd : x1<br> - rs2_val == -65<br> - rs1_b3_val == 170<br>                                                                                                                              |[0x80000448]:KSLRA8_U ra, sp, t0<br> [0x8000044c]:csrrs sp, vxsat, zero<br> [0x80000450]:sw ra, 64(a7)<br>      |
|  28|[0x800022e8]<br>0xFE2B0705|- rs1 : x29<br> - rs2 : x1<br> - rd : x4<br> - rs2_val == -33<br>                                                                                                                                                     |[0x80000464]:KSLRA8_U tp, t4, ra<br> [0x80000468]:csrrs t4, vxsat, zero<br> [0x8000046c]:sw tp, 72(a7)<br>      |
|  29|[0x800022f0]<br>0x03E0002B|- rs1 : x3<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == -17<br>                                                                                                                                                    |[0x80000480]:KSLRA8_U s8, gp, s7<br> [0x80000484]:csrrs gp, vxsat, zero<br> [0x80000488]:sw s8, 80(a7)<br>      |
|  30|[0x800022f8]<br>0x807F807F|- rs1 : x1<br> - rs2 : x16<br> - rd : x3<br> - rs2_val == -9<br>                                                                                                                                                      |[0x8000049c]:KSLRA8_U gp, ra, a6<br> [0x800004a0]:csrrs ra, vxsat, zero<br> [0x800004a4]:sw gp, 88(a7)<br>      |
|  31|[0x80002300]<br>0x01010300|- rs1 : x16<br> - rs2 : x12<br> - rd : x14<br> - rs2_val == -5<br> - rs1_b3_val == 16<br>                                                                                                                             |[0x800004b8]:KSLRA8_U a4, a6, a2<br> [0x800004bc]:csrrs a6, vxsat, zero<br> [0x800004c0]:sw a4, 96(a7)<br>      |
|  32|[0x80002308]<br>0x01101000|- rs1 : x11<br> - rs2 : x24<br> - rd : x22<br> - rs2_val == -3<br>                                                                                                                                                    |[0x800004d4]:KSLRA8_U s6, a1, s8<br> [0x800004d8]:csrrs a1, vxsat, zero<br> [0x800004dc]:sw s6, 104(a7)<br>     |
|  33|[0x80002310]<br>0x00F802FE|- rs1_b0_val == 239<br>                                                                                                                                                                                               |[0x800004f0]:KSLRA8_U t6, t5, t4<br> [0x800004f4]:csrrs t5, vxsat, zero<br> [0x800004f8]:sw t6, 112(a7)<br>     |
|  34|[0x80002318]<br>0x02FF40FC|- rs1_b3_val == 4<br> - rs1_b0_val == 247<br>                                                                                                                                                                         |[0x80000510]:KSLRA8_U t6, t5, t4<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 120(a7)<br>     |
|  35|[0x80002320]<br>0xFD0406FD|- rs2_val == 67108864<br> - rs1_b2_val == 4<br> - rs1_b0_val == 253<br>                                                                                                                                               |[0x8000052c]:KSLRA8_U t6, t5, t4<br> [0x80000530]:csrrs t5, vxsat, zero<br> [0x80000534]:sw t6, 128(a7)<br>     |
|  36|[0x80002328]<br>0x400712FE|- rs2_val == 8192<br> - rs1_b0_val == 254<br>                                                                                                                                                                         |[0x80000548]:KSLRA8_U t6, t5, t4<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 136(a7)<br>     |
|  37|[0x80002330]<br>0x050901C0|- rs1_b1_val == 1<br> - rs1_b0_val == 128<br>                                                                                                                                                                         |[0x80000568]:KSLRA8_U t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 144(a7)<br>     |
|  38|[0x80002338]<br>0x40AA0440|- rs2_val == 128<br> - rs1_b2_val == 170<br> - rs1_b1_val == 4<br> - rs1_b0_val == 64<br>                                                                                                                             |[0x80000584]:KSLRA8_U t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 152(a7)<br>     |
|  39|[0x80002340]<br>0x0401FE08|- rs1_b0_val == 16<br>                                                                                                                                                                                                |[0x800005a4]:KSLRA8_U t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 160(a7)<br>     |
|  40|[0x80002348]<br>0xFF02DF08|- rs1_b1_val == 223<br> - rs1_b0_val == 8<br>                                                                                                                                                                         |[0x800005c0]:KSLRA8_U t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 168(a7)<br>     |
|  41|[0x80002350]<br>0xF7030C02|- rs2_val == 16384<br> - rs1_b0_val == 2<br>                                                                                                                                                                          |[0x800005dc]:KSLRA8_U t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 176(a7)<br>     |
|  42|[0x80002358]<br>0x02011000|- rs1_b0_val == 1<br>                                                                                                                                                                                                 |[0x800005f8]:KSLRA8_U t6, t5, t4<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 184(a7)<br>     |
|  43|[0x80002360]<br>0x00000100|- rs2_val == -1431655766<br>                                                                                                                                                                                          |[0x80000618]:KSLRA8_U t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 192(a7)<br>     |
|  44|[0x80002368]<br>0xEB010220|- rs2_val == -2<br> - rs1_b0_val == 127<br>                                                                                                                                                                           |[0x80000634]:KSLRA8_U t6, t5, t4<br> [0x80000638]:csrrs t5, vxsat, zero<br> [0x8000063c]:sw t6, 200(a7)<br>     |
|  45|[0x80002370]<br>0xFB070B02|- rs2_val == -2147483648<br>                                                                                                                                                                                          |[0x80000650]:KSLRA8_U t6, t5, t4<br> [0x80000654]:csrrs t5, vxsat, zero<br> [0x80000658]:sw t6, 208(a7)<br>     |
|  46|[0x80002378]<br>0x080140F7|- rs2_val == 1073741824<br> - rs1_b3_val == 8<br>                                                                                                                                                                     |[0x8000066c]:KSLRA8_U t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 216(a7)<br>     |
|  47|[0x80002380]<br>0xEF01BF0C|- rs2_val == 536870912<br> - rs1_b3_val == 239<br>                                                                                                                                                                    |[0x80000688]:KSLRA8_U t6, t5, t4<br> [0x8000068c]:csrrs t5, vxsat, zero<br> [0x80000690]:sw t6, 224(a7)<br>     |
|  48|[0x80002388]<br>0xF7FD0955|- rs2_val == 268435456<br> - rs1_b2_val == 253<br>                                                                                                                                                                    |[0x800006a4]:KSLRA8_U t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 232(a7)<br>     |
|  49|[0x80002390]<br>0x03BF097F|- rs2_val == 134217728<br>                                                                                                                                                                                            |[0x800006c0]:KSLRA8_U t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 240(a7)<br>     |
|  50|[0x80002398]<br>0x8010FE0F|- rs2_val == 33554432<br>                                                                                                                                                                                             |[0x800006dc]:KSLRA8_U t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 248(a7)<br>     |
|  51|[0x800023a0]<br>0x7F16FC00|- rs2_val == 1<br>                                                                                                                                                                                                    |[0x800006f8]:KSLRA8_U t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 256(a7)<br>     |
|  52|[0x800023a8]<br>0x7F121080|- rs2_val == 2048<br>                                                                                                                                                                                                 |[0x80000718]:KSLRA8_U t6, t5, t4<br> [0x8000071c]:csrrs t5, vxsat, zero<br> [0x80000720]:sw t6, 264(a7)<br>     |
|  53|[0x800023b0]<br>0x10400202|- rs1_b3_val == 32<br>                                                                                                                                                                                                |[0x80000738]:KSLRA8_U t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 272(a7)<br>     |
|  54|[0x800023b8]<br>0x01FF05E0|- rs1_b3_val == 2<br>                                                                                                                                                                                                 |[0x80000754]:KSLRA8_U t6, t5, t4<br> [0x80000758]:csrrs t5, vxsat, zero<br> [0x8000075c]:sw t6, 280(a7)<br>     |
|  55|[0x800023c0]<br>0x00000801|- rs1_b3_val == 1<br>                                                                                                                                                                                                 |[0x80000770]:KSLRA8_U t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 288(a7)<br>     |
|  56|[0x800023c8]<br>0xFFFC0300|- rs1_b2_val == 247<br>                                                                                                                                                                                               |[0x80000790]:KSLRA8_U t6, t5, t4<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sw t6, 296(a7)<br>     |
|  57|[0x800023d0]<br>0xDF0C40DF|- rs2_val == 16777216<br>                                                                                                                                                                                             |[0x800007ac]:KSLRA8_U t6, t5, t4<br> [0x800007b0]:csrrs t5, vxsat, zero<br> [0x800007b4]:sw t6, 304(a7)<br>     |
|  58|[0x800023d8]<br>0x0C12FF0C|- rs2_val == 8388608<br>                                                                                                                                                                                              |[0x800007c8]:KSLRA8_U t6, t5, t4<br> [0x800007cc]:csrrs t5, vxsat, zero<br> [0x800007d0]:sw t6, 312(a7)<br>     |
|  59|[0x800023e0]<br>0xC020D507|- rs1_b1_val == 170<br>                                                                                                                                                                                               |[0x800007e8]:KSLRA8_U t6, t5, t4<br> [0x800007ec]:csrrs t5, vxsat, zero<br> [0x800007f0]:sw t6, 320(a7)<br>     |
|  60|[0x800023e8]<br>0xFF5503DF|- rs2_val == 4194304<br>                                                                                                                                                                                              |[0x80000804]:KSLRA8_U t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 328(a7)<br>     |
|  61|[0x800023f0]<br>0x0502BF55|- rs2_val == 2097152<br>                                                                                                                                                                                              |[0x80000820]:KSLRA8_U t6, t5, t4<br> [0x80000824]:csrrs t5, vxsat, zero<br> [0x80000828]:sw t6, 336(a7)<br>     |
|  62|[0x800023f8]<br>0x080DFF7F|- rs2_val == 1048576<br>                                                                                                                                                                                              |[0x8000083c]:KSLRA8_U t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 344(a7)<br>     |
|  63|[0x80002400]<br>0x05400B0C|- rs2_val == 524288<br>                                                                                                                                                                                               |[0x80000858]:KSLRA8_U t6, t5, t4<br> [0x8000085c]:csrrs t5, vxsat, zero<br> [0x80000860]:sw t6, 352(a7)<br>     |
|  64|[0x80002408]<br>0x1000070D|- rs2_val == 262144<br>                                                                                                                                                                                               |[0x80000874]:KSLRA8_U t6, t5, t4<br> [0x80000878]:csrrs t5, vxsat, zero<br> [0x8000087c]:sw t6, 360(a7)<br>     |
|  65|[0x80002410]<br>0xF8FFF808|- rs1_b1_val == 239<br>                                                                                                                                                                                               |[0x80000894]:KSLRA8_U t6, t5, t4<br> [0x80000898]:csrrs t5, vxsat, zero<br> [0x8000089c]:sw t6, 368(a7)<br>     |
|  66|[0x80002418]<br>0x0D13027F|- rs2_val == 131072<br> - rs1_b1_val == 2<br>                                                                                                                                                                         |[0x800008b0]:KSLRA8_U t6, t5, t4<br> [0x800008b4]:csrrs t5, vxsat, zero<br> [0x800008b8]:sw t6, 376(a7)<br>     |
|  67|[0x80002420]<br>0x01DF0110|- rs2_val == 65536<br>                                                                                                                                                                                                |[0x800008cc]:KSLRA8_U t6, t5, t4<br> [0x800008d0]:csrrs t5, vxsat, zero<br> [0x800008d4]:sw t6, 384(a7)<br>     |
|  68|[0x80002428]<br>0x0D7FEFBF|- rs2_val == 32768<br>                                                                                                                                                                                                |[0x800008e8]:KSLRA8_U t6, t5, t4<br> [0x800008ec]:csrrs t5, vxsat, zero<br> [0x800008f0]:sw t6, 392(a7)<br>     |
|  69|[0x80002430]<br>0x0401E002|- rs1_b1_val == 128<br>                                                                                                                                                                                               |[0x80000904]:KSLRA8_U t6, t5, t4<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sw t6, 400(a7)<br>     |
|  70|[0x80002438]<br>0x097FDF0A|- rs2_val == 4096<br>                                                                                                                                                                                                 |[0x80000920]:KSLRA8_U t6, t5, t4<br> [0x80000924]:csrrs t5, vxsat, zero<br> [0x80000928]:sw t6, 408(a7)<br>     |
|  71|[0x80002440]<br>0x0A12BF0F|- rs2_val == 1024<br>                                                                                                                                                                                                 |[0x8000093c]:KSLRA8_U t6, t5, t4<br> [0x80000940]:csrrs t5, vxsat, zero<br> [0x80000944]:sw t6, 416(a7)<br>     |
|  72|[0x80002448]<br>0x0AAAEFEF|- rs2_val == 512<br>                                                                                                                                                                                                  |[0x80000958]:KSLRA8_U t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 424(a7)<br>     |
|  73|[0x80002450]<br>0x0DEF0300|- rs2_val == 256<br>                                                                                                                                                                                                  |[0x80000974]:KSLRA8_U t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 432(a7)<br>     |
|  74|[0x80002458]<br>0xAA02F740|- rs2_val == 64<br>                                                                                                                                                                                                   |[0x80000990]:KSLRA8_U t6, t5, t4<br> [0x80000994]:csrrs t5, vxsat, zero<br> [0x80000998]:sw t6, 440(a7)<br>     |
|  75|[0x80002460]<br>0x0DAA0B01|- rs2_val == 32<br>                                                                                                                                                                                                   |[0x800009ac]:KSLRA8_U t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 448(a7)<br>     |
|  76|[0x80002468]<br>0x00DF4004|- rs2_val == 16<br>                                                                                                                                                                                                   |[0x800009c8]:KSLRA8_U t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 456(a7)<br>     |
|  77|[0x80002470]<br>0x00000000|- rs2_val == 8<br>                                                                                                                                                                                                    |[0x800009e4]:KSLRA8_U t6, t5, t4<br> [0x800009e8]:csrrs t5, vxsat, zero<br> [0x800009ec]:sw t6, 464(a7)<br>     |
|  78|[0x80002478]<br>0x7F7F80D0|- rs2_val == 4<br>                                                                                                                                                                                                    |[0x80000a00]:KSLRA8_U t6, t5, t4<br> [0x80000a04]:csrrs t5, vxsat, zero<br> [0x80000a08]:sw t6, 472(a7)<br>     |
|  79|[0x80002480]<br>0x083C8030|- rs2_val == 2<br>                                                                                                                                                                                                    |[0x80000a1c]:KSLRA8_U t6, t5, t4<br> [0x80000a20]:csrrs t5, vxsat, zero<br> [0x80000a24]:sw t6, 480(a7)<br>     |
|  80|[0x80002490]<br>0x05061009|- rs1_b1_val == 32<br>                                                                                                                                                                                                |[0x80000a5c]:KSLRA8_U t6, t5, t4<br> [0x80000a60]:csrrs t5, vxsat, zero<br> [0x80000a64]:sw t6, 496(a7)<br>     |
|  81|[0x800024a8]<br>0xFF042B2B|- rs2_val == -65537<br>                                                                                                                                                                                               |[0x80000abc]:KSLRA8_U t6, t5, t4<br> [0x80000ac0]:csrrs t5, vxsat, zero<br> [0x80000ac4]:sw t6, 520(a7)<br>     |
