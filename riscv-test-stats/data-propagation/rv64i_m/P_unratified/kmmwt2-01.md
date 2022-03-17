
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001bb0')]      |
| SIG_REGION                | [('0x80003210', '0x80003a10', '256 dwords')]      |
| COV_LABELS                | kmmwt2      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmwt2-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 256      |
| STAT1                     | 127      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 128     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b70]:KMMWT2 t6, t5, t4
      [0x80001b74]:sd t6, 1536(ra)
 -- Signature Address: 0x800039f0 Data: 0xFFFFFEAAFFFFF800
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwt2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -21846
      - rs2_h0_val == 2048
      - rs1_w1_val == 512
      - rs1_w0_val == 8388608






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmwt2', 'rs1 : x14', 'rs2 : x14', 'rd : x12', 'rs1 == rs2 != rd', 'rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x800003d0]:KMMWT2 a2, a4, a4
	-[0x800003d4]:sd a2, 0(tp)
Current Store : [0x800003d8] : sd a4, 8(tp) -- Store: [0x80003218]:0xFFFC0400FFFAFFF9




Last Coverpoint : ['rs1 : x20', 'rs2 : x20', 'rd : x20', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000400]:KMMWT2 s4, s4, s4
	-[0x80000404]:sd s4, 16(tp)
Current Store : [0x80000408] : sd s4, 24(tp) -- Store: [0x80003228]:0x38E471C50000007F




Last Coverpoint : ['rs1 : x26', 'rs2 : x31', 'rd : x27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == 8192', 'rs2_h0_val == -32768', 'rs1_w1_val == -524289', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x8000042c]:KMMWT2 s11, s10, t6
	-[0x80000430]:sd s11, 32(tp)
Current Store : [0x80000434] : sd s10, 40(tp) -- Store: [0x80003238]:0xFFF7FFFFFFFFFFF7




Last Coverpoint : ['rs1 : x8', 'rs2 : x10', 'rd : x8', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == -9', 'rs2_h1_val == 512', 'rs2_h0_val == -5', 'rs1_w1_val == -8193', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000045c]:KMMWT2 fp, fp, a0
	-[0x80000460]:sd fp, 48(tp)
Current Store : [0x80000464] : sd fp, 56(tp) -- Store: [0x80003248]:0xFFFFDFFF00000200




Last Coverpoint : ['rs1 : x6', 'rs2 : x0', 'rd : x0', 'rs2 == rd != rs1', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w1_val == -1048577', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000488]:KMMWT2 zero, t1, zero
	-[0x8000048c]:sd zero, 64(tp)
Current Store : [0x80000490] : sd t1, 72(tp) -- Store: [0x80003258]:0xFFEFFFFF00200000




Last Coverpoint : ['rs1 : x29', 'rs2 : x7', 'rd : x26', 'rs2_h3_val == -8193', 'rs2_h2_val == -513', 'rs1_w1_val == -9', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800004bc]:KMMWT2 s10, t4, t2
	-[0x800004c0]:sd s10, 80(tp)
Current Store : [0x800004c4] : sd t4, 88(tp) -- Store: [0x80003268]:0xFFFFFFF7FFFFBFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x16', 'rd : x11', 'rs2_h3_val == -4097', 'rs2_h1_val == 2', 'rs2_h0_val == 1024', 'rs1_w1_val == 512', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800004ec]:KMMWT2 a1, s1, a6
	-[0x800004f0]:sd a1, 96(tp)
Current Store : [0x800004f4] : sd s1, 104(tp) -- Store: [0x80003278]:0x0000020000000040




Last Coverpoint : ['rs1 : x11', 'rs2 : x21', 'rd : x24', 'rs2_h3_val == -2049', 'rs2_h1_val == -1', 'rs2_h0_val == 2', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x8000051c]:KMMWT2 s8, a1, s5
	-[0x80000520]:sd s8, 112(tp)
Current Store : [0x80000524] : sd a1, 120(tp) -- Store: [0x80003288]:0x00004000C0000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x13', 'rd : x30', 'rs2_h3_val == -1025', 'rs2_h2_val == -1', 'rs2_h1_val == -4097', 'rs2_h0_val == 8192', 'rs1_w1_val == -4194305', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000548]:KMMWT2 t5, ra, a3
	-[0x8000054c]:sd t5, 128(tp)
Current Store : [0x80000550] : sd ra, 136(tp) -- Store: [0x80003298]:0xFFBFFFFFFFFFFFEF




Last Coverpoint : ['rs1 : x3', 'rs2 : x17', 'rd : x18', 'rs2_h3_val == -513', 'rs2_h2_val == 2048', 'rs2_h1_val == 1024', 'rs2_h0_val == -129', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000584]:KMMWT2 s2, gp, a7
	-[0x80000588]:sd s2, 144(tp)
Current Store : [0x8000058c] : sd gp, 152(tp) -- Store: [0x800032a8]:0x00400000FFFFBFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x2', 'rd : x15', 'rs2_h3_val == -257', 'rs2_h2_val == 32', 'rs1_w1_val == -33', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800005b4]:KMMWT2 a5, s11, sp
	-[0x800005b8]:sd a5, 160(tp)
Current Store : [0x800005bc] : sd s11, 168(tp) -- Store: [0x800032b8]:0xFFFFFFDFFFFFFFFE




Last Coverpoint : ['rs1 : x17', 'rs2 : x5', 'rd : x21', 'rs2_h3_val == -129', 'rs2_h2_val == 2', 'rs2_h1_val == 4096', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800005e4]:KMMWT2 s5, a7, t0
	-[0x800005e8]:sd s5, 176(tp)
Current Store : [0x800005ec] : sd a7, 184(tp) -- Store: [0x800032c8]:0x0000000700000009




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x16', 'rs2_h3_val == -65', 'rs2_h2_val == 21845', 'rs2_h1_val == 4', 'rs2_h0_val == -8193', 'rs1_w1_val == 0', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000614]:KMMWT2 a6, s5, a1
	-[0x80000618]:sd a6, 192(tp)
Current Store : [0x8000061c] : sd s5, 200(tp) -- Store: [0x800032d8]:0x00000000FBFFFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x29', 'rs2_h3_val == -33', 'rs2_h1_val == -1025', 'rs2_h0_val == -9', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000640]:KMMWT2 t4, s7, t3
	-[0x80000644]:sd t4, 208(tp)
Current Store : [0x80000648] : sd s7, 216(tp) -- Store: [0x800032e8]:0xFFFFFFFAFF7FFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x23', 'rd : x14', 'rs2_h3_val == -17', 'rs2_h1_val == 128', 'rs1_w1_val == 32', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000674]:KMMWT2 a4, t6, s7
	-[0x80000678]:sd a4, 0(a1)
Current Store : [0x8000067c] : sd t6, 8(a1) -- Store: [0x800032f8]:0x0000002020000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x25', 'rd : x5', 'rs2_h3_val == -9', 'rs2_h2_val == 4', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800006a0]:KMMWT2 t0, s3, s9
	-[0x800006a4]:sd t0, 16(a1)
Current Store : [0x800006a8] : sd s3, 24(a1) -- Store: [0x80003308]:0xFFFBFFFF00000040




Last Coverpoint : ['rs1 : x0', 'rs2 : x6', 'rd : x23', 'rs2_h3_val == -5', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800006c8]:KMMWT2 s7, zero, t1
	-[0x800006cc]:sd s7, 32(a1)
Current Store : [0x800006d0] : sd zero, 40(a1) -- Store: [0x80003318]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x8', 'rd : x2', 'rs2_h3_val == -3', 'rs2_h2_val == -2049', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800006f0]:KMMWT2 sp, t5, fp
	-[0x800006f4]:sd sp, 48(a1)
Current Store : [0x800006f8] : sd t5, 56(a1) -- Store: [0x80003328]:0x00000001C0000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x24', 'rd : x4', 'rs2_h3_val == -2', 'rs2_h2_val == 512', 'rs2_h0_val == -65', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000718]:KMMWT2 tp, a6, s8
	-[0x8000071c]:sd tp, 64(a1)
Current Store : [0x80000720] : sd a6, 72(a1) -- Store: [0x80003338]:0x0000200000000005




Last Coverpoint : ['rs1 : x4', 'rs2 : x12', 'rd : x3', 'rs2_h3_val == -32768', 'rs1_w1_val == 128', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000744]:KMMWT2 gp, tp, a2
	-[0x80000748]:sd gp, 80(a1)
Current Store : [0x8000074c] : sd tp, 88(a1) -- Store: [0x80003348]:0x0000008008000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x9', 'rd : x13', 'rs2_h3_val == 16384', 'rs2_h2_val == 128', 'rs2_h1_val == 16', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80000774]:KMMWT2 a3, t3, s1
	-[0x80000778]:sd a3, 96(a1)
Current Store : [0x8000077c] : sd t3, 104(a1) -- Store: [0x80003358]:0x00000005FFFFFFF7




Last Coverpoint : ['rs1 : x25', 'rs2 : x18', 'rd : x10', 'rs2_h3_val == 8192', 'rs2_h1_val == -9', 'rs1_w1_val == 4', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800007a4]:KMMWT2 a0, s9, s2
	-[0x800007a8]:sd a0, 112(a1)
Current Store : [0x800007ac] : sd s9, 120(a1) -- Store: [0x80003368]:0x00000004F7FFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x30', 'rd : x17', 'rs2_h3_val == 4096', 'rs2_h2_val == 16', 'rs2_h0_val == -2', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800007d8]:KMMWT2 a7, s8, t5
	-[0x800007dc]:sd a7, 128(a1)
Current Store : [0x800007e0] : sd s8, 136(a1) -- Store: [0x80003378]:0xFFFFFFFCFFFF7FFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x29', 'rd : x25', 'rs2_h3_val == 2048', 'rs2_h1_val == -129', 'rs1_w1_val == -67108865', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000080c]:KMMWT2 s9, a0, t4
	-[0x80000810]:sd s9, 144(a1)
Current Store : [0x80000814] : sd a0, 152(a1) -- Store: [0x80003388]:0xFBFFFFFF04000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x28', 'rs2_h3_val == 1024', 'rs2_h2_val == -2']
Last Code Sequence : 
	-[0x8000083c]:KMMWT2 t3, a2, s6
	-[0x80000840]:sd t3, 160(a1)
Current Store : [0x80000844] : sd a2, 168(a1) -- Store: [0x80003398]:0x00000007FFFFFFF8




Last Coverpoint : ['rs1 : x18', 'rs2 : x15', 'rd : x1', 'rs2_h3_val == 512', 'rs2_h1_val == -17', 'rs1_w1_val == 33554432', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000870]:KMMWT2 ra, s2, a5
	-[0x80000874]:sd ra, 176(a1)
Current Store : [0x80000878] : sd s2, 184(a1) -- Store: [0x800033a8]:0x0200000000800000




Last Coverpoint : ['rs1 : x13', 'rs2 : x4', 'rd : x22', 'rs2_h3_val == 256', 'rs2_h2_val == -3', 'rs1_w1_val == -17', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000894]:KMMWT2 s6, a3, tp
	-[0x80000898]:sd s6, 192(a1)
Current Store : [0x8000089c] : sd a3, 200(a1) -- Store: [0x800033b8]:0xFFFFFFEF10000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x27', 'rd : x9', 'rs2_h3_val == 128', 'rs2_h0_val == -33', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800008bc]:KMMWT2 s1, sp, s11
	-[0x800008c0]:sd s1, 208(a1)
Current Store : [0x800008c4] : sd sp, 216(a1) -- Store: [0x800033c8]:0xFFFFFFFB00800000




Last Coverpoint : ['rs1 : x5', 'rs2 : x3', 'rd : x19', 'rs2_h3_val == 64', 'rs2_h1_val == -513', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x800008e4]:KMMWT2 s3, t0, gp
	-[0x800008e8]:sd s3, 224(a1)
Current Store : [0x800008ec] : sd t0, 232(a1) -- Store: [0x800033d8]:0xFFFFFFFDFFFFFFF6




Last Coverpoint : ['rs1 : x22', 'rs2 : x1', 'rd : x7', 'rs2_h3_val == 32', 'rs2_h1_val == 1', 'rs2_h0_val == -17', 'rs1_w1_val == -2', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000914]:KMMWT2 t2, s6, ra
	-[0x80000918]:sd t2, 240(a1)
Current Store : [0x8000091c] : sd s6, 248(a1) -- Store: [0x800033e8]:0xFFFFFFFEFEFFFFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x26', 'rd : x31', 'rs2_h3_val == 16', 'rs2_h1_val == -32768', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80000950]:KMMWT2 t6, t2, s10
	-[0x80000954]:sd t6, 0(ra)
Current Store : [0x80000958] : sd t2, 8(ra) -- Store: [0x800033f8]:0xFDFFFFFF3FFFFFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x19', 'rd : x6', 'rs2_h3_val == 8', 'rs2_h1_val == -2049', 'rs1_w1_val == -65537', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000978]:KMMWT2 t1, a5, s3
	-[0x8000097c]:sd t1, 16(ra)
Current Store : [0x80000980] : sd a5, 24(ra) -- Store: [0x80003408]:0xFFFEFFFFFFFFFDFF




Last Coverpoint : ['rs2_h3_val == 4', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x800009a8]:KMMWT2 t6, t5, t4
	-[0x800009ac]:sd t6, 32(ra)
Current Store : [0x800009b0] : sd t5, 40(ra) -- Store: [0x80003418]:0x0008000020000000




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h0_val == 1', 'rs1_w1_val == -1431655766', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800009dc]:KMMWT2 t6, t5, t4
	-[0x800009e0]:sd t6, 48(ra)
Current Store : [0x800009e4] : sd t5, 56(ra) -- Store: [0x80003428]:0xAAAAAAAAEFFFFFFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == -32768', 'rs1_w1_val == 536870912', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000a10]:KMMWT2 t6, t5, t4
	-[0x80000a14]:sd t6, 64(ra)
Current Store : [0x80000a18] : sd t5, 72(ra) -- Store: [0x80003438]:0x2000000000001000




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h1_val == -3', 'rs2_h0_val == 512', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000a38]:KMMWT2 t6, t5, t4
	-[0x80000a3c]:sd t6, 80(ra)
Current Store : [0x80000a40] : sd t5, 88(ra) -- Store: [0x80003448]:0x0000400000100000




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 16384', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000a68]:KMMWT2 t6, t5, t4
	-[0x80000a6c]:sd t6, 96(ra)
Current Store : [0x80000a70] : sd t5, 104(ra) -- Store: [0x80003458]:0x4000000040000000




Last Coverpoint : ['rs2_h2_val == -21846', 'rs2_h0_val == -1025', 'rs1_w1_val == -513', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000a90]:KMMWT2 t6, t5, t4
	-[0x80000a94]:sd t6, 112(ra)
Current Store : [0x80000a98] : sd t5, 120(ra) -- Store: [0x80003468]:0xFFFFFDFFFFFFFF7F




Last Coverpoint : ['rs2_h2_val == -16385', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000ac0]:KMMWT2 t6, t5, t4
	-[0x80000ac4]:sd t6, 128(ra)
Current Store : [0x80000ac8] : sd t5, 136(ra) -- Store: [0x80003478]:0xFFFFFFFA00000080




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h1_val == -21846', 'rs2_h0_val == 128', 'rs1_w1_val == -8388609', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000b00]:KMMWT2 t6, t5, t4
	-[0x80000b04]:sd t6, 144(ra)
Current Store : [0x80000b08] : sd t5, 152(ra) -- Store: [0x80003488]:0xFF7FFFFFAAAAAAAA




Last Coverpoint : ['rs2_h2_val == -4097', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80000b30]:KMMWT2 t6, t5, t4
	-[0x80000b34]:sd t6, 160(ra)
Current Store : [0x80000b38] : sd t5, 168(ra) -- Store: [0x80003498]:0x8000000020000000




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b60]:KMMWT2 t6, t5, t4
	-[0x80000b64]:sd t6, 176(ra)
Current Store : [0x80000b68] : sd t5, 184(ra) -- Store: [0x800034a8]:0xFFFFFFDF00080000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b8c]:KMMWT2 t6, t5, t4
	-[0x80000b90]:sd t6, 192(ra)
Current Store : [0x80000b94] : sd t5, 200(ra) -- Store: [0x800034b8]:0xFFFFFDFF00040000




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h1_val == -257', 'rs1_w1_val == -1073741825', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000bbc]:KMMWT2 t6, t5, t4
	-[0x80000bc0]:sd t6, 208(ra)
Current Store : [0x80000bc4] : sd t5, 216(ra) -- Store: [0x800034c8]:0xBFFFFFFF00020000




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000bf0]:KMMWT2 t6, t5, t4
	-[0x80000bf4]:sd t6, 224(ra)
Current Store : [0x80000bf8] : sd t5, 232(ra) -- Store: [0x800034d8]:0x0200000000010000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000c20]:KMMWT2 t6, t5, t4
	-[0x80000c24]:sd t6, 240(ra)
Current Store : [0x80000c28] : sd t5, 248(ra) -- Store: [0x800034e8]:0xFFFFFFF600004000




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c50]:KMMWT2 t6, t5, t4
	-[0x80000c54]:sd t6, 256(ra)
Current Store : [0x80000c58] : sd t5, 264(ra) -- Store: [0x800034f8]:0x0000000300002000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000c84]:KMMWT2 t6, t5, t4
	-[0x80000c88]:sd t6, 272(ra)
Current Store : [0x80000c8c] : sd t5, 280(ra) -- Store: [0x80003508]:0xFFFFFFF900000800




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000cb4]:KMMWT2 t6, t5, t4
	-[0x80000cb8]:sd t6, 288(ra)
Current Store : [0x80000cbc] : sd t5, 296(ra) -- Store: [0x80003518]:0x0000002000000400




Last Coverpoint : ['rs1_w1_val == -268435457', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000ce4]:KMMWT2 t6, t5, t4
	-[0x80000ce8]:sd t6, 304(ra)
Current Store : [0x80000cec] : sd t5, 312(ra) -- Store: [0x80003528]:0xEFFFFFFF00000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d14]:KMMWT2 t6, t5, t4
	-[0x80000d18]:sd t6, 320(ra)
Current Store : [0x80000d1c] : sd t5, 328(ra) -- Store: [0x80003538]:0x0000000100000100




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d44]:KMMWT2 t6, t5, t4
	-[0x80000d48]:sd t6, 336(ra)
Current Store : [0x80000d4c] : sd t5, 344(ra) -- Store: [0x80003548]:0xFFFFFFF700000020




Last Coverpoint : ['rs2_h2_val == -33', 'rs2_h1_val == 32767', 'rs2_h0_val == -513', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d64]:KMMWT2 t6, t5, t4
	-[0x80000d68]:sd t6, 352(ra)
Current Store : [0x80000d6c] : sd t5, 360(ra) -- Store: [0x80003558]:0x0000000000000010




Last Coverpoint : ['rs2_h2_val == -257', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d94]:KMMWT2 t6, t5, t4
	-[0x80000d98]:sd t6, 368(ra)
Current Store : [0x80000d9c] : sd t5, 376(ra) -- Store: [0x80003568]:0x0000000400000008




Last Coverpoint : ['rs2_h1_val == 16384', 'rs2_h0_val == -21846', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000dd0]:KMMWT2 t6, t5, t4
	-[0x80000dd4]:sd t6, 384(ra)
Current Store : [0x80000dd8] : sd t5, 392(ra) -- Store: [0x80003578]:0xFFBFFFFF00000002




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000df4]:KMMWT2 t6, t5, t4
	-[0x80000df8]:sd t6, 400(ra)
Current Store : [0x80000dfc] : sd t5, 408(ra) -- Store: [0x80003588]:0x0000000000000001




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000e1c]:KMMWT2 t6, t5, t4
	-[0x80000e20]:sd t6, 416(ra)
Current Store : [0x80000e24] : sd t5, 424(ra) -- Store: [0x80003598]:0x0800000000000000




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_w1_val == -129', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e4c]:KMMWT2 t6, t5, t4
	-[0x80000e50]:sd t6, 432(ra)
Current Store : [0x80000e54] : sd t5, 440(ra) -- Store: [0x800035a8]:0xFFFFFF7FFFFFFFFF




Last Coverpoint : ['rs2_h2_val == -1025']
Last Code Sequence : 
	-[0x80000e7c]:KMMWT2 t6, t5, t4
	-[0x80000e80]:sd t6, 448(ra)
Current Store : [0x80000e84] : sd t5, 456(ra) -- Store: [0x800035b8]:0xFFFFDFFF00000003




Last Coverpoint : ['rs2_h2_val == -129', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80000eb8]:KMMWT2 t6, t5, t4
	-[0x80000ebc]:sd t6, 464(ra)
Current Store : [0x80000ec0] : sd t5, 472(ra) -- Store: [0x800035c8]:0xFFFFFFFDFFFFBFFF




Last Coverpoint : ['rs2_h2_val == -65']
Last Code Sequence : 
	-[0x80000ee8]:KMMWT2 t6, t5, t4
	-[0x80000eec]:sd t6, 480(ra)
Current Store : [0x80000ef0] : sd t5, 488(ra) -- Store: [0x800035d8]:0x0000000700100000




Last Coverpoint : ['rs2_h2_val == -17', 'rs2_h1_val == 256', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80000f18]:KMMWT2 t6, t5, t4
	-[0x80000f1c]:sd t6, 496(ra)
Current Store : [0x80000f20] : sd t5, 504(ra) -- Store: [0x800035e8]:0xFFDFFFFF00000000




Last Coverpoint : ['rs2_h2_val == -5', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000f50]:KMMWT2 t6, t5, t4
	-[0x80000f54]:sd t6, 512(ra)
Current Store : [0x80000f58] : sd t5, 520(ra) -- Store: [0x800035f8]:0xAAAAAAAA01000000




Last Coverpoint : ['rs2_h2_val == 4096', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000f80]:KMMWT2 t6, t5, t4
	-[0x80000f84]:sd t6, 528(ra)
Current Store : [0x80000f88] : sd t5, 536(ra) -- Store: [0x80003608]:0x0000200000000200




Last Coverpoint : ['rs2_h2_val == 8', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80000fb4]:KMMWT2 t6, t5, t4
	-[0x80000fb8]:sd t6, 544(ra)
Current Store : [0x80000fbc] : sd t5, 552(ra) -- Store: [0x80003618]:0xDFFFFFFF00000009




Last Coverpoint : ['rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x80000fdc]:KMMWT2 t6, t5, t4
	-[0x80000fe0]:sd t6, 560(ra)
Current Store : [0x80000fe4] : sd t5, 568(ra) -- Store: [0x80003628]:0x0800000000000100




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x80001008]:KMMWT2 t6, t5, t4
	-[0x8000100c]:sd t6, 576(ra)
Current Store : [0x80001010] : sd t5, 584(ra) -- Store: [0x80003638]:0xEFFFFFFF00000010




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x8000103c]:KMMWT2 t6, t5, t4
	-[0x80001040]:sd t6, 592(ra)
Current Store : [0x80001044] : sd t5, 600(ra) -- Store: [0x80003648]:0xFFFFFFBFFFFF7FFF




Last Coverpoint : ['rs2_h1_val == -33', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80001070]:KMMWT2 t6, t5, t4
	-[0x80001074]:sd t6, 608(ra)
Current Store : [0x80001078] : sd t5, 616(ra) -- Store: [0x80003658]:0x0020000000020000




Last Coverpoint : ['rs2_h1_val == -5']
Last Code Sequence : 
	-[0x800010a8]:KMMWT2 t6, t5, t4
	-[0x800010ac]:sd t6, 624(ra)
Current Store : [0x800010b0] : sd t5, 632(ra) -- Store: [0x80003668]:0x02000000FF7FFFFF




Last Coverpoint : ['rs2_h1_val == -2', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800010d8]:KMMWT2 t6, t5, t4
	-[0x800010dc]:sd t6, 640(ra)
Current Store : [0x800010e0] : sd t5, 648(ra) -- Store: [0x80003678]:0x10000000FFFFFFF6




Last Coverpoint : ['rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x80001108]:KMMWT2 t6, t5, t4
	-[0x8000110c]:sd t6, 656(ra)
Current Store : [0x80001110] : sd t5, 664(ra) -- Store: [0x80003688]:0xFFFFFFFAFFFFFFF6




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80001134]:KMMWT2 t6, t5, t4
	-[0x80001138]:sd t6, 672(ra)
Current Store : [0x8000113c] : sd t5, 680(ra) -- Store: [0x80003698]:0xFFFEFFFF00200000




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001164]:KMMWT2 t6, t5, t4
	-[0x80001168]:sd t6, 688(ra)
Current Store : [0x8000116c] : sd t5, 696(ra) -- Store: [0x800036a8]:0x7FFFFFFFFFFFFFEF




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001194]:KMMWT2 t6, t5, t4
	-[0x80001198]:sd t6, 704(ra)
Current Store : [0x8000119c] : sd t5, 712(ra) -- Store: [0x800036b8]:0x0000000200008000




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x800011c4]:KMMWT2 t6, t5, t4
	-[0x800011c8]:sd t6, 720(ra)
Current Store : [0x800011cc] : sd t5, 728(ra) -- Store: [0x800036c8]:0xFFFFFFF9FFFFFFF8




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800011f0]:KMMWT2 t6, t5, t4
	-[0x800011f4]:sd t6, 736(ra)
Current Store : [0x800011f8] : sd t5, 744(ra) -- Store: [0x800036d8]:0xFFFFFFF6FFFDFFFF




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80001220]:KMMWT2 t6, t5, t4
	-[0x80001224]:sd t6, 752(ra)
Current Store : [0x80001228] : sd t5, 760(ra) -- Store: [0x800036e8]:0x0000400000000005




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80001250]:KMMWT2 t6, t5, t4
	-[0x80001254]:sd t6, 768(ra)
Current Store : [0x80001258] : sd t5, 776(ra) -- Store: [0x800036f8]:0x55555555FFFFFFEF




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x80001280]:KMMWT2 t6, t5, t4
	-[0x80001284]:sd t6, 784(ra)
Current Store : [0x80001288] : sd t5, 792(ra) -- Store: [0x80003708]:0xF7FFFFFF40000000




Last Coverpoint : ['rs1_w1_val == -16777217', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800012bc]:KMMWT2 t6, t5, t4
	-[0x800012c0]:sd t6, 800(ra)
Current Store : [0x800012c4] : sd t5, 808(ra) -- Store: [0x80003718]:0xFEFFFFFFFFFBFFFF




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x800012e4]:KMMWT2 t6, t5, t4
	-[0x800012e8]:sd t6, 816(ra)
Current Store : [0x800012ec] : sd t5, 824(ra) -- Store: [0x80003728]:0xFFFDFFFF80000000




Last Coverpoint : ['rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x8000130c]:KMMWT2 t6, t5, t4
	-[0x80001310]:sd t6, 832(ra)
Current Store : [0x80001314] : sd t5, 840(ra) -- Store: [0x80003738]:0xFFFF7FFFF7FFFFFF




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80001340]:KMMWT2 t6, t5, t4
	-[0x80001344]:sd t6, 848(ra)
Current Store : [0x80001348] : sd t5, 856(ra) -- Store: [0x80003748]:0xFFFFBFFF00000006




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80001374]:KMMWT2 t6, t5, t4
	-[0x80001378]:sd t6, 864(ra)
Current Store : [0x8000137c] : sd t5, 872(ra) -- Store: [0x80003758]:0xFFFFEFFF00000003




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x800013a4]:KMMWT2 t6, t5, t4
	-[0x800013a8]:sd t6, 880(ra)
Current Store : [0x800013ac] : sd t5, 888(ra) -- Store: [0x80003768]:0xFFFFF7FF00040000




Last Coverpoint : ['rs1_w1_val == -1025', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800013d4]:KMMWT2 t6, t5, t4
	-[0x800013d8]:sd t6, 896(ra)
Current Store : [0x800013dc] : sd t5, 904(ra) -- Store: [0x80003778]:0xFFFFFBFFFFFFFFFD




Last Coverpoint : ['rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80001408]:KMMWT2 t6, t5, t4
	-[0x8000140c]:sd t6, 912(ra)
Current Store : [0x80001410] : sd t5, 920(ra) -- Store: [0x80003788]:0xFFFFFEFFAAAAAAAA




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80001434]:KMMWT2 t6, t5, t4
	-[0x80001438]:sd t6, 928(ra)
Current Store : [0x8000143c] : sd t5, 936(ra) -- Store: [0x80003798]:0x0400000000000005




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80001464]:KMMWT2 t6, t5, t4
	-[0x80001468]:sd t6, 944(ra)
Current Store : [0x8000146c] : sd t5, 952(ra) -- Store: [0x800037a8]:0x0100000000000008




Last Coverpoint : ['rs1_w1_val == 8388608', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001498]:KMMWT2 t6, t5, t4
	-[0x8000149c]:sd t6, 960(ra)
Current Store : [0x800014a0] : sd t5, 968(ra) -- Store: [0x800037b8]:0x00800000FFF7FFFF




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800014c4]:KMMWT2 t6, t5, t4
	-[0x800014c8]:sd t6, 976(ra)
Current Store : [0x800014cc] : sd t5, 984(ra) -- Store: [0x800037c8]:0x00100000EFFFFFFF




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80001500]:KMMWT2 t6, t5, t4
	-[0x80001504]:sd t6, 992(ra)
Current Store : [0x80001508] : sd t5, 1000(ra) -- Store: [0x800037d8]:0x0004000000040000




Last Coverpoint : ['rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80001528]:KMMWT2 t6, t5, t4
	-[0x8000152c]:sd t6, 1008(ra)
Current Store : [0x80001530] : sd t5, 1016(ra) -- Store: [0x800037e8]:0x0002000000000008




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001554]:KMMWT2 t6, t5, t4
	-[0x80001558]:sd t6, 1024(ra)
Current Store : [0x8000155c] : sd t5, 1032(ra) -- Store: [0x800037f8]:0x0001000000000001




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80001590]:KMMWT2 t6, t5, t4
	-[0x80001594]:sd t6, 1040(ra)
Current Store : [0x80001598] : sd t5, 1048(ra) -- Store: [0x80003808]:0x00008000FFFFFFFA




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_w1_val == 4096', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800015b8]:KMMWT2 t6, t5, t4
	-[0x800015bc]:sd t6, 1056(ra)
Current Store : [0x800015c0] : sd t5, 1064(ra) -- Store: [0x80003818]:0x0000100000000004




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800015e0]:KMMWT2 t6, t5, t4
	-[0x800015e4]:sd t6, 1072(ra)
Current Store : [0x800015e8] : sd t5, 1080(ra) -- Store: [0x80003828]:0x0000080000000000




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001610]:KMMWT2 t6, t5, t4
	-[0x80001614]:sd t6, 1088(ra)
Current Store : [0x80001618] : sd t5, 1096(ra) -- Store: [0x80003838]:0x0000040001000000




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80001640]:KMMWT2 t6, t5, t4
	-[0x80001644]:sd t6, 1104(ra)
Current Store : [0x80001648] : sd t5, 1112(ra) -- Store: [0x80003848]:0x00000100FFFFFFFC




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80001670]:KMMWT2 t6, t5, t4
	-[0x80001674]:sd t6, 1120(ra)
Current Store : [0x80001678] : sd t5, 1128(ra) -- Store: [0x80003858]:0x0000004000000002




Last Coverpoint : ['rs2_h3_val == -16385', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x800016a4]:KMMWT2 t6, t5, t4
	-[0x800016a8]:sd t6, 1136(ra)
Current Store : [0x800016ac] : sd t5, 1144(ra) -- Store: [0x80003868]:0x0000001000020000




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x800016d4]:KMMWT2 t6, t5, t4
	-[0x800016d8]:sd t6, 1152(ra)
Current Store : [0x800016dc] : sd t5, 1160(ra) -- Store: [0x80003878]:0x0000000800800000




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80001700]:KMMWT2 t6, t5, t4
	-[0x80001704]:sd t6, 1168(ra)
Current Store : [0x80001708] : sd t5, 1176(ra) -- Store: [0x80003888]:0xFFFFFFFFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000173c]:KMMWT2 t6, t5, t4
	-[0x80001740]:sd t6, 1184(ra)
Current Store : [0x80001744] : sd t5, 1192(ra) -- Store: [0x80003898]:0x0000200055555555




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000176c]:KMMWT2 t6, t5, t4
	-[0x80001770]:sd t6, 1200(ra)
Current Store : [0x80001774] : sd t5, 1208(ra) -- Store: [0x800038a8]:0x000000087FFFFFFF




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x8000179c]:KMMWT2 t6, t5, t4
	-[0x800017a0]:sd t6, 1216(ra)
Current Store : [0x800017a4] : sd t5, 1224(ra) -- Store: [0x800038b8]:0xBFFFFFFFBFFFFFFF




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800017c8]:KMMWT2 t6, t5, t4
	-[0x800017cc]:sd t6, 1232(ra)
Current Store : [0x800017d0] : sd t5, 1240(ra) -- Store: [0x800038c8]:0x00000400DFFFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800017f0]:KMMWT2 t6, t5, t4
	-[0x800017f4]:sd t6, 1248(ra)
Current Store : [0x800017f8] : sd t5, 1256(ra) -- Store: [0x800038d8]:0x00000005FDFFFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001824]:KMMWT2 t6, t5, t4
	-[0x80001828]:sd t6, 1264(ra)
Current Store : [0x8000182c] : sd t5, 1272(ra) -- Store: [0x800038e8]:0x00008000FFBFFFFF




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001854]:KMMWT2 t6, t5, t4
	-[0x80001858]:sd t6, 1280(ra)
Current Store : [0x8000185c] : sd t5, 1288(ra) -- Store: [0x800038f8]:0xFFFEFFFFFFDFFFFF




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001888]:KMMWT2 t6, t5, t4
	-[0x8000188c]:sd t6, 1296(ra)
Current Store : [0x80001890] : sd t5, 1304(ra) -- Store: [0x80003908]:0xFFFFFFDFFFEFFFFF




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x800018b0]:KMMWT2 t6, t5, t4
	-[0x800018b4]:sd t6, 1312(ra)
Current Store : [0x800018b8] : sd t5, 1320(ra) -- Store: [0x80003918]:0x0000200000000006




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800018e4]:KMMWT2 t6, t5, t4
	-[0x800018e8]:sd t6, 1328(ra)
Current Store : [0x800018ec] : sd t5, 1336(ra) -- Store: [0x80003928]:0xFFFFDFFFFFFEFFFF




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80001914]:KMMWT2 t6, t5, t4
	-[0x80001918]:sd t6, 1344(ra)
Current Store : [0x8000191c] : sd t5, 1352(ra) -- Store: [0x80003938]:0xFFFFFFFDFFDFFFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001948]:KMMWT2 t6, t5, t4
	-[0x8000194c]:sd t6, 1360(ra)
Current Store : [0x80001950] : sd t5, 1368(ra) -- Store: [0x80003948]:0xFFFFFFFEFFFFDFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001980]:KMMWT2 t6, t5, t4
	-[0x80001984]:sd t6, 1376(ra)
Current Store : [0x80001988] : sd t5, 1384(ra) -- Store: [0x80003958]:0xFFFFFFFCFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800019bc]:KMMWT2 t6, t5, t4
	-[0x800019c0]:sd t6, 1392(ra)
Current Store : [0x800019c4] : sd t5, 1400(ra) -- Store: [0x80003968]:0x00080000FFFFF7FF




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800019e8]:KMMWT2 t6, t5, t4
	-[0x800019ec]:sd t6, 1408(ra)
Current Store : [0x800019f0] : sd t5, 1416(ra) -- Store: [0x80003978]:0xDFFFFFFFFFFFFBFF




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001a18]:KMMWT2 t6, t5, t4
	-[0x80001a1c]:sd t6, 1424(ra)
Current Store : [0x80001a20] : sd t5, 1432(ra) -- Store: [0x80003988]:0xFFFFFFDFFFFFFFBF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001a4c]:KMMWT2 t6, t5, t4
	-[0x80001a50]:sd t6, 1440(ra)
Current Store : [0x80001a54] : sd t5, 1448(ra) -- Store: [0x80003998]:0x40000000FFFFFFDF




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80001a7c]:KMMWT2 t6, t5, t4
	-[0x80001a80]:sd t6, 1456(ra)
Current Store : [0x80001a84] : sd t5, 1464(ra) -- Store: [0x800039a8]:0xFFFFF7FF00080000




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001aa8]:KMMWT2 t6, t5, t4
	-[0x80001aac]:sd t6, 1472(ra)
Current Store : [0x80001ab0] : sd t5, 1480(ra) -- Store: [0x800039b8]:0x02000000FFFFFFFB




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001ad4]:KMMWT2 t6, t5, t4
	-[0x80001ad8]:sd t6, 1488(ra)
Current Store : [0x80001adc] : sd t5, 1496(ra) -- Store: [0x800039c8]:0xFBFFFFFF02000000




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80001b04]:KMMWT2 t6, t5, t4
	-[0x80001b08]:sd t6, 1504(ra)
Current Store : [0x80001b0c] : sd t5, 1512(ra) -- Store: [0x800039d8]:0xFFFFFFF6FFFFFEFF




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001b40]:KMMWT2 t6, t5, t4
	-[0x80001b44]:sd t6, 1520(ra)
Current Store : [0x80001b48] : sd t5, 1528(ra) -- Store: [0x800039e8]:0x0800000000400000




Last Coverpoint : ['opcode : kmmwt2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -21846', 'rs2_h0_val == 2048', 'rs1_w1_val == 512', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001b70]:KMMWT2 t6, t5, t4
	-[0x80001b74]:sd t6, 1536(ra)
Current Store : [0x80001b78] : sd t5, 1544(ra) -- Store: [0x800039f8]:0x0000020000800000




Last Coverpoint : ['rs2_h2_val == 32767']
Last Code Sequence : 
	-[0x80001b9c]:KMMWT2 t6, t5, t4
	-[0x80001ba0]:sd t6, 1552(ra)
Current Store : [0x80001ba4] : sd t5, 1560(ra) -- Store: [0x80003a08]:0xFFEFFFFF00200000





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

|s.no|            signature             |                                                                                                         coverpoints                                                                                                          |                                  code                                  |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000001F0000003C|- opcode : kmmwt2<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs2_h2_val == 1024<br>                                                                                                          |[0x800003d0]:KMMWT2 a2, a4, a4<br> [0x800003d4]:sd a2, 0(tp)<br>        |
|   2|[0x80003220]<br>0x38E471C50000007F|- rs1 : x20<br> - rs2 : x20<br> - rd : x20<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h0_val == 2048<br>                                                                                                     |[0x80000400]:KMMWT2 s4, s4, s4<br> [0x80000404]:sd s4, 16(tp)<br>       |
|   3|[0x80003230]<br>0xFFFAAAAFFFFFFFFF|- rs1 : x26<br> - rs2 : x31<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 8192<br> - rs2_h0_val == -32768<br> - rs1_w1_val == -524289<br> - rs1_w0_val == -9<br> |[0x8000042c]:KMMWT2 s11, s10, t6<br> [0x80000430]:sd s11, 32(tp)<br>    |
|   4|[0x80003240]<br>0xFFFFDFFF00000200|- rs1 : x8<br> - rs2 : x10<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -9<br> - rs2_h1_val == 512<br> - rs2_h0_val == -5<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 32768<br>       |[0x8000045c]:KMMWT2 fp, fp, a0<br> [0x80000460]:sd fp, 48(tp)<br>       |
|   5|[0x80003250]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 2097152<br>           |[0x80000488]:KMMWT2 zero, t1, zero<br> [0x8000048c]:sd zero, 64(tp)<br> |
|   6|[0x80003260]<br>0x00000002FFFFFFFB|- rs1 : x29<br> - rs2 : x7<br> - rd : x26<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -513<br> - rs1_w1_val == -9<br> - rs1_w0_val == -16385<br>                                                                            |[0x800004bc]:KMMWT2 s10, t4, t2<br> [0x800004c0]:sd s10, 80(tp)<br>     |
|   7|[0x80003270]<br>0xFFFFFFBF00000000|- rs1 : x9<br> - rs2 : x16<br> - rd : x11<br> - rs2_h3_val == -4097<br> - rs2_h1_val == 2<br> - rs2_h0_val == 1024<br> - rs1_w1_val == 512<br> - rs1_w0_val == 64<br>                                                         |[0x800004ec]:KMMWT2 a1, s1, a6<br> [0x800004f0]:sd a1, 96(tp)<br>       |
|   8|[0x80003280]<br>0xFFFFFBFF00008000|- rs1 : x11<br> - rs2 : x21<br> - rd : x24<br> - rs2_h3_val == -2049<br> - rs2_h1_val == -1<br> - rs2_h0_val == 2<br> - rs1_w1_val == 16384<br>                                                                               |[0x8000051c]:KMMWT2 s8, a1, s5<br> [0x80000520]:sd s8, 112(tp)<br>      |
|   9|[0x80003290]<br>0x0002008000000002|- rs1 : x1<br> - rs2 : x13<br> - rd : x30<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -1<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 8192<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -17<br>                        |[0x80000548]:KMMWT2 t5, ra, a3<br> [0x8000054c]:sd t5, 128(tp)<br>      |
|  10|[0x800032a0]<br>0xFFFEFF80FFFFFDFF|- rs1 : x3<br> - rs2 : x17<br> - rd : x18<br> - rs2_h3_val == -513<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -129<br> - rs1_w1_val == 4194304<br>                                                 |[0x80000584]:KMMWT2 s2, gp, a7<br> [0x80000588]:sd s2, 144(tp)<br>      |
|  11|[0x800032b0]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x2<br> - rd : x15<br> - rs2_h3_val == -257<br> - rs2_h2_val == 32<br> - rs1_w1_val == -33<br> - rs1_w0_val == -2<br>                                                                                  |[0x800005b4]:KMMWT2 a5, s11, sp<br> [0x800005b8]:sd a5, 160(tp)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFF00000001|- rs1 : x17<br> - rs2 : x5<br> - rd : x21<br> - rs2_h3_val == -129<br> - rs2_h2_val == 2<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -1<br>                                                                                  |[0x800005e4]:KMMWT2 s5, a7, t0<br> [0x800005e8]:sd s5, 176(tp)<br>      |
|  13|[0x800032d0]<br>0x00000000FFFFDFFF|- rs1 : x21<br> - rs2 : x11<br> - rd : x16<br> - rs2_h3_val == -65<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 4<br> - rs2_h0_val == -8193<br> - rs1_w1_val == 0<br> - rs1_w0_val == -67108865<br>                          |[0x80000614]:KMMWT2 a6, s5, a1<br> [0x80000618]:sd a6, 192(tp)<br>      |
|  14|[0x800032e0]<br>0x0000000000040100|- rs1 : x23<br> - rs2 : x28<br> - rd : x29<br> - rs2_h3_val == -33<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -9<br> - rs1_w0_val == -8388609<br>                                                                          |[0x80000640]:KMMWT2 t4, s7, t3<br> [0x80000644]:sd t4, 208(tp)<br>      |
|  15|[0x800032f0]<br>0xFFFFFFFF00200000|- rs1 : x31<br> - rs2 : x23<br> - rd : x14<br> - rs2_h3_val == -17<br> - rs2_h1_val == 128<br> - rs1_w1_val == 32<br> - rs1_w0_val == 536870912<br>                                                                           |[0x80000674]:KMMWT2 a4, t6, s7<br> [0x80000678]:sd a4, 0(a1)<br>        |
|  16|[0x80003300]<br>0x0000004800000000|- rs1 : x19<br> - rs2 : x25<br> - rd : x5<br> - rs2_h3_val == -9<br> - rs2_h2_val == 4<br> - rs1_w1_val == -262145<br>                                                                                                        |[0x800006a0]:KMMWT2 t0, s3, s9<br> [0x800006a4]:sd t0, 16(a1)<br>       |
|  17|[0x80003310]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x6<br> - rd : x23<br> - rs2_h3_val == -5<br> - rs1_w0_val == 0<br>                                                                                                                                     |[0x800006c8]:KMMWT2 s7, zero, t1<br> [0x800006cc]:sd s7, 32(a1)<br>     |
|  18|[0x80003320]<br>0xFFFFFFFFFFFB8000|- rs1 : x30<br> - rs2 : x8<br> - rd : x2<br> - rs2_h3_val == -3<br> - rs2_h2_val == -2049<br> - rs1_w1_val == 1<br>                                                                                                           |[0x800006f0]:KMMWT2 sp, t5, fp<br> [0x800006f4]:sd sp, 48(a1)<br>       |
|  19|[0x80003330]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x16<br> - rs2 : x24<br> - rd : x4<br> - rs2_h3_val == -2<br> - rs2_h2_val == 512<br> - rs2_h0_val == -65<br> - rs1_w1_val == 8192<br>                                                                                 |[0x80000718]:KMMWT2 tp, a6, s8<br> [0x8000071c]:sd tp, 64(a1)<br>       |
|  20|[0x80003340]<br>0xFFFFFF8000003000|- rs1 : x4<br> - rs2 : x12<br> - rd : x3<br> - rs2_h3_val == -32768<br> - rs1_w1_val == 128<br> - rs1_w0_val == 134217728<br>                                                                                                 |[0x80000744]:KMMWT2 gp, tp, a2<br> [0x80000748]:sd gp, 80(a1)<br>       |
|  21|[0x80003350]<br>0x00000002FFFFFFFF|- rs1 : x28<br> - rs2 : x9<br> - rd : x13<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 128<br> - rs2_h1_val == 16<br> - rs2_h0_val == 8<br>                                                                                  |[0x80000774]:KMMWT2 a3, t3, s1<br> [0x80000778]:sd a3, 96(a1)<br>       |
|  22|[0x80003360]<br>0x0000000100009000|- rs1 : x25<br> - rs2 : x18<br> - rd : x10<br> - rs2_h3_val == 8192<br> - rs2_h1_val == -9<br> - rs1_w1_val == 4<br> - rs1_w0_val == -134217729<br>                                                                           |[0x800007a4]:KMMWT2 a0, s9, s2<br> [0x800007a8]:sd a0, 112(a1)<br>      |
|  23|[0x80003370]<br>0xFFFFFFFFFFFFFF7F|- rs1 : x24<br> - rs2 : x30<br> - rd : x17<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 16<br> - rs2_h0_val == -2<br> - rs1_w0_val == -32769<br>                                                                              |[0x800007d8]:KMMWT2 a7, s8, t5<br> [0x800007dc]:sd a7, 128(a1)<br>      |
|  24|[0x80003380]<br>0xFFBFFFFFFFFBF800|- rs1 : x10<br> - rs2 : x29<br> - rd : x25<br> - rs2_h3_val == 2048<br> - rs2_h1_val == -129<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 67108864<br>                                                                   |[0x8000080c]:KMMWT2 s9, a0, t4<br> [0x80000810]:sd s9, 144(a1)<br>      |
|  25|[0x80003390]<br>0x0000000000000004|- rs1 : x12<br> - rs2 : x22<br> - rd : x28<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -2<br>                                                                                                                                |[0x8000083c]:KMMWT2 t3, a2, s6<br> [0x80000840]:sd t3, 160(a1)<br>      |
|  26|[0x800033a0]<br>0x00080000FFFFEF00|- rs1 : x18<br> - rs2 : x15<br> - rd : x1<br> - rs2_h3_val == 512<br> - rs2_h1_val == -17<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 8388608<br>                                                                        |[0x80000870]:KMMWT2 ra, s2, a5<br> [0x80000874]:sd ra, 176(a1)<br>      |
|  27|[0x800033b0]<br>0xFFFFFFFFFDFFE000|- rs1 : x13<br> - rs2 : x4<br> - rd : x22<br> - rs2_h3_val == 256<br> - rs2_h2_val == -3<br> - rs1_w1_val == -17<br> - rs1_w0_val == 268435456<br>                                                                            |[0x80000894]:KMMWT2 s6, a3, tp<br> [0x80000898]:sd s6, 192(a1)<br>      |
|  28|[0x800033c0]<br>0xFFFFFFFFFFFBFF00|- rs1 : x2<br> - rs2 : x27<br> - rd : x9<br> - rs2_h3_val == 128<br> - rs2_h0_val == -33<br> - rs1_w1_val == -5<br>                                                                                                           |[0x800008bc]:KMMWT2 s1, sp, s11<br> [0x800008c0]:sd s1, 208(a1)<br>     |
|  29|[0x800033d0]<br>0xFFFFFFFF00000000|- rs1 : x5<br> - rs2 : x3<br> - rd : x19<br> - rs2_h3_val == 64<br> - rs2_h1_val == -513<br> - rs1_w1_val == -3<br>                                                                                                           |[0x800008e4]:KMMWT2 s3, t0, gp<br> [0x800008e8]:sd s3, 224(a1)<br>      |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFFFDFF|- rs1 : x22<br> - rs2 : x1<br> - rd : x7<br> - rs2_h3_val == 32<br> - rs2_h1_val == 1<br> - rs2_h0_val == -17<br> - rs1_w1_val == -2<br> - rs1_w0_val == -16777217<br>                                                        |[0x80000914]:KMMWT2 t2, s6, ra<br> [0x80000918]:sd t2, 240(a1)<br>      |
|  31|[0x800033f0]<br>0xFFFFBFFFC0000001|- rs1 : x7<br> - rs2 : x26<br> - rd : x31<br> - rs2_h3_val == 16<br> - rs2_h1_val == -32768<br> - rs1_w1_val == -33554433<br>                                                                                                 |[0x80000950]:KMMWT2 t6, t2, s10<br> [0x80000954]:sd t6, 0(ra)<br>       |
|  32|[0x80003400]<br>0xFFFFFFEF00000020|- rs1 : x15<br> - rs2 : x19<br> - rd : x6<br> - rs2_h3_val == 8<br> - rs2_h1_val == -2049<br> - rs1_w1_val == -65537<br> - rs1_w0_val == -513<br>                                                                             |[0x80000978]:KMMWT2 t1, a5, s3<br> [0x8000097c]:sd t1, 16(ra)<br>       |
|  33|[0x80003410]<br>0x00000040FFFD8000|- rs2_h3_val == 4<br> - rs1_w1_val == 524288<br>                                                                                                                                                                              |[0x800009a8]:KMMWT2 t6, t5, t4<br> [0x800009ac]:sd t6, 32(ra)<br>       |
|  34|[0x80003420]<br>0xFFFEAAAAFDFFFFFF|- rs2_h3_val == 2<br> - rs2_h0_val == 1<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -268435457<br>                                                                                                                    |[0x800009dc]:KMMWT2 t6, t5, t4<br> [0x800009e0]:sd t6, 48(ra)<br>       |
|  35|[0x80003430]<br>0x0000400000000010|- rs2_h3_val == 1<br> - rs2_h2_val == -32768<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 4096<br>                                                                                                                       |[0x80000a10]:KMMWT2 t6, t5, t4<br> [0x80000a14]:sd t6, 64(ra)<br>       |
|  36|[0x80003440]<br>0x00000000FFFFFFA0|- rs2_h2_val == 64<br> - rs2_h1_val == -3<br> - rs2_h0_val == 512<br> - rs1_w0_val == 1048576<br>                                                                                                                             |[0x80000a38]:KMMWT2 t6, t5, t4<br> [0x80000a3c]:sd t6, 80(ra)<br>       |
|  37|[0x80003450]<br>0xFFFF800000080000|- rs2_h3_val == -1<br> - rs2_h2_val == 16384<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 1073741824<br>                                                                                                                |[0x80000a68]:KMMWT2 t6, t5, t4<br> [0x80000a6c]:sd t6, 96(ra)<br>       |
|  38|[0x80003460]<br>0x0000000000000010|- rs2_h2_val == -21846<br> - rs2_h0_val == -1025<br> - rs1_w1_val == -513<br> - rs1_w0_val == -129<br>                                                                                                                        |[0x80000a90]:KMMWT2 t6, t5, t4<br> [0x80000a94]:sd t6, 112(ra)<br>      |
|  39|[0x80003470]<br>0x0000000000000000|- rs2_h2_val == -16385<br> - rs1_w0_val == 128<br>                                                                                                                                                                            |[0x80000ac0]:KMMWT2 t6, t5, t4<br> [0x80000ac4]:sd t6, 128(ra)<br>      |
|  40|[0x80003480]<br>0xFFFFFDFF38E40000|- rs2_h2_val == -8193<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 128<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -1431655766<br>                                                                                     |[0x80000b00]:KMMWT2 t6, t5, t4<br> [0x80000b04]:sd t6, 144(ra)<br>      |
|  41|[0x80003490]<br>0x000400000001C000|- rs2_h2_val == -4097<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                     |[0x80000b30]:KMMWT2 t6, t5, t4<br> [0x80000b34]:sd t6, 160(ra)<br>      |
|  42|[0x800034a0]<br>0xFFFFFFFFFFFFFF60|- rs2_h0_val == -4097<br> - rs1_w0_val == 524288<br>                                                                                                                                                                          |[0x80000b60]:KMMWT2 t6, t5, t4<br> [0x80000b64]:sd t6, 176(ra)<br>      |
|  43|[0x800034b0]<br>0x00000001FFFFFFE8|- rs2_h0_val == -16385<br> - rs1_w0_val == 262144<br>                                                                                                                                                                         |[0x80000b8c]:KMMWT2 t6, t5, t4<br> [0x80000b90]:sd t6, 192(ra)<br>      |
|  44|[0x800034c0]<br>0x00000000FFFFFBFC|- rs2_h2_val == 1<br> - rs2_h1_val == -257<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == 131072<br>                                                                                                                     |[0x80000bbc]:KMMWT2 t6, t5, t4<br> [0x80000bc0]:sd t6, 208(ra)<br>      |
|  45|[0x800034d0]<br>0x00002400FFFFFFEC|- rs2_h2_val == 256<br> - rs1_w0_val == 65536<br>                                                                                                                                                                             |[0x80000bf0]:KMMWT2 t6, t5, t4<br> [0x80000bf4]:sd t6, 224(ra)<br>      |
|  46|[0x800034e0]<br>0xFFFFFFFFFFFFFFFD|- rs1_w0_val == 16384<br>                                                                                                                                                                                                     |[0x80000c20]:KMMWT2 t6, t5, t4<br> [0x80000c24]:sd t6, 240(ra)<br>      |
|  47|[0x800034f0]<br>0x00000000FFFFFFFF|- rs2_h0_val == -257<br> - rs1_w0_val == 8192<br>                                                                                                                                                                             |[0x80000c50]:KMMWT2 t6, t5, t4<br> [0x80000c54]:sd t6, 256(ra)<br>      |
|  48|[0x80003500]<br>0xFFFFFFF900000001|- rs1_w0_val == 2048<br>                                                                                                                                                                                                      |[0x80000c84]:KMMWT2 t6, t5, t4<br> [0x80000c88]:sd t6, 272(ra)<br>      |
|  49|[0x80003510]<br>0x00000000FFFFFD55|- rs1_w0_val == 1024<br>                                                                                                                                                                                                      |[0x80000cb4]:KMMWT2 t6, t5, t4<br> [0x80000cb8]:sd t6, 288(ra)<br>      |
|  50|[0x80003520]<br>0x00006000FFFFFEAA|- rs1_w1_val == -268435457<br> - rs1_w0_val == 512<br>                                                                                                                                                                        |[0x80000ce4]:KMMWT2 t6, t5, t4<br> [0x80000ce8]:sd t6, 304(ra)<br>      |
|  51|[0x80003530]<br>0xFFFFFFFF00000000|- rs1_w0_val == 256<br>                                                                                                                                                                                                       |[0x80000d14]:KMMWT2 t6, t5, t4<br> [0x80000d18]:sd t6, 320(ra)<br>      |
|  52|[0x80003540]<br>0x00000000FFFFFFEA|- rs1_w0_val == 32<br>                                                                                                                                                                                                        |[0x80000d44]:KMMWT2 t6, t5, t4<br> [0x80000d48]:sd t6, 336(ra)<br>      |
|  53|[0x80003550]<br>0x000000000000000F|- rs2_h2_val == -33<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -513<br> - rs1_w0_val == 16<br>                                                                                                                             |[0x80000d64]:KMMWT2 t6, t5, t4<br> [0x80000d68]:sd t6, 352(ra)<br>      |
|  54|[0x80003560]<br>0xFFFFFFFF00000000|- rs2_h2_val == -257<br> - rs1_w0_val == 8<br>                                                                                                                                                                                |[0x80000d94]:KMMWT2 t6, t5, t4<br> [0x80000d98]:sd t6, 368(ra)<br>      |
|  55|[0x80003570]<br>0x0020000000000001|- rs2_h1_val == 16384<br> - rs2_h0_val == -21846<br> - rs1_w0_val == 2<br>                                                                                                                                                    |[0x80000dd0]:KMMWT2 t6, t5, t4<br> [0x80000dd4]:sd t6, 384(ra)<br>      |
|  56|[0x80003580]<br>0x0000000000000000|- rs2_h1_val == 32<br> - rs1_w0_val == 1<br>                                                                                                                                                                                  |[0x80000df4]:KMMWT2 t6, t5, t4<br> [0x80000df8]:sd t6, 400(ra)<br>      |
|  57|[0x80003590]<br>0xFFFFE00000000000|- rs2_h0_val == 16384<br> - rs1_w1_val == 134217728<br>                                                                                                                                                                       |[0x80000e1c]:KMMWT2 t6, t5, t4<br> [0x80000e20]:sd t6, 416(ra)<br>      |
|  58|[0x800035a0]<br>0x00000000FFFFFFFF|- rs2_h0_val == 21845<br> - rs1_w1_val == -129<br> - rs1_w0_val == -1<br>                                                                                                                                                     |[0x80000e4c]:KMMWT2 t6, t5, t4<br> [0x80000e50]:sd t6, 432(ra)<br>      |
|  59|[0x800035b0]<br>0x0000000000000000|- rs2_h2_val == -1025<br>                                                                                                                                                                                                     |[0x80000e7c]:KMMWT2 t6, t5, t4<br> [0x80000e80]:sd t6, 448(ra)<br>      |
|  60|[0x800035c0]<br>0x00000003FFFFD554|- rs2_h2_val == -129<br> - rs2_h1_val == 21845<br>                                                                                                                                                                            |[0x80000eb8]:KMMWT2 t6, t5, t4<br> [0x80000ebc]:sd t6, 464(ra)<br>      |
|  61|[0x800035d0]<br>0x0000000000020000|- rs2_h2_val == -65<br>                                                                                                                                                                                                       |[0x80000ee8]:KMMWT2 t6, t5, t4<br> [0x80000eec]:sd t6, 480(ra)<br>      |
|  62|[0x800035e0]<br>0xFFFFFF3F00000000|- rs2_h2_val == -17<br> - rs2_h1_val == 256<br> - rs1_w1_val == -2097153<br>                                                                                                                                                  |[0x80000f18]:KMMWT2 t6, t5, t4<br> [0x80000f1c]:sd t6, 496(ra)<br>      |
|  63|[0x800035f0]<br>0xFFFBFFFFFFFFF200|- rs2_h2_val == -5<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                           |[0x80000f50]:KMMWT2 t6, t5, t4<br> [0x80000f54]:sd t6, 512(ra)<br>      |
|  64|[0x80003600]<br>0xFFFFFFFBFFFFFFFF|- rs2_h2_val == 4096<br> - rs2_h0_val == 32767<br>                                                                                                                                                                            |[0x80000f80]:KMMWT2 t6, t5, t4<br> [0x80000f84]:sd t6, 528(ra)<br>      |
|  65|[0x80003610]<br>0xE0003FFFFFFFFFFF|- rs2_h2_val == 8<br> - rs1_w1_val == -536870913<br>                                                                                                                                                                          |[0x80000fb4]:KMMWT2 t6, t5, t4<br> [0x80000fb8]:sd t6, 544(ra)<br>      |
|  66|[0x80003620]<br>0x00007000FFFFFF7F|- rs2_h1_val == -16385<br>                                                                                                                                                                                                    |[0x80000fdc]:KMMWT2 t6, t5, t4<br> [0x80000fe0]:sd t6, 560(ra)<br>      |
|  67|[0x80003630]<br>0xFFFFBFFFFFFFFFFB|- rs2_h1_val == -8193<br>                                                                                                                                                                                                     |[0x80001008]:KMMWT2 t6, t5, t4<br> [0x8000100c]:sd t6, 576(ra)<br>      |
|  68|[0x80003640]<br>0xFFFFFFFD00000041|- rs2_h1_val == -65<br> - rs1_w1_val == -65<br>                                                                                                                                                                               |[0x8000103c]:KMMWT2 t6, t5, t4<br> [0x80001040]:sd t6, 592(ra)<br>      |
|  69|[0x80003650]<br>0xFFFFFF80FFFFFF7C|- rs2_h1_val == -33<br> - rs1_w1_val == 2097152<br>                                                                                                                                                                           |[0x80001070]:KMMWT2 t6, t5, t4<br> [0x80001074]:sd t6, 608(ra)<br>      |
|  70|[0x80003660]<br>0xFFFFDC0000000500|- rs2_h1_val == -5<br>                                                                                                                                                                                                        |[0x800010a8]:KMMWT2 t6, t5, t4<br> [0x800010ac]:sd t6, 624(ra)<br>      |
|  71|[0x80003670]<br>0xFFFF600000000000|- rs2_h1_val == -2<br> - rs1_w1_val == 268435456<br>                                                                                                                                                                          |[0x800010d8]:KMMWT2 t6, t5, t4<br> [0x800010dc]:sd t6, 640(ra)<br>      |
|  72|[0x80003680]<br>0xFFFFFFFFFFFFFFFD|- rs2_h1_val == 8192<br>                                                                                                                                                                                                      |[0x80001108]:KMMWT2 t6, t5, t4<br> [0x8000110c]:sd t6, 656(ra)<br>      |
|  73|[0x80003690]<br>0x00000402001FFFC0|- rs2_h0_val == 4096<br>                                                                                                                                                                                                      |[0x80001134]:KMMWT2 t6, t5, t4<br> [0x80001138]:sd t6, 672(ra)<br>      |
|  74|[0x800036a0]<br>0xFFEF000000000000|- rs2_h0_val == 256<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                                        |[0x80001164]:KMMWT2 t6, t5, t4<br> [0x80001168]:sd t6, 688(ra)<br>      |
|  75|[0x800036b0]<br>0xFFFFFFFF00003FFF|- rs2_h0_val == 64<br> - rs1_w1_val == 2<br>                                                                                                                                                                                  |[0x80001194]:KMMWT2 t6, t5, t4<br> [0x80001198]:sd t6, 704(ra)<br>      |
|  76|[0x800036c0]<br>0x0000000300000000|- rs2_h0_val == 32<br>                                                                                                                                                                                                        |[0x800011c4]:KMMWT2 t6, t5, t4<br> [0x800011c8]:sd t6, 720(ra)<br>      |
|  77|[0x800036d0]<br>0xFFFFFFFFFFFFFBFF|- rs2_h0_val == 16<br> - rs1_w0_val == -131073<br>                                                                                                                                                                            |[0x800011f0]:KMMWT2 t6, t5, t4<br> [0x800011f4]:sd t6, 736(ra)<br>      |
|  78|[0x800036e0]<br>0xFFFFFFFE00000000|- rs2_h0_val == 4<br>                                                                                                                                                                                                         |[0x80001220]:KMMWT2 t6, t5, t4<br> [0x80001224]:sd t6, 752(ra)<br>      |
|  79|[0x800036f0]<br>0xFFFE0000FFFFFFFF|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                |[0x80001250]:KMMWT2 t6, t5, t4<br> [0x80001254]:sd t6, 768(ra)<br>      |
|  80|[0x80003700]<br>0x00007000FFFF8000|- rs1_w1_val == -134217729<br>                                                                                                                                                                                                |[0x80001280]:KMMWT2 t6, t5, t4<br> [0x80001284]:sd t6, 784(ra)<br>      |
|  81|[0x80003710]<br>0xFFDFFFFFFFFEFFFF|- rs1_w1_val == -16777217<br> - rs1_w0_val == -262145<br>                                                                                                                                                                     |[0x800012bc]:KMMWT2 t6, t5, t4<br> [0x800012c0]:sd t6, 800(ra)<br>      |
|  82|[0x80003720]<br>0xFFFFFFE7FFFF0000|- rs1_w0_val == -2147483648<br> - rs1_w1_val == -131073<br>                                                                                                                                                                   |[0x800012e4]:KMMWT2 t6, t5, t4<br> [0x800012e8]:sd t6, 816(ra)<br>      |
|  83|[0x80003730]<br>0x0000000100003000|- rs1_w1_val == -32769<br>                                                                                                                                                                                                    |[0x8000130c]:KMMWT2 t6, t5, t4<br> [0x80001310]:sd t6, 832(ra)<br>      |
|  84|[0x80003740]<br>0x0000000300000000|- rs1_w1_val == -16385<br>                                                                                                                                                                                                    |[0x80001340]:KMMWT2 t6, t5, t4<br> [0x80001344]:sd t6, 848(ra)<br>      |
|  85|[0x80003750]<br>0x0000020000000000|- rs1_w1_val == -4097<br>                                                                                                                                                                                                     |[0x80001374]:KMMWT2 t6, t5, t4<br> [0x80001378]:sd t6, 864(ra)<br>      |
|  86|[0x80003760]<br>0xFFFFFFFFFFFFFFE0|- rs1_w1_val == -2049<br>                                                                                                                                                                                                     |[0x800013a4]:KMMWT2 t6, t5, t4<br> [0x800013a8]:sd t6, 880(ra)<br>      |
|  87|[0x80003770]<br>0x0000000000000000|- rs1_w1_val == -1025<br> - rs1_w0_val == -3<br>                                                                                                                                                                              |[0x800013d4]:KMMWT2 t6, t5, t4<br> [0x800013d8]:sd t6, 896(ra)<br>      |
|  88|[0x80003780]<br>0xFFFFFFFFFFF55555|- rs1_w1_val == -257<br>                                                                                                                                                                                                      |[0x80001408]:KMMWT2 t6, t5, t4<br> [0x8000140c]:sd t6, 912(ra)<br>      |
|  89|[0x80003790]<br>0xFFFFF80000000003|- rs1_w1_val == 67108864<br>                                                                                                                                                                                                  |[0x80001434]:KMMWT2 t6, t5, t4<br> [0x80001438]:sd t6, 928(ra)<br>      |
|  90|[0x800037a0]<br>0x00004000FFFFFFFC|- rs2_h0_val == -3<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                           |[0x80001464]:KMMWT2 t6, t5, t4<br> [0x80001468]:sd t6, 944(ra)<br>      |
|  91|[0x800037b0]<br>0xFFFFFF00FFFFFFCF|- rs1_w1_val == 8388608<br> - rs1_w0_val == -524289<br>                                                                                                                                                                       |[0x80001498]:KMMWT2 t6, t5, t4<br> [0x8000149c]:sd t6, 960(ra)<br>      |
|  92|[0x800037c0]<br>0x00002000FDFFFFFF|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                   |[0x800014c4]:KMMWT2 t6, t5, t4<br> [0x800014c8]:sd t6, 976(ra)<br>      |
|  93|[0x800037d0]<br>0x0002AAA8FFFD5550|- rs1_w1_val == 262144<br>                                                                                                                                                                                                    |[0x80001500]:KMMWT2 t6, t5, t4<br> [0x80001504]:sd t6, 992(ra)<br>      |
|  94|[0x800037e0]<br>0x0000200000000004|- rs1_w1_val == 131072<br>                                                                                                                                                                                                    |[0x80001528]:KMMWT2 t6, t5, t4<br> [0x8000152c]:sd t6, 1008(ra)<br>     |
|  95|[0x800037f0]<br>0xFFFFFFECFFFFFFFF|- rs1_w1_val == 65536<br>                                                                                                                                                                                                     |[0x80001554]:KMMWT2 t6, t5, t4<br> [0x80001558]:sd t6, 1024(ra)<br>     |
|  96|[0x80003800]<br>0xFFFFFF7F00000000|- rs1_w1_val == 32768<br>                                                                                                                                                                                                     |[0x80001590]:KMMWT2 t6, t5, t4<br> [0x80001594]:sd t6, 1040(ra)<br>     |
|  97|[0x80003810]<br>0xFFFFFFFF00000000|- rs2_h1_val == 2048<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 4<br>                                                                                                                                                       |[0x800015b8]:KMMWT2 t6, t5, t4<br> [0x800015bc]:sd t6, 1056(ra)<br>     |
|  98|[0x80003820]<br>0xFFFFFFFF00000000|- rs1_w1_val == 2048<br>                                                                                                                                                                                                      |[0x800015e0]:KMMWT2 t6, t5, t4<br> [0x800015e4]:sd t6, 1072(ra)<br>     |
|  99|[0x80003830]<br>0xFFFFFFEFFFFBFE00|- rs1_w1_val == 1024<br>                                                                                                                                                                                                      |[0x80001610]:KMMWT2 t6, t5, t4<br> [0x80001614]:sd t6, 1088(ra)<br>     |
| 100|[0x80003840]<br>0x0000000400000002|- rs1_w1_val == 256<br>                                                                                                                                                                                                       |[0x80001640]:KMMWT2 t6, t5, t4<br> [0x80001644]:sd t6, 1104(ra)<br>     |
| 101|[0x80003850]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 64<br>                                                                                                                                                                                                        |[0x80001670]:KMMWT2 t6, t5, t4<br> [0x80001674]:sd t6, 1120(ra)<br>     |
| 102|[0x80003860]<br>0xFFFFFFF7FFFFDFFC|- rs2_h3_val == -16385<br> - rs1_w1_val == 16<br>                                                                                                                                                                             |[0x800016a4]:KMMWT2 t6, t5, t4<br> [0x800016a8]:sd t6, 1136(ra)<br>     |
| 103|[0x80003870]<br>0xFFFFFFFEFFFEFF00|- rs1_w1_val == 8<br>                                                                                                                                                                                                         |[0x800016d4]:KMMWT2 t6, t5, t4<br> [0x800016d8]:sd t6, 1152(ra)<br>     |
| 104|[0x80003880]<br>0x00000000FFFFDFFF|- rs1_w1_val == -1<br>                                                                                                                                                                                                        |[0x80001700]:KMMWT2 t6, t5, t4<br> [0x80001704]:sd t6, 1168(ra)<br>     |
| 105|[0x80003890]<br>0x0000040002AAAAAA|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                |[0x8000173c]:KMMWT2 t6, t5, t4<br> [0x80001740]:sd t6, 1184(ra)<br>     |
| 106|[0x800038a0]<br>0xFFFFFFFF5554FFFF|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                |[0x8000176c]:KMMWT2 t6, t5, t4<br> [0x80001770]:sd t6, 1200(ra)<br>     |
| 107|[0x800038b0]<br>0xFFFF7FFF00040000|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                               |[0x8000179c]:KMMWT2 t6, t5, t4<br> [0x800017a0]:sd t6, 1216(ra)<br>     |
| 108|[0x800038c0]<br>0xFFFFFFFF08004000|- rs1_w0_val == -536870913<br>                                                                                                                                                                                                |[0x800017c8]:KMMWT2 t6, t5, t4<br> [0x800017cc]:sd t6, 1232(ra)<br>     |
| 109|[0x800038d0]<br>0x00000001FE0003FF|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                 |[0x800017f0]:KMMWT2 t6, t5, t4<br> [0x800017f4]:sd t6, 1248(ra)<br>     |
| 110|[0x800038e0]<br>0xFFFFFDFFFFC0007F|- rs1_w0_val == -4194305<br>                                                                                                                                                                                                  |[0x80001824]:KMMWT2 t6, t5, t4<br> [0x80001828]:sd t6, 1264(ra)<br>     |
| 111|[0x800038f0]<br>0xFFFF800100000200|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                  |[0x80001854]:KMMWT2 t6, t5, t4<br> [0x80001858]:sd t6, 1280(ra)<br>     |
| 112|[0x80003900]<br>0x00000000FFF7FFFF|- rs1_w0_val == -1048577<br>                                                                                                                                                                                                  |[0x80001888]:KMMWT2 t6, t5, t4<br> [0x8000188c]:sd t6, 1296(ra)<br>     |
| 113|[0x80003910]<br>0x0000000400000000|- rs2_h1_val == 64<br>                                                                                                                                                                                                        |[0x800018b0]:KMMWT2 t6, t5, t4<br> [0x800018b4]:sd t6, 1312(ra)<br>     |
| 114|[0x80003920]<br>0x0000000100000022|- rs1_w0_val == -65537<br>                                                                                                                                                                                                    |[0x800018e4]:KMMWT2 t6, t5, t4<br> [0x800018e8]:sd t6, 1328(ra)<br>     |
| 115|[0x80003930]<br>0x00000000FFFFFDFF|- rs2_h1_val == 8<br>                                                                                                                                                                                                         |[0x80001914]:KMMWT2 t6, t5, t4<br> [0x80001918]:sd t6, 1344(ra)<br>     |
| 116|[0x80003940]<br>0xFFFFFFFFFFFFFDFF|- rs1_w0_val == -8193<br>                                                                                                                                                                                                     |[0x80001948]:KMMWT2 t6, t5, t4<br> [0x8000194c]:sd t6, 1360(ra)<br>     |
| 117|[0x80003950]<br>0x00000001FFFFFFDF|- rs1_w0_val == -4097<br>                                                                                                                                                                                                     |[0x80001980]:KMMWT2 t6, t5, t4<br> [0x80001984]:sd t6, 1376(ra)<br>     |
| 118|[0x80003960]<br>0x0007FFF000000000|- rs1_w0_val == -2049<br>                                                                                                                                                                                                     |[0x800019bc]:KMMWT2 t6, t5, t4<br> [0x800019c0]:sd t6, 1392(ra)<br>     |
| 119|[0x80003970]<br>0x00044000FFFFFD54|- rs1_w0_val == -1025<br>                                                                                                                                                                                                     |[0x800019e8]:KMMWT2 t6, t5, t4<br> [0x800019ec]:sd t6, 1408(ra)<br>     |
| 120|[0x80003980]<br>0x0000001000000000|- rs1_w0_val == -65<br>                                                                                                                                                                                                       |[0x80001a18]:KMMWT2 t6, t5, t4<br> [0x80001a1c]:sd t6, 1424(ra)<br>     |
| 121|[0x80003990]<br>0xFFFB8000FFFFFFEF|- rs1_w0_val == -33<br>                                                                                                                                                                                                       |[0x80001a4c]:KMMWT2 t6, t5, t4<br> [0x80001a50]:sd t6, 1440(ra)<br>     |
| 122|[0x800039a0]<br>0x0000000000000400|- rs2_h0_val == -2049<br>                                                                                                                                                                                                     |[0x80001a7c]:KMMWT2 t6, t5, t4<br> [0x80001a80]:sd t6, 1456(ra)<br>     |
| 123|[0x800039b0]<br>0x0000180000000000|- rs1_w0_val == -5<br>                                                                                                                                                                                                        |[0x80001aa8]:KMMWT2 t6, t5, t4<br> [0x80001aac]:sd t6, 1472(ra)<br>     |
| 124|[0x800039c0]<br>0xFFBFFFFF00FFFC00|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                  |[0x80001ad4]:KMMWT2 t6, t5, t4<br> [0x80001ad8]:sd t6, 1488(ra)<br>     |
| 125|[0x800039d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == -257<br>                                                                                                                                                                                                      |[0x80001b04]:KMMWT2 t6, t5, t4<br> [0x80001b08]:sd t6, 1504(ra)<br>     |
| 126|[0x800039e0]<br>0x07FFF000FFD55500|- rs1_w0_val == 4194304<br>                                                                                                                                                                                                   |[0x80001b40]:KMMWT2 t6, t5, t4<br> [0x80001b44]:sd t6, 1520(ra)<br>     |
| 127|[0x80003a00]<br>0x00080020FFFFFFC0|- rs2_h2_val == 32767<br>                                                                                                                                                                                                     |[0x80001b9c]:KMMWT2 t6, t5, t4<br> [0x80001ba0]:sd t6, 1552(ra)<br>     |
