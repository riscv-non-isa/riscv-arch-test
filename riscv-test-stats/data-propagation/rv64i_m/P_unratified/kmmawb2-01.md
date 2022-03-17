
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001ae0')]      |
| SIG_REGION                | [('0x80003210', '0x800039a0', '242 dwords')]      |
| COV_LABELS                | kmmawb2      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmawb2-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 242      |
| STAT1                     | 118      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 121     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dd0]:KMMAWB2 t6, t5, t4
      [0x80000dd4]:sd t6, 560(ra)
 -- Signature Address: 0x80003550 Data: 0xFFD6633400000D90
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -513
      - rs1_w1_val == -17
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000103c]:KMMAWB2 t6, t5, t4
      [0x80001040]:sd t6, 768(ra)
 -- Signature Address: 0x80003620 Data: 0xFD7D21B2FF07CCF9
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 8
      - rs2_h2_val == 0
      - rs2_h1_val == 32
      - rs2_h0_val == -2049
      - rs1_w0_val == 268435456




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001acc]:KMMAWB2 t6, t5, t4
      [0x80001ad0]:sd t6, 1648(ra)
 -- Signature Address: 0x80003990 Data: 0x6779BF06A745842E
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 21845
      - rs2_h2_val == -129
      - rs2_h1_val == -257
      - rs2_h0_val == -65
      - rs1_w1_val == -2049
      - rs1_w0_val == -33






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawb2', 'rs1 : x27', 'rs2 : x27', 'rd : x2', 'rs1 == rs2 != rd', 'rs2_h3_val == 4', 'rs2_h2_val == -257', 'rs2_h1_val == 32', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800003c8]:KMMAWB2 sp, s11, s11
	-[0x800003cc]:sd sp, 0(tp)
Current Store : [0x800003d0] : sd s11, 8(tp) -- Store: [0x80003218]:0x0004FEFF0020FFDF




Last Coverpoint : ['rs1 : x6', 'rs2 : x6', 'rd : x6', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h2_val == 256', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000400]:KMMAWB2 t1, t1, t1
	-[0x80000404]:sd t1, 16(tp)
Current Store : [0x80000408] : sd t1, 24(tp) -- Store: [0x80003228]:0xA9FF5502FFF16000




Last Coverpoint : ['rs1 : x7', 'rs2 : x26', 'rd : x0', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == -129', 'rs2_h1_val == -257', 'rs2_h0_val == -65', 'rs1_w1_val == -2049', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000430]:KMMAWB2 zero, t2, s10
	-[0x80000434]:sd zero, 32(tp)
Current Store : [0x80000438] : sd t2, 40(tp) -- Store: [0x80003238]:0xFFFFF7FFFFFFFFDF




Last Coverpoint : ['rs1 : x16', 'rs2 : x25', 'rd : x16', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == -16385', 'rs2_h1_val == 128', 'rs1_w1_val == 2048', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000464]:KMMAWB2 a6, a6, s9
	-[0x80000468]:sd a6, 48(tp)
Current Store : [0x8000046c] : sd a6, 56(tp) -- Store: [0x80003248]:0x000003FFDFFE7FFE




Last Coverpoint : ['rs1 : x5', 'rs2 : x17', 'rd : x17', 'rs2 == rd != rs1', 'rs2_h3_val == -16385', 'rs2_h2_val == 4', 'rs2_h1_val == 16384', 'rs2_h0_val == 1024', 'rs1_w1_val == 67108864', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000494]:KMMAWB2 a7, t0, a7
	-[0x80000498]:sd a7, 64(tp)
Current Store : [0x8000049c] : sd t0, 72(tp) -- Store: [0x80003258]:0x0400000000000100




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x8', 'rs2_h3_val == -8193', 'rs2_h1_val == 512', 'rs1_w1_val == -65537', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800004c4]:KMMAWB2 fp, sp, s1
	-[0x800004c8]:sd fp, 80(tp)
Current Store : [0x800004cc] : sd sp, 88(tp) -- Store: [0x80003268]:0xFFFEFFFFF7FFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x13', 'rd : x12', 'rs2_h3_val == -4097', 'rs2_h2_val == -33', 'rs2_h1_val == 0', 'rs2_h0_val == -3', 'rs1_w1_val == 1048576', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800004f4]:KMMAWB2 a2, fp, a3
	-[0x800004f8]:sd a2, 96(tp)
Current Store : [0x800004fc] : sd fp, 104(tp) -- Store: [0x80003278]:0x0010000010000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x12', 'rd : x1', 'rs2_h3_val == -2049', 'rs2_h1_val == 256', 'rs2_h0_val == 512', 'rs1_w1_val == -268435457', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x8000052c]:KMMAWB2 ra, gp, a2
	-[0x80000530]:sd ra, 112(tp)
Current Store : [0x80000534] : sd gp, 120(tp) -- Store: [0x80003288]:0xEFFFFFFF00001000




Last Coverpoint : ['rs1 : x9', 'rs2 : x21', 'rd : x31', 'rs2_h3_val == -1025', 'rs2_h2_val == 32', 'rs2_h0_val == 4', 'rs1_w1_val == -513', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x8000055c]:KMMAWB2 t6, s1, s5
	-[0x80000560]:sd t6, 128(tp)
Current Store : [0x80000564] : sd s1, 136(tp) -- Store: [0x80003298]:0xFFFFFDFF01000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x1', 'rd : x14', 'rs2_h3_val == -513', 'rs2_h0_val == -4097', 'rs1_w1_val == -1025', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x8000058c]:KMMAWB2 a4, s2, ra
	-[0x80000590]:sd a4, 144(tp)
Current Store : [0x80000594] : sd s2, 152(tp) -- Store: [0x800032a8]:0xFFFFFBFF00002000




Last Coverpoint : ['rs1 : x17', 'rs2 : x10', 'rd : x24', 'rs2_h3_val == -257', 'rs2_h2_val == 1', 'rs2_h0_val == -513', 'rs1_w1_val == -9', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800005bc]:KMMAWB2 s8, a7, a0
	-[0x800005c0]:sd s8, 160(tp)
Current Store : [0x800005c4] : sd a7, 168(tp) -- Store: [0x800032b8]:0xFFFFFFF700000400




Last Coverpoint : ['rs1 : x1', 'rs2 : x22', 'rd : x13', 'rs2_h3_val == -129', 'rs2_h2_val == 21845', 'rs2_h1_val == -8193', 'rs1_w1_val == -1048577', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800005ec]:KMMAWB2 a3, ra, s6
	-[0x800005f0]:sd a3, 176(tp)
Current Store : [0x800005f4] : sd ra, 184(tp) -- Store: [0x800032c8]:0xFFEFFFFF00008000




Last Coverpoint : ['rs1 : x0', 'rs2 : x20', 'rd : x3', 'rs2_h3_val == -65', 'rs2_h0_val == -5', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000061c]:KMMAWB2 gp, zero, s4
	-[0x80000620]:sd gp, 192(tp)
Current Store : [0x80000624] : sd zero, 200(tp) -- Store: [0x800032d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x28', 'rd : x21', 'rs2_h3_val == -33', 'rs2_h2_val == -32768', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000648]:KMMAWB2 s5, s8, t3
	-[0x8000064c]:sd s5, 208(tp)
Current Store : [0x80000650] : sd s8, 216(tp) -- Store: [0x800032e8]:0xFFFFFFF702000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rd : x7', 'rs2_h3_val == -17', 'rs2_h2_val == -65', 'rs2_h1_val == 8', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000678]:KMMAWB2 t2, a5, a4
	-[0x8000067c]:sd t2, 224(tp)
Current Store : [0x80000680] : sd a5, 232(tp) -- Store: [0x800032f8]:0x0080000000000003




Last Coverpoint : ['rs1 : x23', 'rs2 : x2', 'rd : x20', 'rs2_h3_val == -9', 'rs2_h2_val == 16384', 'rs2_h1_val == -4097', 'rs2_h0_val == -16385', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800006ac]:KMMAWB2 s4, s7, sp
	-[0x800006b0]:sd s4, 240(tp)
Current Store : [0x800006b4] : sd s7, 248(tp) -- Store: [0x80003308]:0x4000000000010000




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x9', 'rs2_h3_val == -5', 'rs2_h0_val == -129', 'rs1_w1_val == 268435456', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800006e0]:KMMAWB2 s1, a1, s3
	-[0x800006e4]:sd s1, 256(tp)
Current Store : [0x800006e8] : sd a1, 264(tp) -- Store: [0x80003318]:0x10000000FFFFFFBF




Last Coverpoint : ['rs1 : x12', 'rs2 : x4', 'rd : x26', 'rs2_h3_val == -3', 'rs2_h1_val == -17', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000710]:KMMAWB2 s10, a2, tp
	-[0x80000714]:sd s10, 0(ra)
Current Store : [0x80000718] : sd a2, 8(ra) -- Store: [0x80003328]:0xFFFFFFFE00010000




Last Coverpoint : ['rs1 : x20', 'rs2 : x23', 'rd : x11', 'rs1_w0_val == -2147483648', 'rs2_h3_val == -2', 'rs2_h0_val == 256', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x8000073c]:KMMAWB2 a1, s4, s7
	-[0x80000740]:sd a1, 16(ra)
Current Store : [0x80000744] : sd s4, 24(ra) -- Store: [0x80003338]:0x0000000480000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x7', 'rd : x5', 'rs2_h3_val == -32768', 'rs2_h2_val == 2048', 'rs2_h1_val == 4', 'rs2_h0_val == 64', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000076c]:KMMAWB2 t0, t3, t2
	-[0x80000770]:sd t0, 32(ra)
Current Store : [0x80000774] : sd t3, 40(ra) -- Store: [0x80003348]:0x00000006FBFFFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x15', 'rd : x30', 'rs2_h3_val == 16384', 'rs2_h1_val == 4096', 'rs2_h0_val == 0', 'rs1_w1_val == -8193', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800007a0]:KMMAWB2 t5, s5, a5
	-[0x800007a4]:sd t5, 48(ra)
Current Store : [0x800007a8] : sd s5, 56(ra) -- Store: [0x80003358]:0xFFFFDFFF55555555




Last Coverpoint : ['rs1 : x14', 'rs2 : x11', 'rd : x19', 'rs2_h3_val == 8192', 'rs2_h2_val == -17', 'rs2_h0_val == -9', 'rs1_w1_val == -524289', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800007d4]:KMMAWB2 s3, a4, a1
	-[0x800007d8]:sd s3, 64(ra)
Current Store : [0x800007dc] : sd a4, 72(ra) -- Store: [0x80003368]:0xFFF7FFFF00000080




Last Coverpoint : ['rs1 : x13', 'rs2 : x16', 'rd : x4', 'rs2_h3_val == 4096', 'rs1_w1_val == -262145', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x8000080c]:KMMAWB2 tp, a3, a6
	-[0x80000810]:sd tp, 80(ra)
Current Store : [0x80000814] : sd a3, 88(ra) -- Store: [0x80003378]:0xFFFBFFFFFFFFEFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x27', 'rs2_h3_val == 2048', 'rs2_h1_val == 2', 'rs2_h0_val == 1', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x8000083c]:KMMAWB2 s11, s10, s2
	-[0x80000840]:sd s11, 96(ra)
Current Store : [0x80000844] : sd s10, 104(ra) -- Store: [0x80003388]:0xFFEFFFFFFFFFFFFE




Last Coverpoint : ['rs1 : x29', 'rs2 : x24', 'rd : x15', 'rs2_h3_val == 1024', 'rs1_w1_val == 2097152', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000878]:KMMAWB2 a5, t4, s8
	-[0x8000087c]:sd a5, 112(ra)
Current Store : [0x80000880] : sd t4, 120(ra) -- Store: [0x80003398]:0x00200000FFFEFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rd : x29', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs1_w1_val == -257']
Last Code Sequence : 
	-[0x800008a8]:KMMAWB2 t4, s3, zero
	-[0x800008ac]:sd t4, 128(ra)
Current Store : [0x800008b0] : sd s3, 136(ra) -- Store: [0x800033a8]:0xFFFFFEFF00000006




Last Coverpoint : ['rs1 : x22', 'rs2 : x8', 'rd : x28', 'rs2_h3_val == 256', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800008e0]:KMMAWB2 t3, s6, fp
	-[0x800008e4]:sd t3, 144(ra)
Current Store : [0x800008e8] : sd s6, 152(ra) -- Store: [0x800033b8]:0x00008000FFFFEFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x5', 'rd : x22', 'rs2_h3_val == 128', 'rs2_h2_val == -2', 'rs2_h1_val == -65', 'rs1_w1_val == -4194305', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000918]:KMMAWB2 s6, tp, t0
	-[0x8000091c]:sd s6, 160(ra)
Current Store : [0x80000920] : sd tp, 168(ra) -- Store: [0x800033c8]:0xFFBFFFFFFFFBFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x30', 'rd : x18', 'rs2_h3_val == 64', 'rs2_h2_val == -3', 'rs2_h1_val == 8192', 'rs1_w1_val == 536870912', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000954]:KMMAWB2 s2, a0, t5
	-[0x80000958]:sd s2, 176(ra)
Current Store : [0x8000095c] : sd a0, 184(ra) -- Store: [0x800033d8]:0x20000000FFFDFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x31', 'rd : x25', 'rs2_h3_val == 32', 'rs2_h2_val == 64', 'rs2_h0_val == 21845', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80000984]:KMMAWB2 s9, t5, t6
	-[0x80000988]:sd s9, 192(ra)
Current Store : [0x8000098c] : sd t5, 200(ra) -- Store: [0x800033e8]:0x00000001FFFFFFFA




Last Coverpoint : ['rs1 : x31', 'rs2 : x29', 'rd : x23', 'rs2_h3_val == 16', 'rs2_h0_val == 32767', 'rs1_w1_val == -129', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800009b4]:KMMAWB2 s7, t6, t4
	-[0x800009b8]:sd s7, 208(ra)
Current Store : [0x800009bc] : sd t6, 216(ra) -- Store: [0x800033f8]:0xFFFFFF7FFFFFFFFD




Last Coverpoint : ['rs1 : x25', 'rs2 : x3', 'rd : x10', 'rs2_h3_val == 8', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x800009e4]:KMMAWB2 a0, s9, gp
	-[0x800009e8]:sd a0, 224(ra)
Current Store : [0x800009ec] : sd s9, 232(ra) -- Store: [0x80003408]:0x00000006F7FFFFFF




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == 21845', 'rs2_h0_val == -2049', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x80000a18]:KMMAWB2 t6, t5, t4
	-[0x80000a1c]:sd t6, 240(ra)
Current Store : [0x80000a20] : sd t5, 248(ra) -- Store: [0x80003418]:0xAAAAAAAA00000003




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == -513', 'rs2_h1_val == -1025', 'rs1_w1_val == 134217728', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000a48]:KMMAWB2 t6, t5, t4
	-[0x80000a4c]:sd t6, 256(ra)
Current Store : [0x80000a50] : sd t5, 264(ra) -- Store: [0x80003428]:0x0800000000200000




Last Coverpoint : ['rs2_h1_val == -2', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000a6c]:KMMAWB2 t6, t5, t4
	-[0x80000a70]:sd t6, 272(ra)
Current Store : [0x80000a74] : sd t5, 280(ra) -- Store: [0x80003438]:0xFFFFFFF8FFFFFDFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h0_val == 2', 'rs1_w1_val == 131072', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000aa0]:KMMAWB2 t6, t5, t4
	-[0x80000aa4]:sd t6, 288(ra)
Current Store : [0x80000aa8] : sd t5, 296(ra) -- Store: [0x80003448]:0x00020000FFFFFBFF




Last Coverpoint : ['rs2_h2_val == -21846', 'rs2_h1_val == -32768', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x80000ad0]:KMMAWB2 t6, t5, t4
	-[0x80000ad4]:sd t6, 304(ra)
Current Store : [0x80000ad8] : sd t5, 312(ra) -- Store: [0x80003458]:0xFFFFFFEFFBFFFFFF




Last Coverpoint : ['rs2_h2_val == 32767', 'rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80000b00]:KMMAWB2 t6, t5, t4
	-[0x80000b04]:sd t6, 320(ra)
Current Store : [0x80000b08] : sd t5, 328(ra) -- Store: [0x80003468]:0x0000020000000003




Last Coverpoint : ['rs2_h1_val == -2049', 'rs2_h0_val == 128', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000b30]:KMMAWB2 t6, t5, t4
	-[0x80000b34]:sd t6, 336(ra)
Current Store : [0x80000b38] : sd t5, 344(ra) -- Store: [0x80003478]:0x0000000500100000




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b5c]:KMMAWB2 t6, t5, t4
	-[0x80000b60]:sd t6, 352(ra)
Current Store : [0x80000b64] : sd t5, 360(ra) -- Store: [0x80003488]:0x4000000000080000




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b84]:KMMAWB2 t6, t5, t4
	-[0x80000b88]:sd t6, 368(ra)
Current Store : [0x80000b8c] : sd t5, 376(ra) -- Store: [0x80003498]:0xFFFFFFFC00040000




Last Coverpoint : ['rs2_h2_val == 16', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000bb4]:KMMAWB2 t6, t5, t4
	-[0x80000bb8]:sd t6, 384(ra)
Current Store : [0x80000bbc] : sd t5, 392(ra) -- Store: [0x800034a8]:0xFFFFFBFF00020000




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000be4]:KMMAWB2 t6, t5, t4
	-[0x80000be8]:sd t6, 400(ra)
Current Store : [0x80000bec] : sd t5, 408(ra) -- Store: [0x800034b8]:0xFFFEFFFF00004000




Last Coverpoint : ['rs1_w1_val == 2147483647', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000c20]:KMMAWB2 t6, t5, t4
	-[0x80000c24]:sd t6, 416(ra)
Current Store : [0x80000c28] : sd t5, 424(ra) -- Store: [0x800034c8]:0x7FFFFFFF00000800




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000c54]:KMMAWB2 t6, t5, t4
	-[0x80000c58]:sd t6, 432(ra)
Current Store : [0x80000c5c] : sd t5, 440(ra) -- Store: [0x800034d8]:0xFFF7FFFF00000200




Last Coverpoint : ['rs2_h3_val == 512', 'rs2_h2_val == -9', 'rs2_h1_val == -3', 'rs1_w1_val == 65536', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000c84]:KMMAWB2 t6, t5, t4
	-[0x80000c88]:sd t6, 448(ra)
Current Store : [0x80000c8c] : sd t5, 456(ra) -- Store: [0x800034e8]:0x0001000000000040




Last Coverpoint : ['rs1_w1_val == -32769', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000cb8]:KMMAWB2 t6, t5, t4
	-[0x80000cbc]:sd t6, 464(ra)
Current Store : [0x80000cc0] : sd t5, 472(ra) -- Store: [0x800034f8]:0xFFFF7FFF00000020




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000ce8]:KMMAWB2 t6, t5, t4
	-[0x80000cec]:sd t6, 480(ra)
Current Store : [0x80000cf0] : sd t5, 488(ra) -- Store: [0x80003508]:0xFFFFFFFC00000010




Last Coverpoint : ['rs2_h1_val == -513', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d18]:KMMAWB2 t6, t5, t4
	-[0x80000d1c]:sd t6, 496(ra)
Current Store : [0x80000d20] : sd t5, 504(ra) -- Store: [0x80003518]:0xFFFFFFFA00000008




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == -129', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000d48]:KMMAWB2 t6, t5, t4
	-[0x80000d4c]:sd t6, 512(ra)
Current Store : [0x80000d50] : sd t5, 520(ra) -- Store: [0x80003528]:0x0000000300000004




Last Coverpoint : ['rs1_w1_val == -33', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000d70]:KMMAWB2 t6, t5, t4
	-[0x80000d74]:sd t6, 528(ra)
Current Store : [0x80000d78] : sd t5, 536(ra) -- Store: [0x80003538]:0xFFFFFFDF00000002




Last Coverpoint : ['rs1_w1_val == -536870913', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000da4]:KMMAWB2 t6, t5, t4
	-[0x80000da8]:sd t6, 544(ra)
Current Store : [0x80000dac] : sd t5, 552(ra) -- Store: [0x80003548]:0xDFFFFFFF00000001




Last Coverpoint : ['opcode : kmmawb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -513', 'rs1_w1_val == -17', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000dd0]:KMMAWB2 t6, t5, t4
	-[0x80000dd4]:sd t6, 560(ra)
Current Store : [0x80000dd8] : sd t5, 568(ra) -- Store: [0x80003558]:0xFFFFFFEF00000000




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e00]:KMMAWB2 t6, t5, t4
	-[0x80000e04]:sd t6, 576(ra)
Current Store : [0x80000e08] : sd t5, 584(ra) -- Store: [0x80003568]:0xFFFEFFFFFFFFFFFF




Last Coverpoint : ['rs2_h2_val == -8193', 'rs1_w1_val == 33554432', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000e34]:KMMAWB2 t6, t5, t4
	-[0x80000e38]:sd t6, 592(ra)
Current Store : [0x80000e3c] : sd t5, 600(ra) -- Store: [0x80003578]:0x02000000FFFFFFFB




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x80000e6c]:KMMAWB2 t6, t5, t4
	-[0x80000e70]:sd t6, 608(ra)
Current Store : [0x80000e74] : sd t5, 616(ra) -- Store: [0x80003588]:0xFFBFFFFFFFFEFFFF




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == -5', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80000e98]:KMMAWB2 t6, t5, t4
	-[0x80000e9c]:sd t6, 624(ra)
Current Store : [0x80000ea0] : sd t5, 632(ra) -- Store: [0x80003598]:0x8000000002000000




Last Coverpoint : ['rs2_h2_val == -5']
Last Code Sequence : 
	-[0x80000ec4]:KMMAWB2 t6, t5, t4
	-[0x80000ec8]:sd t6, 640(ra)
Current Store : [0x80000ecc] : sd t5, 648(ra) -- Store: [0x800035a8]:0x00000007FFFFFFF9




Last Coverpoint : ['rs2_h2_val == 8192']
Last Code Sequence : 
	-[0x80000ef0]:KMMAWB2 t6, t5, t4
	-[0x80000ef4]:sd t6, 656(ra)
Current Store : [0x80000ef8] : sd t5, 664(ra) -- Store: [0x800035b8]:0x0080000002000000




Last Coverpoint : ['rs2_h2_val == 4096', 'rs2_h0_val == -32768', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80000f20]:KMMAWB2 t6, t5, t4
	-[0x80000f24]:sd t6, 672(ra)
Current Store : [0x80000f28] : sd t5, 680(ra) -- Store: [0x800035c8]:0xBFFFFFFF00000005




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x80000f54]:KMMAWB2 t6, t5, t4
	-[0x80000f58]:sd t6, 688(ra)
Current Store : [0x80000f5c] : sd t5, 696(ra) -- Store: [0x800035d8]:0x4000000000080000




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000f84]:KMMAWB2 t6, t5, t4
	-[0x80000f88]:sd t6, 704(ra)
Current Store : [0x80000f8c] : sd t5, 712(ra) -- Store: [0x800035e8]:0xFFEFFFFF00400000




Last Coverpoint : ['rs2_h2_val == 128', 'rs1_w1_val == -33554433', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000fbc]:KMMAWB2 t6, t5, t4
	-[0x80000fc0]:sd t6, 720(ra)
Current Store : [0x80000fc4] : sd t5, 728(ra) -- Store: [0x800035f8]:0xFDFFFFFFFFBFFFFF




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x80000fec]:KMMAWB2 t6, t5, t4
	-[0x80000ff0]:sd t6, 736(ra)
Current Store : [0x80000ff4] : sd t5, 744(ra) -- Store: [0x80003608]:0x0020000000000010




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == -16385', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001014]:KMMAWB2 t6, t5, t4
	-[0x80001018]:sd t6, 752(ra)
Current Store : [0x8000101c] : sd t5, 760(ra) -- Store: [0x80003618]:0x00000000FFFFFFF7




Last Coverpoint : ['opcode : kmmawb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 8', 'rs2_h2_val == 0', 'rs2_h1_val == 32', 'rs2_h0_val == -2049', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x8000103c]:KMMAWB2 t6, t5, t4
	-[0x80001040]:sd t6, 768(ra)
Current Store : [0x80001044] : sd t5, 776(ra) -- Store: [0x80003628]:0xFFFFFFFA10000000




Last Coverpoint : ['rs2_h1_val == -21846', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x8000106c]:KMMAWB2 t6, t5, t4
	-[0x80001070]:sd t6, 784(ra)
Current Store : [0x80001074] : sd t5, 792(ra) -- Store: [0x80003638]:0xFFFFFEFFFFFFFBFF




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x80001098]:KMMAWB2 t6, t5, t4
	-[0x8000109c]:sd t6, 800(ra)
Current Store : [0x800010a0] : sd t5, 808(ra) -- Store: [0x80003648]:0x0000000700000002




Last Coverpoint : ['rs2_h1_val == -33', 'rs1_w1_val == -1', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800010c4]:KMMAWB2 t6, t5, t4
	-[0x800010c8]:sd t6, 816(ra)
Current Store : [0x800010cc] : sd t5, 824(ra) -- Store: [0x80003658]:0xFFFFFFFFFFF7FFFF




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800010f0]:KMMAWB2 t6, t5, t4
	-[0x800010f4]:sd t6, 832(ra)
Current Store : [0x800010f8] : sd t5, 840(ra) -- Store: [0x80003668]:0x0001000000000002




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80001120]:KMMAWB2 t6, t5, t4
	-[0x80001124]:sd t6, 848(ra)
Current Store : [0x80001128] : sd t5, 856(ra) -- Store: [0x80003678]:0xAAAAAAAAFFFFFFF9




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80001154]:KMMAWB2 t6, t5, t4
	-[0x80001158]:sd t6, 864(ra)
Current Store : [0x8000115c] : sd t5, 872(ra) -- Store: [0x80003688]:0x20000000C0000000




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x8000117c]:KMMAWB2 t6, t5, t4
	-[0x80001180]:sd t6, 880(ra)
Current Store : [0x80001184] : sd t5, 888(ra) -- Store: [0x80003698]:0x0000100000000080




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800011a8]:KMMAWB2 t6, t5, t4
	-[0x800011ac]:sd t6, 896(ra)
Current Store : [0x800011b0] : sd t5, 904(ra) -- Store: [0x800036a8]:0x0000000710000000




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_w1_val == -16385', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800011e8]:KMMAWB2 t6, t5, t4
	-[0x800011ec]:sd t6, 912(ra)
Current Store : [0x800011f0] : sd t5, 920(ra) -- Store: [0x800036b8]:0xFFFFBFFFFFFFBFFF




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80001228]:KMMAWB2 t6, t5, t4
	-[0x8000122c]:sd t6, 928(ra)
Current Store : [0x80001230] : sd t5, 936(ra) -- Store: [0x800036c8]:0x55555555C0000000




Last Coverpoint : ['rs1_w1_val == -134217729', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001254]:KMMAWB2 t6, t5, t4
	-[0x80001258]:sd t6, 944(ra)
Current Store : [0x8000125c] : sd t5, 952(ra) -- Store: [0x800036d8]:0xF7FFFFFF40000000




Last Coverpoint : ['rs1_w1_val == -67108865', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001294]:KMMAWB2 t6, t5, t4
	-[0x80001298]:sd t6, 960(ra)
Current Store : [0x8000129c] : sd t5, 968(ra) -- Store: [0x800036e8]:0xFBFFFFFFFFEFFFFF




Last Coverpoint : ['rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x800012bc]:KMMAWB2 t6, t5, t4
	-[0x800012c0]:sd t6, 976(ra)
Current Store : [0x800012c4] : sd t5, 984(ra) -- Store: [0x800036f8]:0xFEFFFFFF00000006




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x800012ec]:KMMAWB2 t6, t5, t4
	-[0x800012f0]:sd t6, 992(ra)
Current Store : [0x800012f4] : sd t5, 1000(ra) -- Store: [0x80003708]:0xFF7FFFFF00000005




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80001320]:KMMAWB2 t6, t5, t4
	-[0x80001324]:sd t6, 1008(ra)
Current Store : [0x80001328] : sd t5, 1016(ra) -- Store: [0x80003718]:0xFFDFFFFF00000020




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80001354]:KMMAWB2 t6, t5, t4
	-[0x80001358]:sd t6, 1024(ra)
Current Store : [0x8000135c] : sd t5, 1032(ra) -- Store: [0x80003728]:0xFFFFEFFF00000002




Last Coverpoint : ['rs1_w1_val == -65', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001384]:KMMAWB2 t6, t5, t4
	-[0x80001388]:sd t6, 1040(ra)
Current Store : [0x8000138c] : sd t5, 1048(ra) -- Store: [0x80003738]:0xFFFFFFBFFEFFFFFF




Last Coverpoint : ['rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800013b0]:KMMAWB2 t6, t5, t4
	-[0x800013b4]:sd t6, 1056(ra)
Current Store : [0x800013b8] : sd t5, 1064(ra) -- Store: [0x80003748]:0xFFFFFFFB00400000




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x800013e0]:KMMAWB2 t6, t5, t4
	-[0x800013e4]:sd t6, 1072(ra)
Current Store : [0x800013e8] : sd t5, 1080(ra) -- Store: [0x80003758]:0xFFFFFFFDFFFFFFFF




Last Coverpoint : ['rs1_w1_val == 16777216', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001410]:KMMAWB2 t6, t5, t4
	-[0x80001414]:sd t6, 1088(ra)
Current Store : [0x80001418] : sd t5, 1096(ra) -- Store: [0x80003768]:0x0100000008000000




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80001444]:KMMAWB2 t6, t5, t4
	-[0x80001448]:sd t6, 1104(ra)
Current Store : [0x8000144c] : sd t5, 1112(ra) -- Store: [0x80003778]:0x00400000FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001474]:KMMAWB2 t6, t5, t4
	-[0x80001478]:sd t6, 1120(ra)
Current Store : [0x8000147c] : sd t5, 1128(ra) -- Store: [0x80003788]:0x0008000001000000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_w1_val == 262144', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800014ac]:KMMAWB2 t6, t5, t4
	-[0x800014b0]:sd t6, 1136(ra)
Current Store : [0x800014b4] : sd t5, 1144(ra) -- Store: [0x80003798]:0x00040000FFFFF7FF




Last Coverpoint : ['rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800014d4]:KMMAWB2 t6, t5, t4
	-[0x800014d8]:sd t6, 1152(ra)
Current Store : [0x800014dc] : sd t5, 1160(ra) -- Store: [0x800037a8]:0x0000400000200000




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80001508]:KMMAWB2 t6, t5, t4
	-[0x8000150c]:sd t6, 1168(ra)
Current Store : [0x80001510] : sd t5, 1176(ra) -- Store: [0x800037b8]:0x00002000F7FFFFFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001530]:KMMAWB2 t6, t5, t4
	-[0x80001534]:sd t6, 1184(ra)
Current Store : [0x80001538] : sd t5, 1192(ra) -- Store: [0x800037c8]:0x00000400FFFFFFF7




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80001560]:KMMAWB2 t6, t5, t4
	-[0x80001564]:sd t6, 1200(ra)
Current Store : [0x80001568] : sd t5, 1208(ra) -- Store: [0x800037d8]:0x0000010000004000




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80001590]:KMMAWB2 t6, t5, t4
	-[0x80001594]:sd t6, 1216(ra)
Current Store : [0x80001598] : sd t5, 1224(ra) -- Store: [0x800037e8]:0x0000008000000008




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x800015c0]:KMMAWB2 t6, t5, t4
	-[0x800015c4]:sd t6, 1232(ra)
Current Store : [0x800015c8] : sd t5, 1240(ra) -- Store: [0x800037f8]:0x00000040F7FFFFFF




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800015ec]:KMMAWB2 t6, t5, t4
	-[0x800015f0]:sd t6, 1248(ra)
Current Store : [0x800015f4] : sd t5, 1256(ra) -- Store: [0x80003808]:0x0000002000400000




Last Coverpoint : ['rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80001614]:KMMAWB2 t6, t5, t4
	-[0x80001618]:sd t6, 1264(ra)
Current Store : [0x8000161c] : sd t5, 1272(ra) -- Store: [0x80003818]:0x00000010FFFFFFFE




Last Coverpoint : ['rs2_h1_val == -9', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80001640]:KMMAWB2 t6, t5, t4
	-[0x80001644]:sd t6, 1280(ra)
Current Store : [0x80001648] : sd t5, 1288(ra) -- Store: [0x80003828]:0x0000000800000001




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001670]:KMMAWB2 t6, t5, t4
	-[0x80001674]:sd t6, 1296(ra)
Current Store : [0x80001678] : sd t5, 1304(ra) -- Store: [0x80003838]:0x0000000200000080




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800016ac]:KMMAWB2 t6, t5, t4
	-[0x800016b0]:sd t6, 1312(ra)
Current Store : [0x800016b4] : sd t5, 1320(ra) -- Store: [0x80003848]:0xFFFFFFF8AAAAAAAA




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800016e4]:KMMAWB2 t6, t5, t4
	-[0x800016e8]:sd t6, 1328(ra)
Current Store : [0x800016ec] : sd t5, 1336(ra) -- Store: [0x80003858]:0x002000007FFFFFFF




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001714]:KMMAWB2 t6, t5, t4
	-[0x80001718]:sd t6, 1344(ra)
Current Store : [0x8000171c] : sd t5, 1352(ra) -- Store: [0x80003868]:0x00000020BFFFFFFF




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001750]:KMMAWB2 t6, t5, t4
	-[0x80001754]:sd t6, 1360(ra)
Current Store : [0x80001758] : sd t5, 1368(ra) -- Store: [0x80003878]:0xAAAAAAAAEFFFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001784]:KMMAWB2 t6, t5, t4
	-[0x80001788]:sd t6, 1376(ra)
Current Store : [0x8000178c] : sd t5, 1384(ra) -- Store: [0x80003888]:0x00000020FDFFFFFF




Last Coverpoint : ['rs2_h1_val == 2048', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x800017bc]:KMMAWB2 t6, t5, t4
	-[0x800017c0]:sd t6, 1392(ra)
Current Store : [0x800017c4] : sd t5, 1400(ra) -- Store: [0x80003898]:0x0000800010000000




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800017e4]:KMMAWB2 t6, t5, t4
	-[0x800017e8]:sd t6, 1408(ra)
Current Store : [0x800017ec] : sd t5, 1416(ra) -- Store: [0x800038a8]:0x0100000000000400




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001818]:KMMAWB2 t6, t5, t4
	-[0x8000181c]:sd t6, 1424(ra)
Current Store : [0x80001820] : sd t5, 1432(ra) -- Store: [0x800038b8]:0x00000003FFDFFFFF




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80001848]:KMMAWB2 t6, t5, t4
	-[0x8000184c]:sd t6, 1440(ra)
Current Store : [0x80001850] : sd t5, 1448(ra) -- Store: [0x800038c8]:0x0080000000000002




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x8000187c]:KMMAWB2 t6, t5, t4
	-[0x80001880]:sd t6, 1456(ra)
Current Store : [0x80001884] : sd t5, 1464(ra) -- Store: [0x800038d8]:0x3FFFFFFFFFFF7FFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800018b8]:KMMAWB2 t6, t5, t4
	-[0x800018bc]:sd t6, 1472(ra)
Current Store : [0x800018c0] : sd t5, 1480(ra) -- Store: [0x800038e8]:0xC0000000FFFFDFFF




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800018e8]:KMMAWB2 t6, t5, t4
	-[0x800018ec]:sd t6, 1488(ra)
Current Store : [0x800018f0] : sd t5, 1496(ra) -- Store: [0x800038f8]:0x00000007FFFFFEFF




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x8000191c]:KMMAWB2 t6, t5, t4
	-[0x80001920]:sd t6, 1504(ra)
Current Store : [0x80001924] : sd t5, 1512(ra) -- Store: [0x80003908]:0x00000020FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001958]:KMMAWB2 t6, t5, t4
	-[0x8000195c]:sd t6, 1520(ra)
Current Store : [0x80001960] : sd t5, 1528(ra) -- Store: [0x80003918]:0x10000000FFFFFFEF




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80001980]:KMMAWB2 t6, t5, t4
	-[0x80001984]:sd t6, 1536(ra)
Current Store : [0x80001988] : sd t5, 1544(ra) -- Store: [0x80003928]:0x0040000080000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800019a8]:KMMAWB2 t6, t5, t4
	-[0x800019ac]:sd t6, 1552(ra)
Current Store : [0x800019b0] : sd t5, 1560(ra) -- Store: [0x80003938]:0x0200000020000000




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800019d4]:KMMAWB2 t6, t5, t4
	-[0x800019d8]:sd t6, 1568(ra)
Current Store : [0x800019dc] : sd t5, 1576(ra) -- Store: [0x80003948]:0x80000000FFFFFFBF




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001a08]:KMMAWB2 t6, t5, t4
	-[0x80001a0c]:sd t6, 1584(ra)
Current Store : [0x80001a10] : sd t5, 1592(ra) -- Store: [0x80003958]:0xFDFFFFFF04000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001a38]:KMMAWB2 t6, t5, t4
	-[0x80001a3c]:sd t6, 1600(ra)
Current Store : [0x80001a40] : sd t5, 1608(ra) -- Store: [0x80003968]:0xFFFEFFFF00800000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001a6c]:KMMAWB2 t6, t5, t4
	-[0x80001a70]:sd t6, 1616(ra)
Current Store : [0x80001a74] : sd t5, 1624(ra) -- Store: [0x80003978]:0xFFFFFBFFFF7FFFFF




Last Coverpoint : ['rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80001a9c]:KMMAWB2 t6, t5, t4
	-[0x80001aa0]:sd t6, 1632(ra)
Current Store : [0x80001aa4] : sd t5, 1640(ra) -- Store: [0x80003988]:0xFFFDFFFF80000000




Last Coverpoint : ['opcode : kmmawb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == -129', 'rs2_h1_val == -257', 'rs2_h0_val == -65', 'rs1_w1_val == -2049', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001acc]:KMMAWB2 t6, t5, t4
	-[0x80001ad0]:sd t6, 1648(ra)
Current Store : [0x80001ad4] : sd t5, 1656(ra) -- Store: [0x80003998]:0xFFFFF7FFFFFFFFDF





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

|s.no|            signature             |                                                                                                                   coverpoints                                                                                                                   |                                  code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFF76D54EFF76D6D4|- opcode : kmmawb2<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs2_h3_val == 4<br> - rs2_h2_val == -257<br> - rs2_h1_val == 32<br> - rs2_h0_val == -33<br>                                                        |[0x800003c8]:KMMAWB2 sp, s11, s11<br> [0x800003cc]:sd sp, 0(tp)<br>     |
|   2|[0x80003220]<br>0xA9FF5502FFF16000|- rs1 : x6<br> - rs2 : x6<br> - rd : x6<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 256<br> - rs2_h0_val == 16384<br>                                                                                                  |[0x80000400]:KMMAWB2 t1, t1, t1<br> [0x80000404]:sd t1, 16(tp)<br>      |
|   3|[0x80003230]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x26<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -129<br> - rs2_h1_val == -257<br> - rs2_h0_val == -65<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -33<br> |[0x80000430]:KMMAWB2 zero, t2, s10<br> [0x80000434]:sd zero, 32(tp)<br> |
|   4|[0x80003240]<br>0x000003FFDFFE7FFE|- rs1 : x16<br> - rs2 : x25<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 128<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -536870913<br>                                       |[0x80000464]:KMMAWB2 a6, a6, s9<br> [0x80000468]:sd a6, 48(tp)<br>      |
|   5|[0x80003250]<br>0xBFFF200440000408|- rs1 : x5<br> - rs2 : x17<br> - rd : x17<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 4<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 1024<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 256<br>                    |[0x80000494]:KMMAWB2 a7, t0, a7<br> [0x80000498]:sd a7, 64(tp)<br>      |
|   6|[0x80003260]<br>0x5BFDDB915BFD7B7C|- rs1 : x2<br> - rs2 : x9<br> - rd : x8<br> - rs2_h3_val == -8193<br> - rs2_h1_val == 512<br> - rs1_w1_val == -65537<br> - rs1_w0_val == -134217729<br>                                                                                          |[0x800004c4]:KMMAWB2 fp, sp, s1<br> [0x800004c8]:sd fp, 80(tp)<br>      |
|   7|[0x80003270]<br>0xD5BFD997D5BF7DB7|- rs1 : x8<br> - rs2 : x13<br> - rd : x12<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -33<br> - rs2_h1_val == 0<br> - rs2_h0_val == -3<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 268435456<br>                                           |[0x800004f4]:KMMAWB2 a2, fp, a3<br> [0x800004f8]:sd a2, 96(tp)<br>      |
|   8|[0x80003280]<br>0xFECDBEACFEEDBEED|- rs1 : x3<br> - rs2 : x12<br> - rd : x1<br> - rs2_h3_val == -2049<br> - rs2_h1_val == 256<br> - rs2_h0_val == 512<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 4096<br>                                                                   |[0x8000052c]:KMMAWB2 ra, gp, a2<br> [0x80000530]:sd ra, 112(tp)<br>     |
|   9|[0x80003290]<br>0xFBB6FAB6FBB702B7|- rs1 : x9<br> - rs2 : x21<br> - rd : x31<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 32<br> - rs2_h0_val == 4<br> - rs1_w1_val == -513<br> - rs1_w0_val == 16777216<br>                                                                       |[0x8000055c]:KMMAWB2 t6, s1, s5<br> [0x80000560]:sd t6, 128(tp)<br>     |
|  10|[0x800032a0]<br>0xF56FF76DF56FF36C|- rs1 : x18<br> - rs2 : x1<br> - rd : x14<br> - rs2_h3_val == -513<br> - rs2_h0_val == -4097<br> - rs1_w1_val == -1025<br> - rs1_w0_val == 8192<br>                                                                                              |[0x8000058c]:KMMAWB2 a4, s2, ra<br> [0x80000590]:sd a4, 144(tp)<br>     |
|  11|[0x800032b0]<br>0xDB7D5BFCDB7D5BEC|- rs1 : x17<br> - rs2 : x10<br> - rd : x24<br> - rs2_h3_val == -257<br> - rs2_h2_val == 1<br> - rs2_h0_val == -513<br> - rs1_w1_val == -9<br> - rs1_w0_val == 1024<br>                                                                           |[0x800005bc]:KMMAWB2 s8, a7, a0<br> [0x800005c0]:sd s8, 160(tp)<br>     |
|  12|[0x800032c0]<br>0xEFF5553E0000FFF5|- rs1 : x1<br> - rs2 : x22<br> - rd : x13<br> - rs2_h3_val == -129<br> - rs2_h2_val == 21845<br> - rs2_h1_val == -8193<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 32768<br>                                                                |[0x800005ec]:KMMAWB2 a3, ra, s6<br> [0x800005f0]:sd a3, 176(tp)<br>     |
|  13|[0x800032d0]<br>0xEFFFFFFF00001000|- rs1 : x0<br> - rs2 : x20<br> - rd : x3<br> - rs2_h3_val == -65<br> - rs2_h0_val == -5<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                                          |[0x8000061c]:KMMAWB2 gp, zero, s4<br> [0x80000620]:sd gp, 192(tp)<br>   |
|  14|[0x800032e0]<br>0xFBFF0029FFF7F404|- rs1 : x24<br> - rs2 : x28<br> - rd : x21<br> - rs2_h3_val == -33<br> - rs2_h2_val == -32768<br> - rs1_w0_val == 33554432<br>                                                                                                                   |[0x80000648]:KMMAWB2 s5, s8, t3<br> [0x8000064c]:sd s5, 208(tp)<br>     |
|  15|[0x800032f0]<br>0xFFFFB6FFFFFFFFDF|- rs1 : x15<br> - rs2 : x14<br> - rd : x7<br> - rs2_h3_val == -17<br> - rs2_h2_val == -65<br> - rs2_h1_val == 8<br> - rs1_w1_val == 8388608<br>                                                                                                  |[0x80000678]:KMMAWB2 t2, a5, a4<br> [0x8000067c]:sd t2, 224(tp)<br>     |
|  16|[0x80003300]<br>0x1FBF000400057FF9|- rs1 : x23<br> - rs2 : x2<br> - rd : x20<br> - rs2_h3_val == -9<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -16385<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 65536<br>                                     |[0x800006ac]:KMMAWB2 s4, s7, sp<br> [0x800006b0]:sd s4, 240(tp)<br>     |
|  17|[0x80003310]<br>0x0000BDFF01000000|- rs1 : x11<br> - rs2 : x19<br> - rd : x9<br> - rs2_h3_val == -5<br> - rs2_h0_val == -129<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == -65<br>                                                                                              |[0x800006e0]:KMMAWB2 s1, a1, s3<br> [0x800006e4]:sd s1, 256(tp)<br>     |
|  18|[0x80003320]<br>0x5555FF7FFEFFFF7D|- rs1 : x12<br> - rs2 : x4<br> - rd : x26<br> - rs2_h3_val == -3<br> - rs2_h1_val == -17<br> - rs1_w1_val == -2<br>                                                                                                                              |[0x80000710]:KMMAWB2 s10, a2, tp<br> [0x80000714]:sd s10, 0(ra)<br>     |
|  19|[0x80003330]<br>0x0FFFFFFEFEFFFFBF|- rs1 : x20<br> - rs2 : x23<br> - rd : x11<br> - rs1_w0_val == -2147483648<br> - rs2_h3_val == -2<br> - rs2_h0_val == 256<br> - rs1_w1_val == 4<br>                                                                                              |[0x8000073c]:KMMAWB2 a1, s4, s7<br> [0x80000740]:sd a1, 16(ra)<br>      |
|  20|[0x80003340]<br>0x04000000FFFE00FF|- rs1 : x28<br> - rs2 : x7<br> - rd : x5<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 4<br> - rs2_h0_val == 64<br> - rs1_w0_val == -67108865<br>                                                                      |[0x8000076c]:KMMAWB2 t0, t3, t2<br> [0x80000770]:sd t0, 32(ra)<br>      |
|  21|[0x80003350]<br>0xF76DF56DF76DF56F|- rs1 : x21<br> - rs2 : x15<br> - rd : x30<br> - rs2_h3_val == 16384<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 0<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 1431655765<br>                                                                 |[0x800007a0]:KMMAWB2 t5, s5, a5<br> [0x800007a4]:sd t5, 48(ra)<br>      |
|  22|[0x80003360]<br>0xFFFB01160005FF7E|- rs1 : x14<br> - rs2 : x11<br> - rd : x19<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -17<br> - rs2_h0_val == -9<br> - rs1_w1_val == -524289<br> - rs1_w0_val == 128<br>                                                                       |[0x800007d4]:KMMAWB2 s3, a4, a1<br> [0x800007d8]:sd s3, 64(ra)<br>      |
|  23|[0x80003370]<br>0xFFFE000FFFEFFFDE|- rs1 : x13<br> - rs2 : x16<br> - rd : x4<br> - rs2_h3_val == 4096<br> - rs1_w1_val == -262145<br> - rs1_w0_val == -4097<br>                                                                                                                     |[0x8000080c]:KMMAWB2 tp, a3, a6<br> [0x80000810]:sd tp, 80(ra)<br>      |
|  24|[0x80003380]<br>0x0004FDDE0020FFDE|- rs1 : x26<br> - rs2 : x18<br> - rd : x27<br> - rs2_h3_val == 2048<br> - rs2_h1_val == 2<br> - rs2_h0_val == 1<br> - rs1_w0_val == -2<br>                                                                                                       |[0x8000083c]:KMMAWB2 s11, s10, s2<br> [0x80000840]:sd s11, 96(ra)<br>   |
|  25|[0x80003390]<br>0x3FFFDFC40FFFFF7F|- rs1 : x29<br> - rs2 : x24<br> - rd : x15<br> - rs2_h3_val == 1024<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == -65537<br>                                                                                                                   |[0x80000878]:KMMAWB2 a5, t4, s8<br> [0x8000087c]:sd a5, 112(ra)<br>     |
|  26|[0x800033a0]<br>0x00200000FFFEFFFF|- rs1 : x19<br> - rs2 : x0<br> - rd : x29<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs1_w1_val == -257<br>                                                                                                                               |[0x800008a8]:KMMAWB2 t4, s3, zero<br> [0x800008ac]:sd t4, 128(ra)<br>   |
|  27|[0x800033b0]<br>0xFFFFC006FC000000|- rs1 : x22<br> - rs2 : x8<br> - rd : x28<br> - rs2_h3_val == 256<br> - rs1_w1_val == 32768<br>                                                                                                                                                  |[0x800008e0]:KMMAWB2 t3, s6, fp<br> [0x800008e4]:sd t3, 144(ra)<br>     |
|  28|[0x800033c0]<br>0x000081000001F007|- rs1 : x4<br> - rs2 : x5<br> - rd : x22<br> - rs2_h3_val == 128<br> - rs2_h2_val == -2<br> - rs2_h1_val == -65<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -262145<br>                                                                     |[0x80000918]:KMMAWB2 s6, tp, t0<br> [0x8000091c]:sd s6, 160(ra)<br>     |
|  29|[0x800033d0]<br>0x07FF400900020029|- rs1 : x10<br> - rs2 : x30<br> - rd : x18<br> - rs2_h3_val == 64<br> - rs2_h2_val == -3<br> - rs2_h1_val == 8192<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == -131073<br>                                                                  |[0x80000954]:KMMAWB2 s2, a0, t5<br> [0x80000958]:sd s2, 176(ra)<br>     |
|  30|[0x800033e0]<br>0x7FFFBFFF00800002|- rs1 : x30<br> - rs2 : x31<br> - rd : x25<br> - rs2_h3_val == 32<br> - rs2_h2_val == 64<br> - rs2_h0_val == 21845<br> - rs1_w1_val == 1<br>                                                                                                     |[0x80000984]:KMMAWB2 s9, t5, t6<br> [0x80000988]:sd s9, 192(ra)<br>     |
|  31|[0x800033f0]<br>0xFFFEC000DFFF00FD|- rs1 : x31<br> - rs2 : x29<br> - rd : x23<br> - rs2_h3_val == 16<br> - rs2_h0_val == 32767<br> - rs1_w1_val == -129<br> - rs1_w0_val == -3<br>                                                                                                  |[0x800009b4]:KMMAWB2 s7, t6, t4<br> [0x800009b8]:sd s7, 208(ra)<br>     |
|  32|[0x80003400]<br>0x2000000005535FFF|- rs1 : x25<br> - rs2 : x3<br> - rd : x10<br> - rs2_h3_val == 8<br> - rs2_h0_val == -21846<br>                                                                                                                                                   |[0x800009e4]:KMMAWB2 a0, s9, gp<br> [0x800009e8]:sd a0, 224(ra)<br>     |
|  33|[0x80003410]<br>0xFFFCAA29FFFFFFFC|- rs2_h3_val == 2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -2049<br> - rs1_w1_val == -1431655766<br>                                                                                                                                        |[0x80000a18]:KMMAWB2 t6, t5, t4<br> [0x80000a1c]:sd t6, 240(ra)<br>     |
|  34|[0x80003420]<br>0xFFDC9A29FFEFFFFC|- rs2_h3_val == 1<br> - rs2_h2_val == -513<br> - rs2_h1_val == -1025<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 2097152<br>                                                                                                               |[0x80000a48]:KMMAWB2 t6, t5, t4<br> [0x80000a4c]:sd t6, 256(ra)<br>     |
|  35|[0x80003430]<br>0xFFDC9A31FFEFFFFC|- rs2_h1_val == -2<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                  |[0x80000a6c]:KMMAWB2 t6, t5, t4<br> [0x80000a70]:sd t6, 272(ra)<br>     |
|  36|[0x80003440]<br>0xFFDC9E31FFEFFFFB|- rs2_h3_val == -1<br> - rs2_h0_val == 2<br> - rs1_w1_val == 131072<br> - rs1_w0_val == -1025<br>                                                                                                                                                |[0x80000aa0]:KMMAWB2 t6, t5, t4<br> [0x80000aa4]:sd t6, 288(ra)<br>     |
|  37|[0x80003450]<br>0xFFDC9E3C000007FB|- rs2_h2_val == -21846<br> - rs2_h1_val == -32768<br> - rs1_w1_val == -17<br>                                                                                                                                                                    |[0x80000ad0]:KMMAWB2 t6, t5, t4<br> [0x80000ad4]:sd t6, 304(ra)<br>     |
|  38|[0x80003460]<br>0xFFDCA03B000007FA|- rs2_h2_val == 32767<br> - rs1_w1_val == 512<br>                                                                                                                                                                                                |[0x80000b00]:KMMAWB2 t6, t5, t4<br> [0x80000b04]:sd t6, 320(ra)<br>     |
|  39|[0x80003470]<br>0xFFDCA03A000017FA|- rs2_h1_val == -2049<br> - rs2_h0_val == 128<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                    |[0x80000b30]:KMMAWB2 t6, t5, t4<br> [0x80000b34]:sd t6, 336(ra)<br>     |
|  40|[0x80003480]<br>0xFFDB203A000017AA|- rs2_h1_val == -1<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                |[0x80000b5c]:KMMAWB2 t6, t5, t4<br> [0x80000b60]:sd t6, 352(ra)<br>     |
|  41|[0x80003490]<br>0xFFDB20390000179A|- rs2_h0_val == -2<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                |[0x80000b84]:KMMAWB2 t6, t5, t4<br> [0x80000b88]:sd t6, 368(ra)<br>     |
|  42|[0x800034a0]<br>0xFFDB203800000F96|- rs2_h2_val == 16<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                |[0x80000bb4]:KMMAWB2 t6, t5, t4<br> [0x80000bb8]:sd t6, 384(ra)<br>     |
|  43|[0x800034b0]<br>0xFFDB213A00000D95|- rs2_h0_val == -1025<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                              |[0x80000be4]:KMMAWB2 t6, t5, t4<br> [0x80000be8]:sd t6, 400(ra)<br>     |
|  44|[0x800034c0]<br>0xFFD7213A00000D90|- rs1_w1_val == 2147483647<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                          |[0x80000c20]:KMMAWB2 t6, t5, t4<br> [0x80000c24]:sd t6, 416(ra)<br>     |
|  45|[0x800034d0]<br>0xFFD7234A00000D94|- rs2_h1_val == 16<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                   |[0x80000c54]:KMMAWB2 t6, t5, t4<br> [0x80000c58]:sd t6, 432(ra)<br>     |
|  46|[0x800034e0]<br>0xFFD7233800000D93|- rs2_h3_val == 512<br> - rs2_h2_val == -9<br> - rs2_h1_val == -3<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 64<br>                                                                                                                           |[0x80000c84]:KMMAWB2 t6, t5, t4<br> [0x80000c88]:sd t6, 448(ra)<br>     |
|  47|[0x800034f0]<br>0xFFD7633800000D92|- rs1_w1_val == -32769<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                |[0x80000cb8]:KMMAWB2 t6, t5, t4<br> [0x80000cbc]:sd t6, 464(ra)<br>     |
|  48|[0x80003500]<br>0xFFD7633800000D91|- rs1_w0_val == 16<br>                                                                                                                                                                                                                           |[0x80000ce8]:KMMAWB2 t6, t5, t4<br> [0x80000cec]:sd t6, 480(ra)<br>     |
|  49|[0x80003510]<br>0xFFD7633800000D91|- rs2_h1_val == -513<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                   |[0x80000d18]:KMMAWB2 t6, t5, t4<br> [0x80000d1c]:sd t6, 496(ra)<br>     |
|  50|[0x80003520]<br>0xFFD7633700000D91|- rs2_h2_val == -2049<br> - rs2_h1_val == -129<br> - rs1_w0_val == 4<br>                                                                                                                                                                         |[0x80000d48]:KMMAWB2 t6, t5, t4<br> [0x80000d4c]:sd t6, 512(ra)<br>     |
|  51|[0x80003530]<br>0xFFD7633600000D91|- rs1_w1_val == -33<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                    |[0x80000d70]:KMMAWB2 t6, t5, t4<br> [0x80000d74]:sd t6, 528(ra)<br>     |
|  52|[0x80003540]<br>0xFFD6633500000D90|- rs1_w1_val == -536870913<br> - rs1_w0_val == 1<br>                                                                                                                                                                                             |[0x80000da4]:KMMAWB2 t6, t5, t4<br> [0x80000da8]:sd t6, 544(ra)<br>     |
|  53|[0x80003560]<br>0xFFD6633600000D90|- rs2_h2_val == -1<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                    |[0x80000e00]:KMMAWB2 t6, t5, t4<br> [0x80000e04]:sd t6, 576(ra)<br>     |
|  54|[0x80003570]<br>0xFF565F3600000D8F|- rs2_h2_val == -8193<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == -5<br>                                                                                                                                                                    |[0x80000e34]:KMMAWB2 t6, t5, t4<br> [0x80000e38]:sd t6, 592(ra)<br>     |
|  55|[0x80003580]<br>0xFF5E5FB60000058E|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                        |[0x80000e6c]:KMMAWB2 t6, t5, t4<br> [0x80000e70]:sd t6, 608(ra)<br>     |
|  56|[0x80003590]<br>0x035F5FB6FFFFF18E|- rs2_h2_val == -1025<br> - rs2_h1_val == -5<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                 |[0x80000e98]:KMMAWB2 t6, t5, t4<br> [0x80000e9c]:sd t6, 624(ra)<br>     |
|  57|[0x800035a0]<br>0x035F5FB5FFFFF18E|- rs2_h2_val == -5<br>                                                                                                                                                                                                                           |[0x80000ec4]:KMMAWB2 t6, t5, t4<br> [0x80000ec8]:sd t6, 640(ra)<br>     |
|  58|[0x800035b0]<br>0x037F5FB50007F18E|- rs2_h2_val == 8192<br>                                                                                                                                                                                                                         |[0x80000ef0]:KMMAWB2 t6, t5, t4<br> [0x80000ef4]:sd t6, 656(ra)<br>     |
|  59|[0x800035c0]<br>0xFB7F5FB40007F189|- rs2_h2_val == 4096<br> - rs2_h0_val == -32768<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                              |[0x80000f20]:KMMAWB2 t6, t5, t4<br> [0x80000f24]:sd t6, 672(ra)<br>     |
|  60|[0x800035d0]<br>0xFD7F5FB40007EF79|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                         |[0x80000f54]:KMMAWB2 t6, t5, t4<br> [0x80000f58]:sd t6, 688(ra)<br>     |
|  61|[0x800035e0]<br>0xFD7F1FB30007EAF9|- rs2_h2_val == 512<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                              |[0x80000f84]:KMMAWB2 t6, t5, t4<br> [0x80000f88]:sd t6, 704(ra)<br>     |
|  62|[0x800035f0]<br>0xFD7D1FB20007ECF9|- rs2_h2_val == 128<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == -4194305<br>                                                                                                                                                               |[0x80000fbc]:KMMAWB2 t6, t5, t4<br> [0x80000fc0]:sd t6, 720(ra)<br>     |
|  63|[0x80003600]<br>0xFD7D21B20007ECF9|- rs2_h2_val == 8<br>                                                                                                                                                                                                                            |[0x80000fec]:KMMAWB2 t6, t5, t4<br> [0x80000ff0]:sd t6, 736(ra)<br>     |
|  64|[0x80003610]<br>0xFD7D21B20007ECF9|- rs2_h2_val == 2<br> - rs2_h1_val == -16385<br> - rs1_w0_val == -9<br>                                                                                                                                                                          |[0x80001014]:KMMAWB2 t6, t5, t4<br> [0x80001018]:sd t6, 752(ra)<br>     |
|  65|[0x80003630]<br>0xFD7D21B2FF07CCF9|- rs2_h1_val == -21846<br> - rs2_h0_val == -1<br>                                                                                                                                                                                                |[0x8000106c]:KMMAWB2 t6, t5, t4<br> [0x80001070]:sd t6, 784(ra)<br>     |
|  66|[0x80003640]<br>0xFD7D21B2FF07CCF7|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                        |[0x80001098]:KMMAWB2 t6, t5, t4<br> [0x8000109c]:sd t6, 800(ra)<br>     |
|  67|[0x80003650]<br>0xFD7D21B2FF07CD97|- rs2_h1_val == -33<br> - rs1_w1_val == -1<br> - rs1_w0_val == -524289<br>                                                                                                                                                                       |[0x800010c4]:KMMAWB2 t6, t5, t4<br> [0x800010c8]:sd t6, 816(ra)<br>     |
|  68|[0x80003660]<br>0xFD7D2232FF07CD97|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                         |[0x800010f0]:KMMAWB2 t6, t5, t4<br> [0x800010f4]:sd t6, 832(ra)<br>     |
|  69|[0x80003670]<br>0xFD7C7787FF07CD96|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                         |[0x80001120]:KMMAWB2 t6, t5, t4<br> [0x80001124]:sd t6, 848(ra)<br>     |
|  70|[0x80003680]<br>0xFD6C3787FB07CD96|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                         |[0x80001154]:KMMAWB2 t6, t5, t4<br> [0x80001158]:sd t6, 864(ra)<br>     |
|  71|[0x80003690]<br>0xFD6C3787FB07CD96|- rs2_h0_val == 32<br> - rs1_w1_val == 4096<br>                                                                                                                                                                                                  |[0x8000117c]:KMMAWB2 t6, t5, t4<br> [0x80001180]:sd t6, 880(ra)<br>     |
|  72|[0x800036a0]<br>0xFD6C3787FB09CD96|- rs2_h0_val == 16<br>                                                                                                                                                                                                                           |[0x800011a8]:KMMAWB2 t6, t5, t4<br> [0x800011ac]:sd t6, 896(ra)<br>     |
|  73|[0x800036b0]<br>0xFD6C3887FB09CD91|- rs2_h0_val == 8<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -16385<br>                                                                                                                                                                      |[0x800011e8]:KMMAWB2 t6, t5, t4<br> [0x800011ec]:sd t6, 912(ra)<br>     |
|  74|[0x800036c0]<br>0x2816E331D05F4D91|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                   |[0x80001228]:KMMAWB2 t6, t5, t4<br> [0x8000122c]:sd t6, 928(ra)<br>     |
|  75|[0x800036d0]<br>0x2816F331E05F4D91|- rs1_w1_val == -134217729<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                    |[0x80001254]:KMMAWB2 t6, t5, t4<br> [0x80001258]:sd t6, 944(ra)<br>     |
|  76|[0x800036e0]<br>0x28170B31E05F4D30|- rs1_w1_val == -67108865<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                       |[0x80001294]:KMMAWB2 t6, t5, t4<br> [0x80001298]:sd t6, 960(ra)<br>     |
|  77|[0x800036f0]<br>0x28171931E05F4D2F|- rs1_w1_val == -16777217<br>                                                                                                                                                                                                                    |[0x800012bc]:KMMAWB2 t6, t5, t4<br> [0x800012c0]:sd t6, 976(ra)<br>     |
|  78|[0x80003700]<br>0x27D71A30E05F4D33|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                                     |[0x800012ec]:KMMAWB2 t6, t5, t4<br> [0x800012f0]:sd t6, 992(ra)<br>     |
|  79|[0x80003710]<br>0x27DB1A70E05F4D32|- rs1_w1_val == -2097153<br>                                                                                                                                                                                                                     |[0x80001320]:KMMAWB2 t6, t5, t4<br> [0x80001324]:sd t6, 1008(ra)<br>    |
|  80|[0x80003720]<br>0x27DB0FC4E05F4D32|- rs1_w1_val == -4097<br>                                                                                                                                                                                                                        |[0x80001354]:KMMAWB2 t6, t5, t4<br> [0x80001358]:sd t6, 1024(ra)<br>    |
|  81|[0x80003730]<br>0x27DB0FC8DFDF4D31|- rs1_w1_val == -65<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                            |[0x80001384]:KMMAWB2 t6, t5, t4<br> [0x80001388]:sd t6, 1040(ra)<br>    |
|  82|[0x80003740]<br>0x27DB0FC7DFDF4D31|- rs1_w1_val == -5<br>                                                                                                                                                                                                                           |[0x800013b0]:KMMAWB2 t6, t5, t4<br> [0x800013b4]:sd t6, 1056(ra)<br>    |
|  83|[0x80003750]<br>0x27DB0FCADFDF4D30|- rs1_w1_val == -3<br>                                                                                                                                                                                                                           |[0x800013e0]:KMMAWB2 t6, t5, t4<br> [0x800013e4]:sd t6, 1072(ra)<br>    |
|  84|[0x80003760]<br>0x27DAFBCADFDF2D30|- rs1_w1_val == 16777216<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                       |[0x80001410]:KMMAWB2 t6, t5, t4<br> [0x80001414]:sd t6, 1088(ra)<br>    |
|  85|[0x80003770]<br>0x27DB7BCADFDF2D2F|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                                      |[0x80001444]:KMMAWB2 t6, t5, t4<br> [0x80001448]:sd t6, 1104(ra)<br>    |
|  86|[0x80003780]<br>0x27DB9BCADFDF352F|- rs1_w1_val == 524288<br>                                                                                                                                                                                                                       |[0x80001474]:KMMAWB2 t6, t5, t4<br> [0x80001478]:sd t6, 1120(ra)<br>    |
|  87|[0x80003790]<br>0x27DB9BCADFDF352A|- rs2_h1_val == 1<br> - rs1_w1_val == 262144<br> - rs1_w0_val == -2049<br>                                                                                                                                                                       |[0x800014ac]:KMMAWB2 t6, t5, t4<br> [0x800014b0]:sd t6, 1136(ra)<br>    |
|  88|[0x800037a0]<br>0x27DB9BD2DFDE34EA|- rs1_w1_val == 16384<br>                                                                                                                                                                                                                        |[0x800014d4]:KMMAWB2 t6, t5, t4<br> [0x800014d8]:sd t6, 1152(ra)<br>    |
|  89|[0x800037b0]<br>0x27DB9BC1DFDDC4E9|- rs1_w1_val == 8192<br>                                                                                                                                                                                                                         |[0x80001508]:KMMAWB2 t6, t5, t4<br> [0x8000150c]:sd t6, 1168(ra)<br>    |
|  90|[0x800037c0]<br>0x27DB9BC5DFDDC4E9|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                         |[0x80001530]:KMMAWB2 t6, t5, t4<br> [0x80001534]:sd t6, 1184(ra)<br>    |
|  91|[0x800037d0]<br>0x27DB9BC4DFDD9A3E|- rs1_w1_val == 256<br>                                                                                                                                                                                                                          |[0x80001560]:KMMAWB2 t6, t5, t4<br> [0x80001564]:sd t6, 1200(ra)<br>    |
|  92|[0x800037e0]<br>0x27DB9BC3DFDD9A3D|- rs1_w1_val == 128<br>                                                                                                                                                                                                                          |[0x80001590]:KMMAWB2 t6, t5, t4<br> [0x80001594]:sd t6, 1216(ra)<br>    |
|  93|[0x800037f0]<br>0x27DB9BC2DFDD9A3D|- rs1_w1_val == 64<br>                                                                                                                                                                                                                           |[0x800015c0]:KMMAWB2 t6, t5, t4<br> [0x800015c4]:sd t6, 1232(ra)<br>    |
|  94|[0x80003800]<br>0x27DB9BC1DFDD9A3D|- rs1_w1_val == 32<br>                                                                                                                                                                                                                           |[0x800015ec]:KMMAWB2 t6, t5, t4<br> [0x800015f0]:sd t6, 1248(ra)<br>    |
|  95|[0x80003810]<br>0x27DB9BC0DFDD9A3D|- rs1_w1_val == 16<br>                                                                                                                                                                                                                           |[0x80001614]:KMMAWB2 t6, t5, t4<br> [0x80001618]:sd t6, 1264(ra)<br>    |
|  96|[0x80003820]<br>0x27DB9BBFDFDD9A3D|- rs2_h1_val == -9<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                     |[0x80001640]:KMMAWB2 t6, t5, t4<br> [0x80001644]:sd t6, 1280(ra)<br>    |
|  97|[0x80003830]<br>0x27DB9BBEDFDD9A7C|- rs1_w1_val == 2<br>                                                                                                                                                                                                                            |[0x80001670]:KMMAWB2 t6, t5, t4<br> [0x80001674]:sd t6, 1296(ra)<br>    |
|  98|[0x80003840]<br>0x27DB9BBAA6FA4526|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                  |[0x800016ac]:KMMAWB2 t6, t5, t4<br> [0x800016b0]:sd t6, 1312(ra)<br>    |
|  99|[0x80003850]<br>0x27DB977AA6F14526|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                   |[0x800016e4]:KMMAWB2 t6, t5, t4<br> [0x800016e8]:sd t6, 1328(ra)<br>    |
| 100|[0x80003860]<br>0x27DB977AA731C526|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                  |[0x80001714]:KMMAWB2 t6, t5, t4<br> [0x80001718]:sd t6, 1344(ra)<br>    |
| 101|[0x80003870]<br>0x27D99779A831E526|- rs1_w0_val == -268435457<br>                                                                                                                                                                                                                   |[0x80001750]:KMMAWB2 t6, t5, t4<br> [0x80001754]:sd t6, 1360(ra)<br>    |
| 102|[0x80003880]<br>0x27D99779A831A525|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                                    |[0x80001784]:KMMAWB2 t6, t5, t4<br> [0x80001788]:sd t6, 1376(ra)<br>    |
| 103|[0x80003890]<br>0x27D99772A4318525|- rs2_h1_val == 2048<br> - rs2_h0_val == -8193<br>                                                                                                                                                                                               |[0x800017bc]:KMMAWB2 t6, t5, t4<br> [0x800017c0]:sd t6, 1392(ra)<br>    |
| 104|[0x800038a0]<br>0x27D98D72A4318525|- rs2_h1_val == 1024<br>                                                                                                                                                                                                                         |[0x800017e4]:KMMAWB2 t6, t5, t4<br> [0x800017e8]:sd t6, 1408(ra)<br>    |
| 105|[0x800038b0]<br>0x27D98D72A4320565|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                                     |[0x80001818]:KMMAWB2 t6, t5, t4<br> [0x8000181c]:sd t6, 1424(ra)<br>    |
| 106|[0x800038c0]<br>0x282EE272A4320565|- rs2_h1_val == 64<br>                                                                                                                                                                                                                           |[0x80001848]:KMMAWB2 t6, t5, t4<br> [0x8000184c]:sd t6, 1440(ra)<br>    |
| 107|[0x800038d0]<br>0x282BE272A4324565|- rs1_w0_val == -32769<br>                                                                                                                                                                                                                       |[0x8000187c]:KMMAWB2 t6, t5, t4<br> [0x80001880]:sd t6, 1456(ra)<br>    |
| 108|[0x800038e0]<br>0x2830E272A4324560|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                        |[0x800018b8]:KMMAWB2 t6, t5, t4<br> [0x800018bc]:sd t6, 1472(ra)<br>    |
| 109|[0x800038f0]<br>0x2830E272A432454F|- rs1_w0_val == -257<br>                                                                                                                                                                                                                         |[0x800018e8]:KMMAWB2 t6, t5, t4<br> [0x800018ec]:sd t6, 1488(ra)<br>    |
| 110|[0x80003900]<br>0x2830E27AA432452E|- rs1_w0_val == -129<br>                                                                                                                                                                                                                         |[0x8000191c]:KMMAWB2 t6, t5, t4<br> [0x80001920]:sd t6, 1504(ra)<br>    |
| 111|[0x80003910]<br>0x27B0C27AA432452F|- rs1_w0_val == -17<br>                                                                                                                                                                                                                          |[0x80001958]:KMMAWB2 t6, t5, t4<br> [0x8000195c]:sd t6, 1520(ra)<br>    |
| 112|[0x80003920]<br>0x27B8C27AA533452F|- rs2_h0_val == -257<br>                                                                                                                                                                                                                         |[0x80001980]:KMMAWB2 t6, t5, t4<br> [0x80001984]:sd t6, 1536(ra)<br>    |
| 113|[0x80003930]<br>0x27B8BA7AA534852F|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                                    |[0x800019a8]:KMMAWB2 t6, t5, t4<br> [0x800019ac]:sd t6, 1552(ra)<br>    |
| 114|[0x80003940]<br>0x67B9BA7AA534852F|- rs2_h0_val == -17<br>                                                                                                                                                                                                                          |[0x800019d4]:KMMAWB2 t6, t5, t4<br> [0x800019d8]:sd t6, 1568(ra)<br>    |
| 115|[0x80003950]<br>0x6779BA79A7347D2F|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                                     |[0x80001a08]:KMMAWB2 t6, t5, t4<br> [0x80001a0c]:sd t6, 1584(ra)<br>    |
| 116|[0x80003960]<br>0x6779BAFBA734842F|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                                      |[0x80001a38]:KMMAWB2 t6, t5, t4<br> [0x80001a3c]:sd t6, 1600(ra)<br>    |
| 117|[0x80003970]<br>0x6779BAFAA724842E|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                     |[0x80001a6c]:KMMAWB2 t6, t5, t4<br> [0x80001a70]:sd t6, 1616(ra)<br>    |
| 118|[0x80003980]<br>0x6779BEFEA745842E|- rs1_w1_val == -131073<br>                                                                                                                                                                                                                      |[0x80001a9c]:KMMAWB2 t6, t5, t4<br> [0x80001aa0]:sd t6, 1632(ra)<br>    |
