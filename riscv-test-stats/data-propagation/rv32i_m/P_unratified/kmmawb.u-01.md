
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b80')]      |
| SIG_REGION                | [('0x80002210', '0x80002500', '188 words')]      |
| COV_LABELS                | kmmawb.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmawb.u-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 186      |
| STAT1                     | 90      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 93     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000075c]:KMMAWB_U t6, t5, t4
      [0x80000760]:csrrs t5, vxsat, zero
      [0x80000764]:sw t6, 304(ra)
 -- Signature Address: 0x800023d0 Data: 0xFBA60F9F
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b54]:KMMAWB_U t6, t5, t4
      [0x80000b58]:csrrs t5, vxsat, zero
      [0x80000b5c]:sw t6, 584(ra)
 -- Signature Address: 0x800024e8 Data: 0x18A68009
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_h1_val == -16385
      - rs2_h0_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b70]:KMMAWB_U t6, t5, t4
      [0x80000b74]:csrrs t5, vxsat, zero
      [0x80000b78]:sw t6, 592(ra)
 -- Signature Address: 0x800024f0 Data: 0x18A68009
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -21846
      - rs2_h0_val == 256
      - rs1_w0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawb.u', 'rs1 : x1', 'rs2 : x1', 'rd : x1', 'rs1 == rs2 == rd', 'rs2_h1_val == -16385', 'rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000118]:KMMAWB_U ra, ra, ra
	-[0x8000011c]:csrrs ra, vxsat, zero
	-[0x80000120]:sw ra, 0(a3)
Current Store : [0x80000124] : sw ra, 4(a3) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x25', 'rs1 == rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000134]:KMMAWB_U s9, s5, s5
	-[0x80000138]:csrrs s5, vxsat, zero
	-[0x8000013c]:sw s9, 8(a3)
Current Store : [0x80000140] : sw s5, 12(a3) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rd : x0', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845', 'rs2_h0_val == -513', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000150]:KMMAWB_U zero, t5, a7
	-[0x80000154]:csrrs t5, vxsat, zero
	-[0x80000158]:sw zero, 16(a3)
Current Store : [0x8000015c] : sw t5, 20(a3) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x5', 'rd : x5', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x8000016c]:KMMAWB_U t0, tp, t0
	-[0x80000170]:csrrs tp, vxsat, zero
	-[0x80000174]:sw t0, 24(a3)
Current Store : [0x80000178] : sw tp, 28(a3) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x3', 'rd : x20', 'rs1 == rd != rs2', 'rs2_h1_val == -8193', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000184]:KMMAWB_U s4, s4, gp
	-[0x80000188]:csrrs s4, vxsat, zero
	-[0x8000018c]:sw s4, 32(a3)
Current Store : [0x80000190] : sw s4, 36(a3) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x29', 'rd : x11', 'rs2_h1_val == -4097', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800001a4]:KMMAWB_U a1, zero, t4
	-[0x800001a8]:csrrs zero, vxsat, zero
	-[0x800001ac]:sw a1, 40(a3)
Current Store : [0x800001b0] : sw zero, 44(a3) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x10', 'rs2_h1_val == -2049', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800001c0]:KMMAWB_U a0, a5, s10
	-[0x800001c4]:csrrs a5, vxsat, zero
	-[0x800001c8]:sw a0, 48(a3)
Current Store : [0x800001cc] : sw a5, 52(a3) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x9', 'rd : x2', 'rs2_h1_val == -1025', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800001dc]:KMMAWB_U sp, t4, s1
	-[0x800001e0]:csrrs t4, vxsat, zero
	-[0x800001e4]:sw sp, 56(a3)
Current Store : [0x800001e8] : sw t4, 60(a3) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x8', 'rd : x24', 'rs2_h1_val == -513', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800001f8]:KMMAWB_U s8, t6, fp
	-[0x800001fc]:csrrs t6, vxsat, zero
	-[0x80000200]:sw s8, 64(a3)
Current Store : [0x80000204] : sw t6, 68(a3) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x30', 'rs2_h1_val == -257', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000218]:KMMAWB_U t5, sp, s8
	-[0x8000021c]:csrrs sp, vxsat, zero
	-[0x80000220]:sw t5, 72(a3)
Current Store : [0x80000224] : sw sp, 76(a3) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x22', 'rd : x23', 'rs2_h1_val == -129', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000234]:KMMAWB_U s7, a1, s6
	-[0x80000238]:csrrs a1, vxsat, zero
	-[0x8000023c]:sw s7, 80(a3)
Current Store : [0x80000240] : sw a1, 84(a3) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x6', 'rd : x28', 'rs2_h1_val == -65', 'rs2_h0_val == 4096', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x8000024c]:KMMAWB_U t3, gp, t1
	-[0x80000250]:csrrs gp, vxsat, zero
	-[0x80000254]:sw t3, 88(a3)
Current Store : [0x80000258] : sw gp, 92(a3) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x19', 'rd : x26', 'rs2_h1_val == -33', 'rs2_h0_val == -1025', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x8000026c]:KMMAWB_U s10, fp, s3
	-[0x80000270]:csrrs fp, vxsat, zero
	-[0x80000274]:sw s10, 96(a3)
Current Store : [0x80000278] : sw fp, 100(a3) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x7', 'rd : x29', 'rs2_h1_val == -17', 'rs2_h0_val == -17', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000288]:KMMAWB_U t4, s1, t2
	-[0x8000028c]:csrrs s1, vxsat, zero
	-[0x80000290]:sw t4, 104(a3)
Current Store : [0x80000294] : sw s1, 108(a3) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x2', 'rd : x31', 'rs2_h1_val == -9', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800002a4]:KMMAWB_U t6, a0, sp
	-[0x800002a8]:csrrs a0, vxsat, zero
	-[0x800002ac]:sw t6, 112(a3)
Current Store : [0x800002b0] : sw a0, 116(a3) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x27', 'rd : x21', 'rs2_h1_val == -5', 'rs2_h0_val == -65', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800002c4]:KMMAWB_U s5, s3, s11
	-[0x800002c8]:csrrs s3, vxsat, zero
	-[0x800002cc]:sw s5, 120(a3)
Current Store : [0x800002d0] : sw s3, 124(a3) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x31', 'rd : x3', 'rs2_h1_val == -3', 'rs2_h0_val == 2', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800002e4]:KMMAWB_U gp, s10, t6
	-[0x800002e8]:csrrs s10, vxsat, zero
	-[0x800002ec]:sw gp, 128(a3)
Current Store : [0x800002f0] : sw s10, 132(a3) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x25', 'rd : x12', 'rs2_h1_val == -2', 'rs2_h0_val == -129', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000300]:KMMAWB_U a2, t2, s9
	-[0x80000304]:csrrs t2, vxsat, zero
	-[0x80000308]:sw a2, 136(a3)
Current Store : [0x8000030c] : sw t2, 140(a3) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x11', 'rd : x8', 'rs2_h1_val == -32768', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000324]:KMMAWB_U fp, a4, a1
	-[0x80000328]:csrrs a4, vxsat, zero
	-[0x8000032c]:sw fp, 0(ra)
Current Store : [0x80000330] : sw a4, 4(ra) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x10', 'rd : x4', 'rs2_h1_val == 16384', 'rs2_h0_val == 32767', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000340]:KMMAWB_U tp, s7, a0
	-[0x80000344]:csrrs s7, vxsat, zero
	-[0x80000348]:sw tp, 8(ra)
Current Store : [0x8000034c] : sw s7, 12(ra) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x15', 'rd : x14', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x8000035c]:KMMAWB_U a4, a2, a5
	-[0x80000360]:csrrs a2, vxsat, zero
	-[0x80000364]:sw a4, 16(ra)
Current Store : [0x80000368] : sw a2, 20(ra) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x16', 'rd : x27', 'rs1_w0_val == -2147483648', 'rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80000378]:KMMAWB_U s11, s2, a6
	-[0x8000037c]:csrrs s2, vxsat, zero
	-[0x80000380]:sw s11, 24(ra)
Current Store : [0x80000384] : sw s2, 28(ra) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x28', 'rd : x22', 'rs2_h1_val == 2048', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000394]:KMMAWB_U s6, a6, t3
	-[0x80000398]:csrrs a6, vxsat, zero
	-[0x8000039c]:sw s6, 32(ra)
Current Store : [0x800003a0] : sw a6, 36(ra) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x23', 'rd : x18', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800003b0]:KMMAWB_U s2, s11, s7
	-[0x800003b4]:csrrs s11, vxsat, zero
	-[0x800003b8]:sw s2, 40(ra)
Current Store : [0x800003bc] : sw s11, 44(ra) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x17', 'rs2_h1_val == 512', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800003d0]:KMMAWB_U a7, t3, tp
	-[0x800003d4]:csrrs t3, vxsat, zero
	-[0x800003d8]:sw a7, 48(ra)
Current Store : [0x800003dc] : sw t3, 52(ra) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x14', 'rd : x19', 'rs2_h1_val == 256']
Last Code Sequence : 
	-[0x800003f0]:KMMAWB_U s3, s8, a4
	-[0x800003f4]:csrrs s8, vxsat, zero
	-[0x800003f8]:sw s3, 56(ra)
Current Store : [0x800003fc] : sw s8, 60(ra) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x18', 'rd : x13', 'rs2_h1_val == 128', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000040c]:KMMAWB_U a3, t0, s2
	-[0x80000410]:csrrs t0, vxsat, zero
	-[0x80000414]:sw a3, 64(ra)
Current Store : [0x80000418] : sw t0, 68(ra) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x13', 'rd : x16', 'rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80000428]:KMMAWB_U a6, s9, a3
	-[0x8000042c]:csrrs s9, vxsat, zero
	-[0x80000430]:sw a6, 72(ra)
Current Store : [0x80000434] : sw s9, 76(ra) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x12', 'rd : x9', 'rs2_h1_val == 32', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000444]:KMMAWB_U s1, a7, a2
	-[0x80000448]:csrrs a7, vxsat, zero
	-[0x8000044c]:sw s1, 80(ra)
Current Store : [0x80000450] : sw a7, 84(ra) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x0', 'rd : x7', 'rs2_h1_val == 0', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000460]:KMMAWB_U t2, a3, zero
	-[0x80000464]:csrrs a3, vxsat, zero
	-[0x80000468]:sw t2, 88(ra)
Current Store : [0x8000046c] : sw a3, 92(ra) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x20', 'rd : x15', 'rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80000478]:KMMAWB_U a5, t1, s4
	-[0x8000047c]:csrrs t1, vxsat, zero
	-[0x80000480]:sw a5, 96(ra)
Current Store : [0x80000484] : sw t1, 100(ra) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x30', 'rd : x6', 'rs2_h1_val == 4', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000498]:KMMAWB_U t1, s6, t5
	-[0x8000049c]:csrrs s6, vxsat, zero
	-[0x800004a0]:sw t1, 104(ra)
Current Store : [0x800004a4] : sw s6, 108(ra) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 16', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800004b4]:KMMAWB_U t6, t5, t4
	-[0x800004b8]:csrrs t5, vxsat, zero
	-[0x800004bc]:sw t6, 112(ra)
Current Store : [0x800004c0] : sw t5, 116(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800004d4]:KMMAWB_U t6, t5, t4
	-[0x800004d8]:csrrs t5, vxsat, zero
	-[0x800004dc]:sw t6, 120(ra)
Current Store : [0x800004e0] : sw t5, 124(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800004f4]:KMMAWB_U t6, t5, t4
	-[0x800004f8]:csrrs t5, vxsat, zero
	-[0x800004fc]:sw t6, 128(ra)
Current Store : [0x80000500] : sw t5, 132(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 21845', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000514]:KMMAWB_U t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 136(ra)
Current Store : [0x80000520] : sw t5, 140(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000530]:KMMAWB_U t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 144(ra)
Current Store : [0x8000053c] : sw t5, 148(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x8000054c]:KMMAWB_U t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 152(ra)
Current Store : [0x80000558] : sw t5, 156(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000568]:KMMAWB_U t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 160(ra)
Current Store : [0x80000574] : sw t5, 164(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000584]:KMMAWB_U t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 168(ra)
Current Store : [0x80000590] : sw t5, 172(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800005a0]:KMMAWB_U t6, t5, t4
	-[0x800005a4]:csrrs t5, vxsat, zero
	-[0x800005a8]:sw t6, 176(ra)
Current Store : [0x800005ac] : sw t5, 180(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800005bc]:KMMAWB_U t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 184(ra)
Current Store : [0x800005c8] : sw t5, 188(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800005d8]:KMMAWB_U t6, t5, t4
	-[0x800005dc]:csrrs t5, vxsat, zero
	-[0x800005e0]:sw t6, 192(ra)
Current Store : [0x800005e4] : sw t5, 196(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800005f4]:KMMAWB_U t6, t5, t4
	-[0x800005f8]:csrrs t5, vxsat, zero
	-[0x800005fc]:sw t6, 200(ra)
Current Store : [0x80000600] : sw t5, 204(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x8000060c]:KMMAWB_U t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 208(ra)
Current Store : [0x80000618] : sw t5, 212(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000628]:KMMAWB_U t6, t5, t4
	-[0x8000062c]:csrrs t5, vxsat, zero
	-[0x80000630]:sw t6, 216(ra)
Current Store : [0x80000634] : sw t5, 220(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000644]:KMMAWB_U t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 224(ra)
Current Store : [0x80000650] : sw t5, 228(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80000660]:KMMAWB_U t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 232(ra)
Current Store : [0x8000066c] : sw t5, 236(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x8000067c]:KMMAWB_U t6, t5, t4
	-[0x80000680]:csrrs t5, vxsat, zero
	-[0x80000684]:sw t6, 240(ra)
Current Store : [0x80000688] : sw t5, 244(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000694]:KMMAWB_U t6, t5, t4
	-[0x80000698]:csrrs t5, vxsat, zero
	-[0x8000069c]:sw t6, 248(ra)
Current Store : [0x800006a0] : sw t5, 252(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800006ac]:KMMAWB_U t6, t5, t4
	-[0x800006b0]:csrrs t5, vxsat, zero
	-[0x800006b4]:sw t6, 256(ra)
Current Store : [0x800006b8] : sw t5, 260(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800006cc]:KMMAWB_U t6, t5, t4
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 264(ra)
Current Store : [0x800006d8] : sw t5, 268(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800006ec]:KMMAWB_U t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 272(ra)
Current Store : [0x800006f8] : sw t5, 276(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000070c]:KMMAWB_U t6, t5, t4
	-[0x80000710]:csrrs t5, vxsat, zero
	-[0x80000714]:sw t6, 280(ra)
Current Store : [0x80000718] : sw t5, 284(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000728]:KMMAWB_U t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 288(ra)
Current Store : [0x80000734] : sw t5, 292(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80000744]:KMMAWB_U t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 296(ra)
Current Store : [0x80000750] : sw t5, 300(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['opcode : kmmawb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x8000075c]:KMMAWB_U t6, t5, t4
	-[0x80000760]:csrrs t5, vxsat, zero
	-[0x80000764]:sw t6, 304(ra)
Current Store : [0x80000768] : sw t5, 308(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000778]:KMMAWB_U t6, t5, t4
	-[0x8000077c]:csrrs t5, vxsat, zero
	-[0x80000780]:sw t6, 312(ra)
Current Store : [0x80000784] : sw t5, 316(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000794]:KMMAWB_U t6, t5, t4
	-[0x80000798]:csrrs t5, vxsat, zero
	-[0x8000079c]:sw t6, 320(ra)
Current Store : [0x800007a0] : sw t5, 324(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800007b4]:KMMAWB_U t6, t5, t4
	-[0x800007b8]:csrrs t5, vxsat, zero
	-[0x800007bc]:sw t6, 328(ra)
Current Store : [0x800007c0] : sw t5, 332(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800007d4]:KMMAWB_U t6, t5, t4
	-[0x800007d8]:csrrs t5, vxsat, zero
	-[0x800007dc]:sw t6, 336(ra)
Current Store : [0x800007e0] : sw t5, 340(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800007f0]:KMMAWB_U t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 344(ra)
Current Store : [0x800007fc] : sw t5, 348(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000810]:KMMAWB_U t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 352(ra)
Current Store : [0x8000081c] : sw t5, 356(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x8000082c]:KMMAWB_U t6, t5, t4
	-[0x80000830]:csrrs t5, vxsat, zero
	-[0x80000834]:sw t6, 360(ra)
Current Store : [0x80000838] : sw t5, 364(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x8000084c]:KMMAWB_U t6, t5, t4
	-[0x80000850]:csrrs t5, vxsat, zero
	-[0x80000854]:sw t6, 368(ra)
Current Store : [0x80000858] : sw t5, 372(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000086c]:KMMAWB_U t6, t5, t4
	-[0x80000870]:csrrs t5, vxsat, zero
	-[0x80000874]:sw t6, 376(ra)
Current Store : [0x80000878] : sw t5, 380(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000088c]:KMMAWB_U t6, t5, t4
	-[0x80000890]:csrrs t5, vxsat, zero
	-[0x80000894]:sw t6, 384(ra)
Current Store : [0x80000898] : sw t5, 388(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800008a8]:KMMAWB_U t6, t5, t4
	-[0x800008ac]:csrrs t5, vxsat, zero
	-[0x800008b0]:sw t6, 392(ra)
Current Store : [0x800008b4] : sw t5, 396(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800008c8]:KMMAWB_U t6, t5, t4
	-[0x800008cc]:csrrs t5, vxsat, zero
	-[0x800008d0]:sw t6, 400(ra)
Current Store : [0x800008d4] : sw t5, 404(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800008e4]:KMMAWB_U t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 408(ra)
Current Store : [0x800008f0] : sw t5, 412(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000904]:KMMAWB_U t6, t5, t4
	-[0x80000908]:csrrs t5, vxsat, zero
	-[0x8000090c]:sw t6, 416(ra)
Current Store : [0x80000910] : sw t5, 420(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000924]:KMMAWB_U t6, t5, t4
	-[0x80000928]:csrrs t5, vxsat, zero
	-[0x8000092c]:sw t6, 424(ra)
Current Store : [0x80000930] : sw t5, 428(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000940]:KMMAWB_U t6, t5, t4
	-[0x80000944]:csrrs t5, vxsat, zero
	-[0x80000948]:sw t6, 432(ra)
Current Store : [0x8000094c] : sw t5, 436(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x8000095c]:KMMAWB_U t6, t5, t4
	-[0x80000960]:csrrs t5, vxsat, zero
	-[0x80000964]:sw t6, 440(ra)
Current Store : [0x80000968] : sw t5, 444(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000978]:KMMAWB_U t6, t5, t4
	-[0x8000097c]:csrrs t5, vxsat, zero
	-[0x80000980]:sw t6, 448(ra)
Current Store : [0x80000984] : sw t5, 452(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000994]:KMMAWB_U t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 456(ra)
Current Store : [0x800009a0] : sw t5, 460(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800009b0]:KMMAWB_U t6, t5, t4
	-[0x800009b4]:csrrs t5, vxsat, zero
	-[0x800009b8]:sw t6, 464(ra)
Current Store : [0x800009bc] : sw t5, 468(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800009cc]:KMMAWB_U t6, t5, t4
	-[0x800009d0]:csrrs t5, vxsat, zero
	-[0x800009d4]:sw t6, 472(ra)
Current Store : [0x800009d8] : sw t5, 476(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800009e8]:KMMAWB_U t6, t5, t4
	-[0x800009ec]:csrrs t5, vxsat, zero
	-[0x800009f0]:sw t6, 480(ra)
Current Store : [0x800009f4] : sw t5, 484(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a04]:KMMAWB_U t6, t5, t4
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sw t6, 488(ra)
Current Store : [0x80000a10] : sw t5, 492(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000a20]:KMMAWB_U t6, t5, t4
	-[0x80000a24]:csrrs t5, vxsat, zero
	-[0x80000a28]:sw t6, 496(ra)
Current Store : [0x80000a2c] : sw t5, 500(ra) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000a3c]:KMMAWB_U t6, t5, t4
	-[0x80000a40]:csrrs t5, vxsat, zero
	-[0x80000a44]:sw t6, 504(ra)
Current Store : [0x80000a48] : sw t5, 508(ra) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000a58]:KMMAWB_U t6, t5, t4
	-[0x80000a5c]:csrrs t5, vxsat, zero
	-[0x80000a60]:sw t6, 512(ra)
Current Store : [0x80000a64] : sw t5, 516(ra) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a74]:KMMAWB_U t6, t5, t4
	-[0x80000a78]:csrrs t5, vxsat, zero
	-[0x80000a7c]:sw t6, 520(ra)
Current Store : [0x80000a80] : sw t5, 524(ra) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000a90]:KMMAWB_U t6, t5, t4
	-[0x80000a94]:csrrs t5, vxsat, zero
	-[0x80000a98]:sw t6, 528(ra)
Current Store : [0x80000a9c] : sw t5, 532(ra) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000aac]:KMMAWB_U t6, t5, t4
	-[0x80000ab0]:csrrs t5, vxsat, zero
	-[0x80000ab4]:sw t6, 536(ra)
Current Store : [0x80000ab8] : sw t5, 540(ra) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000ac8]:KMMAWB_U t6, t5, t4
	-[0x80000acc]:csrrs t5, vxsat, zero
	-[0x80000ad0]:sw t6, 544(ra)
Current Store : [0x80000ad4] : sw t5, 548(ra) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ae4]:KMMAWB_U t6, t5, t4
	-[0x80000ae8]:csrrs t5, vxsat, zero
	-[0x80000aec]:sw t6, 552(ra)
Current Store : [0x80000af0] : sw t5, 556(ra) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000b00]:KMMAWB_U t6, t5, t4
	-[0x80000b04]:csrrs t5, vxsat, zero
	-[0x80000b08]:sw t6, 560(ra)
Current Store : [0x80000b0c] : sw t5, 564(ra) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000b1c]:KMMAWB_U t6, t5, t4
	-[0x80000b20]:csrrs t5, vxsat, zero
	-[0x80000b24]:sw t6, 568(ra)
Current Store : [0x80000b28] : sw t5, 572(ra) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000b38]:KMMAWB_U t6, t5, t4
	-[0x80000b3c]:csrrs t5, vxsat, zero
	-[0x80000b40]:sw t6, 576(ra)
Current Store : [0x80000b44] : sw t5, 580(ra) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['opcode : kmmawb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_h1_val == -16385', 'rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000b54]:KMMAWB_U t6, t5, t4
	-[0x80000b58]:csrrs t5, vxsat, zero
	-[0x80000b5c]:sw t6, 584(ra)
Current Store : [0x80000b60] : sw t5, 588(ra) -- Store: [0x800024ec]:0x00000000




Last Coverpoint : ['opcode : kmmawb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == 256', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000b70]:KMMAWB_U t6, t5, t4
	-[0x80000b74]:csrrs t5, vxsat, zero
	-[0x80000b78]:sw t6, 592(ra)
Current Store : [0x80000b7c] : sw t5, 596(ra) -- Store: [0x800024f4]:0x00000000





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

|s.no|        signature         |                                                                               coverpoints                                                                               |                                                     code                                                      |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmawb.u<br> - rs1 : x1<br> - rs2 : x1<br> - rd : x1<br> - rs1 == rs2 == rd<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 1<br>                              |[0x80000118]:KMMAWB_U ra, ra, ra<br> [0x8000011c]:csrrs ra, vxsat, zero<br> [0x80000120]:sw ra, 0(a3)<br>      |
|   2|[0x80002218]<br>0xED6957FF|- rs1 : x21<br> - rs2 : x21<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 256<br>                                                 |[0x80000134]:KMMAWB_U s9, s5, s5<br> [0x80000138]:csrrs s5, vxsat, zero<br> [0x8000013c]:sw s9, 8(a3)<br>      |
|   3|[0x80002220]<br>0x00000000|- rs1 : x30<br> - rs2 : x17<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -513<br> - rs1_w0_val == -1025<br> |[0x80000150]:KMMAWB_U zero, t5, a7<br> [0x80000154]:csrrs t5, vxsat, zero<br> [0x80000158]:sw zero, 16(a3)<br> |
|   4|[0x80002228]<br>0x7FFFFFF8|- rs1 : x4<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs1_w0_val == -33<br>                                                     |[0x8000016c]:KMMAWB_U t0, tp, t0<br> [0x80000170]:csrrs tp, vxsat, zero<br> [0x80000174]:sw t0, 24(a3)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x20<br> - rs2 : x3<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs2_h1_val == -8193<br> - rs1_w0_val == -65<br>                                                   |[0x80000184]:KMMAWB_U s4, s4, gp<br> [0x80000188]:csrrs s4, vxsat, zero<br> [0x8000018c]:sw s4, 32(a3)<br>     |
|   6|[0x80002238]<br>0xAB7FBB6F|- rs1 : x0<br> - rs2 : x29<br> - rd : x11<br> - rs2_h1_val == -4097<br> - rs1_w0_val == 0<br>                                                                            |[0x800001a4]:KMMAWB_U a1, zero, t4<br> [0x800001a8]:csrrs zero, vxsat, zero<br> [0x800001ac]:sw a1, 40(a3)<br> |
|   7|[0x80002240]<br>0x00000200|- rs1 : x15<br> - rs2 : x26<br> - rd : x10<br> - rs2_h1_val == -2049<br> - rs1_w0_val == 128<br>                                                                         |[0x800001c0]:KMMAWB_U a0, a5, s10<br> [0x800001c4]:csrrs a5, vxsat, zero<br> [0x800001c8]:sw a0, 48(a3)<br>    |
|   8|[0x80002248]<br>0xFF76DF56|- rs1 : x29<br> - rs2 : x9<br> - rd : x2<br> - rs2_h1_val == -1025<br> - rs1_w0_val == -5<br>                                                                            |[0x800001dc]:KMMAWB_U sp, t4, s1<br> [0x800001e0]:csrrs t4, vxsat, zero<br> [0x800001e4]:sw sp, 56(a3)<br>     |
|   9|[0x80002250]<br>0xDB7D5BFE|- rs1 : x31<br> - rs2 : x8<br> - rd : x24<br> - rs2_h1_val == -513<br> - rs2_h0_val == -16385<br>                                                                        |[0x800001f8]:KMMAWB_U s8, t6, fp<br> [0x800001fc]:csrrs t6, vxsat, zero<br> [0x80000200]:sw s8, 64(a3)<br>     |
|  10|[0x80002258]<br>0xFFFFFFEC|- rs1 : x2<br> - rs2 : x24<br> - rd : x30<br> - rs2_h1_val == -257<br> - rs1_w0_val == -262145<br>                                                                       |[0x80000218]:KMMAWB_U t5, sp, s8<br> [0x8000021c]:csrrs sp, vxsat, zero<br> [0x80000220]:sw t5, 72(a3)<br>     |
|  11|[0x80002260]<br>0xB6FAB7F3|- rs1 : x11<br> - rs2 : x22<br> - rd : x23<br> - rs2_h1_val == -129<br> - rs1_w0_val == 65536<br>                                                                        |[0x80000234]:KMMAWB_U s7, a1, s6<br> [0x80000238]:csrrs a1, vxsat, zero<br> [0x8000023c]:sw s7, 80(a3)<br>     |
|  12|[0x80002268]<br>0xDDB7D5FF|- rs1 : x3<br> - rs2 : x6<br> - rd : x28<br> - rs2_h1_val == -65<br> - rs2_h0_val == 4096<br> - rs1_w0_val == 1024<br>                                                   |[0x8000024c]:KMMAWB_U t3, gp, t1<br> [0x80000250]:csrrs gp, vxsat, zero<br> [0x80000254]:sw t3, 88(a3)<br>     |
|  13|[0x80002270]<br>0xF81F0803|- rs1 : x8<br> - rs2 : x19<br> - rd : x26<br> - rs2_h1_val == -33<br> - rs2_h0_val == -1025<br> - rs1_w0_val == -134217729<br>                                           |[0x8000026c]:KMMAWB_U s10, fp, s3<br> [0x80000270]:csrrs fp, vxsat, zero<br> [0x80000274]:sw s10, 96(a3)<br>   |
|  14|[0x80002278]<br>0xFFFFFFBC|- rs1 : x9<br> - rs2 : x7<br> - rd : x29<br> - rs2_h1_val == -17<br> - rs2_h0_val == -17<br> - rs1_w0_val == 262144<br>                                                  |[0x80000288]:KMMAWB_U t4, s1, t2<br> [0x8000028c]:csrrs s1, vxsat, zero<br> [0x80000290]:sw t4, 104(a3)<br>    |
|  15|[0x80002280]<br>0x00000010|- rs1 : x10<br> - rs2 : x2<br> - rd : x31<br> - rs2_h1_val == -9<br> - rs2_h0_val == 4<br>                                                                               |[0x800002a4]:KMMAWB_U t6, a0, sp<br> [0x800002a8]:csrrs a0, vxsat, zero<br> [0x800002ac]:sw t6, 112(a3)<br>    |
|  16|[0x80002288]<br>0x00000021|- rs1 : x19<br> - rs2 : x27<br> - rd : x21<br> - rs2_h1_val == -5<br> - rs2_h0_val == -65<br> - rs1_w0_val == -32769<br>                                                 |[0x800002c4]:KMMAWB_U s5, s3, s11<br> [0x800002c8]:csrrs s3, vxsat, zero<br> [0x800002cc]:sw s5, 120(a3)<br>   |
|  17|[0x80002290]<br>0x0000AAAB|- rs1 : x26<br> - rs2 : x31<br> - rd : x3<br> - rs2_h1_val == -3<br> - rs2_h0_val == 2<br> - rs1_w0_val == 1431655765<br>                                                |[0x800002e4]:KMMAWB_U gp, s10, t6<br> [0x800002e8]:csrrs s10, vxsat, zero<br> [0x800002ec]:sw gp, 128(a3)<br>  |
|  18|[0x80002298]<br>0xD5BFDDB6|- rs1 : x7<br> - rs2 : x25<br> - rd : x12<br> - rs2_h1_val == -2<br> - rs2_h0_val == -129<br> - rs1_w0_val == 512<br>                                                    |[0x80000300]:KMMAWB_U a2, t2, s9<br> [0x80000304]:csrrs t2, vxsat, zero<br> [0x80000308]:sw a2, 136(a3)<br>    |
|  19|[0x800022a0]<br>0xFFFFFF40|- rs1 : x14<br> - rs2 : x11<br> - rd : x8<br> - rs2_h1_val == -32768<br> - rs1_w0_val == 2097152<br>                                                                     |[0x80000324]:KMMAWB_U fp, a4, a1<br> [0x80000328]:csrrs a4, vxsat, zero<br> [0x8000032c]:sw fp, 0(ra)<br>      |
|  20|[0x800022a8]<br>0x1FFFC000|- rs1 : x23<br> - rs2 : x10<br> - rd : x4<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 32767<br> - rs1_w0_val == 1073741824<br>                                         |[0x80000340]:KMMAWB_U tp, s7, a0<br> [0x80000344]:csrrs s7, vxsat, zero<br> [0x80000348]:sw tp, 8(ra)<br>      |
|  21|[0x800022b0]<br>0x00000000|- rs1 : x12<br> - rs2 : x15<br> - rd : x14<br> - rs2_h1_val == 8192<br>                                                                                                  |[0x8000035c]:KMMAWB_U a4, a2, a5<br> [0x80000360]:csrrs a2, vxsat, zero<br> [0x80000364]:sw a4, 16(ra)<br>     |
|  22|[0x800022b8]<br>0xFFFFFFBF|- rs1 : x18<br> - rs2 : x16<br> - rd : x27<br> - rs1_w0_val == -2147483648<br> - rs2_h1_val == 4096<br>                                                                  |[0x80000378]:KMMAWB_U s11, s2, a6<br> [0x8000037c]:csrrs s2, vxsat, zero<br> [0x80000380]:sw s11, 24(ra)<br>   |
|  23|[0x800022c0]<br>0xFF6FFFF8|- rs1 : x16<br> - rs2 : x28<br> - rd : x22<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 32<br>                                                                           |[0x80000394]:KMMAWB_U s6, a6, t3<br> [0x80000398]:csrrs a6, vxsat, zero<br> [0x8000039c]:sw s6, 32(ra)<br>     |
|  24|[0x800022c8]<br>0x00000000|- rs1 : x27<br> - rs2 : x23<br> - rd : x18<br> - rs2_h1_val == 1024<br>                                                                                                  |[0x800003b0]:KMMAWB_U s2, s11, s7<br> [0x800003b4]:csrrs s11, vxsat, zero<br> [0x800003b8]:sw s2, 40(ra)<br>   |
|  25|[0x800022d0]<br>0x5455FFFF|- rs1 : x28<br> - rs2 : x4<br> - rd : x17<br> - rs2_h1_val == 512<br> - rs1_w0_val == -33554433<br>                                                                      |[0x800003d0]:KMMAWB_U a7, t3, tp<br> [0x800003d4]:csrrs t3, vxsat, zero<br> [0x800003d8]:sw a7, 48(ra)<br>     |
|  26|[0x800022d8]<br>0x0001AAAB|- rs1 : x24<br> - rs2 : x14<br> - rd : x19<br> - rs2_h1_val == 256<br>                                                                                                   |[0x800003f0]:KMMAWB_U s3, s8, a4<br> [0x800003f4]:csrrs s8, vxsat, zero<br> [0x800003f8]:sw s3, 56(ra)<br>     |
|  27|[0x800022e0]<br>0x80003A10|- rs1 : x5<br> - rs2 : x18<br> - rd : x13<br> - rs2_h1_val == 128<br> - rs1_w0_val == 67108864<br>                                                                       |[0x8000040c]:KMMAWB_U a3, t0, s2<br> [0x80000410]:csrrs t0, vxsat, zero<br> [0x80000414]:sw a3, 64(ra)<br>     |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x25<br> - rs2 : x13<br> - rd : x16<br> - rs2_h1_val == 64<br>                                                                                                    |[0x80000428]:KMMAWB_U a6, s9, a3<br> [0x8000042c]:csrrs s9, vxsat, zero<br> [0x80000430]:sw a6, 72(ra)<br>     |
|  29|[0x800022f0]<br>0x00000004|- rs1 : x17<br> - rs2 : x12<br> - rd : x9<br> - rs2_h1_val == 32<br> - rs2_h0_val == -8193<br>                                                                           |[0x80000444]:KMMAWB_U s1, a7, a2<br> [0x80000448]:csrrs a7, vxsat, zero<br> [0x8000044c]:sw s1, 80(ra)<br>     |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x13<br> - rs2 : x0<br> - rd : x7<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                                 |[0x80000460]:KMMAWB_U t2, a3, zero<br> [0x80000464]:csrrs a3, vxsat, zero<br> [0x80000468]:sw t2, 88(ra)<br>   |
|  31|[0x80002300]<br>0x20000008|- rs1 : x6<br> - rs2 : x20<br> - rd : x15<br> - rs2_h1_val == 8<br>                                                                                                      |[0x80000478]:KMMAWB_U a5, t1, s4<br> [0x8000047c]:csrrs t1, vxsat, zero<br> [0x80000480]:sw a5, 96(ra)<br>     |
|  32|[0x80002308]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x30<br> - rd : x6<br> - rs2_h1_val == 4<br> - rs1_w0_val == -16385<br>                                                                           |[0x80000498]:KMMAWB_U t1, s6, t5<br> [0x8000049c]:csrrs s6, vxsat, zero<br> [0x800004a0]:sw t1, 104(ra)<br>    |
|  33|[0x80002310]<br>0xFFFE0002|- rs2_h1_val == 2<br> - rs2_h0_val == 16<br> - rs1_w0_val == 268435456<br>                                                                                               |[0x800004b4]:KMMAWB_U t6, t5, t4<br> [0x800004b8]:csrrs t5, vxsat, zero<br> [0x800004bc]:sw t6, 112(ra)<br>    |
|  34|[0x80002318]<br>0xFFF5C002|- rs2_h1_val == 1<br> - rs2_h0_val == -33<br>                                                                                                                            |[0x800004d4]:KMMAWB_U t6, t5, t4<br> [0x800004d8]:csrrs t5, vxsat, zero<br> [0x800004dc]:sw t6, 120(ra)<br>    |
|  35|[0x80002320]<br>0xFAA01557|- rs2_h0_val == -4097<br>                                                                                                                                                |[0x800004f4]:KMMAWB_U t6, t5, t4<br> [0x800004f8]:csrrs t5, vxsat, zero<br> [0x800004fc]:sw t6, 128(ra)<br>    |
|  36|[0x80002328]<br>0xFAA01802|- rs2_h1_val == -1<br> - rs2_h0_val == 21845<br> - rs1_w0_val == 2048<br>                                                                                                |[0x80000514]:KMMAWB_U t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 136(ra)<br>    |
|  37|[0x80002330]<br>0xFAA01801|- rs2_h0_val == -21846<br> - rs1_w0_val == 4<br>                                                                                                                         |[0x80000530]:KMMAWB_U t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 144(ra)<br>    |
|  38|[0x80002338]<br>0xFAA01803|- rs2_h0_val == 512<br> - rs1_w0_val == 256<br>                                                                                                                          |[0x8000054c]:KMMAWB_U t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 152(ra)<br>    |
|  39|[0x80002340]<br>0xFAA01803|- rs2_h0_val == -1<br> - rs1_w0_val == 64<br>                                                                                                                            |[0x80000568]:KMMAWB_U t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 160(ra)<br>    |
|  40|[0x80002348]<br>0xFAA01803|- rs2_h0_val == -9<br> - rs1_w0_val == 32<br>                                                                                                                            |[0x80000584]:KMMAWB_U t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 168(ra)<br>    |
|  41|[0x80002350]<br>0xFAA01803|- rs1_w0_val == 16<br>                                                                                                                                                   |[0x800005a0]:KMMAWB_U t6, t5, t4<br> [0x800005a4]:csrrs t5, vxsat, zero<br> [0x800005a8]:sw t6, 176(ra)<br>    |
|  42|[0x80002358]<br>0xFAA01801|- rs1_w0_val == 8<br>                                                                                                                                                    |[0x800005bc]:KMMAWB_U t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 184(ra)<br>    |
|  43|[0x80002360]<br>0xFAA01801|- rs2_h0_val == -5<br> - rs1_w0_val == 2<br>                                                                                                                             |[0x800005d8]:KMMAWB_U t6, t5, t4<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 192(ra)<br>    |
|  44|[0x80002368]<br>0xFAA01801|- rs1_w0_val == 1<br>                                                                                                                                                    |[0x800005f4]:KMMAWB_U t6, t5, t4<br> [0x800005f8]:csrrs t5, vxsat, zero<br> [0x800005fc]:sw t6, 200(ra)<br>    |
|  45|[0x80002370]<br>0xFAA01802|- rs2_h0_val == -32768<br> - rs1_w0_val == -1<br>                                                                                                                        |[0x8000060c]:KMMAWB_U t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 208(ra)<br>    |
|  46|[0x80002378]<br>0xFAA017F2|- rs2_h0_val == -2049<br>                                                                                                                                                |[0x80000628]:KMMAWB_U t6, t5, t4<br> [0x8000062c]:csrrs t5, vxsat, zero<br> [0x80000630]:sw t6, 216(ra)<br>    |
|  47|[0x80002380]<br>0xFAA017EE|- rs2_h0_val == -257<br>                                                                                                                                                 |[0x80000644]:KMMAWB_U t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 224(ra)<br>    |
|  48|[0x80002388]<br>0xFAA017EE|- rs2_h0_val == -3<br>                                                                                                                                                   |[0x80000660]:KMMAWB_U t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 232(ra)<br>    |
|  49|[0x80002390]<br>0xFAA017AE|- rs2_h0_val == -2<br>                                                                                                                                                   |[0x8000067c]:KMMAWB_U t6, t5, t4<br> [0x80000680]:csrrs t5, vxsat, zero<br> [0x80000684]:sw t6, 240(ra)<br>    |
|  50|[0x80002398]<br>0xFAA0179E|- rs2_h0_val == 16384<br>                                                                                                                                                |[0x80000694]:KMMAWB_U t6, t5, t4<br> [0x80000698]:csrrs t5, vxsat, zero<br> [0x8000069c]:sw t6, 248(ra)<br>    |
|  51|[0x800023a0]<br>0xFAA0179F|- rs2_h0_val == 8192<br>                                                                                                                                                 |[0x800006ac]:KMMAWB_U t6, t5, t4<br> [0x800006b0]:csrrs t5, vxsat, zero<br> [0x800006b4]:sw t6, 256(ra)<br>    |
|  52|[0x800023a8]<br>0xFAA00F9F|- rs2_h0_val == 2048<br> - rs1_w0_val == -65537<br>                                                                                                                      |[0x800006cc]:KMMAWB_U t6, t5, t4<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 264(ra)<br>    |
|  53|[0x800023b0]<br>0xFBA00F9F|- rs2_h0_val == 1024<br>                                                                                                                                                 |[0x800006ec]:KMMAWB_U t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 272(ra)<br>    |
|  54|[0x800023b8]<br>0xFB9E0F9F|- rs2_h0_val == 128<br> - rs1_w0_val == -67108865<br>                                                                                                                    |[0x8000070c]:KMMAWB_U t6, t5, t4<br> [0x80000710]:csrrs t5, vxsat, zero<br> [0x80000714]:sw t6, 280(ra)<br>    |
|  55|[0x800023c0]<br>0xFBA60F9F|- rs2_h0_val == 64<br> - rs1_w0_val == 536870912<br>                                                                                                                     |[0x80000728]:KMMAWB_U t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 288(ra)<br>    |
|  56|[0x800023c8]<br>0xFBA60F9F|- rs2_h0_val == 8<br>                                                                                                                                                    |[0x80000744]:KMMAWB_U t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 296(ra)<br>    |
|  57|[0x800023d8]<br>0x10FB64F5|- rs2_h1_val == 16<br> - rs1_w0_val == -1431655766<br>                                                                                                                   |[0x80000778]:KMMAWB_U t6, t5, t4<br> [0x8000077c]:csrrs t5, vxsat, zero<br> [0x80000780]:sw t6, 312(ra)<br>    |
|  58|[0x800023e0]<br>0x10BAE4F5|- rs1_w0_val == 2147483647<br>                                                                                                                                           |[0x80000794]:KMMAWB_U t6, t5, t4<br> [0x80000798]:csrrs t5, vxsat, zero<br> [0x8000079c]:sw t6, 320(ra)<br>    |
|  59|[0x800023e8]<br>0x10AAE4F5|- rs1_w0_val == -1073741825<br>                                                                                                                                          |[0x800007b4]:KMMAWB_U t6, t5, t4<br> [0x800007b8]:csrrs t5, vxsat, zero<br> [0x800007bc]:sw t6, 328(ra)<br>    |
|  60|[0x800023f0]<br>0x18AB04F5|- rs1_w0_val == -536870913<br>                                                                                                                                           |[0x800007d4]:KMMAWB_U t6, t5, t4<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sw t6, 336(ra)<br>    |
|  61|[0x800023f8]<br>0x18A904F5|- rs1_w0_val == -268435457<br>                                                                                                                                           |[0x800007f0]:KMMAWB_U t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 344(ra)<br>    |
|  62|[0x80002400]<br>0x18A907F5|- rs1_w0_val == -16777217<br>                                                                                                                                            |[0x80000810]:KMMAWB_U t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 352(ra)<br>    |
|  63|[0x80002408]<br>0x18A907F5|- rs1_w0_val == -8388609<br>                                                                                                                                             |[0x8000082c]:KMMAWB_U t6, t5, t4<br> [0x80000830]:csrrs t5, vxsat, zero<br> [0x80000834]:sw t6, 360(ra)<br>    |
|  64|[0x80002410]<br>0x18AD0835|- rs1_w0_val == -4194305<br>                                                                                                                                             |[0x8000084c]:KMMAWB_U t6, t5, t4<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sw t6, 368(ra)<br>    |
|  65|[0x80002418]<br>0x18AD0855|- rs1_w0_val == -2097153<br>                                                                                                                                             |[0x8000086c]:KMMAWB_U t6, t5, t4<br> [0x80000870]:csrrs t5, vxsat, zero<br> [0x80000874]:sw t6, 376(ra)<br>    |
|  66|[0x80002420]<br>0x18AD08A5|- rs1_w0_val == -1048577<br>                                                                                                                                             |[0x8000088c]:KMMAWB_U t6, t5, t4<br> [0x80000890]:csrrs t5, vxsat, zero<br> [0x80000894]:sw t6, 384(ra)<br>    |
|  67|[0x80002428]<br>0x18AB08A5|- rs1_w0_val == -524289<br>                                                                                                                                              |[0x800008a8]:KMMAWB_U t6, t5, t4<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sw t6, 392(ra)<br>    |
|  68|[0x80002430]<br>0x18AB08A1|- rs1_w0_val == -131073<br>                                                                                                                                              |[0x800008c8]:KMMAWB_U t6, t5, t4<br> [0x800008cc]:csrrs t5, vxsat, zero<br> [0x800008d0]:sw t6, 400(ra)<br>    |
|  69|[0x80002438]<br>0x18AB08A0|- rs1_w0_val == -8193<br>                                                                                                                                                |[0x800008e4]:KMMAWB_U t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 408(ra)<br>    |
|  70|[0x80002440]<br>0x18AB08E0|- rs1_w0_val == -4097<br>                                                                                                                                                |[0x80000904]:KMMAWB_U t6, t5, t4<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sw t6, 416(ra)<br>    |
|  71|[0x80002448]<br>0x18AB08E0|- rs1_w0_val == -2049<br>                                                                                                                                                |[0x80000924]:KMMAWB_U t6, t5, t4<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sw t6, 424(ra)<br>    |
|  72|[0x80002450]<br>0x18AB08E1|- rs1_w0_val == -513<br>                                                                                                                                                 |[0x80000940]:KMMAWB_U t6, t5, t4<br> [0x80000944]:csrrs t5, vxsat, zero<br> [0x80000948]:sw t6, 432(ra)<br>    |
|  73|[0x80002458]<br>0x18AB08E1|- rs1_w0_val == -257<br>                                                                                                                                                 |[0x8000095c]:KMMAWB_U t6, t5, t4<br> [0x80000960]:csrrs t5, vxsat, zero<br> [0x80000964]:sw t6, 440(ra)<br>    |
|  74|[0x80002460]<br>0x18AB08E1|- rs1_w0_val == -129<br>                                                                                                                                                 |[0x80000978]:KMMAWB_U t6, t5, t4<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sw t6, 448(ra)<br>    |
|  75|[0x80002468]<br>0x18AB08E1|- rs1_w0_val == -17<br>                                                                                                                                                  |[0x80000994]:KMMAWB_U t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 456(ra)<br>    |
|  76|[0x80002470]<br>0x18AB08E1|- rs1_w0_val == -9<br>                                                                                                                                                   |[0x800009b0]:KMMAWB_U t6, t5, t4<br> [0x800009b4]:csrrs t5, vxsat, zero<br> [0x800009b8]:sw t6, 464(ra)<br>    |
|  77|[0x80002478]<br>0x18AB08E1|- rs1_w0_val == -3<br>                                                                                                                                                   |[0x800009cc]:KMMAWB_U t6, t5, t4<br> [0x800009d0]:csrrs t5, vxsat, zero<br> [0x800009d4]:sw t6, 472(ra)<br>    |
|  78|[0x80002480]<br>0x18AB08E1|- rs1_w0_val == -2<br>                                                                                                                                                   |[0x800009e8]:KMMAWB_U t6, t5, t4<br> [0x800009ec]:csrrs t5, vxsat, zero<br> [0x800009f0]:sw t6, 480(ra)<br>    |
|  79|[0x80002488]<br>0x18AAF0E1|- rs1_w0_val == 134217728<br>                                                                                                                                            |[0x80000a04]:KMMAWB_U t6, t5, t4<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sw t6, 488(ra)<br>    |
|  80|[0x80002490]<br>0x18AB00E1|- rs1_w0_val == 33554432<br>                                                                                                                                             |[0x80000a20]:KMMAWB_U t6, t5, t4<br> [0x80000a24]:csrrs t5, vxsat, zero<br> [0x80000a28]:sw t6, 496(ra)<br>    |
|  81|[0x80002498]<br>0x18AC00E1|- rs1_w0_val == 16777216<br>                                                                                                                                             |[0x80000a3c]:KMMAWB_U t6, t5, t4<br> [0x80000a40]:csrrs t5, vxsat, zero<br> [0x80000a44]:sw t6, 504(ra)<br>    |
|  82|[0x800024a0]<br>0x18AB0061|- rs1_w0_val == 8388608<br>                                                                                                                                              |[0x80000a58]:KMMAWB_U t6, t5, t4<br> [0x80000a5c]:csrrs t5, vxsat, zero<br> [0x80000a60]:sw t6, 512(ra)<br>    |
|  83|[0x800024a8]<br>0x18A70021|- rs1_w0_val == 4194304<br>                                                                                                                                              |[0x80000a74]:KMMAWB_U t6, t5, t4<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sw t6, 520(ra)<br>    |
|  84|[0x800024b0]<br>0x18A70061|- rs1_w0_val == 1048576<br>                                                                                                                                              |[0x80000a90]:KMMAWB_U t6, t5, t4<br> [0x80000a94]:csrrs t5, vxsat, zero<br> [0x80000a98]:sw t6, 528(ra)<br>    |
|  85|[0x800024b8]<br>0x18A70081|- rs1_w0_val == 524288<br>                                                                                                                                               |[0x80000aac]:KMMAWB_U t6, t5, t4<br> [0x80000ab0]:csrrs t5, vxsat, zero<br> [0x80000ab4]:sw t6, 536(ra)<br>    |
|  86|[0x800024c0]<br>0x18A70079|- rs1_w0_val == 131072<br>                                                                                                                                               |[0x80000ac8]:KMMAWB_U t6, t5, t4<br> [0x80000acc]:csrrs t5, vxsat, zero<br> [0x80000ad0]:sw t6, 544(ra)<br>    |
|  87|[0x800024c8]<br>0x18A70099|- rs1_w0_val == 32768<br>                                                                                                                                                |[0x80000ae4]:KMMAWB_U t6, t5, t4<br> [0x80000ae8]:csrrs t5, vxsat, zero<br> [0x80000aec]:sw t6, 552(ra)<br>    |
|  88|[0x800024d0]<br>0x18A70089|- rs1_w0_val == 16384<br>                                                                                                                                                |[0x80000b00]:KMMAWB_U t6, t5, t4<br> [0x80000b04]:csrrs t5, vxsat, zero<br> [0x80000b08]:sw t6, 560(ra)<br>    |
|  89|[0x800024d8]<br>0x18A6FF89|- rs1_w0_val == 8192<br>                                                                                                                                                 |[0x80000b1c]:KMMAWB_U t6, t5, t4<br> [0x80000b20]:csrrs t5, vxsat, zero<br> [0x80000b24]:sw t6, 568(ra)<br>    |
|  90|[0x800024e0]<br>0x18A70009|- rs1_w0_val == 4096<br>                                                                                                                                                 |[0x80000b38]:KMMAWB_U t6, t5, t4<br> [0x80000b3c]:csrrs t5, vxsat, zero<br> [0x80000b40]:sw t6, 576(ra)<br>    |
