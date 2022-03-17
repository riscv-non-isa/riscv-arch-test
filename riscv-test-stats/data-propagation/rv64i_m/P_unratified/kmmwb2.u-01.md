
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001c00')]      |
| SIG_REGION                | [('0x80003210', '0x800039f0', '252 dwords')]      |
| COV_LABELS                | kmmwb2.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmwb2.u-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 252      |
| STAT1                     | 123      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 126     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e64]:KMMWB2_U t6, t5, t4
      [0x80000e68]:sd t6, 416(ra)
 -- Signature Address: 0x80003580 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwb2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h2_val == 4
      - rs2_h1_val == 0
      - rs2_h0_val == -2049
      - rs1_w1_val == -65
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001bbc]:KMMWB2_U t6, t5, t4
      [0x80001bc0]:sd t6, 1520(ra)
 -- Signature Address: 0x800039d0 Data: 0xFFFFF80003FFF000
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwb2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -3
      - rs2_h2_val == 16384
      - rs1_w1_val == -4097
      - rs1_w0_val == 134217728




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001bf4]:KMMWB2_U t6, t5, t4
      [0x80001bf8]:sd t6, 1536(ra)
 -- Signature Address: 0x800039e0 Data: 0x00200000FFFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwb2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -2
      - rs2_h2_val == 32
      - rs2_h1_val == 64
      - rs1_w1_val == 2147483647
      - rs1_w0_val == 8192






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmwb2.u', 'rs1 : x2', 'rs2 : x2', 'rd : x18', 'rs1 == rs2 != rd', 'rs2_h3_val == -2049', 'rs2_h2_val == -32768', 'rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800003c8]:KMMWB2_U s2, sp, sp
	-[0x800003cc]:sd s2, 0(ra)
Current Store : [0x800003d0] : sd sp, 8(ra) -- Store: [0x80003218]:0xF7FF800000010009




Last Coverpoint : ['rs1 : x25', 'rs2 : x25', 'rd : x25', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h2_val == -17', 'rs2_h1_val == -5', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800003fc]:KMMWB2_U s9, s9, s9
	-[0x80000400]:sd s9, 16(ra)
Current Store : [0x80000404] : sd s9, 24(ra) -- Store: [0x80003228]:0x000B554AFFFFEC08




Last Coverpoint : ['rs1 : x10', 'rs2 : x3', 'rd : x23', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h1_val == 4096', 'rs1_w1_val == -2', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000438]:KMMWB2_U s7, a0, gp
	-[0x8000043c]:sd s7, 32(ra)
Current Store : [0x80000440] : sd a0, 40(ra) -- Store: [0x80003238]:0xFFFFFFFEFFFFF7FF




Last Coverpoint : ['rs1 : x13', 'rs2 : x17', 'rd : x13', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == -513', 'rs2_h1_val == -257', 'rs2_h0_val == -21846', 'rs1_w1_val == 16777216', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000474]:KMMWB2_U a3, a3, a7
	-[0x80000478]:sd a3, 48(ra)
Current Store : [0x8000047c] : sd a3, 56(ra) -- Store: [0x80003248]:0xFFFBFE00FFAAAA00




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rd : x6', 'rs2 == rd != rs1', 'rs2_h3_val == -16385', 'rs2_h2_val == -5', 'rs2_h0_val == 0', 'rs1_w1_val == -2147483648', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800004a4]:KMMWB2_U t1, s6, t1
	-[0x800004a8]:sd t1, 64(ra)
Current Store : [0x800004ac] : sd s6, 72(ra) -- Store: [0x80003258]:0x80000000FFFFFFBF




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x9', 'rs2_h3_val == -8193', 'rs2_h1_val == -32768', 'rs2_h0_val == -2', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x800004d4]:KMMWB2_U s1, t0, s10
	-[0x800004d8]:sd s1, 80(ra)
Current Store : [0x800004dc] : sd t0, 88(ra) -- Store: [0x80003268]:0x0001000000000003




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rd : x22', 'rs2_h3_val == -4097', 'rs2_h2_val == 4096', 'rs2_h0_val == 8', 'rs1_w1_val == -9', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000504]:KMMWB2_U s6, a5, a4
	-[0x80000508]:sd s6, 96(ra)
Current Store : [0x8000050c] : sd a5, 104(ra) -- Store: [0x80003278]:0xFFFFFFF700040000




Last Coverpoint : ['rs1 : x0', 'rs2 : x12', 'rd : x19', 'rs2_h3_val == -1025', 'rs2_h2_val == -4097', 'rs2_h1_val == -17', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000538]:KMMWB2_U s3, zero, a2
	-[0x8000053c]:sd s3, 112(ra)
Current Store : [0x80000540] : sd zero, 120(ra) -- Store: [0x80003288]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x30', 'rd : x16', 'rs2_h3_val == -513', 'rs2_h2_val == -16385', 'rs2_h1_val == 8192', 'rs2_h0_val == 1', 'rs1_w1_val == 2147483647', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000568]:KMMWB2_U a6, a4, t5
	-[0x8000056c]:sd a6, 128(ra)
Current Store : [0x80000570] : sd a4, 136(ra) -- Store: [0x80003298]:0x7FFFFFFFFDFFFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x21', 'rd : x2', 'rs2_h3_val == -257', 'rs2_h2_val == 21845', 'rs2_h1_val == -3', 'rs2_h0_val == 21845', 'rs1_w1_val == -8193', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800005a0]:KMMWB2_U sp, s11, s5
	-[0x800005a4]:sd sp, 144(ra)
Current Store : [0x800005a8] : sd s11, 152(ra) -- Store: [0x800032a8]:0xFFFFDFFFFFFFEFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x17', 'rs2_h3_val == -129', 'rs2_h2_val == -8193', 'rs2_h1_val == 32767', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800005d4]:KMMWB2_U a7, s5, a1
	-[0x800005d8]:sd a7, 160(ra)
Current Store : [0x800005dc] : sd s5, 168(ra) -- Store: [0x800032b8]:0x3FFFFFFF10000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x23', 'rd : x20', 'rs2_h3_val == -65', 'rs2_h2_val == -21846', 'rs2_h1_val == -2', 'rs1_w1_val == -2049', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000604]:KMMWB2_U s4, t2, s7
	-[0x80000608]:sd s4, 176(ra)
Current Store : [0x8000060c] : sd t2, 184(ra) -- Store: [0x800032c8]:0xFFFFF7FF01000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x27', 'rd : x5', 'rs2_h3_val == -33', 'rs2_h0_val == 2048', 'rs1_w1_val == -33', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000634]:KMMWB2_U t0, t3, s11
	-[0x80000638]:sd t0, 192(ra)
Current Store : [0x8000063c] : sd t3, 200(ra) -- Store: [0x800032d8]:0xFFFFFFDFFFFFFBFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x15', 'rd : x31', 'rs2_h3_val == -17', 'rs2_h2_val == 128', 'rs2_h1_val == -8193', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000664]:KMMWB2_U t6, s2, a5
	-[0x80000668]:sd t6, 208(ra)
Current Store : [0x8000066c] : sd s2, 216(ra) -- Store: [0x800032e8]:0x0000100000040000




Last Coverpoint : ['rs1 : x26', 'rs2 : x4', 'rd : x12', 'rs2_h3_val == -9', 'rs2_h2_val == 4', 'rs2_h1_val == -4097', 'rs2_h0_val == 2', 'rs1_w1_val == 4', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000694]:KMMWB2_U a2, s10, tp
	-[0x80000698]:sd a2, 224(ra)
Current Store : [0x8000069c] : sd s10, 232(ra) -- Store: [0x800032f8]:0x00000004FFFFFFF7




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x1', 'rs2_h3_val == -5', 'rs2_h2_val == 64', 'rs2_h0_val == -65', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x800006d0]:KMMWB2_U ra, a7, s4
	-[0x800006d4]:sd ra, 0(sp)
Current Store : [0x800006d8] : sd a7, 8(sp) -- Store: [0x80003308]:0xFFFFFFBFFFFFF7FF




Last Coverpoint : ['rs1 : x9', 'rs2 : x0', 'rd : x28', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs1_w1_val == -4097', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800006fc]:KMMWB2_U t3, s1, zero
	-[0x80000700]:sd t3, 16(sp)
Current Store : [0x80000704] : sd s1, 24(sp) -- Store: [0x80003318]:0xFFFFEFFF08000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x18', 'rd : x0', 'rs2_h3_val == -2', 'rs2_h2_val == 32', 'rs2_h1_val == 64', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000734]:KMMWB2_U zero, a2, s2
	-[0x80000738]:sd zero, 32(sp)
Current Store : [0x8000073c] : sd a2, 40(sp) -- Store: [0x80003328]:0x7FFFFFFF00002000




Last Coverpoint : ['rs1 : x16', 'rs2 : x5', 'rd : x27', 'rs2_h3_val == -32768', 'rs2_h2_val == 16384', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000768]:KMMWB2_U s11, a6, t0
	-[0x8000076c]:sd s11, 48(sp)
Current Store : [0x80000770] : sd a6, 56(sp) -- Store: [0x80003338]:0x00000003AAAAAAAA




Last Coverpoint : ['rs1 : x31', 'rs2 : x22', 'rd : x4', 'rs2_h3_val == 16384', 'rs2_h2_val == 2048', 'rs2_h0_val == -9', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800007a0]:KMMWB2_U tp, t6, s6
	-[0x800007a4]:sd tp, 64(sp)
Current Store : [0x800007a8] : sd t6, 72(sp) -- Store: [0x80003348]:0xFFFFFFFEFFFFFFDF




Last Coverpoint : ['rs1 : x20', 'rs2 : x7', 'rd : x30', 'rs2_h3_val == 8192', 'rs2_h2_val == 1', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800007d4]:KMMWB2_U t5, s4, t2
	-[0x800007d8]:sd t5, 80(sp)
Current Store : [0x800007dc] : sd s4, 88(sp) -- Store: [0x80003358]:0x80000000BFFFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x8', 'rd : x26', 'rs2_h3_val == 4096', 'rs2_h0_val == -4097', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80000810]:KMMWB2_U s10, s3, fp
	-[0x80000814]:sd s10, 96(sp)
Current Store : [0x80000818] : sd s3, 104(sp) -- Store: [0x80003368]:0x00000400FFFFF7FF




Last Coverpoint : ['rs1 : x30', 'rs2 : x9', 'rd : x24', 'rs2_h3_val == 2048', 'rs1_w1_val == -1048577', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000840]:KMMWB2_U s8, t5, s1
	-[0x80000844]:sd s8, 112(sp)
Current Store : [0x80000848] : sd t5, 120(sp) -- Store: [0x80003378]:0xFFEFFFFF00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x31', 'rd : x10', 'rs2_h3_val == 1024', 'rs2_h1_val == -129', 'rs2_h0_val == 64', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000870]:KMMWB2_U a0, gp, t6
	-[0x80000874]:sd a0, 128(sp)
Current Store : [0x80000878] : sd gp, 136(sp) -- Store: [0x80003388]:0xFFFFFFF900000080




Last Coverpoint : ['rs1 : x29', 'rs2 : x1', 'rd : x11', 'rs2_h3_val == 512', 'rs2_h2_val == -129', 'rs2_h1_val == -33', 'rs1_w1_val == -524289', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800008a8]:KMMWB2_U a1, t4, ra
	-[0x800008ac]:sd a1, 144(sp)
Current Store : [0x800008b0] : sd t4, 152(sp) -- Store: [0x80003398]:0xFFF7FFFFFFFFBFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x28', 'rd : x14', 'rs2_h3_val == 256', 'rs2_h1_val == 16384', 'rs2_h0_val == -32768', 'rs1_w1_val == -129', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800008d8]:KMMWB2_U a4, a1, t3
	-[0x800008dc]:sd a4, 160(sp)
Current Store : [0x800008e0] : sd a1, 168(sp) -- Store: [0x800033a8]:0xFFFFFF7FFFFDFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x10', 'rd : x21', 'rs2_h3_val == 128', 'rs2_h1_val == 256', 'rs2_h0_val == -5', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80000908]:KMMWB2_U s5, s7, a0
	-[0x8000090c]:sd s5, 176(sp)
Current Store : [0x80000910] : sd s7, 184(sp) -- Store: [0x800033b8]:0xFFFF7FFF00800000




Last Coverpoint : ['rs1 : x4', 'rs2 : x19', 'rd : x8', 'rs2_h3_val == 64', 'rs2_h0_val == 4', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80000930]:KMMWB2_U fp, tp, s3
	-[0x80000934]:sd fp, 192(sp)
Current Store : [0x80000938] : sd tp, 200(sp) -- Store: [0x800033c8]:0x0000000201000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x13', 'rd : x3', 'rs2_h3_val == 32', 'rs2_h2_val == -2']
Last Code Sequence : 
	-[0x80000960]:KMMWB2_U gp, ra, a3
	-[0x80000964]:sd gp, 208(sp)
Current Store : [0x80000968] : sd ra, 216(sp) -- Store: [0x800033d8]:0xFFFFFFFE00000003




Last Coverpoint : ['rs1 : x6', 'rs2 : x16', 'rd : x29', 'rs2_h3_val == 16', 'rs2_h1_val == -16385', 'rs2_h0_val == 16384', 'rs1_w1_val == 16', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000998]:KMMWB2_U t4, t1, a6
	-[0x8000099c]:sd t4, 0(ra)
Current Store : [0x800009a0] : sd t1, 8(ra) -- Store: [0x800033e8]:0x0000001000000800




Last Coverpoint : ['rs1 : x8', 'rs2 : x24', 'rd : x7', 'rs2_h3_val == 8']
Last Code Sequence : 
	-[0x800009bc]:KMMWB2_U t2, fp, s8
	-[0x800009c0]:sd t2, 16(ra)
Current Store : [0x800009c4] : sd fp, 24(ra) -- Store: [0x800033f8]:0xFFFFFFFC01000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x29', 'rd : x15', 'rs2_h3_val == 4', 'rs2_h1_val == 2', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800009ec]:KMMWB2_U a5, s8, t4
	-[0x800009f0]:sd a5, 32(ra)
Current Store : [0x800009f4] : sd s8, 40(ra) -- Store: [0x80003408]:0x0020000000000080




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == 8192', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80000a24]:KMMWB2_U t6, t5, t4
	-[0x80000a28]:sd t6, 48(ra)
Current Store : [0x80000a2c] : sd t5, 56(ra) -- Store: [0x80003418]:0x55555555FFFFEFFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == 16', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80000a58]:KMMWB2_U t6, t5, t4
	-[0x80000a5c]:sd t6, 64(ra)
Current Store : [0x80000a60] : sd t5, 72(ra) -- Store: [0x80003428]:0xBFFFFFFFC0000000




Last Coverpoint : ['rs1_w1_val == -131073', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000a84]:KMMWB2_U t6, t5, t4
	-[0x80000a88]:sd t6, 80(ra)
Current Store : [0x80000a8c] : sd t5, 88(ra) -- Store: [0x80003438]:0xFFFDFFFFFFBFFFFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h0_val == 128', 'rs1_w1_val == 8192', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000aac]:KMMWB2_U t6, t5, t4
	-[0x80000ab0]:sd t6, 96(ra)
Current Store : [0x80000ab4] : sd t5, 104(ra) -- Store: [0x80003448]:0x0000200000000100




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h0_val == 1024', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000ad8]:KMMWB2_U t6, t5, t4
	-[0x80000adc]:sd t6, 112(ra)
Current Store : [0x80000ae0] : sd t5, 120(ra) -- Store: [0x80003458]:0x0000000500000040




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == 4', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000b08]:KMMWB2_U t6, t5, t4
	-[0x80000b0c]:sd t6, 128(ra)
Current Store : [0x80000b10] : sd t5, 136(ra) -- Store: [0x80003468]:0x0080000010000000




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_w1_val == 256', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000b38]:KMMWB2_U t6, t5, t4
	-[0x80000b3c]:sd t6, 144(ra)
Current Store : [0x80000b40] : sd t5, 152(ra) -- Store: [0x80003478]:0x00000100FFFFFEFF




Last Coverpoint : ['rs2_h2_val == -257', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000b6c]:KMMWB2_U t6, t5, t4
	-[0x80000b70]:sd t6, 160(ra)
Current Store : [0x80000b74] : sd t5, 168(ra) -- Store: [0x80003488]:0x40000000FFFFFFFC




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000b9c]:KMMWB2_U t6, t5, t4
	-[0x80000ba0]:sd t6, 176(ra)
Current Store : [0x80000ba4] : sd t5, 184(ra) -- Store: [0x80003498]:0xFFFFFFF600200000




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000bcc]:KMMWB2_U t6, t5, t4
	-[0x80000bd0]:sd t6, 192(ra)
Current Store : [0x80000bd4] : sd t5, 200(ra) -- Store: [0x800034a8]:0xFFFFFFFE00100000




Last Coverpoint : ['rs2_h2_val == -9', 'rs2_h0_val == 32', 'rs1_w1_val == 2048', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000bfc]:KMMWB2_U t6, t5, t4
	-[0x80000c00]:sd t6, 208(ra)
Current Store : [0x80000c04] : sd t5, 216(ra) -- Store: [0x800034b8]:0x0000080000080000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c30]:KMMWB2_U t6, t5, t4
	-[0x80000c34]:sd t6, 224(ra)
Current Store : [0x80000c38] : sd t5, 232(ra) -- Store: [0x800034c8]:0xBFFFFFFF00020000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c60]:KMMWB2_U t6, t5, t4
	-[0x80000c64]:sd t6, 240(ra)
Current Store : [0x80000c68] : sd t5, 248(ra) -- Store: [0x800034d8]:0x0000000500010000




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c90]:KMMWB2_U t6, t5, t4
	-[0x80000c94]:sd t6, 256(ra)
Current Store : [0x80000c98] : sd t5, 264(ra) -- Store: [0x800034e8]:0x0000001000008000




Last Coverpoint : ['rs2_h1_val == 32', 'rs2_h0_val == -1', 'rs1_w1_val == 134217728', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000cc4]:KMMWB2_U t6, t5, t4
	-[0x80000cc8]:sd t6, 272(ra)
Current Store : [0x80000ccc] : sd t5, 280(ra) -- Store: [0x800034f8]:0x0800000000004000




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000cf4]:KMMWB2_U t6, t5, t4
	-[0x80000cf8]:sd t6, 288(ra)
Current Store : [0x80000cfc] : sd t5, 296(ra) -- Store: [0x80003508]:0x0000000900001000




Last Coverpoint : ['rs1_w1_val == -33554433', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d28]:KMMWB2_U t6, t5, t4
	-[0x80000d2c]:sd t6, 304(ra)
Current Store : [0x80000d30] : sd t5, 312(ra) -- Store: [0x80003518]:0xFDFFFFFF00000400




Last Coverpoint : ['rs2_h1_val == -2049', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d58]:KMMWB2_U t6, t5, t4
	-[0x80000d5c]:sd t6, 320(ra)
Current Store : [0x80000d60] : sd t5, 328(ra) -- Store: [0x80003528]:0x0000100000000200




Last Coverpoint : ['rs2_h1_val == -21846', 'rs2_h0_val == -257', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d80]:KMMWB2_U t6, t5, t4
	-[0x80000d84]:sd t6, 336(ra)
Current Store : [0x80000d88] : sd t5, 344(ra) -- Store: [0x80003538]:0x0000000700000020




Last Coverpoint : ['rs1_w1_val == 536870912', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000db0]:KMMWB2_U t6, t5, t4
	-[0x80000db4]:sd t6, 352(ra)
Current Store : [0x80000db8] : sd t5, 360(ra) -- Store: [0x80003548]:0x2000000000000010




Last Coverpoint : ['rs2_h3_val == -3', 'rs2_h1_val == 128', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000ddc]:KMMWB2_U t6, t5, t4
	-[0x80000de0]:sd t6, 368(ra)
Current Store : [0x80000de4] : sd t5, 376(ra) -- Store: [0x80003558]:0x3FFFFFFF00000008




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000e0c]:KMMWB2_U t6, t5, t4
	-[0x80000e10]:sd t6, 384(ra)
Current Store : [0x80000e14] : sd t5, 392(ra) -- Store: [0x80003568]:0xFFFFFFF800000004




Last Coverpoint : ['rs1_w1_val == 524288', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e38]:KMMWB2_U t6, t5, t4
	-[0x80000e3c]:sd t6, 400(ra)
Current Store : [0x80000e40] : sd t5, 408(ra) -- Store: [0x80003578]:0x0008000000000002




Last Coverpoint : ['opcode : kmmwb2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h2_val == 4', 'rs2_h1_val == 0', 'rs2_h0_val == -2049', 'rs1_w1_val == -65', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000e64]:KMMWB2_U t6, t5, t4
	-[0x80000e68]:sd t6, 416(ra)
Current Store : [0x80000e6c] : sd t5, 424(ra) -- Store: [0x80003588]:0xFFFFFFBF00000000




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e94]:KMMWB2_U t6, t5, t4
	-[0x80000e98]:sd t6, 432(ra)
Current Store : [0x80000e9c] : sd t5, 440(ra) -- Store: [0x80003598]:0x00000006FFFFFFFF




Last Coverpoint : ['rs2_h2_val == -65', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x80000ec8]:KMMWB2_U t6, t5, t4
	-[0x80000ecc]:sd t6, 448(ra)
Current Store : [0x80000ed0] : sd t5, 456(ra) -- Store: [0x800035a8]:0xFFFFFFFAFFFFBFFF




Last Coverpoint : ['rs2_h2_val == -33', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000efc]:KMMWB2_U t6, t5, t4
	-[0x80000f00]:sd t6, 464(ra)
Current Store : [0x80000f04] : sd t5, 472(ra) -- Store: [0x800035b8]:0xFFFDFFFF7FFFFFFF




Last Coverpoint : ['rs2_h2_val == -3', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000f2c]:KMMWB2_U t6, t5, t4
	-[0x80000f30]:sd t6, 480(ra)
Current Store : [0x80000f34] : sd t5, 488(ra) -- Store: [0x800035c8]:0xFFFFFFF6FFFFFFFD




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x80000f60]:KMMWB2_U t6, t5, t4
	-[0x80000f64]:sd t6, 496(ra)
Current Store : [0x80000f68] : sd t5, 504(ra) -- Store: [0x800035d8]:0xFDFFFFFF00000020




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h0_val == -8193', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000f94]:KMMWB2_U t6, t5, t4
	-[0x80000f98]:sd t6, 512(ra)
Current Store : [0x80000f9c] : sd t5, 520(ra) -- Store: [0x800035e8]:0xFFFFFFFCFFDFFFFF




Last Coverpoint : ['rs2_h2_val == 256']
Last Code Sequence : 
	-[0x80000fc8]:KMMWB2_U t6, t5, t4
	-[0x80000fcc]:sd t6, 528(ra)
Current Store : [0x80000fd0] : sd t5, 536(ra) -- Store: [0x800035f8]:0x7FFFFFFF00000400




Last Coverpoint : ['rs2_h2_val == 8', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000ffc]:KMMWB2_U t6, t5, t4
	-[0x80001000]:sd t6, 544(ra)
Current Store : [0x80001004] : sd t5, 552(ra) -- Store: [0x80003608]:0xFFFFFFDFFFFBFFFF




Last Coverpoint : ['rs2_h2_val == 2', 'rs1_w1_val == 262144', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000102c]:KMMWB2_U t6, t5, t4
	-[0x80001030]:sd t6, 560(ra)
Current Store : [0x80001034] : sd t5, 568(ra) -- Store: [0x80003618]:0x0004000000400000




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x8000105c]:KMMWB2_U t6, t5, t4
	-[0x80001060]:sd t6, 576(ra)
Current Store : [0x80001064] : sd t5, 584(ra) -- Store: [0x80003628]:0xDFFFFFFFFFFFFFF7




Last Coverpoint : ['rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80001090]:KMMWB2_U t6, t5, t4
	-[0x80001094]:sd t6, 592(ra)
Current Store : [0x80001098] : sd t5, 600(ra) -- Store: [0x80003638]:0xFFFFDFFFFFBFFFFF




Last Coverpoint : ['rs2_h1_val == -1025', 'rs2_h0_val == 4096', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800010c0]:KMMWB2_U t6, t5, t4
	-[0x800010c4]:sd t6, 608(ra)
Current Store : [0x800010c8] : sd t5, 616(ra) -- Store: [0x80003648]:0x100000003FFFFFFF




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800010e8]:KMMWB2_U t6, t5, t4
	-[0x800010ec]:sd t6, 624(ra)
Current Store : [0x800010f0] : sd t5, 632(ra) -- Store: [0x80003658]:0xFFFFFFFB00040000




Last Coverpoint : ['rs2_h1_val == -9', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001124]:KMMWB2_U t6, t5, t4
	-[0x80001128]:sd t6, 640(ra)
Current Store : [0x8000112c] : sd t5, 648(ra) -- Store: [0x80003668]:0x4000000055555555




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x8000114c]:KMMWB2_U t6, t5, t4
	-[0x80001150]:sd t6, 656(ra)
Current Store : [0x80001154] : sd t5, 664(ra) -- Store: [0x80003678]:0x00000040FFFFFFFF




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x8000117c]:KMMWB2_U t6, t5, t4
	-[0x80001180]:sd t6, 672(ra)
Current Store : [0x80001184] : sd t5, 680(ra) -- Store: [0x80003688]:0x0001000000001000




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800011a8]:KMMWB2_U t6, t5, t4
	-[0x800011ac]:sd t6, 688(ra)
Current Store : [0x800011b0] : sd t5, 696(ra) -- Store: [0x80003698]:0x0000000108000000




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800011dc]:KMMWB2_U t6, t5, t4
	-[0x800011e0]:sd t6, 704(ra)
Current Store : [0x800011e4] : sd t5, 712(ra) -- Store: [0x800036a8]:0x40000000FFFFFFF9




Last Coverpoint : ['rs1_w1_val == -1431655766', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001218]:KMMWB2_U t6, t5, t4
	-[0x8000121c]:sd t6, 720(ra)
Current Store : [0x80001220] : sd t5, 728(ra) -- Store: [0x800036b8]:0xAAAAAAAAFEFFFFFF




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001248]:KMMWB2_U t6, t5, t4
	-[0x8000124c]:sd t6, 736(ra)
Current Store : [0x80001250] : sd t5, 744(ra) -- Store: [0x800036c8]:0xEFFFFFFFFFFFFFF8




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x8000127c]:KMMWB2_U t6, t5, t4
	-[0x80001280]:sd t6, 752(ra)
Current Store : [0x80001284] : sd t5, 760(ra) -- Store: [0x800036d8]:0xF7FFFFFF00080000




Last Coverpoint : ['rs1_w1_val == -67108865', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800012b4]:KMMWB2_U t6, t5, t4
	-[0x800012b8]:sd t6, 768(ra)
Current Store : [0x800012bc] : sd t5, 776(ra) -- Store: [0x800036e8]:0xFBFFFFFFFF7FFFFF




Last Coverpoint : ['rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x800012ec]:KMMWB2_U t6, t5, t4
	-[0x800012f0]:sd t6, 784(ra)
Current Store : [0x800012f4] : sd t5, 792(ra) -- Store: [0x800036f8]:0xFEFFFFFF00008000




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x80001318]:KMMWB2_U t6, t5, t4
	-[0x8000131c]:sd t6, 800(ra)
Current Store : [0x80001320] : sd t5, 808(ra) -- Store: [0x80003708]:0xFF7FFFFFFFFFFFDF




Last Coverpoint : ['rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80001344]:KMMWB2_U t6, t5, t4
	-[0x80001348]:sd t6, 816(ra)
Current Store : [0x8000134c] : sd t5, 824(ra) -- Store: [0x80003718]:0xFFBFFFFFFFFFFFFC




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80001378]:KMMWB2_U t6, t5, t4
	-[0x8000137c]:sd t6, 832(ra)
Current Store : [0x80001380] : sd t5, 840(ra) -- Store: [0x80003728]:0xFFDFFFFF00200000




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800013a8]:KMMWB2_U t6, t5, t4
	-[0x800013ac]:sd t6, 848(ra)
Current Store : [0x800013b0] : sd t5, 856(ra) -- Store: [0x80003738]:0xFFFBFFFF00400000




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x800013d8]:KMMWB2_U t6, t5, t4
	-[0x800013dc]:sd t6, 864(ra)
Current Store : [0x800013e0] : sd t5, 872(ra) -- Store: [0x80003748]:0xFFFEFFFF00080000




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80001408]:KMMWB2_U t6, t5, t4
	-[0x8000140c]:sd t6, 880(ra)
Current Store : [0x80001410] : sd t5, 888(ra) -- Store: [0x80003758]:0xFFFFBFFF08000000




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001438]:KMMWB2_U t6, t5, t4
	-[0x8000143c]:sd t6, 896(ra)
Current Store : [0x80001440] : sd t5, 904(ra) -- Store: [0x80003768]:0xFFFFFBFF00200000




Last Coverpoint : ['rs1_w1_val == -513', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000146c]:KMMWB2_U t6, t5, t4
	-[0x80001470]:sd t6, 912(ra)
Current Store : [0x80001474] : sd t5, 920(ra) -- Store: [0x80003778]:0xFFFFFDFFFBFFFFFF




Last Coverpoint : ['rs1_w1_val == -257', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800014a0]:KMMWB2_U t6, t5, t4
	-[0x800014a4]:sd t6, 928(ra)
Current Store : [0x800014a8] : sd t5, 936(ra) -- Store: [0x80003788]:0xFFFFFEFFDFFFFFFF




Last Coverpoint : ['rs1_w1_val == -17', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800014d0]:KMMWB2_U t6, t5, t4
	-[0x800014d4]:sd t6, 944(ra)
Current Store : [0x800014d8] : sd t5, 952(ra) -- Store: [0x80003798]:0xFFFFFFEF02000000




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80001500]:KMMWB2_U t6, t5, t4
	-[0x80001504]:sd t6, 960(ra)
Current Store : [0x80001508] : sd t5, 968(ra) -- Store: [0x800037a8]:0xFFFFFFFD00200000




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x8000153c]:KMMWB2_U t6, t5, t4
	-[0x80001540]:sd t6, 976(ra)
Current Store : [0x80001544] : sd t5, 984(ra) -- Store: [0x800037b8]:0x04000000FFFFF7FF




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80001568]:KMMWB2_U t6, t5, t4
	-[0x8000156c]:sd t6, 992(ra)
Current Store : [0x80001570] : sd t5, 1000(ra) -- Store: [0x800037c8]:0x0200000002000000




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80001594]:KMMWB2_U t6, t5, t4
	-[0x80001598]:sd t6, 1008(ra)
Current Store : [0x8000159c] : sd t5, 1016(ra) -- Store: [0x800037d8]:0x0040000000000400




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800015c8]:KMMWB2_U t6, t5, t4
	-[0x800015cc]:sd t6, 1024(ra)
Current Store : [0x800015d0] : sd t5, 1032(ra) -- Store: [0x800037e8]:0x00100000FFFFFFFC




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800015f8]:KMMWB2_U t6, t5, t4
	-[0x800015fc]:sd t6, 1040(ra)
Current Store : [0x80001600] : sd t5, 1048(ra) -- Store: [0x800037f8]:0x0002000010000000




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x8000162c]:KMMWB2_U t6, t5, t4
	-[0x80001630]:sd t6, 1056(ra)
Current Store : [0x80001634] : sd t5, 1064(ra) -- Store: [0x80003808]:0x00008000FFFFFFF8




Last Coverpoint : ['rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80001660]:KMMWB2_U t6, t5, t4
	-[0x80001664]:sd t6, 1072(ra)
Current Store : [0x80001668] : sd t5, 1080(ra) -- Store: [0x80003818]:0x00004000FBFFFFFF




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x8000168c]:KMMWB2_U t6, t5, t4
	-[0x80001690]:sd t6, 1088(ra)
Current Store : [0x80001694] : sd t5, 1096(ra) -- Store: [0x80003828]:0x00000200FFFFFEFF




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x800016bc]:KMMWB2_U t6, t5, t4
	-[0x800016c0]:sd t6, 1104(ra)
Current Store : [0x800016c4] : sd t5, 1112(ra) -- Store: [0x80003838]:0x00000080FFFFFFFC




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800016f0]:KMMWB2_U t6, t5, t4
	-[0x800016f4]:sd t6, 1120(ra)
Current Store : [0x800016f8] : sd t5, 1128(ra) -- Store: [0x80003848]:0x00000020FFFFFFF6




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x8000171c]:KMMWB2_U t6, t5, t4
	-[0x80001720]:sd t6, 1136(ra)
Current Store : [0x80001724] : sd t5, 1144(ra) -- Store: [0x80003858]:0x00000008FFFFFEFF




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80001744]:KMMWB2_U t6, t5, t4
	-[0x80001748]:sd t6, 1152(ra)
Current Store : [0x8000174c] : sd t5, 1160(ra) -- Store: [0x80003868]:0x00000000FFBFFFFF




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80001774]:KMMWB2_U t6, t5, t4
	-[0x80001778]:sd t6, 1168(ra)
Current Store : [0x8000177c] : sd t5, 1176(ra) -- Store: [0x80003878]:0xFFFFFFFF00000001




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800017ac]:KMMWB2_U t6, t5, t4
	-[0x800017b0]:sd t6, 1184(ra)
Current Store : [0x800017b4] : sd t5, 1192(ra) -- Store: [0x80003888]:0x40000000EFFFFFFF




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x800017d4]:KMMWB2_U t6, t5, t4
	-[0x800017d8]:sd t6, 1200(ra)
Current Store : [0x800017dc] : sd t5, 1208(ra) -- Store: [0x80003898]:0xFFFFFFFC00000004




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001808]:KMMWB2_U t6, t5, t4
	-[0x8000180c]:sd t6, 1216(ra)
Current Store : [0x80001810] : sd t5, 1224(ra) -- Store: [0x800038a8]:0xFFFBFFFFF7FFFFFF




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80001838]:KMMWB2_U t6, t5, t4
	-[0x8000183c]:sd t6, 1232(ra)
Current Store : [0x80001840] : sd t5, 1240(ra) -- Store: [0x800038b8]:0xFFFFF7FFFFFFBFFF




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000186c]:KMMWB2_U t6, t5, t4
	-[0x80001870]:sd t6, 1248(ra)
Current Store : [0x80001874] : sd t5, 1256(ra) -- Store: [0x800038c8]:0x00000002FFEFFFFF




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800018a4]:KMMWB2_U t6, t5, t4
	-[0x800018a8]:sd t6, 1264(ra)
Current Store : [0x800018ac] : sd t5, 1272(ra) -- Store: [0x800038d8]:0xFBFFFFFFFFF7FFFF




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800018d0]:KMMWB2_U t6, t5, t4
	-[0x800018d4]:sd t6, 1280(ra)
Current Store : [0x800018d8] : sd t5, 1288(ra) -- Store: [0x800038e8]:0xFFFFDFFFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001904]:KMMWB2_U t6, t5, t4
	-[0x80001908]:sd t6, 1296(ra)
Current Store : [0x8000190c] : sd t5, 1304(ra) -- Store: [0x800038f8]:0xFFFFFFF7FFFF7FFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001940]:KMMWB2_U t6, t5, t4
	-[0x80001944]:sd t6, 1312(ra)
Current Store : [0x80001948] : sd t5, 1320(ra) -- Store: [0x80003908]:0xFFFFFFDFFFFFDFFF




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80001974]:KMMWB2_U t6, t5, t4
	-[0x80001978]:sd t6, 1328(ra)
Current Store : [0x8000197c] : sd t5, 1336(ra) -- Store: [0x80003918]:0xF7FFFFFF00000100




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800019a8]:KMMWB2_U t6, t5, t4
	-[0x800019ac]:sd t6, 1344(ra)
Current Store : [0x800019b0] : sd t5, 1352(ra) -- Store: [0x80003928]:0x00004000FFFFFDFF




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x800019d0]:KMMWB2_U t6, t5, t4
	-[0x800019d4]:sd t6, 1360(ra)
Current Store : [0x800019d8] : sd t5, 1368(ra) -- Store: [0x80003938]:0x0000000010000000




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001a00]:KMMWB2_U t6, t5, t4
	-[0x80001a04]:sd t6, 1376(ra)
Current Store : [0x80001a08] : sd t5, 1384(ra) -- Store: [0x80003948]:0x00000001FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001a30]:KMMWB2_U t6, t5, t4
	-[0x80001a34]:sd t6, 1392(ra)
Current Store : [0x80001a38] : sd t5, 1400(ra) -- Store: [0x80003958]:0xFFFFF7FFFFFFFFEF




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001a68]:KMMWB2_U t6, t5, t4
	-[0x80001a6c]:sd t6, 1408(ra)
Current Store : [0x80001a70] : sd t5, 1416(ra) -- Store: [0x80003968]:0xFFFFBFFFFFFFFFFB




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001a98]:KMMWB2_U t6, t5, t4
	-[0x80001a9c]:sd t6, 1424(ra)
Current Store : [0x80001aa0] : sd t5, 1432(ra) -- Store: [0x80003978]:0x80000000FFFFFFFE




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001ac8]:KMMWB2_U t6, t5, t4
	-[0x80001acc]:sd t6, 1440(ra)
Current Store : [0x80001ad0] : sd t5, 1448(ra) -- Store: [0x80003988]:0xFFFFFDFF20000000




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80001af8]:KMMWB2_U t6, t5, t4
	-[0x80001afc]:sd t6, 1456(ra)
Current Store : [0x80001b00] : sd t5, 1464(ra) -- Store: [0x80003998]:0xC000000000000400




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001b2c]:KMMWB2_U t6, t5, t4
	-[0x80001b30]:sd t6, 1472(ra)
Current Store : [0x80001b34] : sd t5, 1480(ra) -- Store: [0x800039a8]:0x0000000704000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001b60]:KMMWB2_U t6, t5, t4
	-[0x80001b64]:sd t6, 1488(ra)
Current Store : [0x80001b68] : sd t5, 1496(ra) -- Store: [0x800039b8]:0xF7FFFFFF40000000




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80001b90]:KMMWB2_U t6, t5, t4
	-[0x80001b94]:sd t6, 1504(ra)
Current Store : [0x80001b98] : sd t5, 1512(ra) -- Store: [0x800039c8]:0xFFF7FFFF80000000




Last Coverpoint : ['opcode : kmmwb2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -3', 'rs2_h2_val == 16384', 'rs1_w1_val == -4097', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001bbc]:KMMWB2_U t6, t5, t4
	-[0x80001bc0]:sd t6, 1520(ra)
Current Store : [0x80001bc4] : sd t5, 1528(ra) -- Store: [0x800039d8]:0xFFFFEFFF08000000




Last Coverpoint : ['opcode : kmmwb2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -2', 'rs2_h2_val == 32', 'rs2_h1_val == 64', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80001bf4]:KMMWB2_U t6, t5, t4
	-[0x80001bf8]:sd t6, 1536(ra)
Current Store : [0x80001bfc] : sd t5, 1544(ra) -- Store: [0x800039e8]:0x7FFFFFFF00002000





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

|s.no|            signature             |                                                                                                             coverpoints                                                                                                              |                                  code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0800800000000012|- opcode : kmmwb2.u<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 1<br>                                                                |[0x800003c8]:KMMWB2_U s2, sp, sp<br> [0x800003cc]:sd s2, 0(ra)<br>      |
|   2|[0x80003220]<br>0x000B554AFFFFEC08|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -17<br> - rs2_h1_val == -5<br> - rs2_h0_val == 512<br>                                                               |[0x800003fc]:KMMWB2_U s9, s9, s9<br> [0x80000400]:sd s9, 16(ra)<br>     |
|   3|[0x80003230]<br>0x0000000000000001|- rs1 : x10<br> - rs2 : x3<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 4096<br> - rs1_w1_val == -2<br> - rs1_w0_val == -2049<br>                                       |[0x80000438]:KMMWB2_U s7, a0, gp<br> [0x8000043c]:sd s7, 32(ra)<br>     |
|   4|[0x80003240]<br>0xFFFBFE00FFAAAA00|- rs1 : x13<br> - rs2 : x17<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -513<br> - rs2_h1_val == -257<br> - rs2_h0_val == -21846<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 8388608<br> |[0x80000474]:KMMWB2_U a3, a3, a7<br> [0x80000478]:sd a3, 48(ra)<br>     |
|   5|[0x80003250]<br>0x0005000000000000|- rs1 : x22<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == -5<br> - rs2_h0_val == 0<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == -65<br>                                   |[0x800004a4]:KMMWB2_U t1, s6, t1<br> [0x800004a8]:sd t1, 64(ra)<br>     |
|   6|[0x80003260]<br>0xFFFFFFDE00000000|- rs1 : x5<br> - rs2 : x26<br> - rd : x9<br> - rs2_h3_val == -8193<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -2<br> - rs1_w1_val == 65536<br>                                                                                    |[0x800004d4]:KMMWB2_U s1, t0, s10<br> [0x800004d8]:sd s1, 80(ra)<br>    |
|   7|[0x80003270]<br>0xFFFFFFFF00000040|- rs1 : x15<br> - rs2 : x14<br> - rd : x22<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 4096<br> - rs2_h0_val == 8<br> - rs1_w1_val == -9<br> - rs1_w0_val == 262144<br>                                                             |[0x80000504]:KMMWB2_U s6, a5, a4<br> [0x80000508]:sd s6, 96(ra)<br>     |
|   8|[0x80003280]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x12<br> - rd : x19<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -17<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                 |[0x80000538]:KMMWB2_U s3, zero, a2<br> [0x8000053c]:sd s3, 112(ra)<br>  |
|   9|[0x80003290]<br>0xBFFF0001FFFFFC00|- rs1 : x14<br> - rs2 : x30<br> - rd : x16<br> - rs2_h3_val == -513<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 1<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == -33554433<br>                        |[0x80000568]:KMMWB2_U a6, a4, t5<br> [0x8000056c]:sd a6, 128(ra)<br>    |
|  10|[0x800032a0]<br>0xFFFFEAAAFFFFF555|- rs1 : x27<br> - rs2 : x21<br> - rd : x2<br> - rs2_h3_val == -257<br> - rs2_h2_val == 21845<br> - rs2_h1_val == -3<br> - rs2_h0_val == 21845<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -4097<br>                                 |[0x800005a0]:KMMWB2_U sp, s11, s5<br> [0x800005a4]:sd sp, 144(ra)<br>   |
|  11|[0x800032b0]<br>0xEFFF800000012000|- rs1 : x21<br> - rs2 : x11<br> - rd : x17<br> - rs2_h3_val == -129<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 32767<br> - rs1_w0_val == 268435456<br>                                                                             |[0x800005d4]:KMMWB2_U a7, s5, a1<br> [0x800005d8]:sd a7, 160(ra)<br>    |
|  12|[0x800032c0]<br>0x00000556007FFE00|- rs1 : x7<br> - rs2 : x23<br> - rd : x20<br> - rs2_h3_val == -65<br> - rs2_h2_val == -21846<br> - rs2_h1_val == -2<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 16777216<br>                                                        |[0x80000604]:KMMWB2_U s4, t2, s7<br> [0x80000608]:sd s4, 176(ra)<br>    |
|  13|[0x800032d0]<br>0x00000000FFFFFFC0|- rs1 : x28<br> - rs2 : x27<br> - rd : x5<br> - rs2_h3_val == -33<br> - rs2_h0_val == 2048<br> - rs1_w1_val == -33<br> - rs1_w0_val == -1025<br>                                                                                      |[0x80000634]:KMMWB2_U t0, t3, s11<br> [0x80000638]:sd t0, 192(ra)<br>   |
|  14|[0x800032e0]<br>0x00000010FFFD5550|- rs1 : x18<br> - rs2 : x15<br> - rd : x31<br> - rs2_h3_val == -17<br> - rs2_h2_val == 128<br> - rs2_h1_val == -8193<br> - rs1_w1_val == 4096<br>                                                                                     |[0x80000664]:KMMWB2_U t6, s2, a5<br> [0x80000668]:sd t6, 208(ra)<br>    |
|  15|[0x800032f0]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x4<br> - rd : x12<br> - rs2_h3_val == -9<br> - rs2_h2_val == 4<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 2<br> - rs1_w1_val == 4<br> - rs1_w0_val == -9<br>                                               |[0x80000694]:KMMWB2_U a2, s10, tp<br> [0x80000698]:sd a2, 224(ra)<br>   |
|  16|[0x80003300]<br>0x0000000000000004|- rs1 : x17<br> - rs2 : x20<br> - rd : x1<br> - rs2_h3_val == -5<br> - rs2_h2_val == 64<br> - rs2_h0_val == -65<br> - rs1_w1_val == -65<br>                                                                                           |[0x800006d0]:KMMWB2_U ra, a7, s4<br> [0x800006d4]:sd ra, 0(sp)<br>      |
|  17|[0x80003310]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x0<br> - rd : x28<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 134217728<br>                                                                |[0x800006fc]:KMMWB2_U t3, s1, zero<br> [0x80000700]:sd t3, 16(sp)<br>   |
|  18|[0x80003320]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x18<br> - rd : x0<br> - rs2_h3_val == -2<br> - rs2_h2_val == 32<br> - rs2_h1_val == 64<br> - rs1_w0_val == 8192<br>                                                                                           |[0x80000734]:KMMWB2_U zero, a2, s2<br> [0x80000738]:sd zero, 32(sp)<br> |
|  19|[0x80003330]<br>0x00000002D5560000|- rs1 : x16<br> - rs2 : x5<br> - rd : x27<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 16384<br> - rs1_w0_val == -1431655766<br>                                                                                                    |[0x80000768]:KMMWB2_U s11, a6, t0<br> [0x8000076c]:sd s11, 48(sp)<br>   |
|  20|[0x80003340]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x22<br> - rd : x4<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 2048<br> - rs2_h0_val == -9<br> - rs1_w0_val == -33<br>                                                                                       |[0x800007a0]:KMMWB2_U tp, t6, s6<br> [0x800007a4]:sd tp, 64(sp)<br>     |
|  21|[0x80003350]<br>0xFFFF000000000000|- rs1 : x20<br> - rs2 : x7<br> - rd : x30<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 1<br> - rs1_w0_val == -1073741825<br>                                                                                                          |[0x800007d4]:KMMWB2_U t5, s4, t2<br> [0x800007d8]:sd t5, 80(sp)<br>     |
|  22|[0x80003360]<br>0x0000004000000100|- rs1 : x19<br> - rs2 : x8<br> - rd : x26<br> - rs2_h3_val == 4096<br> - rs2_h0_val == -4097<br> - rs1_w1_val == 1024<br>                                                                                                             |[0x80000810]:KMMWB2_U s10, s3, fp<br> [0x80000814]:sd s10, 96(sp)<br>   |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x9<br> - rd : x24<br> - rs2_h3_val == 2048<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 1<br>                                                                                                             |[0x80000840]:KMMWB2_U s8, t5, s1<br> [0x80000844]:sd s8, 112(sp)<br>    |
|  24|[0x80003380]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x31<br> - rd : x10<br> - rs2_h3_val == 1024<br> - rs2_h1_val == -129<br> - rs2_h0_val == 64<br> - rs1_w0_val == 128<br>                                                                                        |[0x80000870]:KMMWB2_U a0, gp, t6<br> [0x80000874]:sd a0, 128(sp)<br>    |
|  25|[0x80003390]<br>0x00000810FFFFFF00|- rs1 : x29<br> - rs2 : x1<br> - rd : x11<br> - rs2_h3_val == 512<br> - rs2_h2_val == -129<br> - rs2_h1_val == -33<br> - rs1_w1_val == -524289<br> - rs1_w0_val == -16385<br>                                                         |[0x800008a8]:KMMWB2_U a1, t4, ra<br> [0x800008ac]:sd a1, 144(sp)<br>    |
|  26|[0x800033a0]<br>0x0000005600020001|- rs1 : x11<br> - rs2 : x28<br> - rd : x14<br> - rs2_h3_val == 256<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -32768<br> - rs1_w1_val == -129<br> - rs1_w0_val == -131073<br>                                                      |[0x800008d8]:KMMWB2_U a4, a1, t3<br> [0x800008dc]:sd a4, 160(sp)<br>    |
|  27|[0x800033b0]<br>0x00000006FFFFFB00|- rs1 : x23<br> - rs2 : x10<br> - rd : x21<br> - rs2_h3_val == 128<br> - rs2_h1_val == 256<br> - rs2_h0_val == -5<br> - rs1_w1_val == -32769<br>                                                                                      |[0x80000908]:KMMWB2_U s5, s7, a0<br> [0x8000090c]:sd s5, 176(sp)<br>    |
|  28|[0x800033c0]<br>0xFFFFFFFE00000800|- rs1 : x4<br> - rs2 : x19<br> - rd : x8<br> - rs2_h3_val == 64<br> - rs2_h0_val == 4<br> - rs1_w1_val == 2<br>                                                                                                                       |[0x80000930]:KMMWB2_U fp, tp, s3<br> [0x80000934]:sd fp, 192(sp)<br>    |
|  29|[0x800033d0]<br>0x00000000FFFFFFFE|- rs1 : x1<br> - rs2 : x13<br> - rd : x3<br> - rs2_h3_val == 32<br> - rs2_h2_val == -2<br>                                                                                                                                            |[0x80000960]:KMMWB2_U gp, ra, a3<br> [0x80000964]:sd gp, 208(sp)<br>    |
|  30|[0x800033e0]<br>0x0000000000000400|- rs1 : x6<br> - rs2 : x16<br> - rd : x29<br> - rs2_h3_val == 16<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 16384<br> - rs1_w1_val == 16<br> - rs1_w0_val == 2048<br>                                                             |[0x80000998]:KMMWB2_U t4, t1, a6<br> [0x8000099c]:sd t4, 0(ra)<br>      |
|  31|[0x800033f0]<br>0xFFFFFFFE00001200|- rs1 : x8<br> - rs2 : x24<br> - rd : x7<br> - rs2_h3_val == 8<br>                                                                                                                                                                    |[0x800009bc]:KMMWB2_U t2, fp, s8<br> [0x800009c0]:sd t2, 16(ra)<br>     |
|  32|[0x80003400]<br>0xFFFBFFC000000002|- rs1 : x24<br> - rs2 : x29<br> - rd : x15<br> - rs2_h3_val == 4<br> - rs2_h1_val == 2<br> - rs1_w1_val == 2097152<br>                                                                                                                |[0x800009ec]:KMMWB2_U a5, s8, t4<br> [0x800009f0]:sd a5, 32(ra)<br>     |
|  33|[0x80003410]<br>0x1555555500000001|- rs2_h3_val == 2<br> - rs2_h2_val == 8192<br> - rs1_w1_val == 1431655765<br>                                                                                                                                                         |[0x80000a24]:KMMWB2_U t6, t5, t4<br> [0x80000a28]:sd t6, 48(ra)<br>     |
|  34|[0x80003420]<br>0xFFF8000000208000|- rs2_h3_val == 1<br> - rs2_h2_val == 16<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                          |[0x80000a58]:KMMWB2_U t6, t5, t4<br> [0x80000a5c]:sd t6, 64(ra)<br>     |
|  35|[0x80003430]<br>0xFFFFFFFC00000200|- rs1_w1_val == -131073<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                              |[0x80000a84]:KMMWB2_U t6, t5, t4<br> [0x80000a88]:sd t6, 80(ra)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFC00000001|- rs2_h3_val == -1<br> - rs2_h0_val == 128<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 256<br>                                                                                                                                       |[0x80000aac]:KMMWB2_U t6, t5, t4<br> [0x80000ab0]:sd t6, 96(ra)<br>     |
|  37|[0x80003450]<br>0x0000000500000002|- rs2_h2_val == 32767<br> - rs2_h0_val == 1024<br> - rs1_w0_val == 64<br>                                                                                                                                                             |[0x80000ad8]:KMMWB2_U t6, t5, t4<br> [0x80000adc]:sd t6, 112(ra)<br>    |
|  38|[0x80003460]<br>0xFFF7FF00FDFFE000|- rs2_h2_val == -2049<br> - rs2_h1_val == 4<br> - rs1_w1_val == 8388608<br>                                                                                                                                                           |[0x80000b08]:KMMWB2_U t6, t5, t4<br> [0x80000b0c]:sd t6, 128(ra)<br>    |
|  39|[0x80003470]<br>0xFFFFFFF800000020|- rs2_h2_val == -1025<br> - rs1_w1_val == 256<br> - rs1_w0_val == -257<br>                                                                                                                                                            |[0x80000b38]:KMMWB2_U t6, t5, t4<br> [0x80000b3c]:sd t6, 144(ra)<br>    |
|  40|[0x80003480]<br>0xFF7F800000000000|- rs2_h2_val == -257<br> - rs1_w1_val == 1073741824<br>                                                                                                                                                                               |[0x80000b6c]:KMMWB2_U t6, t5, t4<br> [0x80000b70]:sd t6, 160(ra)<br>    |
|  41|[0x80003490]<br>0x00000000FFEFFFC0|- rs2_h0_val == -16385<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                |[0x80000b9c]:KMMWB2_U t6, t5, t4<br> [0x80000ba0]:sd t6, 176(ra)<br>    |
|  42|[0x800034a0]<br>0x00000000FFFFBFE0|- rs2_h0_val == -513<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                  |[0x80000bcc]:KMMWB2_U t6, t5, t4<br> [0x80000bd0]:sd t6, 192(ra)<br>    |
|  43|[0x800034b0]<br>0xFFFFFFFF00000200|- rs2_h2_val == -9<br> - rs2_h0_val == 32<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 524288<br>                                                                                                                                     |[0x80000bfc]:KMMWB2_U t6, t5, t4<br> [0x80000c00]:sd t6, 208(ra)<br>    |
|  44|[0x800034c0]<br>0x0003800000000000|- rs1_w0_val == 131072<br>                                                                                                                                                                                                            |[0x80000c30]:KMMWB2_U t6, t5, t4<br> [0x80000c34]:sd t6, 224(ra)<br>    |
|  45|[0x800034d0]<br>0x0000000000000100|- rs1_w0_val == 65536<br>                                                                                                                                                                                                             |[0x80000c60]:KMMWB2_U t6, t5, t4<br> [0x80000c64]:sd t6, 240(ra)<br>    |
|  46|[0x800034e0]<br>0x00000008FFFFFFFA|- rs2_h1_val == 512<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                     |[0x80000c90]:KMMWB2_U t6, t5, t4<br> [0x80000c94]:sd t6, 256(ra)<br>    |
|  47|[0x800034f0]<br>0x0000900000000000|- rs2_h1_val == 32<br> - rs2_h0_val == -1<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 16384<br>                                                                                                                                 |[0x80000cc4]:KMMWB2_U t6, t5, t4<br> [0x80000cc8]:sd t6, 272(ra)<br>    |
|  48|[0x80003500]<br>0xFFFFFFFFFFFFFF00|- rs2_h0_val == -2049<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                    |[0x80000cf4]:KMMWB2_U t6, t5, t4<br> [0x80000cf8]:sd t6, 288(ra)<br>    |
|  49|[0x80003510]<br>0xFE0003FFFFFFFFF0|- rs1_w1_val == -33554433<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                |[0x80000d28]:KMMWB2_U t6, t5, t4<br> [0x80000d2c]:sd t6, 304(ra)<br>    |
|  50|[0x80003520]<br>0xFFFFF80000000001|- rs2_h1_val == -2049<br> - rs1_w0_val == 512<br>                                                                                                                                                                                     |[0x80000d58]:KMMWB2_U t6, t5, t4<br> [0x80000d5c]:sd t6, 320(ra)<br>    |
|  51|[0x80003530]<br>0x0000000000000000|- rs2_h1_val == -21846<br> - rs2_h0_val == -257<br> - rs1_w0_val == 32<br>                                                                                                                                                            |[0x80000d80]:KMMWB2_U t6, t5, t4<br> [0x80000d84]:sd t6, 336(ra)<br>    |
|  52|[0x80003540]<br>0xFFFBC00000000000|- rs1_w1_val == 536870912<br> - rs1_w0_val == 16<br>                                                                                                                                                                                  |[0x80000db0]:KMMWB2_U t6, t5, t4<br> [0x80000db4]:sd t6, 352(ra)<br>    |
|  53|[0x80003550]<br>0xFFFB000000000000|- rs2_h3_val == -3<br> - rs2_h1_val == 128<br> - rs1_w0_val == 8<br>                                                                                                                                                                  |[0x80000ddc]:KMMWB2_U t6, t5, t4<br> [0x80000de0]:sd t6, 368(ra)<br>    |
|  54|[0x80003560]<br>0x00000000FFFFFFFE|- rs1_w0_val == 4<br>                                                                                                                                                                                                                 |[0x80000e0c]:KMMWB2_U t6, t5, t4<br> [0x80000e10]:sd t6, 384(ra)<br>    |
|  55|[0x80003570]<br>0xFFFFEFF0FFFFFFFF|- rs1_w1_val == 524288<br> - rs1_w0_val == 2<br>                                                                                                                                                                                      |[0x80000e38]:KMMWB2_U t6, t5, t4<br> [0x80000e3c]:sd t6, 400(ra)<br>    |
|  56|[0x80003590]<br>0xFFFFFFFD00000000|- rs2_h1_val == 8<br> - rs1_w0_val == -1<br>                                                                                                                                                                                          |[0x80000e94]:KMMWB2_U t6, t5, t4<br> [0x80000e98]:sd t6, 432(ra)<br>    |
|  57|[0x800035a0]<br>0x0000000000000004|- rs2_h2_val == -65<br> - rs2_h1_val == -513<br>                                                                                                                                                                                      |[0x80000ec8]:KMMWB2_U t6, t5, t4<br> [0x80000ecc]:sd t6, 448(ra)<br>    |
|  58|[0x800035b0]<br>0x00000084FFFB0000|- rs2_h2_val == -33<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                |[0x80000efc]:KMMWB2_U t6, t5, t4<br> [0x80000f00]:sd t6, 464(ra)<br>    |
|  59|[0x800035c0]<br>0x0000000000000000|- rs2_h2_val == -3<br> - rs1_w0_val == -3<br>                                                                                                                                                                                         |[0x80000f2c]:KMMWB2_U t6, t5, t4<br> [0x80000f30]:sd t6, 480(ra)<br>    |
|  60|[0x800035d0]<br>0xFFF0000000000000|- rs2_h2_val == 1024<br>                                                                                                                                                                                                              |[0x80000f60]:KMMWB2_U t6, t5, t4<br> [0x80000f64]:sd t6, 496(ra)<br>    |
|  61|[0x800035e0]<br>0x0000000000080040|- rs2_h2_val == 512<br> - rs2_h0_val == -8193<br> - rs1_w0_val == -2097153<br>                                                                                                                                                        |[0x80000f94]:KMMWB2_U t6, t5, t4<br> [0x80000f98]:sd t6, 512(ra)<br>    |
|  62|[0x800035f0]<br>0x0100000000000000|- rs2_h2_val == 256<br>                                                                                                                                                                                                               |[0x80000fc8]:KMMWB2_U t6, t5, t4<br> [0x80000fcc]:sd t6, 528(ra)<br>    |
|  63|[0x80003600]<br>0x0000000000000028|- rs2_h2_val == 8<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                     |[0x80000ffc]:KMMWB2_U t6, t5, t4<br> [0x80001000]:sd t6, 544(ra)<br>    |
|  64|[0x80003610]<br>0x0000001000000100|- rs2_h2_val == 2<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 4194304<br>                                                                                                                                                          |[0x8000102c]:KMMWB2_U t6, t5, t4<br> [0x80001030]:sd t6, 560(ra)<br>    |
|  65|[0x80003620]<br>0x0000400000000000|- rs2_h2_val == -1<br> - rs1_w1_val == -536870913<br>                                                                                                                                                                                 |[0x8000105c]:KMMWB2_U t6, t5, t4<br> [0x80001060]:sd t6, 576(ra)<br>    |
|  66|[0x80003630]<br>0xFFFFFC00FFFFFC00|- rs2_h1_val == 21845<br>                                                                                                                                                                                                             |[0x80001090]:KMMWB2_U t6, t5, t4<br> [0x80001094]:sd t6, 592(ra)<br>    |
|  67|[0x80003640]<br>0x0000400008000000|- rs2_h1_val == -1025<br> - rs2_h0_val == 4096<br> - rs1_w1_val == 268435456<br>                                                                                                                                                      |[0x800010c0]:KMMWB2_U t6, t5, t4<br> [0x800010c4]:sd t6, 608(ra)<br>    |
|  68|[0x80003650]<br>0x00000000FFFFFFC0|- rs2_h1_val == -65<br> - rs1_w1_val == -5<br>                                                                                                                                                                                        |[0x800010e8]:KMMWB2_U t6, t5, t4<br> [0x800010ec]:sd t6, 624(ra)<br>    |
|  69|[0x80003660]<br>0x00048000AAAAAAAB|- rs2_h1_val == -9<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                 |[0x80001124]:KMMWB2_U t6, t5, t4<br> [0x80001128]:sd t6, 640(ra)<br>    |
|  70|[0x80003670]<br>0xFFFFFFF000000000|- rs2_h1_val == 2048<br> - rs1_w1_val == 64<br>                                                                                                                                                                                       |[0x8000114c]:KMMWB2_U t6, t5, t4<br> [0x80001150]:sd t6, 656(ra)<br>    |
|  71|[0x80003680]<br>0xFFFFFFEC00000400|- rs2_h0_val == 8192<br>                                                                                                                                                                                                              |[0x8000117c]:KMMWB2_U t6, t5, t4<br> [0x80001180]:sd t6, 672(ra)<br>    |
|  72|[0x80003690]<br>0x0000000000100000|- rs2_h0_val == 256<br> - rs1_w1_val == 1<br>                                                                                                                                                                                         |[0x800011a8]:KMMWB2_U t6, t5, t4<br> [0x800011ac]:sd t6, 688(ra)<br>    |
|  73|[0x800036a0]<br>0xFFFE800000000000|- rs2_h0_val == 16<br>                                                                                                                                                                                                                |[0x800011dc]:KMMWB2_U t6, t5, t4<br> [0x800011e0]:sd t6, 704(ra)<br>    |
|  74|[0x800036b0]<br>0xFFFB5555FF5555FF|- rs1_w1_val == -1431655766<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                         |[0x80001218]:KMMWB2_U t6, t5, t4<br> [0x8000121c]:sd t6, 720(ra)<br>    |
|  75|[0x800036c0]<br>0x0000A00000000000|- rs1_w1_val == -268435457<br>                                                                                                                                                                                                        |[0x80001248]:KMMWB2_U t6, t5, t4<br> [0x8000124c]:sd t6, 736(ra)<br>    |
|  76|[0x800036d0]<br>0xFFFC0000FFFC0000|- rs1_w1_val == -134217729<br>                                                                                                                                                                                                        |[0x8000127c]:KMMWB2_U t6, t5, t4<br> [0x80001280]:sd t6, 752(ra)<br>    |
|  77|[0x800036e0]<br>0xFFF0000000100100|- rs1_w1_val == -67108865<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                            |[0x800012b4]:KMMWB2_U t6, t5, t4<br> [0x800012b8]:sd t6, 768(ra)<br>    |
|  78|[0x800036f0]<br>0xFFE0000000000005|- rs1_w1_val == -16777217<br>                                                                                                                                                                                                         |[0x800012ec]:KMMWB2_U t6, t5, t4<br> [0x800012f0]:sd t6, 784(ra)<br>    |
|  79|[0x80003700]<br>0xFFC0010000000000|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                          |[0x80001318]:KMMWB2_U t6, t5, t4<br> [0x8000131c]:sd t6, 800(ra)<br>    |
|  80|[0x80003710]<br>0xFFF00000FFFFFFFF|- rs1_w1_val == -4194305<br>                                                                                                                                                                                                          |[0x80001344]:KMMWB2_U t6, t5, t4<br> [0x80001348]:sd t6, 816(ra)<br>    |
|  81|[0x80003720]<br>0xFFFFC000FFFFFD80|- rs1_w1_val == -2097153<br>                                                                                                                                                                                                          |[0x80001378]:KMMWB2_U t6, t5, t4<br> [0x8000137c]:sd t6, 832(ra)<br>    |
|  82|[0x80003730]<br>0x0004000100000280|- rs1_w1_val == -262145<br>                                                                                                                                                                                                           |[0x800013a8]:KMMWB2_U t6, t5, t4<br> [0x800013ac]:sd t6, 848(ra)<br>    |
|  83|[0x80003740]<br>0x00000042FFFFFDF0|- rs2_h0_val == -33<br> - rs1_w1_val == -65537<br>                                                                                                                                                                                    |[0x800013d8]:KMMWB2_U t6, t5, t4<br> [0x800013dc]:sd t6, 864(ra)<br>    |
|  84|[0x80003750]<br>0x0000000400200000|- rs1_w1_val == -16385<br>                                                                                                                                                                                                            |[0x80001408]:KMMWB2_U t6, t5, t4<br> [0x8000140c]:sd t6, 880(ra)<br>    |
|  85|[0x80003760]<br>0x0000000000000800|- rs1_w1_val == -1025<br>                                                                                                                                                                                                             |[0x80001438]:KMMWB2_U t6, t5, t4<br> [0x8000143c]:sd t6, 896(ra)<br>    |
|  86|[0x80003770]<br>0x0000000400100800|- rs1_w1_val == -513<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                |[0x8000146c]:KMMWB2_U t6, t5, t4<br> [0x80001470]:sd t6, 912(ra)<br>    |
|  87|[0x80003780]<br>0x00000000FE000000|- rs1_w1_val == -257<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                               |[0x800014a0]:KMMWB2_U t6, t5, t4<br> [0x800014a4]:sd t6, 928(ra)<br>    |
|  88|[0x80003790]<br>0x0000001100004000|- rs1_w1_val == -17<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                  |[0x800014d0]:KMMWB2_U t6, t5, t4<br> [0x800014d4]:sd t6, 944(ra)<br>    |
|  89|[0x800037a0]<br>0x0000000000004000|- rs1_w1_val == -3<br>                                                                                                                                                                                                                |[0x80001500]:KMMWB2_U t6, t5, t4<br> [0x80001504]:sd t6, 960(ra)<br>    |
|  90|[0x800037b0]<br>0xFFFFC80000000200|- rs1_w1_val == 67108864<br>                                                                                                                                                                                                          |[0x8000153c]:KMMWB2_U t6, t5, t4<br> [0x80001540]:sd t6, 976(ra)<br>    |
|  91|[0x800037c0]<br>0x00004000FFFFF800|- rs1_w1_val == 33554432<br>                                                                                                                                                                                                          |[0x80001568]:KMMWB2_U t6, t5, t4<br> [0x8000156c]:sd t6, 992(ra)<br>    |
|  92|[0x800037d0]<br>0x0001000000000200|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                           |[0x80001594]:KMMWB2_U t6, t5, t4<br> [0x80001598]:sd t6, 1008(ra)<br>   |
|  93|[0x800037e0]<br>0x0000004000000000|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                           |[0x800015c8]:KMMWB2_U t6, t5, t4<br> [0x800015cc]:sd t6, 1024(ra)<br>   |
|  94|[0x800037f0]<br>0xFFFFFFF4FFFFA000|- rs2_h0_val == -3<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                     |[0x800015f8]:KMMWB2_U t6, t5, t4<br> [0x800015fc]:sd t6, 1040(ra)<br>   |
|  95|[0x80003800]<br>0x0000040000000000|- rs1_w1_val == 32768<br>                                                                                                                                                                                                             |[0x8000162c]:KMMWB2_U t6, t5, t4<br> [0x80001630]:sd t6, 1056(ra)<br>   |
|  96|[0x80003810]<br>0x0000200002AAB001|- rs1_w1_val == 16384<br>                                                                                                                                                                                                             |[0x80001660]:KMMWB2_U t6, t5, t4<br> [0x80001664]:sd t6, 1072(ra)<br>   |
|  97|[0x80003820]<br>0xFFFFFF00FFFFFFE0|- rs1_w1_val == 512<br>                                                                                                                                                                                                               |[0x8000168c]:KMMWB2_U t6, t5, t4<br> [0x80001690]:sd t6, 1088(ra)<br>   |
|  98|[0x80003830]<br>0xFFFFFFFEFFFFFFFD|- rs1_w1_val == 128<br>                                                                                                                                                                                                               |[0x800016bc]:KMMWB2_U t6, t5, t4<br> [0x800016c0]:sd t6, 1104(ra)<br>   |
|  99|[0x80003840]<br>0x00000010FFFFFFFE|- rs1_w1_val == 32<br>                                                                                                                                                                                                                |[0x800016f0]:KMMWB2_U t6, t5, t4<br> [0x800016f4]:sd t6, 1120(ra)<br>   |
| 100|[0x80003850]<br>0x00000002FFFFFFE0|- rs1_w1_val == 8<br>                                                                                                                                                                                                                 |[0x8000171c]:KMMWB2_U t6, t5, t4<br> [0x80001720]:sd t6, 1136(ra)<br>   |
| 101|[0x80003860]<br>0x00000000FFFFF000|- rs2_h1_val == 16<br>                                                                                                                                                                                                                |[0x80001744]:KMMWB2_U t6, t5, t4<br> [0x80001748]:sd t6, 1152(ra)<br>   |
| 102|[0x80003870]<br>0x0000000000000000|- rs1_w1_val == -1<br>                                                                                                                                                                                                                |[0x80001774]:KMMWB2_U t6, t5, t4<br> [0x80001778]:sd t6, 1168(ra)<br>   |
| 103|[0x80003880]<br>0x00040000FFFF2000|- rs1_w0_val == -268435457<br>                                                                                                                                                                                                        |[0x800017ac]:KMMWB2_U t6, t5, t4<br> [0x800017b0]:sd t6, 1184(ra)<br>   |
| 104|[0x80003890]<br>0xFFFFFFFE00000000|- rs2_h0_val == -129<br>                                                                                                                                                                                                              |[0x800017d4]:KMMWB2_U t6, t5, t4<br> [0x800017d8]:sd t6, 1200(ra)<br>   |
| 105|[0x800038a0]<br>0x0000003800009000|- rs1_w0_val == -134217729<br>                                                                                                                                                                                                        |[0x80001808]:KMMWB2_U t6, t5, t4<br> [0x8000180c]:sd t6, 1216(ra)<br>   |
| 106|[0x800038b0]<br>0xFFFFFE0000000011|- rs2_h1_val == 1024<br>                                                                                                                                                                                                              |[0x80001838]:KMMWB2_U t6, t5, t4<br> [0x8000183c]:sd t6, 1232(ra)<br>   |
| 107|[0x800038c0]<br>0x0000000000000140|- rs1_w0_val == -1048577<br>                                                                                                                                                                                                          |[0x8000186c]:KMMWB2_U t6, t5, t4<br> [0x80001870]:sd t6, 1248(ra)<br>   |
| 108|[0x800038d0]<br>0xFFFF800000000010|- rs1_w0_val == -524289<br>                                                                                                                                                                                                           |[0x800018a4]:KMMWB2_U t6, t5, t4<br> [0x800018a8]:sd t6, 1264(ra)<br>   |
| 109|[0x800038e0]<br>0xFFFFFFFF00000802|- rs2_h0_val == -1025<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                  |[0x800018d0]:KMMWB2_U t6, t5, t4<br> [0x800018d4]:sd t6, 1280(ra)<br>   |
| 110|[0x800038f0]<br>0x00000000FFFFFFFC|- rs1_w0_val == -32769<br>                                                                                                                                                                                                            |[0x80001904]:KMMWB2_U t6, t5, t4<br> [0x80001908]:sd t6, 1296(ra)<br>   |
| 111|[0x80003900]<br>0x0000000000000801|- rs1_w0_val == -8193<br>                                                                                                                                                                                                             |[0x80001940]:KMMWB2_U t6, t5, t4<br> [0x80001944]:sd t6, 1312(ra)<br>   |
| 112|[0x80003910]<br>0x0000700000000000|- rs2_h1_val == -1<br>                                                                                                                                                                                                                |[0x80001974]:KMMWB2_U t6, t5, t4<br> [0x80001978]:sd t6, 1328(ra)<br>   |
| 113|[0x80003920]<br>0x0000040000000101|- rs1_w0_val == -513<br>                                                                                                                                                                                                              |[0x800019a8]:KMMWB2_U t6, t5, t4<br> [0x800019ac]:sd t6, 1344(ra)<br>   |
| 114|[0x80003930]<br>0x000000000FFFE000|- rs2_h0_val == 32767<br>                                                                                                                                                                                                             |[0x800019d0]:KMMWB2_U t6, t5, t4<br> [0x800019d4]:sd t6, 1360(ra)<br>   |
| 115|[0x80003940]<br>0x0000000000000000|- rs1_w0_val == -129<br>                                                                                                                                                                                                              |[0x80001a00]:KMMWB2_U t6, t5, t4<br> [0x80001a04]:sd t6, 1376(ra)<br>   |
| 116|[0x80003950]<br>0x0000000100000000|- rs1_w0_val == -17<br>                                                                                                                                                                                                               |[0x80001a30]:KMMWB2_U t6, t5, t4<br> [0x80001a34]:sd t6, 1392(ra)<br>   |
| 117|[0x80003960]<br>0x00000201FFFFFFFB|- rs1_w0_val == -5<br>                                                                                                                                                                                                                |[0x80001a68]:KMMWB2_U t6, t5, t4<br> [0x80001a6c]:sd t6, 1408(ra)<br>   |
| 118|[0x80003970]<br>0x0002000000000001|- rs1_w0_val == -2<br>                                                                                                                                                                                                                |[0x80001a98]:KMMWB2_U t6, t5, t4<br> [0x80001a9c]:sd t6, 1424(ra)<br>   |
| 119|[0x80003980]<br>0xFFFFFF00FFFF8000|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                         |[0x80001ac8]:KMMWB2_U t6, t5, t4<br> [0x80001acc]:sd t6, 1440(ra)<br>   |
| 120|[0x80003990]<br>0x04008000FFFFFFFF|- rs2_h0_val == -17<br>                                                                                                                                                                                                               |[0x80001af8]:KMMWB2_U t6, t5, t4<br> [0x80001afc]:sd t6, 1456(ra)<br>   |
| 121|[0x800039a0]<br>0x00000000FFFDF800|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                          |[0x80001b2c]:KMMWB2_U t6, t5, t4<br> [0x80001b30]:sd t6, 1472(ra)<br>   |
| 122|[0x800039b0]<br>0x0000A00020000000|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                        |[0x80001b60]:KMMWB2_U t6, t5, t4<br> [0x80001b64]:sd t6, 1488(ra)<br>   |
| 123|[0x800039c0]<br>0x00080001FFF70000|- rs1_w0_val == -2147483648<br>                                                                                                                                                                                                       |[0x80001b90]:KMMWB2_U t6, t5, t4<br> [0x80001b94]:sd t6, 1504(ra)<br>   |
