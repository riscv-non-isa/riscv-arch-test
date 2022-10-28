
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001ba0')]      |
| SIG_REGION                | [('0x80003210', '0x800039d0', '248 dwords')]      |
| COV_LABELS                | kmmawb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmawb-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 248      |
| STAT1                     | 121      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 124     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b24]:KMMAWB t6, t5, t4
      [0x80001b28]:sd t6, 1472(ra)
 -- Signature Address: 0x800039a0 Data: 0xD579DAE304877BE7
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_h3_val == -257
      - rs2_h2_val == -8193
      - rs2_h1_val == 32
      - rs2_h0_val == 2048
      - rs1_w1_val == 1048576




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b54]:KMMAWB t6, t5, t4
      [0x80001b58]:sd t6, 1488(ra)
 -- Signature Address: 0x800039b0 Data: 0xD579D6E202877BE6
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 21845
      - rs2_h2_val == 16
      - rs2_h0_val == 16384
      - rs1_w1_val == -4194305
      - rs1_w0_val == -134217729




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b8c]:KMMAWB t6, t5, t4
      [0x80001b90]:sd t6, 1504(ra)
 -- Signature Address: 0x800039c0 Data: 0xD579D6E202877BE6
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -8193
      - rs2_h2_val == 4096
      - rs2_h1_val == 21845
      - rs1_w1_val == 8
      - rs1_w0_val == 8






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawb', 'rs1 : x23', 'rs2 : x23', 'rd : x8', 'rs1 == rs2 != rd', 'rs2_h3_val == -257', 'rs2_h2_val == -8193', 'rs2_h1_val == 32', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x800003c8]:KMMAWB fp, s7, s7
	-[0x800003cc]:sd fp, 0(s1)
Current Store : [0x800003d0] : sd s7, 8(s1) -- Store: [0x80003218]:0xFEFFDFFF00200800




Last Coverpoint : ['rs1 : x2', 'rs2 : x2', 'rd : x2', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800003f8]:KMMAWB sp, sp, sp
	-[0x800003fc]:sd sp, 16(s1)
Current Store : [0x80000400] : sd sp, 24(s1) -- Store: [0x80003228]:0xAAA855570020FFBC




Last Coverpoint : ['rs1 : x26', 'rs2 : x0', 'rd : x28', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w1_val == -4194305', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000428]:KMMAWB t3, s10, zero
	-[0x8000042c]:sd t3, 32(s1)
Current Store : [0x80000430] : sd s10, 40(s1) -- Store: [0x80003238]:0xFFBFFFFFF7FFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x4', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h0_val == -9', 'rs1_w1_val == 32768', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000458]:KMMAWB tp, tp, t4
	-[0x8000045c]:sd tp, 48(s1)
Current Store : [0x80000460] : sd tp, 56(s1) -- Store: [0x80003248]:0x00007FFC0003FFDC




Last Coverpoint : ['rs1 : x8', 'rs2 : x13', 'rd : x13', 'rs2 == rd != rs1', 'rs2_h3_val == -16385', 'rs2_h2_val == 1', 'rs2_h1_val == -513', 'rs2_h0_val == -8193', 'rs1_w1_val == -129', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000490]:KMMAWB a3, fp, a3
	-[0x80000494]:sd a3, 64(s1)
Current Store : [0x80000498] : sd fp, 72(s1) -- Store: [0x80003258]:0xFFFFFF7F00800000




Last Coverpoint : ['rs1 : x0', 'rs2 : x5', 'rd : x23', 'rs2_h3_val == -8193', 'rs2_h2_val == 4096', 'rs2_h1_val == 21845', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800004c8]:KMMAWB s7, zero, t0
	-[0x800004cc]:sd s7, 80(s1)
Current Store : [0x800004d0] : sd zero, 88(s1) -- Store: [0x80003268]:0x0000000000000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x28', 'rd : x3', 'rs2_h3_val == -4097', 'rs2_h2_val == 64', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800004f8]:KMMAWB gp, s8, t3
	-[0x800004fc]:sd gp, 96(s1)
Current Store : [0x80000500] : sd s8, 104(s1) -- Store: [0x80003278]:0xFFFFFFFA00080000




Last Coverpoint : ['rs1 : x15', 'rs2 : x7', 'rd : x19', 'rs2_h3_val == -2049', 'rs2_h2_val == 256', 'rs2_h1_val == 16', 'rs1_w1_val == 64', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000528]:KMMAWB s3, a5, t2
	-[0x8000052c]:sd s3, 112(s1)
Current Store : [0x80000530] : sd a5, 120(s1) -- Store: [0x80003288]:0x00000040FFFFFEFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x14', 'rd : x10', 'rs2_h3_val == -1025', 'rs2_h2_val == -16385', 'rs1_w1_val == -17', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000558]:KMMAWB a0, s9, a4
	-[0x8000055c]:sd a0, 128(s1)
Current Store : [0x80000560] : sd s9, 136(s1) -- Store: [0x80003298]:0xFFFFFFEF00002000




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x30', 'rs2_h3_val == -513', 'rs2_h2_val == -2', 'rs2_h1_val == -4097', 'rs2_h0_val == 8', 'rs1_w1_val == 8', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000588]:KMMAWB t5, gp, s10
	-[0x8000058c]:sd t5, 144(s1)
Current Store : [0x80000590] : sd gp, 152(s1) -- Store: [0x800032a8]:0x000000087FFFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x31', 'rs2_h3_val == -129', 'rs2_h1_val == -33', 'rs2_h0_val == -129', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800005b8]:KMMAWB t6, t3, tp
	-[0x800005bc]:sd t6, 160(s1)
Current Store : [0x800005c0] : sd t3, 168(s1) -- Store: [0x800032b8]:0xFFFFFFFA00000008




Last Coverpoint : ['rs1 : x30', 'rs2 : x20', 'rd : x1', 'rs2_h3_val == -65', 'rs2_h1_val == -257', 'rs1_w1_val == 524288', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800005e0]:KMMAWB ra, t5, s4
	-[0x800005e4]:sd ra, 176(s1)
Current Store : [0x800005e8] : sd t5, 184(s1) -- Store: [0x800032c8]:0x0008000000000080




Last Coverpoint : ['rs1 : x18', 'rs2 : x10', 'rd : x25', 'rs2_h3_val == -33', 'rs2_h1_val == -32768', 'rs2_h0_val == -33', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x8000061c]:KMMAWB s9, s2, a0
	-[0x80000620]:sd s9, 192(s1)
Current Store : [0x80000624] : sd s2, 200(s1) -- Store: [0x800032d8]:0x555555557FFFFFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x16', 'rd : x29', 'rs2_h3_val == -17', 'rs2_h2_val == 128', 'rs2_h1_val == 32767', 'rs2_h0_val == -1', 'rs1_w1_val == -268435457', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000648]:KMMAWB t4, a2, a6
	-[0x8000064c]:sd t4, 208(s1)
Current Store : [0x80000650] : sd a2, 216(s1) -- Store: [0x800032e8]:0xEFFFFFFF00000100




Last Coverpoint : ['rs1 : x17', 'rs2 : x22', 'rd : x6', 'rs2_h3_val == -9', 'rs2_h2_val == -513', 'rs1_w1_val == 8192', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000670]:KMMAWB t1, a7, s6
	-[0x80000674]:sd t1, 224(s1)
Current Store : [0x80000678] : sd a7, 232(s1) -- Store: [0x800032f8]:0x0000200000008000




Last Coverpoint : ['rs1 : x10', 'rs2 : x3', 'rd : x5', 'rs2_h3_val == -5', 'rs2_h1_val == 64', 'rs2_h0_val == -17', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800006a8]:KMMAWB t0, a0, gp
	-[0x800006ac]:sd t0, 0(sp)
Current Store : [0x800006b0] : sd a0, 8(sp) -- Store: [0x80003308]:0x0010000000000008




Last Coverpoint : ['rs1 : x16', 'rs2 : x11', 'rd : x21', 'rs2_h3_val == -3', 'rs2_h2_val == 32767', 'rs2_h1_val == -1025', 'rs1_w1_val == 67108864', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800006e0]:KMMAWB s5, a6, a1
	-[0x800006e4]:sd s5, 16(sp)
Current Store : [0x800006e8] : sd a6, 24(sp) -- Store: [0x80003318]:0x04000000FF7FFFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x21', 'rd : x24', 'rs2_h3_val == -2', 'rs2_h2_val == 2', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000714]:KMMAWB s8, t1, s5
	-[0x80000718]:sd s8, 32(sp)
Current Store : [0x8000071c] : sd t1, 40(sp) -- Store: [0x80003328]:0x0010000000002000




Last Coverpoint : ['rs1 : x11', 'rs2 : x12', 'rd : x26', 'rs2_h3_val == -32768', 'rs2_h2_val == 16384', 'rs2_h1_val == -8193', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000748]:KMMAWB s10, a1, a2
	-[0x8000074c]:sd s10, 48(sp)
Current Store : [0x80000750] : sd a1, 56(sp) -- Store: [0x80003338]:0x0400000000000200




Last Coverpoint : ['rs1 : x7', 'rs2 : x1', 'rd : x15', 'rs2_h3_val == 16384', 'rs2_h1_val == 1024', 'rs2_h0_val == -257', 'rs1_w1_val == 33554432', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000784]:KMMAWB a5, t2, ra
	-[0x80000788]:sd a5, 64(sp)
Current Store : [0x8000078c] : sd t2, 72(sp) -- Store: [0x80003348]:0x02000000FFFFF7FF




Last Coverpoint : ['rs1 : x1', 'rs2 : x24', 'rd : x27', 'rs2_h3_val == 8192', 'rs2_h2_val == -21846', 'rs2_h1_val == -5', 'rs1_w1_val == 16', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800007b8]:KMMAWB s11, ra, s8
	-[0x800007bc]:sd s11, 80(sp)
Current Store : [0x800007c0] : sd ra, 88(sp) -- Store: [0x80003358]:0x00000010FEFFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x25', 'rd : x7', 'rs2_h3_val == 4096', 'rs2_h2_val == -1', 'rs1_w1_val == 256', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800007f0]:KMMAWB t2, a4, s9
	-[0x800007f4]:sd t2, 96(sp)
Current Store : [0x800007f8] : sd a4, 104(sp) -- Store: [0x80003368]:0x0000010020000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x8', 'rd : x18', 'rs2_h3_val == 2048', 'rs2_h2_val == -5', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80000820]:KMMAWB s2, s4, fp
	-[0x80000824]:sd s2, 112(sp)
Current Store : [0x80000828] : sd s4, 120(sp) -- Store: [0x80003378]:0x0002000000000009




Last Coverpoint : ['rs1 : x5', 'rs2 : x30', 'rd : x16', 'rs2_h3_val == 1024', 'rs2_h0_val == 256', 'rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x80000858]:KMMAWB a6, t0, t5
	-[0x8000085c]:sd a6, 128(sp)
Current Store : [0x80000860] : sd t0, 136(sp) -- Store: [0x80003388]:0xFF7FFFFF00040000




Last Coverpoint : ['rs1 : x29', 'rs2 : x15', 'rd : x12', 'rs2_h3_val == 512', 'rs2_h2_val == -65', 'rs2_h1_val == -9', 'rs2_h0_val == 32', 'rs1_w1_val == -9', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000888]:KMMAWB a2, t4, a5
	-[0x8000088c]:sd a2, 144(sp)
Current Store : [0x80000890] : sd t4, 152(sp) -- Store: [0x80003398]:0xFFFFFFF700001000




Last Coverpoint : ['rs1 : x9', 'rs2 : x27', 'rd : x20', 'rs2_h3_val == 256', 'rs2_h2_val == -2049', 'rs2_h0_val == 512', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800008b8]:KMMAWB s4, s1, s11
	-[0x800008bc]:sd s4, 160(sp)
Current Store : [0x800008c0] : sd s1, 168(sp) -- Store: [0x800033a8]:0x0400000000000002




Last Coverpoint : ['rs1 : x13', 'rs2 : x9', 'rd : x11', 'rs2_h3_val == 128', 'rs2_h2_val == -129', 'rs2_h1_val == 256', 'rs1_w1_val == 32', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800008e8]:KMMAWB a1, a3, s1
	-[0x800008ec]:sd a1, 176(sp)
Current Store : [0x800008f0] : sd a3, 184(sp) -- Store: [0x800033b8]:0x00000020FFF7FFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x19', 'rd : x17', 'rs2_h3_val == 64', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000091c]:KMMAWB a7, s6, s3
	-[0x80000920]:sd a7, 192(sp)
Current Store : [0x80000924] : sd s6, 200(sp) -- Store: [0x800033c8]:0x7FFFFFFF08000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x31', 'rd : x9', 'rs1_w0_val == -2147483648', 'rs2_h3_val == 32', 'rs2_h2_val == 1024', 'rs2_h1_val == 8192', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80000950]:KMMAWB s1, s3, t6
	-[0x80000954]:sd s1, 208(sp)
Current Store : [0x80000958] : sd s3, 216(sp) -- Store: [0x800033d8]:0x8000000080000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x6', 'rd : x14', 'rs2_h3_val == 16', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000980]:KMMAWB a4, s11, t1
	-[0x80000984]:sd a4, 0(ra)
Current Store : [0x80000988] : sd s11, 8(ra) -- Store: [0x800033e8]:0x0000400008000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x17', 'rd : x0', 'rs2_h3_val == 8', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800009b8]:KMMAWB zero, s5, a7
	-[0x800009bc]:sd zero, 16(ra)
Current Store : [0x800009c0] : sd s5, 24(ra) -- Store: [0x800033f8]:0x3FFFFFFF00020000




Last Coverpoint : ['rs1 : x31', 'rs2 : x18', 'rd : x22', 'rs2_h3_val == 4', 'rs2_h1_val == 8']
Last Code Sequence : 
	-[0x800009e4]:KMMAWB s6, t6, s2
	-[0x800009e8]:sd s6, 32(ra)
Current Store : [0x800009ec] : sd t6, 40(ra) -- Store: [0x80003408]:0x0000000700000007




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000a14]:KMMAWB t6, t5, t4
	-[0x80000a18]:sd t6, 48(ra)
Current Store : [0x80000a1c] : sd t5, 56(ra) -- Store: [0x80003418]:0x0000004000000200




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h0_val == 2', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000a48]:KMMAWB t6, t5, t4
	-[0x80000a4c]:sd t6, 64(ra)
Current Store : [0x80000a50] : sd t5, 72(ra) -- Store: [0x80003428]:0x00100000FFFFFFBF




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h1_val == 2048', 'rs1_w1_val == -1025', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000a78]:KMMAWB t6, t5, t4
	-[0x80000a7c]:sd t6, 80(ra)
Current Store : [0x80000a80] : sd t5, 88(ra) -- Store: [0x80003438]:0xFFFFFBFF02000000




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h0_val == -513', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000aa8]:KMMAWB t6, t5, t4
	-[0x80000aac]:sd t6, 96(ra)
Current Store : [0x80000ab0] : sd t5, 104(ra) -- Store: [0x80003448]:0x00002000FFFFFBFF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h0_val == -65', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000ae4]:KMMAWB t6, t5, t4
	-[0x80000ae8]:sd t6, 112(ra)
Current Store : [0x80000aec] : sd t5, 120(ra) -- Store: [0x80003458]:0xC0000000FFFFEFFF




Last Coverpoint : ['rs2_h2_val == -4097', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80000b0c]:KMMAWB t6, t5, t4
	-[0x80000b10]:sd t6, 128(ra)
Current Store : [0x80000b14] : sd t5, 136(ra) -- Store: [0x80003468]:0x0000001000008000




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80000b48]:KMMAWB t6, t5, t4
	-[0x80000b4c]:sd t6, 144(ra)
Current Store : [0x80000b50] : sd t5, 152(ra) -- Store: [0x80003478]:0xFFFFBFFFFEFFFFFF




Last Coverpoint : ['rs2_h2_val == -33', 'rs2_h1_val == -17', 'rs2_h0_val == -3', 'rs1_w1_val == -1073741825', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000b80]:KMMAWB t6, t5, t4
	-[0x80000b84]:sd t6, 160(ra)
Current Store : [0x80000b88] : sd t5, 168(ra) -- Store: [0x80003488]:0xBFFFFFFFFDFFFFFF




Last Coverpoint : ['rs1_w1_val == -33554433', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000bb4]:KMMAWB t6, t5, t4
	-[0x80000bb8]:sd t6, 176(ra)
Current Store : [0x80000bbc] : sd t5, 184(ra) -- Store: [0x80003498]:0xFDFFFFFF00200000




Last Coverpoint : ['rs2_h2_val == 8192', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000bec]:KMMAWB t6, t5, t4
	-[0x80000bf0]:sd t6, 192(ra)
Current Store : [0x80000bf4] : sd t5, 200(ra) -- Store: [0x800034a8]:0xAAAAAAAA00100000




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_w1_val == -5', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c1c]:KMMAWB t6, t5, t4
	-[0x80000c20]:sd t6, 208(ra)
Current Store : [0x80000c24] : sd t5, 216(ra) -- Store: [0x800034b8]:0xFFFFFFFB00010000




Last Coverpoint : ['rs2_h2_val == -17', 'rs2_h1_val == -65', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000c54]:KMMAWB t6, t5, t4
	-[0x80000c58]:sd t6, 224(ra)
Current Store : [0x80000c5c] : sd t5, 232(ra) -- Store: [0x800034c8]:0xBFFFFFFF00004000




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000c90]:KMMAWB t6, t5, t4
	-[0x80000c94]:sd t6, 240(ra)
Current Store : [0x80000c98] : sd t5, 248(ra) -- Store: [0x800034d8]:0x5555555500000800




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000cb8]:KMMAWB t6, t5, t4
	-[0x80000cbc]:sd t6, 256(ra)
Current Store : [0x80000cc0] : sd t5, 264(ra) -- Store: [0x800034e8]:0x0002000000000400




Last Coverpoint : ['rs2_h1_val == 4096', 'rs1_w1_val == -2097153', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000cec]:KMMAWB t6, t5, t4
	-[0x80000cf0]:sd t6, 272(ra)
Current Store : [0x80000cf4] : sd t5, 280(ra) -- Store: [0x800034f8]:0xFFDFFFFF00000040




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d1c]:KMMAWB t6, t5, t4
	-[0x80000d20]:sd t6, 288(ra)
Current Store : [0x80000d24] : sd t5, 296(ra) -- Store: [0x80003508]:0x0000000300000020




Last Coverpoint : ['rs2_h2_val == -3', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d50]:KMMAWB t6, t5, t4
	-[0x80000d54]:sd t6, 304(ra)
Current Store : [0x80000d58] : sd t5, 312(ra) -- Store: [0x80003518]:0xFF7FFFFF00000010




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000d80]:KMMAWB t6, t5, t4
	-[0x80000d84]:sd t6, 320(ra)
Current Store : [0x80000d88] : sd t5, 328(ra) -- Store: [0x80003528]:0x0000002000000004




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_w1_val == 268435456', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000db0]:KMMAWB t6, t5, t4
	-[0x80000db4]:sd t6, 336(ra)
Current Store : [0x80000db8] : sd t5, 344(ra) -- Store: [0x80003538]:0x1000000000000001




Last Coverpoint : ['rs2_h2_val == 8', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x80000dd8]:KMMAWB t6, t5, t4
	-[0x80000ddc]:sd t6, 352(ra)
Current Store : [0x80000de0] : sd t5, 360(ra) -- Store: [0x80003548]:0xFFFBFFFF00000000




Last Coverpoint : ['rs1_w1_val == 2048', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e0c]:KMMAWB t6, t5, t4
	-[0x80000e10]:sd t6, 368(ra)
Current Store : [0x80000e14] : sd t5, 376(ra) -- Store: [0x80003558]:0x00000800FFFFFFFF




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000e3c]:KMMAWB t6, t5, t4
	-[0x80000e40]:sd t6, 384(ra)
Current Store : [0x80000e44] : sd t5, 392(ra) -- Store: [0x80003568]:0x0000000800400000




Last Coverpoint : ['rs2_h3_val == 21845', 'rs2_h2_val == 2048', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000e68]:KMMAWB t6, t5, t4
	-[0x80000e6c]:sd t6, 400(ra)
Current Store : [0x80000e70] : sd t5, 408(ra) -- Store: [0x80003578]:0x0080000000000400




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h1_val == 1', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000e9c]:KMMAWB t6, t5, t4
	-[0x80000ea0]:sd t6, 416(ra)
Current Store : [0x80000ea4] : sd t5, 424(ra) -- Store: [0x80003588]:0x80000000FFFFFDFF




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80000ecc]:KMMAWB t6, t5, t4
	-[0x80000ed0]:sd t6, 432(ra)
Current Store : [0x80000ed4] : sd t5, 440(ra) -- Store: [0x80003598]:0xFFFFFEFF00000003




Last Coverpoint : ['rs2_h2_val == 4', 'rs1_w1_val == -3', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000ef4]:KMMAWB t6, t5, t4
	-[0x80000ef8]:sd t6, 448(ra)
Current Store : [0x80000efc] : sd t5, 456(ra) -- Store: [0x800035a8]:0xFFFFFFFDFFFFFF7F




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80000f24]:KMMAWB t6, t5, t4
	-[0x80000f28]:sd t6, 464(ra)
Current Store : [0x80000f2c] : sd t5, 472(ra) -- Store: [0x800035b8]:0xDFFFFFFFFFFFFFBF




Last Coverpoint : ['rs2_h1_val == -16385', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f50]:KMMAWB t6, t5, t4
	-[0x80000f54]:sd t6, 480(ra)
Current Store : [0x80000f58] : sd t5, 488(ra) -- Store: [0x800035c8]:0x0000002000000200




Last Coverpoint : ['rs2_h1_val == -2049']
Last Code Sequence : 
	-[0x80000f84]:KMMAWB t6, t5, t4
	-[0x80000f88]:sd t6, 496(ra)
Current Store : [0x80000f8c] : sd t5, 504(ra) -- Store: [0x800035d8]:0x0200000020000000




Last Coverpoint : ['rs2_h1_val == -129']
Last Code Sequence : 
	-[0x80000fb4]:KMMAWB t6, t5, t4
	-[0x80000fb8]:sd t6, 512(ra)
Current Store : [0x80000fbc] : sd t5, 520(ra) -- Store: [0x800035e8]:0xFFFFFFFB00020000




Last Coverpoint : ['rs2_h1_val == -3', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80000fe4]:KMMAWB t6, t5, t4
	-[0x80000fe8]:sd t6, 528(ra)
Current Store : [0x80000fec] : sd t5, 536(ra) -- Store: [0x800035f8]:0xFFDFFFFF00000007




Last Coverpoint : ['rs2_h2_val == 16', 'rs2_h1_val == -2', 'rs2_h0_val == 64', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80001014]:KMMAWB t6, t5, t4
	-[0x80001018]:sd t6, 544(ra)
Current Store : [0x8000101c] : sd t5, 552(ra) -- Store: [0x80003608]:0xFFFDFFFFFFFFFF7F




Last Coverpoint : ['rs2_h1_val == 128', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x8000103c]:KMMAWB t6, t5, t4
	-[0x80001040]:sd t6, 560(ra)
Current Store : [0x80001044] : sd t5, 568(ra) -- Store: [0x80003618]:0x0000000000000400




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80001064]:KMMAWB t6, t5, t4
	-[0x80001068]:sd t6, 576(ra)
Current Store : [0x8000106c] : sd t5, 584(ra) -- Store: [0x80003628]:0x0000200000200000




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001098]:KMMAWB t6, t5, t4
	-[0x8000109c]:sd t6, 592(ra)
Current Store : [0x800010a0] : sd t5, 600(ra) -- Store: [0x80003638]:0xFFFFFFF9FFEFFFFF




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800010c0]:KMMAWB t6, t5, t4
	-[0x800010c4]:sd t6, 608(ra)
Current Store : [0x800010c8] : sd t5, 616(ra) -- Store: [0x80003648]:0xFFFFFFF7FFFFFFEF




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x800010ec]:KMMAWB t6, t5, t4
	-[0x800010f0]:sd t6, 624(ra)
Current Store : [0x800010f4] : sd t5, 632(ra) -- Store: [0x80003658]:0xFFFFFDFFFFFFFFBF




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80001120]:KMMAWB t6, t5, t4
	-[0x80001124]:sd t6, 640(ra)
Current Store : [0x80001128] : sd t5, 648(ra) -- Store: [0x80003668]:0x00100000FFFFFFFC




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80001148]:KMMAWB t6, t5, t4
	-[0x8000114c]:sd t6, 656(ra)
Current Store : [0x80001150] : sd t5, 664(ra) -- Store: [0x80003678]:0x0000001000010000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x80001180]:KMMAWB t6, t5, t4
	-[0x80001184]:sd t6, 672(ra)
Current Store : [0x80001188] : sd t5, 680(ra) -- Store: [0x80003688]:0xF7FFFFFF00010000




Last Coverpoint : ['rs1_w1_val == -67108865', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800011bc]:KMMAWB t6, t5, t4
	-[0x800011c0]:sd t6, 688(ra)
Current Store : [0x800011c4] : sd t5, 696(ra) -- Store: [0x80003698]:0xFBFFFFFFFFFBFFFF




Last Coverpoint : ['rs1_w1_val == -16777217', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800011f0]:KMMAWB t6, t5, t4
	-[0x800011f4]:sd t6, 704(ra)
Current Store : [0x800011f8] : sd t5, 712(ra) -- Store: [0x800036a8]:0xFEFFFFFFFBFFFFFF




Last Coverpoint : ['rs1_w1_val == -1048577', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001220]:KMMAWB t6, t5, t4
	-[0x80001224]:sd t6, 720(ra)
Current Store : [0x80001228] : sd t5, 728(ra) -- Store: [0x800036b8]:0xFFEFFFFF04000000




Last Coverpoint : ['rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80001250]:KMMAWB t6, t5, t4
	-[0x80001254]:sd t6, 736(ra)
Current Store : [0x80001258] : sd t5, 744(ra) -- Store: [0x800036c8]:0xFFF7FFFFFFFFFFF8




Last Coverpoint : ['rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x80001280]:KMMAWB t6, t5, t4
	-[0x80001284]:sd t6, 752(ra)
Current Store : [0x80001288] : sd t5, 760(ra) -- Store: [0x800036d8]:0xFFFEFFFFFFFFFF7F




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x800012a8]:KMMAWB t6, t5, t4
	-[0x800012ac]:sd t6, 768(ra)
Current Store : [0x800012b0] : sd t5, 776(ra) -- Store: [0x800036e8]:0xFFFF7FFF00080000




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x800012d8]:KMMAWB t6, t5, t4
	-[0x800012dc]:sd t6, 784(ra)
Current Store : [0x800012e0] : sd t5, 792(ra) -- Store: [0x800036f8]:0xFFFFDFFF00000000




Last Coverpoint : ['rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x8000130c]:KMMAWB t6, t5, t4
	-[0x80001310]:sd t6, 800(ra)
Current Store : [0x80001314] : sd t5, 808(ra) -- Store: [0x80003708]:0xFFFFEFFFFF7FFFFF




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x80001340]:KMMAWB t6, t5, t4
	-[0x80001344]:sd t6, 816(ra)
Current Store : [0x80001348] : sd t5, 824(ra) -- Store: [0x80003718]:0xFFFFF7FF3FFFFFFF




Last Coverpoint : ['rs1_w1_val == -65', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001370]:KMMAWB t6, t5, t4
	-[0x80001374]:sd t6, 832(ra)
Current Store : [0x80001378] : sd t5, 840(ra) -- Store: [0x80003728]:0xFFFFFFBFFFFFFFFB




Last Coverpoint : ['rs1_w1_val == -33']
Last Code Sequence : 
	-[0x8000139c]:KMMAWB t6, t5, t4
	-[0x800013a0]:sd t6, 848(ra)
Current Store : [0x800013a4] : sd t5, 856(ra) -- Store: [0x80003738]:0xFFFFFFDFFFFFFFFA




Last Coverpoint : ['rs1_w1_val == -2']
Last Code Sequence : 
	-[0x800013cc]:KMMAWB t6, t5, t4
	-[0x800013d0]:sd t6, 864(ra)
Current Store : [0x800013d4] : sd t5, 872(ra) -- Store: [0x80003748]:0xFFFFFFFE00000200




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80001404]:KMMAWB t6, t5, t4
	-[0x80001408]:sd t6, 880(ra)
Current Store : [0x8000140c] : sd t5, 888(ra) -- Store: [0x80003758]:0x40000000FDFFFFFF




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001438]:KMMAWB t6, t5, t4
	-[0x8000143c]:sd t6, 896(ra)
Current Store : [0x80001440] : sd t5, 904(ra) -- Store: [0x80003768]:0x2000000000080000




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001474]:KMMAWB t6, t5, t4
	-[0x80001478]:sd t6, 912(ra)
Current Store : [0x8000147c] : sd t5, 920(ra) -- Store: [0x80003778]:0x08000000FFFFF7FF




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800014b0]:KMMAWB t6, t5, t4
	-[0x800014b4]:sd t6, 928(ra)
Current Store : [0x800014b8] : sd t5, 936(ra) -- Store: [0x80003788]:0x01000000FFFBFFFF




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x800014e0]:KMMAWB t6, t5, t4
	-[0x800014e4]:sd t6, 944(ra)
Current Store : [0x800014e8] : sd t5, 952(ra) -- Store: [0x80003798]:0x00400000FFFFFFFF




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80001514]:KMMAWB t6, t5, t4
	-[0x80001518]:sd t6, 960(ra)
Current Store : [0x8000151c] : sd t5, 968(ra) -- Store: [0x800037a8]:0x00200000FFFFFFBF




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80001544]:KMMAWB t6, t5, t4
	-[0x80001548]:sd t6, 976(ra)
Current Store : [0x8000154c] : sd t5, 984(ra) -- Store: [0x800037b8]:0x0004000020000000




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001574]:KMMAWB t6, t5, t4
	-[0x80001578]:sd t6, 992(ra)
Current Store : [0x8000157c] : sd t5, 1000(ra) -- Store: [0x800037c8]:0x0001000000000040




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800015a8]:KMMAWB t6, t5, t4
	-[0x800015ac]:sd t6, 1008(ra)
Current Store : [0x800015b0] : sd t5, 1016(ra) -- Store: [0x800037d8]:0x000010007FFFFFFF




Last Coverpoint : ['rs1_w1_val == 1024', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800015d8]:KMMAWB t6, t5, t4
	-[0x800015dc]:sd t6, 1024(ra)
Current Store : [0x800015e0] : sd t5, 1032(ra) -- Store: [0x800037e8]:0x00000400FFFFFFDF




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80001604]:KMMAWB t6, t5, t4
	-[0x80001608]:sd t6, 1040(ra)
Current Store : [0x8000160c] : sd t5, 1048(ra) -- Store: [0x800037f8]:0x0000020000000080




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80001634]:KMMAWB t6, t5, t4
	-[0x80001638]:sd t6, 1056(ra)
Current Store : [0x8000163c] : sd t5, 1064(ra) -- Store: [0x80003808]:0x00000080FFFFFF7F




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001664]:KMMAWB t6, t5, t4
	-[0x80001668]:sd t6, 1072(ra)
Current Store : [0x8000166c] : sd t5, 1080(ra) -- Store: [0x80003818]:0x0000000400000005




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001694]:KMMAWB t6, t5, t4
	-[0x80001698]:sd t6, 1088(ra)
Current Store : [0x8000169c] : sd t5, 1096(ra) -- Store: [0x80003828]:0x0000000200002000




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800016c8]:KMMAWB t6, t5, t4
	-[0x800016cc]:sd t6, 1104(ra)
Current Store : [0x800016d0] : sd t5, 1112(ra) -- Store: [0x80003838]:0x00000001FFEFFFFF




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x800016f8]:KMMAWB t6, t5, t4
	-[0x800016fc]:sd t6, 1120(ra)
Current Store : [0x80001700] : sd t5, 1128(ra) -- Store: [0x80003848]:0xFFFFFFFF00000008




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001738]:KMMAWB t6, t5, t4
	-[0x8000173c]:sd t6, 1136(ra)
Current Store : [0x80001740] : sd t5, 1144(ra) -- Store: [0x80003858]:0xFF7FFFFFAAAAAAAA




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001778]:KMMAWB t6, t5, t4
	-[0x8000177c]:sd t6, 1152(ra)
Current Store : [0x80001780] : sd t5, 1160(ra) -- Store: [0x80003868]:0xDFFFFFFF55555555




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800017a4]:KMMAWB t6, t5, t4
	-[0x800017a8]:sd t6, 1168(ra)
Current Store : [0x800017ac] : sd t5, 1176(ra) -- Store: [0x80003878]:0x00800000BFFFFFFF




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800017d4]:KMMAWB t6, t5, t4
	-[0x800017d8]:sd t6, 1184(ra)
Current Store : [0x800017dc] : sd t5, 1192(ra) -- Store: [0x80003888]:0xFBFFFFFFDFFFFFFF




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001800]:KMMAWB t6, t5, t4
	-[0x80001804]:sd t6, 1200(ra)
Current Store : [0x80001808] : sd t5, 1208(ra) -- Store: [0x80003898]:0xFFFFFDFFEFFFFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001838]:KMMAWB t6, t5, t4
	-[0x8000183c]:sd t6, 1216(ra)
Current Store : [0x80001840] : sd t5, 1224(ra) -- Store: [0x800038a8]:0xEFFFFFFFFFBFFFFF




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001864]:KMMAWB t6, t5, t4
	-[0x80001868]:sd t6, 1232(ra)
Current Store : [0x8000186c] : sd t5, 1240(ra) -- Store: [0x800038b8]:0x00000005FFDFFFFF




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001898]:KMMAWB t6, t5, t4
	-[0x8000189c]:sd t6, 1248(ra)
Current Store : [0x800018a0] : sd t5, 1256(ra) -- Store: [0x800038c8]:0x00004000FFFDFFFF




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800018c8]:KMMAWB t6, t5, t4
	-[0x800018cc]:sd t6, 1264(ra)
Current Store : [0x800018d0] : sd t5, 1272(ra) -- Store: [0x800038d8]:0xFFFFF7FFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001900]:KMMAWB t6, t5, t4
	-[0x80001904]:sd t6, 1280(ra)
Current Store : [0x80001908] : sd t5, 1288(ra) -- Store: [0x800038e8]:0x7FFFFFFFFFFF7FFF




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000192c]:KMMAWB t6, t5, t4
	-[0x80001930]:sd t6, 1296(ra)
Current Store : [0x80001934] : sd t5, 1304(ra) -- Store: [0x800038f8]:0xFFFFFFBFFFFFBFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x8000195c]:KMMAWB t6, t5, t4
	-[0x80001960]:sd t6, 1312(ra)
Current Store : [0x80001964] : sd t5, 1320(ra) -- Store: [0x80003908]:0xFFFFFFDFFFFFDFFF




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80001988]:KMMAWB t6, t5, t4
	-[0x8000198c]:sd t6, 1328(ra)
Current Store : [0x80001990] : sd t5, 1336(ra) -- Store: [0x80003918]:0x00000009C0000000




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800019b8]:KMMAWB t6, t5, t4
	-[0x800019bc]:sd t6, 1344(ra)
Current Store : [0x800019c0] : sd t5, 1352(ra) -- Store: [0x80003928]:0xFFFFFFF7FFFFFFF7




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800019e8]:KMMAWB t6, t5, t4
	-[0x800019ec]:sd t6, 1360(ra)
Current Store : [0x800019f0] : sd t5, 1368(ra) -- Store: [0x80003938]:0xFFFF7FFFFFFFFFFD




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001a14]:KMMAWB t6, t5, t4
	-[0x80001a18]:sd t6, 1376(ra)
Current Store : [0x80001a1c] : sd t5, 1384(ra) -- Store: [0x80003948]:0xFFFFFBFFFFFFFFFE




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001a40]:KMMAWB t6, t5, t4
	-[0x80001a44]:sd t6, 1392(ra)
Current Store : [0x80001a48] : sd t5, 1400(ra) -- Store: [0x80003958]:0xFFFFFFF640000000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001a68]:KMMAWB t6, t5, t4
	-[0x80001a6c]:sd t6, 1408(ra)
Current Store : [0x80001a70] : sd t5, 1416(ra) -- Store: [0x80003968]:0x0100000010000000




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80001a98]:KMMAWB t6, t5, t4
	-[0x80001a9c]:sd t6, 1424(ra)
Current Store : [0x80001aa0] : sd t5, 1432(ra) -- Store: [0x80003978]:0xFDFFFFFFFFFFFFFD




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001ac8]:KMMAWB t6, t5, t4
	-[0x80001acc]:sd t6, 1440(ra)
Current Store : [0x80001ad0] : sd t5, 1448(ra) -- Store: [0x80003988]:0x0000040001000000




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80001af4]:KMMAWB t6, t5, t4
	-[0x80001af8]:sd t6, 1456(ra)
Current Store : [0x80001afc] : sd t5, 1464(ra) -- Store: [0x80003998]:0xFDFFFFFF00000007




Last Coverpoint : ['opcode : kmmawb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_h3_val == -257', 'rs2_h2_val == -8193', 'rs2_h1_val == 32', 'rs2_h0_val == 2048', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80001b24]:KMMAWB t6, t5, t4
	-[0x80001b28]:sd t6, 1472(ra)
Current Store : [0x80001b2c] : sd t5, 1480(ra) -- Store: [0x800039a8]:0x0010000080000000




Last Coverpoint : ['opcode : kmmawb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == 16', 'rs2_h0_val == 16384', 'rs1_w1_val == -4194305', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001b54]:KMMAWB t6, t5, t4
	-[0x80001b58]:sd t6, 1488(ra)
Current Store : [0x80001b5c] : sd t5, 1496(ra) -- Store: [0x800039b8]:0xFFBFFFFFF7FFFFFF




Last Coverpoint : ['opcode : kmmawb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -8193', 'rs2_h2_val == 4096', 'rs2_h1_val == 21845', 'rs1_w1_val == 8', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80001b8c]:KMMAWB t6, t5, t4
	-[0x80001b90]:sd t6, 1504(ra)
Current Store : [0x80001b94] : sd t5, 1512(ra) -- Store: [0x800039c8]:0x0000000800000008





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

|s.no|            signature             |                                                                                                                  coverpoints                                                                                                                   |                                 code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x5C1DE07D5BFEDBBD|- opcode : kmmawb<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x8<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -257<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 32<br> - rs2_h0_val == 2048<br>                                                   |[0x800003c8]:KMMAWB fp, s7, s7<br> [0x800003cc]:sd fp, 0(s1)<br>      |
|   2|[0x80003220]<br>0xAAA855570020FFBC|- rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h0_val == -2<br>                                                                                                                            |[0x800003f8]:KMMAWB sp, sp, sp<br> [0x800003fc]:sd sp, 16(s1)<br>     |
|   3|[0x80003230]<br>0xDDB7D5BFDDB7D5BF|- rs1 : x26<br> - rs2 : x0<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -134217729<br> |[0x80000428]:KMMAWB t3, s10, zero<br> [0x8000042c]:sd t3, 32(s1)<br>  |
|   4|[0x80003240]<br>0x00007FFC0003FFDC|- rs1 : x4<br> - rs2 : x29<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h0_val == -9<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 262144<br>                                                                       |[0x80000458]:KMMAWB tp, tp, t4<br> [0x8000045c]:sd tp, 48(s1)<br>     |
|   5|[0x80003250]<br>0xBFFF0000FDEFDF7F|- rs1 : x8<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 1<br> - rs2_h1_val == -513<br> - rs2_h0_val == -8193<br> - rs1_w1_val == -129<br> - rs1_w0_val == 8388608<br>                   |[0x80000490]:KMMAWB a3, fp, a3<br> [0x80000494]:sd a3, 64(s1)<br>     |
|   6|[0x80003260]<br>0xFEFFDFFF00200800|- rs1 : x0<br> - rs2 : x5<br> - rd : x23<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 21845<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                           |[0x800004c8]:KMMAWB s7, zero, t0<br> [0x800004cc]:sd s7, 80(s1)<br>   |
|   7|[0x80003270]<br>0x7FBB6FAA7FBB6FDB|- rs1 : x24<br> - rs2 : x28<br> - rd : x3<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 64<br> - rs1_w0_val == 524288<br>                                                                                                                       |[0x800004f8]:KMMAWB gp, s8, t3<br> [0x800004fc]:sd gp, 96(s1)<br>     |
|   8|[0x80003280]<br>0x6FAB7FBB6FAB7FBA|- rs1 : x15<br> - rs2 : x7<br> - rd : x19<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 256<br> - rs2_h1_val == 16<br> - rs1_w1_val == 64<br> - rs1_w0_val == -257<br>                                                                          |[0x80000528]:KMMAWB s3, a5, t2<br> [0x8000052c]:sd s3, 112(s1)<br>    |
|   9|[0x80003290]<br>0x0000000400000300|- rs1 : x25<br> - rs2 : x14<br> - rd : x10<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -16385<br> - rs1_w1_val == -17<br> - rs1_w0_val == 8192<br>                                                                                            |[0x80000558]:KMMAWB a0, s9, a4<br> [0x8000055c]:sd a0, 128(s1)<br>    |
|  10|[0x800032a0]<br>0xF76DF56EF771F56E|- rs1 : x3<br> - rs2 : x26<br> - rd : x30<br> - rs2_h3_val == -513<br> - rs2_h2_val == -2<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 8<br> - rs1_w1_val == 8<br> - rs1_w0_val == 2147483647<br>                                              |[0x80000588]:KMMAWB t5, gp, s10<br> [0x8000058c]:sd t5, 144(s1)<br>   |
|  11|[0x800032b0]<br>0xFBB6FAB6FBB6FAB6|- rs1 : x28<br> - rs2 : x4<br> - rd : x31<br> - rs2_h3_val == -129<br> - rs2_h1_val == -33<br> - rs2_h0_val == -129<br> - rs1_w0_val == 8<br>                                                                                                   |[0x800005b8]:KMMAWB t6, t3, tp<br> [0x800005bc]:sd t6, 160(s1)<br>    |
|  12|[0x800032c0]<br>0xFEEDC6ADFEEDBEAC|- rs1 : x30<br> - rs2 : x20<br> - rd : x1<br> - rs2_h3_val == -65<br> - rs2_h1_val == -257<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 128<br>                                                                                               |[0x800005e0]:KMMAWB ra, t5, s4<br> [0x800005e4]:sd ra, 176(s1)<br>    |
|  13|[0x800032d0]<br>0xEAAA5544FFEFA000|- rs1 : x18<br> - rs2 : x10<br> - rd : x25<br> - rs2_h3_val == -33<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -33<br> - rs1_w1_val == 1431655765<br>                                                                                        |[0x8000061c]:KMMAWB s9, s2, a0<br> [0x80000620]:sd s9, 192(s1)<br>    |
|  14|[0x800032e0]<br>0x7FF7FFF7FFFAFFF6|- rs1 : x12<br> - rs2 : x16<br> - rd : x29<br> - rs2_h3_val == -17<br> - rs2_h2_val == 128<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -1<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 256<br>                                          |[0x80000648]:KMMAWB t4, a2, a6<br> [0x8000064c]:sd t4, 208(s1)<br>    |
|  15|[0x800032f0]<br>0xFFFFFFBF80002FFF|- rs1 : x17<br> - rs2 : x22<br> - rd : x6<br> - rs2_h3_val == -9<br> - rs2_h2_val == -513<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 32768<br>                                                                                                |[0x80000670]:KMMAWB t1, a7, s6<br> [0x80000674]:sd t1, 224(s1)<br>    |
|  16|[0x80003300]<br>0xDFFF0F9055550006|- rs1 : x10<br> - rs2 : x3<br> - rd : x5<br> - rs2_h3_val == -5<br> - rs2_h1_val == 64<br> - rs2_h0_val == -17<br> - rs1_w1_val == 1048576<br>                                                                                                  |[0x800006a8]:KMMAWB t0, a0, gp<br> [0x800006ac]:sd t0, 0(sp)<br>      |
|  17|[0x80003310]<br>0xDDEADBEEDBE6DFED|- rs1 : x16<br> - rs2 : x11<br> - rd : x21<br> - rs2_h3_val == -3<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -1025<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -8388609<br>                                                             |[0x800006e0]:KMMAWB s5, a6, a1<br> [0x800006e4]:sd s5, 16(sp)<br>     |
|  18|[0x80003320]<br>0x0000001A0007F555|- rs1 : x6<br> - rs2 : x21<br> - rd : x24<br> - rs2_h3_val == -2<br> - rs2_h2_val == 2<br> - rs2_h0_val == -21846<br>                                                                                                                           |[0x80000714]:KMMAWB s8, t1, s5<br> [0x80000718]:sd s8, 32(sp)<br>     |
|  19|[0x80003330]<br>0xFEFFFFFEEFFF0008|- rs1 : x11<br> - rs2 : x12<br> - rd : x26<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -8193<br> - rs1_w0_val == 512<br>                                                                                           |[0x80000748]:KMMAWB s10, a1, a2<br> [0x8000074c]:sd s10, 48(sp)<br>   |
|  20|[0x80003340]<br>0xFFFFF840FFFFFF07|- rs1 : x7<br> - rs2 : x1<br> - rd : x15<br> - rs2_h3_val == 16384<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -257<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == -2049<br>                                                                 |[0x80000784]:KMMAWB a5, t2, ra<br> [0x80000788]:sd a5, 64(sp)<br>     |
|  21|[0x80003350]<br>0xBB6FAB79BB6FCC7F|- rs1 : x1<br> - rs2 : x24<br> - rd : x27<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -21846<br> - rs2_h1_val == -5<br> - rs1_w1_val == 16<br> - rs1_w0_val == -16777217<br>                                                                   |[0x800007b8]:KMMAWB s11, ra, s8<br> [0x800007bc]:sd s11, 80(sp)<br>   |
|  22|[0x80003360]<br>0x01FFFFFF07FFD7FF|- rs1 : x14<br> - rs2 : x25<br> - rd : x7<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -1<br> - rs1_w1_val == 256<br> - rs1_w0_val == 536870912<br>                                                                                             |[0x800007f0]:KMMAWB t2, a4, s9<br> [0x800007f4]:sd t2, 96(sp)<br>     |
|  23|[0x80003370]<br>0x5555554B7FFFFFFE|- rs1 : x20<br> - rs2 : x8<br> - rd : x18<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -5<br> - rs1_w1_val == 131072<br>                                                                                                                        |[0x80000820]:KMMAWB s2, s4, fp<br> [0x80000824]:sd s2, 112(sp)<br>    |
|  24|[0x80003380]<br>0x03FF7FFFFF8003FF|- rs1 : x5<br> - rs2 : x30<br> - rd : x16<br> - rs2_h3_val == 1024<br> - rs2_h0_val == 256<br> - rs1_w1_val == -8388609<br>                                                                                                                     |[0x80000858]:KMMAWB a6, t0, t5<br> [0x8000085c]:sd a6, 128(sp)<br>    |
|  25|[0x80003390]<br>0x80004000DFFF0002|- rs1 : x29<br> - rs2 : x15<br> - rd : x12<br> - rs2_h3_val == 512<br> - rs2_h2_val == -65<br> - rs2_h1_val == -9<br> - rs2_h0_val == 32<br> - rs1_w1_val == -9<br> - rs1_w0_val == 4096<br>                                                    |[0x80000888]:KMMAWB a2, t4, a5<br> [0x8000088c]:sd a2, 144(sp)<br>    |
|  26|[0x800033a0]<br>0xFFE1FC0000000009|- rs1 : x9<br> - rs2 : x27<br> - rd : x20<br> - rs2_h3_val == 256<br> - rs2_h2_val == -2049<br> - rs2_h0_val == 512<br> - rs1_w0_val == 2<br>                                                                                                   |[0x800008b8]:KMMAWB s4, s1, s11<br> [0x800008bc]:sd s4, 160(sp)<br>   |
|  27|[0x800033b0]<br>0x03FFFFFF00020200|- rs1 : x13<br> - rs2 : x9<br> - rd : x11<br> - rs2_h3_val == 128<br> - rs2_h2_val == -129<br> - rs2_h1_val == 256<br> - rs1_w1_val == 32<br> - rs1_w0_val == -524289<br>                                                                       |[0x800008e8]:KMMAWB a1, a3, s1<br> [0x800008ec]:sd a1, 176(sp)<br>    |
|  28|[0x800033c0]<br>0xFFFE20000000B800|- rs1 : x22<br> - rs2 : x19<br> - rd : x17<br> - rs2_h3_val == 64<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 134217728<br>                                                                                                              |[0x8000091c]:KMMAWB a7, s6, s3<br> [0x80000920]:sd a7, 192(sp)<br>    |
|  29|[0x800033d0]<br>0xFE80FF7F01814000|- rs1 : x19<br> - rs2 : x31<br> - rd : x9<br> - rs1_w0_val == -2147483648<br> - rs2_h3_val == 32<br> - rs2_h2_val == 1024<br> - rs2_h1_val == 8192<br> - rs1_w1_val == -2147483648<br>                                                          |[0x80000950]:KMMAWB s1, s3, t6<br> [0x80000954]:sd s1, 208(sp)<br>    |
|  30|[0x800033e0]<br>0x000001001FFFF000|- rs1 : x27<br> - rs2 : x6<br> - rd : x14<br> - rs2_h3_val == 16<br> - rs1_w1_val == 16384<br>                                                                                                                                                  |[0x80000980]:KMMAWB a4, s11, t1<br> [0x80000984]:sd a4, 0(ra)<br>     |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x17<br> - rd : x0<br> - rs2_h3_val == 8<br> - rs1_w0_val == 131072<br>                                                                                                                                                  |[0x800009b8]:KMMAWB zero, s5, a7<br> [0x800009bc]:sd zero, 16(ra)<br> |
|  32|[0x80003400]<br>0x7FFFFFFF07FFFFFF|- rs1 : x31<br> - rs2 : x18<br> - rd : x22<br> - rs2_h3_val == 4<br> - rs2_h1_val == 8<br>                                                                                                                                                      |[0x800009e4]:KMMAWB s6, t6, s2<br> [0x800009e8]:sd s6, 32(ra)<br>     |
|  33|[0x80003410]<br>0x0000000700000007|- rs2_h3_val == 2<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                     |[0x80000a14]:KMMAWB t6, t5, t4<br> [0x80000a18]:sd t6, 48(ra)<br>     |
|  34|[0x80003420]<br>0xFFFC000700000006|- rs2_h3_val == 1<br> - rs2_h0_val == 2<br> - rs1_w0_val == -65<br>                                                                                                                                                                             |[0x80000a48]:KMMAWB t6, t5, t4<br> [0x80000a4c]:sd t6, 64(ra)<br>     |
|  35|[0x80003430]<br>0xFFFC000BFFFFDE06|- rs2_h2_val == -257<br> - rs2_h1_val == 2048<br> - rs1_w1_val == -1025<br> - rs1_w0_val == 33554432<br>                                                                                                                                        |[0x80000a78]:KMMAWB t6, t5, t4<br> [0x80000a7c]:sd t6, 80(ra)<br>     |
|  36|[0x80003440]<br>0xFFFC000BFFFFDE0E|- rs2_h3_val == -1<br> - rs2_h0_val == -513<br> - rs1_w0_val == -1025<br>                                                                                                                                                                       |[0x80000aa8]:KMMAWB t6, t5, t4<br> [0x80000aac]:sd t6, 96(ra)<br>     |
|  37|[0x80003450]<br>0xEAA6C00BFFFFDE12|- rs2_h2_val == 21845<br> - rs2_h0_val == -65<br> - rs1_w0_val == -4097<br>                                                                                                                                                                     |[0x80000ae4]:KMMAWB t6, t5, t4<br> [0x80000ae8]:sd t6, 112(ra)<br>    |
|  38|[0x80003460]<br>0xEAA6C009FFFFDE1A|- rs2_h2_val == -4097<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                |[0x80000b0c]:KMMAWB t6, t5, t4<br> [0x80000b10]:sd t6, 128(ra)<br>    |
|  39|[0x80003470]<br>0xEAA6C109FFFFEF1A|- rs2_h2_val == -1025<br> - rs1_w1_val == -16385<br>                                                                                                                                                                                            |[0x80000b48]:KMMAWB t6, t5, t4<br> [0x80000b4c]:sd t6, 144(ra)<br>    |
|  40|[0x80003480]<br>0xEAAF0109FFFFF51A|- rs2_h2_val == -33<br> - rs2_h1_val == -17<br> - rs2_h0_val == -3<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -33554433<br>                                                                                                            |[0x80000b80]:KMMAWB t6, t5, t4<br> [0x80000b84]:sd t6, 160(ra)<br>    |
|  41|[0x80003490]<br>0xEAAE0108FFFFF0FA|- rs1_w1_val == -33554433<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                       |[0x80000bb4]:KMMAWB t6, t5, t4<br> [0x80000bb8]:sd t6, 176(ra)<br>    |
|  42|[0x800034a0]<br>0xE003565DFFFFF06A|- rs2_h2_val == 8192<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 1048576<br>                                                                                                                                                            |[0x80000bec]:KMMAWB t6, t5, t4<br> [0x80000bf0]:sd t6, 192(ra)<br>    |
|  43|[0x800034b0]<br>0xE003565C000045BF|- rs2_h0_val == 21845<br> - rs1_w1_val == -5<br> - rs1_w0_val == 65536<br>                                                                                                                                                                      |[0x80000c1c]:KMMAWB t6, t5, t4<br> [0x80000c20]:sd t6, 208(ra)<br>    |
|  44|[0x800034c0]<br>0xE007965C00005B14|- rs2_h2_val == -17<br> - rs2_h1_val == -65<br> - rs1_w0_val == 16384<br>                                                                                                                                                                       |[0x80000c54]:KMMAWB t6, t5, t4<br> [0x80000c58]:sd t6, 224(ra)<br>    |
|  45|[0x800034d0]<br>0xDAB1EBB100005B13|- rs2_h1_val == 512<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                |[0x80000c90]:KMMAWB t6, t5, t4<br> [0x80000c94]:sd t6, 240(ra)<br>    |
|  46|[0x800034e0]<br>0xDAB0EBB100005B13|- rs2_h2_val == -32768<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                             |[0x80000cb8]:KMMAWB t6, t5, t4<br> [0x80000cbc]:sd t6, 256(ra)<br>    |
|  47|[0x800034f0]<br>0xDAB2EBD100005B12|- rs2_h1_val == 4096<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 64<br>                                                                                                                                                                    |[0x80000cec]:KMMAWB t6, t5, t4<br> [0x80000cf0]:sd t6, 272(ra)<br>    |
|  48|[0x80003500]<br>0xDAB2EBD100005B12|- rs2_h1_val == -1<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                   |[0x80000d1c]:KMMAWB t6, t5, t4<br> [0x80000d20]:sd t6, 288(ra)<br>    |
|  49|[0x80003510]<br>0xDAB2ED5100005B11|- rs2_h2_val == -3<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                   |[0x80000d50]:KMMAWB t6, t5, t4<br> [0x80000d54]:sd t6, 304(ra)<br>    |
|  50|[0x80003520]<br>0xDAB2ED4600005B10|- rs1_w0_val == 4<br>                                                                                                                                                                                                                           |[0x80000d80]:KMMAWB t6, t5, t4<br> [0x80000d84]:sd t6, 320(ra)<br>    |
|  51|[0x80003530]<br>0xDAB2BD4600005B10|- rs2_h1_val == 16384<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 1<br>                                                                                                                                                                   |[0x80000db0]:KMMAWB t6, t5, t4<br> [0x80000db4]:sd t6, 336(ra)<br>    |
|  52|[0x80003540]<br>0xDAB2BD2500005B10|- rs2_h2_val == 8<br> - rs1_w1_val == -262145<br>                                                                                                                                                                                               |[0x80000dd8]:KMMAWB t6, t5, t4<br> [0x80000ddc]:sd t6, 352(ra)<br>    |
|  53|[0x80003550]<br>0xDAB2BD2400005B0F|- rs1_w1_val == 2048<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                 |[0x80000e0c]:KMMAWB t6, t5, t4<br> [0x80000e10]:sd t6, 368(ra)<br>    |
|  54|[0x80003560]<br>0xDAB2BD2300005A0F|- rs2_h2_val == -9<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                              |[0x80000e3c]:KMMAWB t6, t5, t4<br> [0x80000e40]:sd t6, 384(ra)<br>    |
|  55|[0x80003570]<br>0xDAB6BD230000590F|- rs2_h3_val == 21845<br> - rs2_h2_val == 2048<br> - rs1_w1_val == 8388608<br>                                                                                                                                                                  |[0x80000e68]:KMMAWB t6, t5, t4<br> [0x80000e6c]:sd t6, 400(ra)<br>    |
|  56|[0x80003580]<br>0xD9B6BD230000590F|- rs2_h2_val == 512<br> - rs2_h1_val == 1<br> - rs1_w0_val == -513<br>                                                                                                                                                                          |[0x80000e9c]:KMMAWB t6, t5, t4<br> [0x80000ea0]:sd t6, 416(ra)<br>    |
|  57|[0x80003590]<br>0xD9B6BD220000590F|- rs2_h2_val == 32<br> - rs1_w1_val == -257<br>                                                                                                                                                                                                 |[0x80000ecc]:KMMAWB t6, t5, t4<br> [0x80000ed0]:sd t6, 432(ra)<br>    |
|  58|[0x800035a0]<br>0xD9B6BD210000590E|- rs2_h2_val == 4<br> - rs1_w1_val == -3<br> - rs1_w0_val == -129<br>                                                                                                                                                                           |[0x80000ef4]:KMMAWB t6, t5, t4<br> [0x80000ef8]:sd t6, 448(ra)<br>    |
|  59|[0x800035b0]<br>0xD9B6DD21000058F8|- rs2_h1_val == -21846<br> - rs1_w1_val == -536870913<br>                                                                                                                                                                                       |[0x80000f24]:KMMAWB t6, t5, t4<br> [0x80000f28]:sd t6, 464(ra)<br>    |
|  60|[0x800035c0]<br>0xD9B6DD2100005978|- rs2_h1_val == -16385<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                            |[0x80000f50]:KMMAWB t6, t5, t4<br> [0x80000f54]:sd t6, 480(ra)<br>    |
|  61|[0x800035d0]<br>0xD9B6D92108003978|- rs2_h1_val == -2049<br>                                                                                                                                                                                                                       |[0x80000f84]:KMMAWB t6, t5, t4<br> [0x80000f88]:sd t6, 496(ra)<br>    |
|  62|[0x800035e0]<br>0xD9B6D92008003968|- rs2_h1_val == -129<br>                                                                                                                                                                                                                        |[0x80000fb4]:KMMAWB t6, t5, t4<br> [0x80000fb8]:sd t6, 512(ra)<br>    |
|  63|[0x800035f0]<br>0xD9B6DA0008003968|- rs2_h1_val == -3<br> - rs2_h0_val == 4096<br>                                                                                                                                                                                                 |[0x80000fe4]:KMMAWB t6, t5, t4<br> [0x80000fe8]:sd t6, 528(ra)<br>    |
|  64|[0x80003600]<br>0xD9B6D9DF08003967|- rs2_h2_val == 16<br> - rs2_h1_val == -2<br> - rs2_h0_val == 64<br> - rs1_w1_val == -131073<br>                                                                                                                                                |[0x80001014]:KMMAWB t6, t5, t4<br> [0x80001018]:sd t6, 544(ra)<br>    |
|  65|[0x80003610]<br>0xD9B6D9DF08003B66|- rs2_h1_val == 128<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                               |[0x8000103c]:KMMAWB t6, t5, t4<br> [0x80001040]:sd t6, 560(ra)<br>    |
|  66|[0x80003620]<br>0xD9B6D9DE08004B66|- rs2_h1_val == 4<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                   |[0x80001064]:KMMAWB t6, t5, t4<br> [0x80001068]:sd t6, 576(ra)<br>    |
|  67|[0x80003630]<br>0xD9B6D9DE08004BC6|- rs2_h1_val == 2<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                              |[0x80001098]:KMMAWB t6, t5, t4<br> [0x8000109c]:sd t6, 592(ra)<br>    |
|  68|[0x80003640]<br>0xD9B6D9DE08004BC5|- rs1_w0_val == -17<br>                                                                                                                                                                                                                         |[0x800010c0]:KMMAWB t6, t5, t4<br> [0x800010c4]:sd t6, 608(ra)<br>    |
|  69|[0x80003650]<br>0xD9B6D9DE08004BBC|- rs2_h0_val == 8192<br> - rs1_w1_val == -513<br>                                                                                                                                                                                               |[0x800010ec]:KMMAWB t6, t5, t4<br> [0x800010f0]:sd t6, 624(ra)<br>    |
|  70|[0x80003660]<br>0xD9BED9CE08004BBB|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                        |[0x80001120]:KMMAWB t6, t5, t4<br> [0x80001124]:sd t6, 640(ra)<br>    |
|  71|[0x80003670]<br>0xD9BED9CE08004BBC|- rs2_h0_val == 1<br>                                                                                                                                                                                                                           |[0x80001148]:KMMAWB t6, t5, t4<br> [0x8000114c]:sd t6, 656(ra)<br>    |
|  72|[0x80003680]<br>0xD9C2E1CE08000BBB|- rs2_h0_val == -16385<br> - rs1_w1_val == -134217729<br>                                                                                                                                                                                       |[0x80001180]:KMMAWB t6, t5, t4<br> [0x80001184]:sd t6, 672(ra)<br>    |
|  73|[0x80003690]<br>0xD9C305CE08000FBF|- rs1_w1_val == -67108865<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                       |[0x800011bc]:KMMAWB t6, t5, t4<br> [0x800011c0]:sd t6, 688(ra)<br>    |
|  74|[0x800036a0]<br>0xD9C205CD080017BF|- rs1_w1_val == -16777217<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                     |[0x800011f0]:KMMAWB t6, t5, t4<br> [0x800011f4]:sd t6, 704(ra)<br>    |
|  75|[0x800036b0]<br>0xD9C2061D080013BF|- rs1_w1_val == -1048577<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                       |[0x80001220]:KMMAWB t6, t5, t4<br> [0x80001224]:sd t6, 720(ra)<br>    |
|  76|[0x800036c0]<br>0xD9C20725080013BC|- rs1_w1_val == -524289<br>                                                                                                                                                                                                                     |[0x80001250]:KMMAWB t6, t5, t4<br> [0x80001254]:sd t6, 736(ra)<br>    |
|  77|[0x800036d0]<br>0xD9C20766080013BC|- rs1_w1_val == -65537<br>                                                                                                                                                                                                                      |[0x80001280]:KMMAWB t6, t5, t4<br> [0x80001284]:sd t6, 752(ra)<br>    |
|  78|[0x800036e0]<br>0xD9C2076607FFF3B4|- rs2_h0_val == -1025<br> - rs1_w1_val == -32769<br>                                                                                                                                                                                            |[0x800012a8]:KMMAWB t6, t5, t4<br> [0x800012ac]:sd t6, 768(ra)<br>    |
|  79|[0x800036f0]<br>0xD9C2076407FFF3B4|- rs1_w1_val == -8193<br>                                                                                                                                                                                                                       |[0x800012d8]:KMMAWB t6, t5, t4<br> [0x800012dc]:sd t6, 784(ra)<br>    |
|  80|[0x80003700]<br>0xD9C2075307FFF333|- rs1_w1_val == -4097<br>                                                                                                                                                                                                                       |[0x8000130c]:KMMAWB t6, t5, t4<br> [0x80001310]:sd t6, 800(ra)<br>    |
|  81|[0x80003710]<br>0xD9C2076307FD7333|- rs1_w1_val == -2049<br>                                                                                                                                                                                                                       |[0x80001340]:KMMAWB t6, t5, t4<br> [0x80001344]:sd t6, 816(ra)<br>    |
|  82|[0x80003720]<br>0xD9C2075E07FD7333|- rs1_w1_val == -65<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                  |[0x80001370]:KMMAWB t6, t5, t4<br> [0x80001374]:sd t6, 832(ra)<br>    |
|  83|[0x80003730]<br>0xD9C2075D07FD7331|- rs1_w1_val == -33<br>                                                                                                                                                                                                                         |[0x8000139c]:KMMAWB t6, t5, t4<br> [0x800013a0]:sd t6, 848(ra)<br>    |
|  84|[0x80003740]<br>0xD9C2075C07FD7335|- rs1_w1_val == -2<br>                                                                                                                                                                                                                          |[0x800013cc]:KMMAWB t6, t5, t4<br> [0x800013d0]:sd t6, 864(ra)<br>    |
|  85|[0x80003750]<br>0xD9C4075C07FD6534|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                  |[0x80001404]:KMMAWB t6, t5, t4<br> [0x80001408]:sd t6, 880(ra)<br>    |
|  86|[0x80003760]<br>0xD983E75C07FD6734|- rs1_w1_val == 536870912<br>                                                                                                                                                                                                                   |[0x80001438]:KMMAWB t6, t5, t4<br> [0x8000143c]:sd t6, 896(ra)<br>    |
|  87|[0x80003770]<br>0xD583E75C07FD6734|- rs1_w1_val == 134217728<br>                                                                                                                                                                                                                   |[0x80001474]:KMMAWB t6, t5, t4<br> [0x80001478]:sd t6, 912(ra)<br>    |
|  88|[0x80003780]<br>0xD583665C07FD673C|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                    |[0x800014b0]:KMMAWB t6, t5, t4<br> [0x800014b4]:sd t6, 928(ra)<br>    |
|  89|[0x80003790]<br>0xD573665C07FD673C|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                                     |[0x800014e0]:KMMAWB t6, t5, t4<br> [0x800014e4]:sd t6, 944(ra)<br>    |
|  90|[0x800037a0]<br>0xD573663C07FD6744|- rs1_w1_val == 2097152<br>                                                                                                                                                                                                                     |[0x80001514]:KMMAWB t6, t5, t4<br> [0x80001518]:sd t6, 960(ra)<br>    |
|  91|[0x800037b0]<br>0xD573662C07FE6744|- rs1_w1_val == 262144<br>                                                                                                                                                                                                                      |[0x80001544]:KMMAWB t6, t5, t4<br> [0x80001548]:sd t6, 976(ra)<br>    |
|  92|[0x800037c0]<br>0xD573663107FE6743|- rs1_w1_val == 65536<br>                                                                                                                                                                                                                       |[0x80001574]:KMMAWB t6, t5, t4<br> [0x80001578]:sd t6, 992(ra)<br>    |
|  93|[0x800037d0]<br>0xD573662E08026742|- rs1_w1_val == 4096<br>                                                                                                                                                                                                                        |[0x800015a8]:KMMAWB t6, t5, t4<br> [0x800015ac]:sd t6, 1008(ra)<br>   |
|  94|[0x800037e0]<br>0xD573672D08026741|- rs1_w1_val == 1024<br> - rs1_w0_val == -33<br>                                                                                                                                                                                                |[0x800015d8]:KMMAWB t6, t5, t4<br> [0x800015dc]:sd t6, 1024(ra)<br>   |
|  95|[0x800037f0]<br>0xD573671C08026760|- rs1_w1_val == 512<br>                                                                                                                                                                                                                         |[0x80001604]:KMMAWB t6, t5, t4<br> [0x80001608]:sd t6, 1040(ra)<br>   |
|  96|[0x80003800]<br>0xD573671C0802675F|- rs1_w1_val == 128<br>                                                                                                                                                                                                                         |[0x80001634]:KMMAWB t6, t5, t4<br> [0x80001638]:sd t6, 1056(ra)<br>   |
|  97|[0x80003810]<br>0xD573671B0802675F|- rs1_w1_val == 4<br>                                                                                                                                                                                                                           |[0x80001664]:KMMAWB t6, t5, t4<br> [0x80001668]:sd t6, 1072(ra)<br>   |
|  98|[0x80003820]<br>0xD573671B0802665E|- rs2_h0_val == -2049<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                 |[0x80001694]:KMMAWB t6, t5, t4<br> [0x80001698]:sd t6, 1088(ra)<br>   |
|  99|[0x80003830]<br>0xD573671B0802565D|- rs1_w1_val == 1<br>                                                                                                                                                                                                                           |[0x800016c8]:KMMAWB t6, t5, t4<br> [0x800016cc]:sd t6, 1104(ra)<br>   |
| 100|[0x80003840]<br>0xD573671A0802565C|- rs1_w1_val == -1<br>                                                                                                                                                                                                                          |[0x800016f8]:KMMAWB t6, t5, t4<br> [0x800016fc]:sd t6, 1120(ra)<br>   |
| 101|[0x80003850]<br>0xD593679A08080106|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                 |[0x80001738]:KMMAWB t6, t5, t4<br> [0x8000173c]:sd t6, 1136(ra)<br>   |
| 102|[0x80003860]<br>0xD58B67990807565B|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                  |[0x80001778]:KMMAWB t6, t5, t4<br> [0x8000177c]:sd t6, 1152(ra)<br>   |
| 103|[0x80003870]<br>0xD560BC990806965A|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                 |[0x800017a4]:KMMAWB t6, t5, t4<br> [0x800017a8]:sd t6, 1168(ra)<br>   |
| 104|[0x80003880]<br>0xD560D09904069659|- rs1_w0_val == -536870913<br>                                                                                                                                                                                                                  |[0x800017d4]:KMMAWB t6, t5, t4<br> [0x800017d8]:sd t6, 1184(ra)<br>   |
| 105|[0x80003890]<br>0xD560D09904069659|- rs1_w0_val == -268435457<br>                                                                                                                                                                                                                  |[0x80001800]:KMMAWB t6, t5, t4<br> [0x80001804]:sd t6, 1200(ra)<br>   |
| 106|[0x800038a0]<br>0xD560409804065658|- rs1_w0_val == -4194305<br>                                                                                                                                                                                                                    |[0x80001838]:KMMAWB t6, t5, t4<br> [0x8000183c]:sd t6, 1216(ra)<br>   |
| 107|[0x800038b0]<br>0xD560409804065457|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                                    |[0x80001864]:KMMAWB t6, t5, t4<br> [0x80001868]:sd t6, 1232(ra)<br>   |
| 108|[0x800038c0]<br>0xD56040B80406544E|- rs1_w0_val == -131073<br>                                                                                                                                                                                                                     |[0x80001898]:KMMAWB t6, t5, t4<br> [0x8000189c]:sd t6, 1248(ra)<br>   |
| 109|[0x800038d0]<br>0xD56041380406944E|- rs1_w0_val == -65537<br>                                                                                                                                                                                                                      |[0x800018c8]:KMMAWB t6, t5, t4<br> [0x800018cc]:sd t6, 1264(ra)<br>   |
| 110|[0x800038e0]<br>0xD55BC1380406946E|- rs1_w0_val == -32769<br>                                                                                                                                                                                                                      |[0x80001900]:KMMAWB t6, t5, t4<br> [0x80001904]:sd t6, 1280(ra)<br>   |
| 111|[0x800038f0]<br>0xD55BC137040693ED|- rs1_w0_val == -16385<br>                                                                                                                                                                                                                      |[0x8000192c]:KMMAWB t6, t5, t4<br> [0x80001930]:sd t6, 1296(ra)<br>   |
| 112|[0x80003900]<br>0xD55BC13604068BEC|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                       |[0x8000195c]:KMMAWB t6, t5, t4<br> [0x80001960]:sd t6, 1312(ra)<br>   |
| 113|[0x80003910]<br>0xD55BC1350806CBEC|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                       |[0x80001988]:KMMAWB t6, t5, t4<br> [0x8000198c]:sd t6, 1328(ra)<br>   |
| 114|[0x80003920]<br>0xD55BC1350806CBEC|- rs1_w0_val == -9<br>                                                                                                                                                                                                                          |[0x800019b8]:KMMAWB t6, t5, t4<br> [0x800019bc]:sd t6, 1344(ra)<br>   |
| 115|[0x80003930]<br>0xD55BD1350806CBEC|- rs1_w0_val == -3<br>                                                                                                                                                                                                                          |[0x800019e8]:KMMAWB t6, t5, t4<br> [0x800019ec]:sd t6, 1360(ra)<br>   |
| 116|[0x80003940]<br>0xD55BD0F40806CBEB|- rs1_w0_val == -2<br>                                                                                                                                                                                                                          |[0x80001a14]:KMMAWB t6, t5, t4<br> [0x80001a18]:sd t6, 1376(ra)<br>   |
| 117|[0x80003950]<br>0xD55BD0F40886CBEB|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                  |[0x80001a40]:KMMAWB t6, t5, t4<br> [0x80001a44]:sd t6, 1392(ra)<br>   |
| 118|[0x80003960]<br>0xD55BD6F408873BEB|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                                   |[0x80001a68]:KMMAWB t6, t5, t4<br> [0x80001a6c]:sd t6, 1408(ra)<br>   |
| 119|[0x80003970]<br>0xD55BD8F408873BEB|- rs2_h0_val == -5<br>                                                                                                                                                                                                                          |[0x80001a98]:KMMAWB t6, t5, t4<br> [0x80001a9c]:sd t6, 1424(ra)<br>   |
| 120|[0x80003980]<br>0xD55BD8F308877BEB|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                                    |[0x80001ac8]:KMMAWB t6, t5, t4<br> [0x80001acc]:sd t6, 1440(ra)<br>   |
| 121|[0x80003990]<br>0xD57BDAF308877BE7|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                      |[0x80001af4]:KMMAWB t6, t5, t4<br> [0x80001af8]:sd t6, 1456(ra)<br>   |
