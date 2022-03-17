
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a50')]      |
| SIG_REGION                | [('0x80003210', '0x80003990', '240 dwords')]      |
| COV_LABELS                | kmmawt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmawt-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 240      |
| STAT1                     | 117      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 120     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015a4]:KMMAWT t6, t5, t4
      [0x800015a8]:sd t6, 1008(ra)
 -- Signature Address: 0x80003800 Data: 0x0506D6B47CB41989
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -16385
      - rs2_h2_val == 32
      - rs1_w1_val == 0
      - rs1_w0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019d8]:KMMAWT t6, t5, t4
      [0x800019dc]:sd t6, 1360(ra)
 -- Signature Address: 0x80003960 Data: 0x03B9F64E7CB4778B
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_h3_val == -33
      - rs2_h2_val == -9
      - rs2_h1_val == -9
      - rs2_h0_val == -4097
      - rs1_w1_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a40]:KMMAWT t6, t5, t4
      [0x80001a44]:sd t6, 1392(ra)
 -- Signature Address: 0x80003980 Data: 0x03CF4BD37CB4777F
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 21845
      - rs2_h2_val == 4
      - rs1_w1_val == 16
      - rs1_w0_val == -131073






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawt', 'rs1 : x16', 'rs2 : x16', 'rd : x20', 'rs1 == rs2 != rd', 'rs2_h3_val == -33', 'rs2_h2_val == -9', 'rs2_h1_val == -9', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800003c4]:KMMAWT s4, a6, a6
	-[0x800003c8]:sd s4, 0(t1)
Current Store : [0x800003cc] : sd a6, 8(t1) -- Store: [0x80003218]:0xFFDFFFF7FFF7EFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x3', 'rd : x3', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h2_val == -3', 'rs2_h0_val == -3']
Last Code Sequence : 
	-[0x800003f8]:KMMAWT gp, gp, gp
	-[0x800003fc]:sd gp, 16(t1)
Current Store : [0x80000400] : sd gp, 24(t1) -- Store: [0x80003228]:0xC71CE38CFFF80045




Last Coverpoint : ['rs1 : x25', 'rs2 : x20', 'rd : x0', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == 4', 'rs1_w1_val == 16', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x8000042c]:KMMAWT zero, s9, s4
	-[0x80000430]:sd zero, 32(t1)
Current Store : [0x80000434] : sd s9, 40(t1) -- Store: [0x80003238]:0x00000010FFFDFFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x9', 'rd : x11', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == -33', 'rs2_h1_val == -8193', 'rs2_h0_val == 21845', 'rs1_w1_val == 1', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000045c]:KMMAWT a1, a1, s1
	-[0x80000460]:sd a1, 48(t1)
Current Store : [0x80000464] : sd a1, 56(t1) -- Store: [0x80003248]:0x000000011BFFE000




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x1', 'rs2 == rd != rs1', 'rs2_h3_val == -16385', 'rs2_h0_val == 32767', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x8000048c]:KMMAWT ra, s11, ra
	-[0x80000490]:sd ra, 64(t1)
Current Store : [0x80000494] : sd s11, 72(t1) -- Store: [0x80003258]:0x0004000000000009




Last Coverpoint : ['rs1 : x23', 'rs2 : x15', 'rd : x7', 'rs2_h3_val == -8193', 'rs2_h2_val == 2048', 'rs2_h1_val == -2', 'rs2_h0_val == -33', 'rs1_w1_val == 64', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800004c0]:KMMAWT t2, s7, a5
	-[0x800004c4]:sd t2, 80(t1)
Current Store : [0x800004c8] : sd s7, 88(t1) -- Store: [0x80003268]:0x00000040FFFF7FFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x4', 'rd : x25', 'rs2_h3_val == -4097', 'rs2_h2_val == 4096', 'rs2_h1_val == 512', 'rs1_w1_val == 128', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800004f0]:KMMAWT s9, s2, tp
	-[0x800004f4]:sd s9, 96(t1)
Current Store : [0x800004f8] : sd s2, 104(t1) -- Store: [0x80003278]:0x0000008010000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rd : x23', 'rs2_h3_val == -2049', 'rs2_h2_val == -21846', 'rs2_h1_val == 64', 'rs2_h0_val == 16', 'rs1_w1_val == -33554433', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000524]:KMMAWT s7, t5, s2
	-[0x80000528]:sd s7, 112(t1)
Current Store : [0x8000052c] : sd t5, 120(t1) -- Store: [0x80003288]:0xFDFFFFFF00800000




Last Coverpoint : ['rs1 : x17', 'rs2 : x7', 'rd : x26', 'rs2_h3_val == -1025', 'rs2_h1_val == 2', 'rs1_w1_val == -8193', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x8000055c]:KMMAWT s10, a7, t2
	-[0x80000560]:sd s10, 128(t1)
Current Store : [0x80000564] : sd a7, 136(t1) -- Store: [0x80003298]:0xFFFFDFFFFFFFEFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x0', 'rd : x4', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80000590]:KMMAWT tp, a3, zero
	-[0x80000594]:sd tp, 144(t1)
Current Store : [0x80000598] : sd a3, 152(t1) -- Store: [0x800032a8]:0xFEFFFFFF00000007




Last Coverpoint : ['rs1 : x9', 'rs2 : x2', 'rd : x19', 'rs2_h3_val == -257', 'rs2_h1_val == -16385', 'rs2_h0_val == -9', 'rs1_w1_val == -33', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800005b8]:KMMAWT s3, s1, sp
	-[0x800005bc]:sd s3, 160(t1)
Current Store : [0x800005c0] : sd s1, 168(t1) -- Store: [0x800032b8]:0xFFFFFFDFFFFFFBFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x19', 'rd : x30', 'rs2_h3_val == -129', 'rs2_h2_val == 64', 'rs2_h1_val == -1', 'rs1_w1_val == -3', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800005dc]:KMMAWT t5, sp, s3
	-[0x800005e0]:sd t5, 176(t1)
Current Store : [0x800005e4] : sd sp, 184(t1) -- Store: [0x800032c8]:0xFFFFFFFD02000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x28', 'rd : x22', 'rs2_h3_val == -65', 'rs2_h0_val == 1024', 'rs1_w1_val == -1', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000608]:KMMAWT s6, a2, t3
	-[0x8000060c]:sd s6, 192(t1)
Current Store : [0x80000610] : sd a2, 200(t1) -- Store: [0x800032d8]:0xFFFFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x10', 'rd : x14', 'rs2_h3_val == -17']
Last Code Sequence : 
	-[0x80000630]:KMMAWT a4, s5, a0
	-[0x80000634]:sd a4, 208(t1)
Current Store : [0x80000638] : sd s5, 216(t1) -- Store: [0x800032e8]:0xFFFFFFF8FFFFFFF6




Last Coverpoint : ['rs1 : x14', 'rs2 : x24', 'rd : x18', 'rs2_h3_val == -9', 'rs2_h2_val == 32', 'rs2_h0_val == 4', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80000660]:KMMAWT s2, a4, s8
	-[0x80000664]:sd s2, 224(t1)
Current Store : [0x80000668] : sd a4, 232(t1) -- Store: [0x800032f8]:0xFFFDFFFFFFFFFBFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x14', 'rd : x9', 'rs2_h3_val == -5', 'rs2_h0_val == 1', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000690]:KMMAWT s1, a0, a4
	-[0x80000694]:sd s1, 240(t1)
Current Store : [0x80000698] : sd a0, 248(t1) -- Store: [0x80003308]:0x0000000600000010




Last Coverpoint : ['rs1 : x31', 'rs2 : x26', 'rd : x5', 'rs2_h3_val == -3', 'rs2_h2_val == -4097', 'rs2_h1_val == -21846', 'rs1_w1_val == -65', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800006c4]:KMMAWT t0, t6, s10
	-[0x800006c8]:sd t0, 256(t1)
Current Store : [0x800006cc] : sd t6, 264(t1) -- Store: [0x80003318]:0xFFFFFFBFFDFFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x5', 'rd : x2', 'rs2_h3_val == -2', 'rs2_h1_val == 1024', 'rs1_w1_val == 32768', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800006f4]:KMMAWT sp, s8, t0
	-[0x800006f8]:sd sp, 0(gp)
Current Store : [0x800006fc] : sd s8, 8(gp) -- Store: [0x80003328]:0x0000800000000040




Last Coverpoint : ['rs1 : x29', 'rs2 : x30', 'rd : x8', 'rs2_h3_val == -32768', 'rs2_h2_val == -16385', 'rs2_h0_val == -2049', 'rs1_w1_val == -268435457', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000724]:KMMAWT fp, t4, t5
	-[0x80000728]:sd fp, 16(gp)
Current Store : [0x8000072c] : sd t4, 24(gp) -- Store: [0x80003338]:0xEFFFFFFFFFFFFEFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x12', 'rd : x6', 'rs2_h3_val == 16384', 'rs2_h2_val == -129', 'rs2_h1_val == 32', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000758]:KMMAWT t1, t0, a2
	-[0x8000075c]:sd t1, 32(gp)
Current Store : [0x80000760] : sd t0, 40(gp) -- Store: [0x80003348]:0x0000000555555555




Last Coverpoint : ['rs1 : x22', 'rs2 : x8', 'rd : x12', 'rs2_h3_val == 8192', 'rs2_h2_val == 512', 'rs2_h1_val == -65', 'rs2_h0_val == -1', 'rs1_w1_val == 33554432', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000790]:KMMAWT a2, s6, fp
	-[0x80000794]:sd a2, 48(gp)
Current Store : [0x80000798] : sd s6, 56(gp) -- Store: [0x80003358]:0x02000000FF7FFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x11', 'rd : x17', 'rs2_h3_val == 4096', 'rs2_h1_val == 16', 'rs1_w1_val == 16384', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800007c0]:KMMAWT a7, tp, a1
	-[0x800007c4]:sd a7, 64(gp)
Current Store : [0x800007c8] : sd tp, 72(gp) -- Store: [0x80003368]:0x0000400000080000




Last Coverpoint : ['rs1 : x19', 'rs2 : x25', 'rd : x16', 'rs2_h3_val == 2048', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x800007fc]:KMMAWT a6, s3, s9
	-[0x80000800]:sd a6, 80(gp)
Current Store : [0x80000804] : sd s3, 88(gp) -- Store: [0x80003378]:0x08000000FFFFEFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x13', 'rd : x21', 'rs2_h3_val == 1024', 'rs2_h2_val == 2', 'rs2_h1_val == 16384', 'rs2_h0_val == 16384', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x8000082c]:KMMAWT s5, fp, a3
	-[0x80000830]:sd s5, 96(gp)
Current Store : [0x80000834] : sd fp, 104(gp) -- Store: [0x80003388]:0xBFFFFFFF00800000




Last Coverpoint : ['rs1 : x20', 'rs2 : x22', 'rd : x29', 'rs2_h3_val == 512', 'rs2_h1_val == 2048', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000858]:KMMAWT t4, s4, s6
	-[0x8000085c]:sd t4, 112(gp)
Current Store : [0x80000860] : sd s4, 120(gp) -- Store: [0x80003398]:0xFEFFFFFFFBFFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x31', 'rd : x10', 'rs2_h3_val == 256', 'rs2_h1_val == 32767', 'rs2_h0_val == 64', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000088c]:KMMAWT a0, zero, t6
	-[0x80000890]:sd a0, 128(gp)
Current Store : [0x80000894] : sd zero, 136(gp) -- Store: [0x800033a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x6', 'rd : x28', 'rs2_h3_val == 128', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x800008b4]:KMMAWT t3, t2, t1
	-[0x800008b8]:sd t3, 144(gp)
Current Store : [0x800008bc] : sd t2, 152(gp) -- Store: [0x800033b8]:0xFFFFFFFCC0000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x29', 'rd : x24', 'rs2_h3_val == 64', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800008e8]:KMMAWT s8, ra, t4
	-[0x800008ec]:sd s8, 160(gp)
Current Store : [0x800008f0] : sd ra, 168(gp) -- Store: [0x800033c8]:0x40000000FFFFFFF6




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x31', 'rs2_h3_val == 32', 'rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x8000091c]:KMMAWT t6, s10, s11
	-[0x80000920]:sd t6, 176(gp)
Current Store : [0x80000924] : sd s10, 184(gp) -- Store: [0x800033d8]:0xF7FFFFFFFDFFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x17', 'rd : x13', 'rs2_h3_val == 16', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000944]:KMMAWT a3, t3, a7
	-[0x80000948]:sd a3, 192(gp)
Current Store : [0x8000094c] : sd t3, 200(gp) -- Store: [0x800033e8]:0x0000800000000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x21', 'rd : x15', 'rs2_h3_val == 8', 'rs2_h1_val == 1', 'rs2_h0_val == -513', 'rs1_w1_val == -9', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000974]:KMMAWT a5, t1, s5
	-[0x80000978]:sd a5, 208(gp)
Current Store : [0x8000097c] : sd t1, 216(gp) -- Store: [0x800033f8]:0xFFFFFFF7FFFFFF7F




Last Coverpoint : ['rs1 : x15', 'rs2 : x23', 'rd : x27', 'rs2_h3_val == 4', 'rs2_h2_val == 8192', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800009a4]:KMMAWT s11, a5, s7
	-[0x800009a8]:sd s11, 224(gp)
Current Store : [0x800009ac] : sd a5, 232(gp) -- Store: [0x80003408]:0xEFFFFFFF00020000




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x800009dc]:KMMAWT t6, t5, t4
	-[0x800009e0]:sd t6, 0(ra)
Current Store : [0x800009e4] : sd t5, 8(ra) -- Store: [0x80003418]:0x00000003FDFFFFFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == -32768', 'rs2_h1_val == -5', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000a10]:KMMAWT t6, t5, t4
	-[0x80000a14]:sd t6, 16(ra)
Current Store : [0x80000a18] : sd t5, 24(ra) -- Store: [0x80003428]:0x00008000FFFFFDFF




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000a3c]:KMMAWT t6, t5, t4
	-[0x80000a40]:sd t6, 32(ra)
Current Store : [0x80000a44] : sd t5, 40(ra) -- Store: [0x80003438]:0x08000000DFFFFFFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h1_val == -32768', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80000a60]:KMMAWT t6, t5, t4
	-[0x80000a64]:sd t6, 48(ra)
Current Store : [0x80000a68] : sd t5, 56(ra) -- Store: [0x80003448]:0xFFFFFFF7FFFFFEFF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h0_val == 8', 'rs1_w1_val == -536870913', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a94]:KMMAWT t6, t5, t4
	-[0x80000a98]:sd t6, 64(ra)
Current Store : [0x80000a9c] : sd t5, 72(ra) -- Store: [0x80003458]:0xDFFFFFFF00400000




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h1_val == -17']
Last Code Sequence : 
	-[0x80000ac4]:KMMAWT t6, t5, t4
	-[0x80000ac8]:sd t6, 80(ra)
Current Store : [0x80000acc] : sd t5, 88(ra) -- Store: [0x80003468]:0x0000004000000003




Last Coverpoint : ['rs2_h2_val == -8193', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80000af8]:KMMAWT t6, t5, t4
	-[0x80000afc]:sd t6, 96(ra)
Current Store : [0x80000b00] : sd t5, 104(ra) -- Store: [0x80003478]:0x7FFFFFFF10000000




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_h2_val == -2049', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000b20]:KMMAWT t6, t5, t4
	-[0x80000b24]:sd t6, 112(ra)
Current Store : [0x80000b28] : sd t5, 120(ra) -- Store: [0x80003488]:0x0000000580000000




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == 256', 'rs2_h0_val == 256', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80000b48]:KMMAWT t6, t5, t4
	-[0x80000b4c]:sd t6, 128(ra)
Current Store : [0x80000b50] : sd t5, 136(ra) -- Store: [0x80003498]:0xFFFFFF7F00000010




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000b80]:KMMAWT t6, t5, t4
	-[0x80000b84]:sd t6, 144(ra)
Current Store : [0x80000b88] : sd t5, 152(ra) -- Store: [0x800034a8]:0x02000000FFFFEFFF




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000ba8]:KMMAWT t6, t5, t4
	-[0x80000bac]:sd t6, 160(ra)
Current Store : [0x80000bb0] : sd t5, 168(ra) -- Store: [0x800034b8]:0x0000000100200000




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_w1_val == 67108864', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000bd8]:KMMAWT t6, t5, t4
	-[0x80000bdc]:sd t6, 176(ra)
Current Store : [0x80000be0] : sd t5, 184(ra) -- Store: [0x800034c8]:0x0400000000100000




Last Coverpoint : ['rs1_w1_val == -1048577', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c10]:KMMAWT t6, t5, t4
	-[0x80000c14]:sd t6, 192(ra)
Current Store : [0x80000c18] : sd t5, 200(ra) -- Store: [0x800034d8]:0xFFEFFFFF00040000




Last Coverpoint : ['rs2_h2_val == 1', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c3c]:KMMAWT t6, t5, t4
	-[0x80000c40]:sd t6, 208(ra)
Current Store : [0x80000c44] : sd t5, 216(ra) -- Store: [0x800034e8]:0x0000008000010000




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c74]:KMMAWT t6, t5, t4
	-[0x80000c78]:sd t6, 224(ra)
Current Store : [0x80000c7c] : sd t5, 232(ra) -- Store: [0x800034f8]:0xBFFFFFFF00008000




Last Coverpoint : ['rs1_w1_val == 8', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000ca0]:KMMAWT t6, t5, t4
	-[0x80000ca4]:sd t6, 240(ra)
Current Store : [0x80000ca8] : sd t5, 248(ra) -- Store: [0x80003508]:0x0000000800004000




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_w1_val == 4', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000cc4]:KMMAWT t6, t5, t4
	-[0x80000cc8]:sd t6, 256(ra)
Current Store : [0x80000ccc] : sd t5, 264(ra) -- Store: [0x80003518]:0x0000000400002000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000cf4]:KMMAWT t6, t5, t4
	-[0x80000cf8]:sd t6, 272(ra)
Current Store : [0x80000cfc] : sd t5, 280(ra) -- Store: [0x80003528]:0x0000000700001000




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_w1_val == 2048', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000d2c]:KMMAWT t6, t5, t4
	-[0x80000d30]:sd t6, 288(ra)
Current Store : [0x80000d34] : sd t5, 296(ra) -- Store: [0x80003538]:0x0000080000000800




Last Coverpoint : ['rs2_h2_val == -17', 'rs2_h0_val == -2', 'rs1_w1_val == 2097152', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d54]:KMMAWT t6, t5, t4
	-[0x80000d58]:sd t6, 304(ra)
Current Store : [0x80000d5c] : sd t5, 312(ra) -- Store: [0x80003548]:0x0020000000000400




Last Coverpoint : ['rs2_h2_val == 1024', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d84]:KMMAWT t6, t5, t4
	-[0x80000d88]:sd t6, 320(ra)
Current Store : [0x80000d8c] : sd t5, 328(ra) -- Store: [0x80003558]:0xFFFFFFFD00000200




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_w1_val == 32', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000dac]:KMMAWT t6, t5, t4
	-[0x80000db0]:sd t6, 336(ra)
Current Store : [0x80000db4] : sd t5, 344(ra) -- Store: [0x80003568]:0x0000002000000080




Last Coverpoint : ['rs1_w1_val == 4096', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000ddc]:KMMAWT t6, t5, t4
	-[0x80000de0]:sd t6, 352(ra)
Current Store : [0x80000de4] : sd t5, 360(ra) -- Store: [0x80003578]:0x0000100000000020




Last Coverpoint : ['rs2_h1_val == 8192', 'rs2_h0_val == -32768', 'rs1_w1_val == -2', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000e08]:KMMAWT t6, t5, t4
	-[0x80000e0c]:sd t6, 368(ra)
Current Store : [0x80000e10] : sd t5, 376(ra) -- Store: [0x80003588]:0xFFFFFFFE00000004




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e38]:KMMAWT t6, t5, t4
	-[0x80000e3c]:sd t6, 384(ra)
Current Store : [0x80000e40] : sd t5, 392(ra) -- Store: [0x80003598]:0x0000002000000002




Last Coverpoint : ['rs2_h2_val == -2']
Last Code Sequence : 
	-[0x80000e64]:KMMAWT t6, t5, t4
	-[0x80000e68]:sd t6, 400(ra)
Current Store : [0x80000e6c] : sd t5, 408(ra) -- Store: [0x800035a8]:0xFFFFFFF700000000




Last Coverpoint : ['rs1_w1_val == 16777216', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e98]:KMMAWT t6, t5, t4
	-[0x80000e9c]:sd t6, 416(ra)
Current Store : [0x80000ea0] : sd t5, 424(ra) -- Store: [0x800035b8]:0x01000000FFFFFFFF




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h1_val == 4096', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000ec8]:KMMAWT t6, t5, t4
	-[0x80000ecc]:sd t6, 432(ra)
Current Store : [0x80000ed0] : sd t5, 440(ra) -- Store: [0x800035c8]:0x0000008000000400




Last Coverpoint : ['rs2_h2_val == -65', 'rs2_h1_val == 21845', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000f00]:KMMAWT t6, t5, t4
	-[0x80000f04]:sd t6, 448(ra)
Current Store : [0x80000f08] : sd t5, 456(ra) -- Store: [0x800035d8]:0x00000004EFFFFFFF




Last Coverpoint : ['rs2_h2_val == -5', 'rs2_h1_val == -257', 'rs1_w1_val == -4097', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000f34]:KMMAWT t6, t5, t4
	-[0x80000f38]:sd t6, 464(ra)
Current Store : [0x80000f3c] : sd t5, 472(ra) -- Store: [0x800035e8]:0xFFFFEFFFF7FFFFFF




Last Coverpoint : ['rs2_h2_val == 16384', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80000f68]:KMMAWT t6, t5, t4
	-[0x80000f6c]:sd t6, 480(ra)
Current Store : [0x80000f70] : sd t5, 488(ra) -- Store: [0x800035f8]:0x80000000C0000000




Last Coverpoint : ['rs2_h2_val == 128', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80000fa4]:KMMAWT t6, t5, t4
	-[0x80000fa8]:sd t6, 496(ra)
Current Store : [0x80000fac] : sd t5, 504(ra) -- Store: [0x80003608]:0xFFFF7FFF55555555




Last Coverpoint : ['rs2_h2_val == 16', 'rs2_h1_val == -2049']
Last Code Sequence : 
	-[0x80000fd4]:KMMAWT t6, t5, t4
	-[0x80000fd8]:sd t6, 512(ra)
Current Store : [0x80000fdc] : sd t5, 520(ra) -- Store: [0x80003618]:0x0004000000000009




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h0_val == 128', 'rs1_w1_val == 4194304', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001008]:KMMAWT t6, t5, t4
	-[0x8000100c]:sd t6, 528(ra)
Current Store : [0x80001010] : sd t5, 536(ra) -- Store: [0x80003628]:0x00400000FFF7FFFF




Last Coverpoint : ['rs2_h1_val == -4097', 'rs1_w1_val == -16385', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001034]:KMMAWT t6, t5, t4
	-[0x80001038]:sd t6, 544(ra)
Current Store : [0x8000103c] : sd t5, 552(ra) -- Store: [0x80003638]:0xFFFFBFFFFFFFFFF7




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x8000106c]:KMMAWT t6, t5, t4
	-[0x80001070]:sd t6, 560(ra)
Current Store : [0x80001074] : sd t5, 568(ra) -- Store: [0x80003648]:0xBFFFFFFFFFF7FFFF




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x8000109c]:KMMAWT t6, t5, t4
	-[0x800010a0]:sd t6, 576(ra)
Current Store : [0x800010a4] : sd t5, 584(ra) -- Store: [0x80003658]:0xFEFFFFFF00000009




Last Coverpoint : ['rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x800010d4]:KMMAWT t6, t5, t4
	-[0x800010d8]:sd t6, 592(ra)
Current Store : [0x800010dc] : sd t5, 600(ra) -- Store: [0x80003668]:0xAAAAAAAA00100000




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80001104]:KMMAWT t6, t5, t4
	-[0x80001108]:sd t6, 608(ra)
Current Store : [0x8000110c] : sd t5, 616(ra) -- Store: [0x80003678]:0x5555555520000000




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x80001134]:KMMAWT t6, t5, t4
	-[0x80001138]:sd t6, 624(ra)
Current Store : [0x8000113c] : sd t5, 632(ra) -- Store: [0x80003688]:0xFBFFFFFF00000010




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x80001168]:KMMAWT t6, t5, t4
	-[0x8000116c]:sd t6, 640(ra)
Current Store : [0x80001170] : sd t5, 648(ra) -- Store: [0x80003698]:0xFF7FFFFF00000007




Last Coverpoint : ['rs1_w1_val == -2097153', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001198]:KMMAWT t6, t5, t4
	-[0x8000119c]:sd t6, 656(ra)
Current Store : [0x800011a0] : sd t5, 664(ra) -- Store: [0x800036a8]:0xFFDFFFFFFFFFFFBF




Last Coverpoint : ['rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x800011d0]:KMMAWT t6, t5, t4
	-[0x800011d4]:sd t6, 672(ra)
Current Store : [0x800011d8] : sd t5, 680(ra) -- Store: [0x800036b8]:0xFFF7FFFF00004000




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x80001200]:KMMAWT t6, t5, t4
	-[0x80001204]:sd t6, 688(ra)
Current Store : [0x80001208] : sd t5, 696(ra) -- Store: [0x800036c8]:0xFFFBFFFFFFFFFBFF




Last Coverpoint : ['rs2_h1_val == -1025', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x80001228]:KMMAWT t6, t5, t4
	-[0x8000122c]:sd t6, 704(ra)
Current Store : [0x80001230] : sd t5, 712(ra) -- Store: [0x800036d8]:0xFFFEFFFFFFFFFFFC




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x80001258]:KMMAWT t6, t5, t4
	-[0x8000125c]:sd t6, 720(ra)
Current Store : [0x80001260] : sd t5, 728(ra) -- Store: [0x800036e8]:0xFFFFF7FF00000000




Last Coverpoint : ['rs2_h1_val == -513', 'rs2_h0_val == -17', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001284]:KMMAWT t6, t5, t4
	-[0x80001288]:sd t6, 736(ra)
Current Store : [0x8000128c] : sd t5, 744(ra) -- Store: [0x800036f8]:0xFFFFFBFF00400000




Last Coverpoint : ['rs1_w1_val == -513']
Last Code Sequence : 
	-[0x800012b4]:KMMAWT t6, t5, t4
	-[0x800012b8]:sd t6, 752(ra)
Current Store : [0x800012bc] : sd t5, 760(ra) -- Store: [0x80003708]:0xFFFFFDFFFFFFFFFA




Last Coverpoint : ['rs1_w1_val == -257']
Last Code Sequence : 
	-[0x800012dc]:KMMAWT t6, t5, t4
	-[0x800012e0]:sd t6, 768(ra)
Current Store : [0x800012e4] : sd t5, 776(ra) -- Store: [0x80003718]:0xFFFFFEFF00000000




Last Coverpoint : ['rs1_w1_val == -17', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80001308]:KMMAWT t6, t5, t4
	-[0x8000130c]:sd t6, 784(ra)
Current Store : [0x80001310] : sd t5, 792(ra) -- Store: [0x80003728]:0xFFFFFFEF00000008




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_w1_val == -5', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001330]:KMMAWT t6, t5, t4
	-[0x80001334]:sd t6, 800(ra)
Current Store : [0x80001338] : sd t5, 808(ra) -- Store: [0x80003738]:0xFFFFFFFBFFFFFFEF




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x8000136c]:KMMAWT t6, t5, t4
	-[0x80001370]:sd t6, 816(ra)
Current Store : [0x80001374] : sd t5, 824(ra) -- Store: [0x80003748]:0x20000000FFFFEFFF




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80001398]:KMMAWT t6, t5, t4
	-[0x8000139c]:sd t6, 832(ra)
Current Store : [0x800013a0] : sd t5, 840(ra) -- Store: [0x80003758]:0x1000000000000000




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x800013c8]:KMMAWT t6, t5, t4
	-[0x800013cc]:sd t6, 848(ra)
Current Store : [0x800013d0] : sd t5, 856(ra) -- Store: [0x80003768]:0x0080000000400000




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800013f8]:KMMAWT t6, t5, t4
	-[0x800013fc]:sd t6, 864(ra)
Current Store : [0x80001400] : sd t5, 872(ra) -- Store: [0x80003778]:0x0010000000080000




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x8000142c]:KMMAWT t6, t5, t4
	-[0x80001430]:sd t6, 880(ra)
Current Store : [0x80001434] : sd t5, 888(ra) -- Store: [0x80003788]:0x00080000FFFF7FFF




Last Coverpoint : ['rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80001460]:KMMAWT t6, t5, t4
	-[0x80001464]:sd t6, 896(ra)
Current Store : [0x80001468] : sd t5, 904(ra) -- Store: [0x80003798]:0x0002000000004000




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001498]:KMMAWT t6, t5, t4
	-[0x8000149c]:sd t6, 912(ra)
Current Store : [0x800014a0] : sd t5, 920(ra) -- Store: [0x800037a8]:0x0001000000000007




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x800014cc]:KMMAWT t6, t5, t4
	-[0x800014d0]:sd t6, 928(ra)
Current Store : [0x800014d4] : sd t5, 936(ra) -- Store: [0x800037b8]:0x00002000FBFFFFFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800014fc]:KMMAWT t6, t5, t4
	-[0x80001500]:sd t6, 944(ra)
Current Store : [0x80001504] : sd t5, 952(ra) -- Store: [0x800037c8]:0x00000400FFFFFFF6




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80001524]:KMMAWT t6, t5, t4
	-[0x80001528]:sd t6, 960(ra)
Current Store : [0x8000152c] : sd t5, 968(ra) -- Store: [0x800037d8]:0x0000020000000020




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80001550]:KMMAWT t6, t5, t4
	-[0x80001554]:sd t6, 976(ra)
Current Store : [0x80001558] : sd t5, 984(ra) -- Store: [0x800037e8]:0x0000010000200000




Last Coverpoint : ['rs2_h3_val == -513', 'rs2_h1_val == -129', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000157c]:KMMAWT t6, t5, t4
	-[0x80001580]:sd t6, 992(ra)
Current Store : [0x80001584] : sd t5, 1000(ra) -- Store: [0x800037f8]:0x00000002FBFFFFFF




Last Coverpoint : ['opcode : kmmawt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -16385', 'rs2_h2_val == 32', 'rs1_w1_val == 0', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800015a4]:KMMAWT t6, t5, t4
	-[0x800015a8]:sd t6, 1008(ra)
Current Store : [0x800015ac] : sd t5, 1016(ra) -- Store: [0x80003808]:0x0000000000000400




Last Coverpoint : ['rs2_h1_val == -33']
Last Code Sequence : 
	-[0x800015cc]:KMMAWT t6, t5, t4
	-[0x800015d0]:sd t6, 1024(ra)
Current Store : [0x800015d4] : sd t5, 1032(ra) -- Store: [0x80003818]:0xFFFFFFF8BFFFFFFF




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000160c]:KMMAWT t6, t5, t4
	-[0x80001610]:sd t6, 1040(ra)
Current Store : [0x80001614] : sd t5, 1048(ra) -- Store: [0x80003828]:0x80000000AAAAAAAA




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001634]:KMMAWT t6, t5, t4
	-[0x80001638]:sd t6, 1056(ra)
Current Store : [0x8000163c] : sd t5, 1064(ra) -- Store: [0x80003838]:0xFFFFFFEF7FFFFFFF




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001668]:KMMAWT t6, t5, t4
	-[0x8000166c]:sd t6, 1072(ra)
Current Store : [0x80001670] : sd t5, 1080(ra) -- Store: [0x80003848]:0xFFDFFFFFFEFFFFFF




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800016a4]:KMMAWT t6, t5, t4
	-[0x800016a8]:sd t6, 1088(ra)
Current Store : [0x800016ac] : sd t5, 1096(ra) -- Store: [0x80003858]:0xFFFFFFFDFFBFFFFF




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800016dc]:KMMAWT t6, t5, t4
	-[0x800016e0]:sd t6, 1104(ra)
Current Store : [0x800016e4] : sd t5, 1112(ra) -- Store: [0x80003868]:0x00100000FFDFFFFF




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001708]:KMMAWT t6, t5, t4
	-[0x8000170c]:sd t6, 1120(ra)
Current Store : [0x80001710] : sd t5, 1128(ra) -- Store: [0x80003878]:0x00040000FFEFFFFF




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x8000173c]:KMMAWT t6, t5, t4
	-[0x80001740]:sd t6, 1136(ra)
Current Store : [0x80001744] : sd t5, 1144(ra) -- Store: [0x80003888]:0x00000200FFFBFFFF




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001770]:KMMAWT t6, t5, t4
	-[0x80001774]:sd t6, 1152(ra)
Current Store : [0x80001778] : sd t5, 1160(ra) -- Store: [0x80003898]:0xFFFFFFF7FFFEFFFF




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800017a4]:KMMAWT t6, t5, t4
	-[0x800017a8]:sd t6, 1168(ra)
Current Store : [0x800017ac] : sd t5, 1176(ra) -- Store: [0x800038a8]:0x00000004FFFFBFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800017d8]:KMMAWT t6, t5, t4
	-[0x800017dc]:sd t6, 1184(ra)
Current Store : [0x800017e0] : sd t5, 1192(ra) -- Store: [0x800038b8]:0x10000000FFFFDFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001800]:KMMAWT t6, t5, t4
	-[0x80001804]:sd t6, 1200(ra)
Current Store : [0x80001808] : sd t5, 1208(ra) -- Store: [0x800038c8]:0xFFFFFFFDFFFFF7FF




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x8000182c]:KMMAWT t6, t5, t4
	-[0x80001830]:sd t6, 1216(ra)
Current Store : [0x80001834] : sd t5, 1224(ra) -- Store: [0x800038d8]:0x00001000FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x8000185c]:KMMAWT t6, t5, t4
	-[0x80001860]:sd t6, 1232(ra)
Current Store : [0x80001864] : sd t5, 1240(ra) -- Store: [0x800038e8]:0x00800000FFFFFFFB




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x8000188c]:KMMAWT t6, t5, t4
	-[0x80001890]:sd t6, 1248(ra)
Current Store : [0x80001894] : sd t5, 1256(ra) -- Store: [0x800038f8]:0x3FFFFFFFFFFFFFFD




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800018b8]:KMMAWT t6, t5, t4
	-[0x800018bc]:sd t6, 1264(ra)
Current Store : [0x800018c0] : sd t5, 1272(ra) -- Store: [0x80003908]:0x20000000FFFFFFFE




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800018e0]:KMMAWT t6, t5, t4
	-[0x800018e4]:sd t6, 1280(ra)
Current Store : [0x800018e8] : sd t5, 1288(ra) -- Store: [0x80003918]:0x0002000040000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001914]:KMMAWT t6, t5, t4
	-[0x80001918]:sd t6, 1296(ra)
Current Store : [0x8000191c] : sd t5, 1304(ra) -- Store: [0x80003928]:0xAAAAAAAA08000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001948]:KMMAWT t6, t5, t4
	-[0x8000194c]:sd t6, 1312(ra)
Current Store : [0x80001950] : sd t5, 1320(ra) -- Store: [0x80003938]:0x1000000004000000




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80001978]:KMMAWT t6, t5, t4
	-[0x8000197c]:sd t6, 1328(ra)
Current Store : [0x80001980] : sd t5, 1336(ra) -- Store: [0x80003948]:0x0000010000002000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800019ac]:KMMAWT t6, t5, t4
	-[0x800019b0]:sd t6, 1344(ra)
Current Store : [0x800019b4] : sd t5, 1352(ra) -- Store: [0x80003958]:0x8000000001000000




Last Coverpoint : ['opcode : kmmawt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_h3_val == -33', 'rs2_h2_val == -9', 'rs2_h1_val == -9', 'rs2_h0_val == -4097', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x800019d8]:KMMAWT t6, t5, t4
	-[0x800019dc]:sd t6, 1360(ra)
Current Store : [0x800019e0] : sd t5, 1368(ra) -- Store: [0x80003968]:0xFFFFFFFE80000000




Last Coverpoint : ['rs1_w1_val == -4194305', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80001a0c]:KMMAWT t6, t5, t4
	-[0x80001a10]:sd t6, 1376(ra)
Current Store : [0x80001a14] : sd t5, 1384(ra) -- Store: [0x80003978]:0xFFBFFFFF00000100




Last Coverpoint : ['opcode : kmmawt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h2_val == 4', 'rs1_w1_val == 16', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001a40]:KMMAWT t6, t5, t4
	-[0x80001a44]:sd t6, 1392(ra)
Current Store : [0x80001a48] : sd t5, 1400(ra) -- Store: [0x80003988]:0x00000010FFFDFFFF





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

|s.no|            signature             |                                                                                                          coverpoints                                                                                                          |                                 code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xB7D5C3FDB7D5C025|- opcode : kmmawt<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x20<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -33<br> - rs2_h2_val == -9<br> - rs2_h1_val == -9<br> - rs2_h0_val == -4097<br>                                    |[0x800003c4]:KMMAWT s4, a6, a6<br> [0x800003c8]:sd s4, 0(t1)<br>      |
|   2|[0x80003220]<br>0xC71CE38CFFF80045|- rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -3<br> - rs2_h0_val == -3<br>                                                                                    |[0x800003f8]:KMMAWT gp, gp, gp<br> [0x800003fc]:sd gp, 16(t1)<br>     |
|   3|[0x80003230]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x20<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 4<br> - rs1_w1_val == 16<br> - rs1_w0_val == -131073<br>                                 |[0x8000042c]:KMMAWT zero, s9, s4<br> [0x80000430]:sd zero, 32(t1)<br> |
|   4|[0x80003240]<br>0x000000011BFFE000|- rs1 : x11<br> - rs2 : x9<br> - rd : x11<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -33<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 21845<br> - rs1_w1_val == 1<br> - rs1_w0_val == 536870912<br> |[0x8000045c]:KMMAWT a1, a1, s1<br> [0x80000460]:sd a1, 48(t1)<br>     |
|   5|[0x80003250]<br>0xBFFEFFF400057FFF|- rs1 : x27<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h0_val == 32767<br> - rs1_w1_val == 262144<br>                                                                            |[0x8000048c]:KMMAWT ra, s11, ra<br> [0x80000490]:sd ra, 64(t1)<br>    |
|   6|[0x80003260]<br>0xB7FBB6F1B7FBB6FB|- rs1 : x23<br> - rs2 : x15<br> - rd : x7<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 2048<br> - rs2_h1_val == -2<br> - rs2_h0_val == -33<br> - rs1_w1_val == 64<br> - rs1_w0_val == -32769<br>                              |[0x800004c0]:KMMAWT t2, s7, a5<br> [0x800004c4]:sd t2, 80(t1)<br>     |
|   7|[0x80003270]<br>0x00000007001DFFFF|- rs1 : x18<br> - rs2 : x4<br> - rd : x25<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 512<br> - rs1_w1_val == 128<br> - rs1_w0_val == 268435456<br>                                                 |[0x800004f0]:KMMAWT s9, s2, tp<br> [0x800004f4]:sd s9, 96(t1)<br>     |
|   8|[0x80003280]<br>0x00100240FFFF9FFF|- rs1 : x30<br> - rs2 : x18<br> - rd : x23<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 64<br> - rs2_h0_val == 16<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 8388608<br>                    |[0x80000524]:KMMAWT s7, t5, s2<br> [0x80000528]:sd s7, 112(t1)<br>    |
|   9|[0x80003290]<br>0x76DF577F76DF56FE|- rs1 : x17<br> - rs2 : x7<br> - rd : x26<br> - rs2_h3_val == -1025<br> - rs2_h1_val == 2<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -4097<br>                                                                              |[0x8000055c]:KMMAWT s10, a7, t2<br> [0x80000560]:sd s10, 128(t1)<br>  |
|  10|[0x800032a0]<br>0xEFFF10000200FFF6|- rs1 : x13<br> - rs2 : x0<br> - rd : x4<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w1_val == -16777217<br>                                                             |[0x80000590]:KMMAWT tp, a3, zero<br> [0x80000594]:sd tp, 144(t1)<br>  |
|  11|[0x800032b0]<br>0x6FAB7FBB6FAB80BB|- rs1 : x9<br> - rs2 : x2<br> - rd : x19<br> - rs2_h3_val == -257<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -9<br> - rs1_w1_val == -33<br> - rs1_w0_val == -1025<br>                                                      |[0x800005b8]:KMMAWT s3, s1, sp<br> [0x800005bc]:sd s3, 160(t1)<br>    |
|  12|[0x800032c0]<br>0xFDFFFFFF007FFE00|- rs1 : x2<br> - rs2 : x19<br> - rd : x30<br> - rs2_h3_val == -129<br> - rs2_h2_val == 64<br> - rs2_h1_val == -1<br> - rs1_w1_val == -3<br> - rs1_w0_val == 33554432<br>                                                       |[0x800005dc]:KMMAWT t5, sp, s3<br> [0x800005e0]:sd t5, 176(t1)<br>    |
|  13|[0x800032d0]<br>0x6DF56FF76DE56FF6|- rs1 : x12<br> - rs2 : x28<br> - rd : x22<br> - rs2_h3_val == -65<br> - rs2_h0_val == 1024<br> - rs1_w1_val == -1<br> - rs1_w0_val == -1073741825<br>                                                                         |[0x80000608]:KMMAWT s6, a2, t3<br> [0x8000060c]:sd s6, 192(t1)<br>    |
|  14|[0x800032e0]<br>0xF56FF76DF56FF76A|- rs1 : x21<br> - rs2 : x10<br> - rd : x14<br> - rs2_h3_val == -17<br>                                                                                                                                                         |[0x80000630]:KMMAWT a4, s5, a0<br> [0x80000634]:sd a4, 208(t1)<br>    |
|  15|[0x800032f0]<br>0xF7FFAABC00400010|- rs1 : x14<br> - rs2 : x24<br> - rd : x18<br> - rs2_h3_val == -9<br> - rs2_h2_val == 32<br> - rs2_h0_val == 4<br> - rs1_w1_val == -131073<br>                                                                                 |[0x80000660]:KMMAWT s2, a4, s8<br> [0x80000664]:sd s2, 224(t1)<br>    |
|  16|[0x80003300]<br>0xFFFFFFDEFFFFFBFE|- rs1 : x10<br> - rs2 : x14<br> - rd : x9<br> - rs2_h3_val == -5<br> - rs2_h0_val == 1<br> - rs1_w0_val == 16<br>                                                                                                              |[0x80000690]:KMMAWT s1, a0, a4<br> [0x80000694]:sd s1, 240(t1)<br>    |
|  17|[0x80003310]<br>0x0000000080AAAF90|- rs1 : x31<br> - rs2 : x26<br> - rd : x5<br> - rs2_h3_val == -3<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -21846<br> - rs1_w1_val == -65<br> - rs1_w0_val == -33554433<br>                                                |[0x800006c4]:KMMAWT t0, t6, s10<br> [0x800006c8]:sd t0, 256(t1)<br>   |
|  18|[0x80003320]<br>0xFFFFFFFC02000001|- rs1 : x24<br> - rs2 : x5<br> - rd : x2<br> - rs2_h3_val == -2<br> - rs2_h1_val == 1024<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 64<br>                                                                                  |[0x800006f4]:KMMAWT sp, s8, t0<br> [0x800006f8]:sd sp, 0(gp)<br>      |
|  19|[0x80003330]<br>0x63FDDB7D5BFDDB7C|- rs1 : x29<br> - rs2 : x30<br> - rd : x8<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -16385<br> - rs2_h0_val == -2049<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -257<br>                                          |[0x80000724]:KMMAWT fp, t4, t5<br> [0x80000728]:sd fp, 16(gp)<br>     |
|  20|[0x80003340]<br>0x00000001800ADCBA|- rs1 : x5<br> - rs2 : x12<br> - rd : x6<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -129<br> - rs2_h1_val == 32<br> - rs1_w0_val == 1431655765<br>                                                                          |[0x80000758]:KMMAWT t1, t0, a2<br> [0x8000075c]:sd t1, 32(gp)<br>     |
|  21|[0x80003350]<br>0x4040FF7F00212079|- rs1 : x22<br> - rs2 : x8<br> - rd : x12<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 512<br> - rs2_h1_val == -65<br> - rs2_h0_val == -1<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == -8388609<br>                        |[0x80000790]:KMMAWT a2, s6, fp<br> [0x80000794]:sd a2, 48(gp)<br>     |
|  22|[0x80003360]<br>0xFFFFE3FFFFFFF07F|- rs1 : x4<br> - rs2 : x11<br> - rd : x17<br> - rs2_h3_val == 4096<br> - rs2_h1_val == 16<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 524288<br>                                                                             |[0x800007c0]:KMMAWT a7, tp, a1<br> [0x800007c4]:sd a7, 64(gp)<br>     |
|  23|[0x80003370]<br>0x001FFFF7FFF7EFFE|- rs1 : x19<br> - rs2 : x25<br> - rd : x16<br> - rs2_h3_val == 2048<br> - rs1_w1_val == 134217728<br>                                                                                                                          |[0x800007fc]:KMMAWT a6, s3, s9<br> [0x80000800]:sd a6, 80(gp)<br>     |
|  24|[0x80003380]<br>0xFEFFFFF7001FFFF6|- rs1 : x8<br> - rs2 : x13<br> - rd : x21<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 2<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 16384<br> - rs1_w1_val == -1073741825<br>                                               |[0x8000082c]:KMMAWT s5, fp, a3<br> [0x80000830]:sd s5, 96(gp)<br>     |
|  25|[0x80003390]<br>0xEFFDFFFEFFDFFEFE|- rs1 : x20<br> - rs2 : x22<br> - rd : x29<br> - rs2_h3_val == 512<br> - rs2_h1_val == 2048<br> - rs1_w0_val == -67108865<br>                                                                                                  |[0x80000858]:KMMAWT t4, s4, s6<br> [0x8000085c]:sd t4, 112(gp)<br>    |
|  26|[0x800033a0]<br>0x0000000600000010|- rs1 : x0<br> - rs2 : x31<br> - rd : x10<br> - rs2_h3_val == 256<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 64<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                             |[0x8000088c]:KMMAWT a0, zero, t6<br> [0x80000890]:sd a0, 128(gp)<br>  |
|  27|[0x800033b0]<br>0xFFBFFFFB0040C400|- rs1 : x7<br> - rs2 : x6<br> - rd : x28<br> - rs2_h3_val == 128<br> - rs2_h1_val == -3<br>                                                                                                                                    |[0x800008b4]:KMMAWT t3, t2, t1<br> [0x800008b8]:sd t3, 144(gp)<br>    |
|  28|[0x800033c0]<br>0x001080000000003B|- rs1 : x1<br> - rs2 : x29<br> - rd : x24<br> - rs2_h3_val == 64<br> - rs1_w1_val == 1073741824<br>                                                                                                                            |[0x800008e8]:KMMAWT s8, ra, t4<br> [0x800008ec]:sd s8, 160(gp)<br>    |
|  29|[0x800033d0]<br>0x00FF07FF7FF7003F|- rs1 : x26<br> - rs2 : x27<br> - rd : x31<br> - rs2_h3_val == 32<br> - rs1_w1_val == -134217729<br>                                                                                                                           |[0x8000091c]:KMMAWT t6, s10, s11<br> [0x80000920]:sd t6, 176(gp)<br>  |
|  30|[0x800033e0]<br>0x0400000A40004000|- rs1 : x28<br> - rs2 : x17<br> - rd : x13<br> - rs2_h3_val == 16<br> - rs1_w0_val == 1<br>                                                                                                                                    |[0x80000944]:KMMAWT a3, t3, a7<br> [0x80000948]:sd a3, 192(gp)<br>    |
|  31|[0x800033f0]<br>0xDFFF07FFFFFEFFDE|- rs1 : x6<br> - rs2 : x21<br> - rd : x15<br> - rs2_h3_val == 8<br> - rs2_h1_val == 1<br> - rs2_h0_val == -513<br> - rs1_w1_val == -9<br> - rs1_w0_val == -129<br>                                                             |[0x80000974]:KMMAWT a5, t1, s5<br> [0x80000978]:sd a5, 208(gp)<br>    |
|  32|[0x80003400]<br>0x00207FFF0400BFF4|- rs1 : x15<br> - rs2 : x23<br> - rd : x27<br> - rs2_h3_val == 4<br> - rs2_h2_val == 8192<br> - rs1_w0_val == 131072<br>                                                                                                       |[0x800009a4]:KMMAWT s11, a5, s7<br> [0x800009a8]:sd s11, 224(gp)<br>  |
|  33|[0x80003410]<br>0x00FF07FF7FF6EE3E|- rs2_h3_val == 2<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                |[0x800009dc]:KMMAWT t6, t5, t4<br> [0x800009e0]:sd t6, 0(ra)<br>      |
|  34|[0x80003420]<br>0x00FF07FF7FF6EE3E|- rs2_h3_val == 1<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -5<br> - rs1_w0_val == -513<br>                                                                                                                               |[0x80000a10]:KMMAWT t6, t5, t4<br> [0x80000a14]:sd t6, 16(ra)<br>     |
|  35|[0x80003430]<br>0x00FF07FF7FFFFFFF|- rs2_h2_val == 256<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                         |[0x80000a3c]:KMMAWT t6, t5, t4<br> [0x80000a40]:sd t6, 32(ra)<br>     |
|  36|[0x80003440]<br>0x00FF07FF7FFFFFFF|- rs2_h3_val == -1<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 4096<br>                                                                                                                                                     |[0x80000a60]:KMMAWT t6, t5, t4<br> [0x80000a64]:sd t6, 48(ra)<br>     |
|  37|[0x80003450]<br>0x00FD07FE7FFFFDBF|- rs2_h2_val == 21845<br> - rs2_h0_val == 8<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 4194304<br>                                                                                                                     |[0x80000a94]:KMMAWT t6, t5, t4<br> [0x80000a98]:sd t6, 64(ra)<br>     |
|  38|[0x80003460]<br>0x00FD07FF7FFFFDBE|- rs2_h2_val == 32767<br> - rs2_h1_val == -17<br>                                                                                                                                                                              |[0x80000ac4]:KMMAWT t6, t5, t4<br> [0x80000ac8]:sd t6, 80(ra)<br>     |
|  39|[0x80003470]<br>0x00EC87FF7FFFFFFF|- rs2_h2_val == -8193<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                                       |[0x80000af8]:KMMAWT t6, t5, t4<br> [0x80000afc]:sd t6, 96(ra)<br>     |
|  40|[0x80003480]<br>0x00EC87FF7FFFFFFF|- rs1_w0_val == -2147483648<br> - rs2_h2_val == -2049<br> - rs2_h0_val == 2<br>                                                                                                                                                |[0x80000b20]:KMMAWT t6, t5, t4<br> [0x80000b24]:sd t6, 112(ra)<br>    |
|  41|[0x80003490]<br>0x00EC87FF7FFFFFFF|- rs2_h2_val == -1025<br> - rs2_h1_val == 256<br> - rs2_h0_val == 256<br> - rs1_w1_val == -129<br>                                                                                                                             |[0x80000b48]:KMMAWT t6, t5, t4<br> [0x80000b4c]:sd t6, 128(ra)<br>    |
|  42|[0x800034a0]<br>0x00EE87FF7FFFFFFC|- rs2_h2_val == -513<br> - rs2_h0_val == 8192<br>                                                                                                                                                                              |[0x80000b80]:KMMAWT t6, t5, t4<br> [0x80000b84]:sd t6, 144(ra)<br>    |
|  43|[0x800034b0]<br>0x00EE87FE7FFFFFFC|- rs2_h0_val == 512<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                            |[0x80000ba8]:KMMAWT t6, t5, t4<br> [0x80000bac]:sd t6, 160(ra)<br>    |
|  44|[0x800034c0]<br>0x00EE9FFE7FFFFFFF|- rs2_h1_val == 4<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 1048576<br>                                                                                                                                                 |[0x80000bd8]:KMMAWT t6, t5, t4<br> [0x80000bdc]:sd t6, 176(ra)<br>    |
|  45|[0x800034d0]<br>0x00EE1FFD7FFFFFFF|- rs1_w1_val == -1048577<br> - rs1_w0_val == 262144<br>                                                                                                                                                                        |[0x80000c10]:KMMAWT t6, t5, t4<br> [0x80000c14]:sd t6, 192(ra)<br>    |
|  46|[0x800034e0]<br>0x00EE1FFC7FFFFFFF|- rs2_h2_val == 1<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                |[0x80000c3c]:KMMAWT t6, t5, t4<br> [0x80000c40]:sd t6, 208(ra)<br>    |
|  47|[0x800034f0]<br>0x00DE1FFB7FFFFFFF|- rs2_h1_val == 8<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                |[0x80000c74]:KMMAWT t6, t5, t4<br> [0x80000c78]:sd t6, 224(ra)<br>    |
|  48|[0x80003500]<br>0x00DE1FFA7FFFFFFF|- rs1_w1_val == 8<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                |[0x80000ca0]:KMMAWT t6, t5, t4<br> [0x80000ca4]:sd t6, 240(ra)<br>    |
|  49|[0x80003510]<br>0x00DE1FF97FFFFFFF|- rs2_h1_val == 128<br> - rs1_w1_val == 4<br> - rs1_w0_val == 8192<br>                                                                                                                                                         |[0x80000cc4]:KMMAWT t6, t5, t4<br> [0x80000cc8]:sd t6, 256(ra)<br>    |
|  50|[0x80003520]<br>0x00DE1FFA7FFFFFFF|- rs1_w0_val == 4096<br>                                                                                                                                                                                                       |[0x80000cf4]:KMMAWT t6, t5, t4<br> [0x80000cf8]:sd t6, 272(ra)<br>    |
|  51|[0x80003530]<br>0x00DE1FFA7FFFFFFF|- rs2_h0_val == -8193<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 2048<br>                                                                                                                                                    |[0x80000d2c]:KMMAWT t6, t5, t4<br> [0x80000d30]:sd t6, 288(ra)<br>    |
|  52|[0x80003540]<br>0x00DE1F9A7FFFFEFE|- rs2_h2_val == -17<br> - rs2_h0_val == -2<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 1024<br>                                                                                                                            |[0x80000d54]:KMMAWT t6, t5, t4<br> [0x80000d58]:sd t6, 304(ra)<br>    |
|  53|[0x80003550]<br>0x00DE1F997FFFFEFD|- rs2_h2_val == 1024<br> - rs1_w0_val == 512<br>                                                                                                                                                                               |[0x80000d84]:KMMAWT t6, t5, t4<br> [0x80000d88]:sd t6, 320(ra)<br>    |
|  54|[0x80003560]<br>0x00DE1F997FFFFEFC|- rs2_h2_val == -1<br> - rs1_w1_val == 32<br> - rs1_w0_val == 128<br>                                                                                                                                                          |[0x80000dac]:KMMAWT t6, t5, t4<br> [0x80000db0]:sd t6, 336(ra)<br>    |
|  55|[0x80003570]<br>0x00DE1F967FFFFF03|- rs1_w1_val == 4096<br> - rs1_w0_val == 32<br>                                                                                                                                                                                |[0x80000ddc]:KMMAWT t6, t5, t4<br> [0x80000de0]:sd t6, 352(ra)<br>    |
|  56|[0x80003580]<br>0x00DE1F957FFFFF03|- rs2_h1_val == 8192<br> - rs2_h0_val == -32768<br> - rs1_w1_val == -2<br> - rs1_w0_val == 4<br>                                                                                                                               |[0x80000e08]:KMMAWT t6, t5, t4<br> [0x80000e0c]:sd t6, 368(ra)<br>    |
|  57|[0x80003590]<br>0x00DE1F8D7FFFFF02|- rs1_w0_val == 2<br>                                                                                                                                                                                                          |[0x80000e38]:KMMAWT t6, t5, t4<br> [0x80000e3c]:sd t6, 384(ra)<br>    |
|  58|[0x800035a0]<br>0x00DE1F8E7FFFFF02|- rs2_h2_val == -2<br>                                                                                                                                                                                                         |[0x80000e64]:KMMAWT t6, t5, t4<br> [0x80000e68]:sd t6, 400(ra)<br>    |
|  59|[0x800035b0]<br>0x00DE1F8E7FFFFF01|- rs1_w1_val == 16777216<br> - rs1_w0_val == -1<br>                                                                                                                                                                            |[0x80000e98]:KMMAWT t6, t5, t4<br> [0x80000e9c]:sd t6, 416(ra)<br>    |
|  60|[0x800035c0]<br>0x00DE1F8E7FFFFF41|- rs2_h2_val == -257<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -21846<br>                                                                                                                                                   |[0x80000ec8]:KMMAWT t6, t5, t4<br> [0x80000ecc]:sd t6, 432(ra)<br>    |
|  61|[0x800035d0]<br>0x00DE1F8C7AAAAF40|- rs2_h2_val == -65<br> - rs2_h1_val == 21845<br> - rs1_w0_val == -268435457<br>                                                                                                                                               |[0x80000f00]:KMMAWT t6, t5, t4<br> [0x80000f04]:sd t6, 448(ra)<br>    |
|  62|[0x800035e0]<br>0x00DE238C7AB2B740|- rs2_h2_val == -5<br> - rs2_h1_val == -257<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -134217729<br>                                                                                                                       |[0x80000f34]:KMMAWT t6, t5, t4<br> [0x80000f38]:sd t6, 464(ra)<br>    |
|  63|[0x800035f0]<br>0x04DEA38C7AB23740|- rs2_h2_val == 16384<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                      |[0x80000f68]:KMMAWT t6, t5, t4<br> [0x80000f6c]:sd t6, 480(ra)<br>    |
|  64|[0x80003600]<br>0x04DEA78C7AB2E1EA|- rs2_h2_val == 128<br> - rs1_w1_val == -32769<br>                                                                                                                                                                             |[0x80000fa4]:KMMAWT t6, t5, t4<br> [0x80000fa8]:sd t6, 496(ra)<br>    |
|  65|[0x80003610]<br>0x04DEB78C7AB2E1E9|- rs2_h2_val == 16<br> - rs2_h1_val == -2049<br>                                                                                                                                                                               |[0x80000fd4]:KMMAWT t6, t5, t4<br> [0x80000fd8]:sd t6, 512(ra)<br>    |
|  66|[0x80003620]<br>0x04DEB68C7AB261E8|- rs2_h2_val == 8<br> - rs2_h0_val == 128<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -524289<br>                                                                                                                          |[0x80001008]:KMMAWT t6, t5, t4<br> [0x8000100c]:sd t6, 528(ra)<br>    |
|  67|[0x80003630]<br>0x04DEB68E7AB261E8|- rs2_h1_val == -4097<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -9<br>                                                                                                                                                    |[0x80001034]:KMMAWT t6, t5, t4<br> [0x80001038]:sd t6, 544(ra)<br>    |
|  68|[0x80003640]<br>0x04FEF68E7AB261F0|- rs2_h0_val == 2048<br>                                                                                                                                                                                                       |[0x8000106c]:KMMAWT t6, t5, t4<br> [0x80001070]:sd t6, 560(ra)<br>    |
|  69|[0x80003650]<br>0x04FEEF8D7AB261F0|- rs2_h0_val == 32<br>                                                                                                                                                                                                         |[0x8000109c]:KMMAWT t6, t5, t4<br> [0x800010a0]:sd t6, 576(ra)<br>    |
|  70|[0x80003660]<br>0x050144E27AB26160|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                                |[0x800010d4]:KMMAWT t6, t5, t4<br> [0x800010d8]:sd t6, 592(ra)<br>    |
|  71|[0x80003670]<br>0x04FDEF8C7BB26160|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                 |[0x80001104]:KMMAWT t6, t5, t4<br> [0x80001108]:sd t6, 608(ra)<br>    |
|  72|[0x80003680]<br>0x04FE138C7BB2615F|- rs1_w1_val == -67108865<br>                                                                                                                                                                                                  |[0x80001134]:KMMAWT t6, t5, t4<br> [0x80001138]:sd t6, 624(ra)<br>    |
|  73|[0x80003690]<br>0x04FE158C7BB2615F|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                   |[0x80001168]:KMMAWT t6, t5, t4<br> [0x8000116c]:sd t6, 640(ra)<br>    |
|  74|[0x800036a0]<br>0x04FE168C7BB2614E|- rs1_w1_val == -2097153<br> - rs1_w0_val == -65<br>                                                                                                                                                                           |[0x80001198]:KMMAWT t6, t5, t4<br> [0x8000119c]:sd t6, 656(ra)<br>    |
|  75|[0x800036b0]<br>0x04FE18947BB2615E|- rs1_w1_val == -524289<br>                                                                                                                                                                                                    |[0x800011d0]:KMMAWT t6, t5, t4<br> [0x800011d4]:sd t6, 672(ra)<br>    |
|  76|[0x800036c0]<br>0x04FC18977BB2625E|- rs1_w1_val == -262145<br>                                                                                                                                                                                                    |[0x80001200]:KMMAWT t6, t5, t4<br> [0x80001204]:sd t6, 688(ra)<br>    |
|  77|[0x800036d0]<br>0x04FC17967BB2625E|- rs2_h1_val == -1025<br> - rs1_w1_val == -65537<br>                                                                                                                                                                           |[0x80001228]:KMMAWT t6, t5, t4<br> [0x8000122c]:sd t6, 704(ra)<br>    |
|  78|[0x800036e0]<br>0x04FC17957BB2625E|- rs2_h0_val == -65<br> - rs1_w1_val == -2049<br>                                                                                                                                                                              |[0x80001258]:KMMAWT t6, t5, t4<br> [0x8000125c]:sd t6, 720(ra)<br>    |
|  79|[0x800036f0]<br>0x04FC16947BB1E21E|- rs2_h1_val == -513<br> - rs2_h0_val == -17<br> - rs1_w1_val == -1025<br>                                                                                                                                                     |[0x80001284]:KMMAWT t6, t5, t4<br> [0x80001288]:sd t6, 736(ra)<br>    |
|  80|[0x80003700]<br>0x04FC16927BB1E21E|- rs1_w1_val == -513<br>                                                                                                                                                                                                       |[0x800012b4]:KMMAWT t6, t5, t4<br> [0x800012b8]:sd t6, 752(ra)<br>    |
|  81|[0x80003710]<br>0x04FC16907BB1E21E|- rs1_w1_val == -257<br>                                                                                                                                                                                                       |[0x800012dc]:KMMAWT t6, t5, t4<br> [0x800012e0]:sd t6, 768(ra)<br>    |
|  82|[0x80003720]<br>0x04FC168D7BB1E21D|- rs1_w1_val == -17<br> - rs1_w0_val == 8<br>                                                                                                                                                                                  |[0x80001308]:KMMAWT t6, t5, t4<br> [0x8000130c]:sd t6, 784(ra)<br>    |
|  83|[0x80003730]<br>0x04FC168D7BB1E21C|- rs2_h0_val == -129<br> - rs1_w1_val == -5<br> - rs1_w0_val == -17<br>                                                                                                                                                        |[0x80001330]:KMMAWT t6, t5, t4<br> [0x80001334]:sd t6, 800(ra)<br>    |
|  84|[0x80003740]<br>0x04FC968D7BB1E21C|- rs1_w1_val == 536870912<br>                                                                                                                                                                                                  |[0x8000136c]:KMMAWT t6, t5, t4<br> [0x80001370]:sd t6, 816(ra)<br>    |
|  85|[0x80003750]<br>0x04FE968D7BB1E21C|- rs1_w1_val == 268435456<br>                                                                                                                                                                                                  |[0x80001398]:KMMAWT t6, t5, t4<br> [0x8000139c]:sd t6, 832(ra)<br>    |
|  86|[0x80003760]<br>0x04FED68D7BB1D1DC|- rs1_w1_val == 8388608<br>                                                                                                                                                                                                    |[0x800013c8]:KMMAWT t6, t5, t4<br> [0x800013cc]:sd t6, 848(ra)<br>    |
|  87|[0x80003770]<br>0x0506D67D7BB1D1CC|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                    |[0x800013f8]:KMMAWT t6, t5, t4<br> [0x800013fc]:sd t6, 864(ra)<br>    |
|  88|[0x80003780]<br>0x0506D6AD7BB211CC|- rs1_w1_val == 524288<br>                                                                                                                                                                                                     |[0x8000142c]:KMMAWT t6, t5, t4<br> [0x80001430]:sd t6, 880(ra)<br>    |
|  89|[0x80003790]<br>0x050696AB7BB211CA|- rs1_w1_val == 131072<br>                                                                                                                                                                                                     |[0x80001460]:KMMAWT t6, t5, t4<br> [0x80001464]:sd t6, 896(ra)<br>    |
|  90|[0x800037a0]<br>0x0506D6AA7BB211CB|- rs1_w1_val == 65536<br>                                                                                                                                                                                                      |[0x80001498]:KMMAWT t6, t5, t4<br> [0x8000149c]:sd t6, 912(ra)<br>    |
|  91|[0x800037b0]<br>0x0506D6A97CB215CB|- rs1_w1_val == 8192<br>                                                                                                                                                                                                       |[0x800014cc]:KMMAWT t6, t5, t4<br> [0x800014d0]:sd t6, 928(ra)<br>    |
|  92|[0x800037c0]<br>0x0506D6B17CB215C8|- rs1_w1_val == 1024<br>                                                                                                                                                                                                       |[0x800014fc]:KMMAWT t6, t5, t4<br> [0x80001500]:sd t6, 944(ra)<br>    |
|  93|[0x800037d0]<br>0x0506D6B57CB215C9|- rs1_w1_val == 512<br>                                                                                                                                                                                                        |[0x80001524]:KMMAWT t6, t5, t4<br> [0x80001528]:sd t6, 960(ra)<br>    |
|  94|[0x800037e0]<br>0x0506D6B57CB21589|- rs1_w1_val == 256<br>                                                                                                                                                                                                        |[0x80001550]:KMMAWT t6, t5, t4<br> [0x80001554]:sd t6, 976(ra)<br>    |
|  95|[0x800037f0]<br>0x0506D6B47CB41989|- rs2_h3_val == -513<br> - rs2_h1_val == -129<br> - rs1_w1_val == 2<br>                                                                                                                                                        |[0x8000157c]:KMMAWT t6, t5, t4<br> [0x80001580]:sd t6, 992(ra)<br>    |
|  96|[0x80003810]<br>0x0506D6B47CBC5989|- rs2_h1_val == -33<br>                                                                                                                                                                                                        |[0x800015cc]:KMMAWT t6, t5, t4<br> [0x800015d0]:sd t6, 1024(ra)<br>   |
|  97|[0x80003820]<br>0x050456B47CBB5988|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                |[0x8000160c]:KMMAWT t6, t5, t4<br> [0x80001610]:sd t6, 1040(ra)<br>   |
|  98|[0x80003830]<br>0x050456B47C9AD988|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                 |[0x80001634]:KMMAWT t6, t5, t4<br> [0x80001638]:sd t6, 1056(ra)<br>   |
|  99|[0x80003840]<br>0x050457147C9B5A88|- rs1_w0_val == -16777217<br>                                                                                                                                                                                                  |[0x80001668]:KMMAWT t6, t5, t4<br> [0x8000166c]:sd t6, 1072(ra)<br>   |
| 100|[0x80003850]<br>0x050457137C935A87|- rs2_h0_val == -16385<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                        |[0x800016a4]:KMMAWT t6, t5, t4<br> [0x800016a8]:sd t6, 1088(ra)<br>   |
| 101|[0x80003860]<br>0x050457937C8B5AA6|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                   |[0x800016dc]:KMMAWT t6, t5, t4<br> [0x800016e0]:sd t6, 1104(ra)<br>   |
| 102|[0x80003870]<br>0x050457D37C8F5AB6|- rs1_w0_val == -1048577<br>                                                                                                                                                                                                   |[0x80001708]:KMMAWT t6, t5, t4<br> [0x8000170c]:sd t6, 1120(ra)<br>   |
| 103|[0x80003880]<br>0x050457D37C8F3AB5|- rs1_w0_val == -262145<br>                                                                                                                                                                                                    |[0x8000173c]:KMMAWT t6, t5, t4<br> [0x80001740]:sd t6, 1136(ra)<br>   |
| 104|[0x80003890]<br>0x050457D27C8F3AB0|- rs1_w0_val == -65537<br>                                                                                                                                                                                                     |[0x80001770]:KMMAWT t6, t5, t4<br> [0x80001774]:sd t6, 1152(ra)<br>   |
| 105|[0x800038a0]<br>0x050457D27C8F3BB0|- rs1_w0_val == -16385<br>                                                                                                                                                                                                     |[0x800017a4]:KMMAWT t6, t5, t4<br> [0x800017a8]:sd t6, 1168(ra)<br>   |
| 106|[0x800038b0]<br>0x0503F7D27C8F3B8F|- rs1_w0_val == -8193<br>                                                                                                                                                                                                      |[0x800017d8]:KMMAWT t6, t5, t4<br> [0x800017dc]:sd t6, 1184(ra)<br>   |
| 107|[0x800038c0]<br>0x0503F7D27C8F3B8E|- rs1_w0_val == -2049<br>                                                                                                                                                                                                      |[0x80001800]:KMMAWT t6, t5, t4<br> [0x80001804]:sd t6, 1200(ra)<br>   |
| 108|[0x800038d0]<br>0x0503F7D17C8F3B8E|- rs2_h0_val == -257<br> - rs1_w0_val == -33<br>                                                                                                                                                                               |[0x8000182c]:KMMAWT t6, t5, t4<br> [0x80001830]:sd t6, 1216(ra)<br>   |
| 109|[0x800038e0]<br>0x0503E7517C8F3B8D|- rs1_w0_val == -5<br>                                                                                                                                                                                                         |[0x8000185c]:KMMAWT t6, t5, t4<br> [0x80001860]:sd t6, 1232(ra)<br>   |
| 110|[0x800038f0]<br>0x04FFA7517C8F3B8D|- rs1_w0_val == -3<br>                                                                                                                                                                                                         |[0x8000188c]:KMMAWT t6, t5, t4<br> [0x80001890]:sd t6, 1248(ra)<br>   |
| 111|[0x80003900]<br>0x04BF87517C8F3B8D|- rs1_w0_val == -2<br>                                                                                                                                                                                                         |[0x800018b8]:KMMAWT t6, t5, t4<br> [0x800018bc]:sd t6, 1264(ra)<br>   |
| 112|[0x80003910]<br>0x04BF864F7C8EFB8D|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                 |[0x800018e0]:KMMAWT t6, t5, t4<br> [0x800018e4]:sd t6, 1280(ra)<br>   |
| 113|[0x80003920]<br>0x04BE864E7CAEFB8D|- rs1_w0_val == 134217728<br>                                                                                                                                                                                                  |[0x80001914]:KMMAWT t6, t5, t4<br> [0x80001918]:sd t6, 1296(ra)<br>   |
| 114|[0x80003930]<br>0x03BE764E7CAFFB8D|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                   |[0x80001948]:KMMAWT t6, t5, t4<br> [0x8000194c]:sd t6, 1312(ra)<br>   |
| 115|[0x80003940]<br>0x03BE764E7CAFFB8B|- rs2_h0_val == -5<br>                                                                                                                                                                                                         |[0x80001978]:KMMAWT t6, t5, t4<br> [0x8000197c]:sd t6, 1328(ra)<br>   |
| 116|[0x80003950]<br>0x03B9F64E7CAFF78B|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                   |[0x800019ac]:KMMAWT t6, t5, t4<br> [0x800019b0]:sd t6, 1344(ra)<br>   |
| 117|[0x80003970]<br>0x03CF4BCE7CB4778A|- rs1_w1_val == -4194305<br> - rs1_w0_val == 256<br>                                                                                                                                                                           |[0x80001a0c]:KMMAWT t6, t5, t4<br> [0x80001a10]:sd t6, 1376(ra)<br>   |
