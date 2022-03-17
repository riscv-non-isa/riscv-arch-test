
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b30')]      |
| SIG_REGION                | [('0x80003210', '0x800038a0', '210 dwords')]      |
| COV_LABELS                | kdmbb16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmbb16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 210      |
| STAT1                     | 101      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 105     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e1c]:KDMBB16 t6, t5, t4
      [0x80000e20]:sd t6, 256(ra)
 -- Signature Address: 0x800034f0 Data: 0xFF7F8000FFFC0004
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h2_val == 16384
      - rs2_h1_val == -4097
      - rs1_h2_val == -257
      - rs1_h1_val == 0
      - rs1_h0_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011e8]:KDMBB16 t6, t5, t4
      [0x800011ec]:sd t6, 528(ra)
 -- Signature Address: 0x80003600 Data: 0xFFFBFF80FFFEFE00
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h2_val == -2049
      - rs2_h1_val == 0
      - rs2_h0_val == -129
      - rs1_h3_val == -3
      - rs1_h2_val == 64
      - rs1_h1_val == -32768
      - rs1_h0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ae0]:KDMBB16 t6, t5, t4
      [0x80001ae4]:sd t6, 1168(ra)
 -- Signature Address: 0x80003880 Data: 0x000000000001FFFE
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == -16385
      - rs2_h2_val == 0
      - rs2_h1_val == -129
      - rs1_h3_val == -1025
      - rs1_h2_val == -5
      - rs1_h1_val == -5
      - rs1_h0_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b1c]:KDMBB16 t6, t5, t4
      [0x80001b20]:sd t6, 1184(ra)
 -- Signature Address: 0x80003890 Data: 0x00020000FFFFFFD8
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -1025
      - rs2_h0_val == 4
      - rs1_h3_val == 8192
      - rs1_h0_val == -5






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmbb16', 'rs1 : x23', 'rs2 : x23', 'rd : x4', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h2_val == 256', 'rs2_h1_val == 8192', 'rs2_h0_val == 21845', 'rs1_h2_val == 256', 'rs1_h1_val == 8192', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800003d0]:KDMBB16 tp, s7, s7
	-[0x800003d4]:sd tp, 0(t1)
Current Store : [0x800003d8] : sd s7, 8(t1) -- Store: [0x80003218]:0x0003010020005555




Last Coverpoint : ['rs1 : x15', 'rs2 : x15', 'rd : x15', 'rs1 == rs2 == rd', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 128', 'rs2_h2_val == 64', 'rs2_h1_val == 256', 'rs1_h3_val == 128', 'rs1_h2_val == 64', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000040c]:KDMBB16 a5, a5, a5
	-[0x80000410]:sd a5, 16(t1)
Current Store : [0x80000414] : sd a5, 24(t1) -- Store: [0x80003228]:0x0000200000000048




Last Coverpoint : ['rs1 : x9', 'rs2 : x14', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h2_val == 2', 'rs2_h1_val == 32', 'rs2_h0_val == 2', 'rs1_h2_val == -129', 'rs1_h1_val == 1024', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000444]:KDMBB16 t6, s1, a4
	-[0x80000448]:sd t6, 32(t1)
Current Store : [0x8000044c] : sd s1, 40(t1) -- Store: [0x80003238]:0xFFFCFF7F04004000




Last Coverpoint : ['rs1 : x28', 'rs2 : x10', 'rd : x28', 'rs1 == rd != rs2', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs2_h3_val == -33', 'rs2_h1_val == -32768', 'rs2_h0_val == 512', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000470]:KDMBB16 t3, t3, a0
	-[0x80000474]:sd t3, 48(t1)
Current Store : [0x80000478] : sd t3, 56(t1) -- Store: [0x80003248]:0x0000006C00000C00




Last Coverpoint : ['rs1 : x20', 'rs2 : x1', 'rd : x1', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -5', 'rs2_h2_val == 8', 'rs2_h0_val == 1', 'rs1_h2_val == 128', 'rs1_h1_val == 512', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800004ac]:KDMBB16 ra, s4, ra
	-[0x800004b0]:sd ra, 64(t1)
Current Store : [0x800004b4] : sd s4, 72(t1) -- Store: [0x80003258]:0x000900800200BFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x18', 'rd : x2', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -3', 'rs2_h2_val == 32767', 'rs2_h1_val == 512', 'rs2_h0_val == -1', 'rs1_h3_val == 1024', 'rs1_h2_val == 32767', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800004e8]:KDMBB16 sp, s5, s2
	-[0x800004ec]:sd sp, 80(t1)
Current Store : [0x800004f0] : sd s5, 88(t1) -- Store: [0x80003268]:0x04007FFFFFF90100




Last Coverpoint : ['rs1 : x16', 'rs2 : x0', 'rd : x12', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 8192', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000524]:KDMBB16 a2, a6, zero
	-[0x80000528]:sd a2, 96(t1)
Current Store : [0x8000052c] : sd a6, 104(t1) -- Store: [0x80003278]:0x2000C000FFF8FFFB




Last Coverpoint : ['rs1 : x0', 'rs2 : x9', 'rd : x19', 'rs2_h3_val == -129', 'rs2_h2_val == -129', 'rs2_h1_val == 2048', 'rs2_h0_val == 4', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000558]:KDMBB16 s3, zero, s1
	-[0x8000055c]:sd s3, 112(t1)
Current Store : [0x80000560] : sd zero, 120(t1) -- Store: [0x80003288]:0x0000000000000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x13', 'rd : x25', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h3_val == -65', 'rs2_h0_val == -4097', 'rs1_h3_val == -257', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80000590]:KDMBB16 s9, s6, a3
	-[0x80000594]:sd s9, 128(t1)
Current Store : [0x80000598] : sd s6, 136(t1) -- Store: [0x80003298]:0xFEFF5555FFF60007




Last Coverpoint : ['rs1 : x3', 'rs2 : x30', 'rd : x8', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h2_val == -513', 'rs2_h0_val == -33', 'rs1_h3_val == -17', 'rs1_h1_val == 1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800005cc]:KDMBB16 fp, gp, t5
	-[0x800005d0]:sd fp, 144(t1)
Current Store : [0x800005d4] : sd gp, 152(t1) -- Store: [0x800032a8]:0xFFEF00070001FFDF




Last Coverpoint : ['rs1 : x14', 'rs2 : x21', 'rd : x7', 'rs2_h3_val == -21846', 'rs2_h1_val == -4097', 'rs2_h0_val == -32768', 'rs1_h2_val == 16384', 'rs1_h1_val == -1', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000060c]:KDMBB16 t2, a4, s5
	-[0x80000610]:sd t2, 160(t1)
Current Store : [0x80000614] : sd a4, 168(t1) -- Store: [0x800032b8]:0x00054000FFFF0002




Last Coverpoint : ['rs1 : x2', 'rs2 : x16', 'rd : x13', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs2_h3_val == 21845', 'rs2_h1_val == 1024', 'rs2_h0_val == 2048', 'rs1_h3_val == -2', 'rs1_h2_val == -513', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000644]:KDMBB16 a3, sp, a6
	-[0x80000648]:sd a3, 176(t1)
Current Store : [0x8000064c] : sd sp, 184(t1) -- Store: [0x800032c8]:0xFFFEFDFF40000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x11', 'rd : x5', 'rs2_h3_val == 32767', 'rs2_h2_val == -16385', 'rs1_h3_val == 16384', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000680]:KDMBB16 t0, t5, a1
	-[0x80000684]:sd t0, 192(t1)
Current Store : [0x80000688] : sd t5, 200(t1) -- Store: [0x800032d8]:0x40007FFFFFF6FFBF




Last Coverpoint : ['rs1 : x4', 'rs2 : x7', 'rd : x27', 'rs2_h3_val == -16385', 'rs1_h3_val == 64', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800006bc]:KDMBB16 s11, tp, t2
	-[0x800006c0]:sd s11, 208(t1)
Current Store : [0x800006c4] : sd tp, 216(t1) -- Store: [0x800032e8]:0x0040555500050200




Last Coverpoint : ['rs1 : x5', 'rs2 : x8', 'rd : x26', 'rs2_h3_val == -8193', 'rs1_h2_val == -257', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800006fc]:KDMBB16 s10, t0, fp
	-[0x80000700]:sd s10, 224(t1)
Current Store : [0x80000704] : sd t0, 232(t1) -- Store: [0x800032f8]:0x3FFFFEFF00070004




Last Coverpoint : ['rs1 : x26', 'rs2 : x6', 'rd : x23', 'rs2_h3_val == -4097', 'rs2_h2_val == -4097', 'rs2_h0_val == 128', 'rs1_h3_val == 256', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000740]:KDMBB16 s7, s10, t1
	-[0x80000744]:sd s7, 0(t0)
Current Store : [0x80000748] : sd s10, 8(t0) -- Store: [0x80003308]:0x01007FFF0007FFFD




Last Coverpoint : ['rs1 : x17', 'rs2 : x27', 'rd : x24', 'rs2_h3_val == -2049', 'rs2_h0_val == -16385', 'rs1_h3_val == -5', 'rs1_h2_val == -9', 'rs1_h1_val == 32', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000774]:KDMBB16 s8, a7, s11
	-[0x80000778]:sd s8, 16(t0)
Current Store : [0x8000077c] : sd a7, 24(t0) -- Store: [0x80003318]:0xFFFBFFF700200020




Last Coverpoint : ['rs1 : x10', 'rs2 : x29', 'rd : x14', 'rs2_h3_val == -513', 'rs2_h1_val == 16384', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800007b0]:KDMBB16 a4, a0, t4
	-[0x800007b4]:sd a4, 32(t0)
Current Store : [0x800007b8] : sd a0, 40(t0) -- Store: [0x80003328]:0x0005FFF70200FEFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x17', 'rd : x10', 'rs2_h3_val == -257', 'rs1_h2_val == -2049', 'rs1_h1_val == 16', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800007e4]:KDMBB16 a0, fp, a7
	-[0x800007e8]:sd a0, 48(t0)
Current Store : [0x800007ec] : sd fp, 56(t0) -- Store: [0x80003338]:0x0007F7FF00100400




Last Coverpoint : ['rs1 : x13', 'rs2 : x25', 'rd : x11', 'rs2_h3_val == -17', 'rs2_h1_val == 2', 'rs1_h3_val == -32768', 'rs1_h2_val == -8193', 'rs1_h1_val == -129', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000820]:KDMBB16 a1, a3, s9
	-[0x80000824]:sd a1, 64(t0)
Current Store : [0x80000828] : sd a3, 72(t0) -- Store: [0x80003348]:0x8000DFFFFF7FFBFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x24', 'rd : x3', 'rs2_h3_val == -9', 'rs2_h2_val == -8193']
Last Code Sequence : 
	-[0x80000858]:KDMBB16 gp, t2, s8
	-[0x8000085c]:sd gp, 80(t0)
Current Store : [0x80000860] : sd t2, 88(t0) -- Store: [0x80003358]:0x800001000020FFFA




Last Coverpoint : ['rs1 : x25', 'rs2 : x28', 'rd : x16', 'rs2_h3_val == -2', 'rs2_h2_val == 512', 'rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x8000088c]:KDMBB16 a6, s9, t3
	-[0x80000890]:sd a6, 96(t0)
Current Store : [0x80000894] : sd s9, 104(t0) -- Store: [0x80003368]:0x0800000720000400




Last Coverpoint : ['rs1 : x24', 'rs2 : x4', 'rd : x22', 'rs2_h3_val == -32768', 'rs2_h1_val == -1025', 'rs1_h3_val == -2049', 'rs1_h2_val == -65']
Last Code Sequence : 
	-[0x800008c8]:KDMBB16 s6, s8, tp
	-[0x800008cc]:sd s6, 112(t0)
Current Store : [0x800008d0] : sd s8, 120(t0) -- Store: [0x80003378]:0xF7FFFFBF0007FFBF




Last Coverpoint : ['rs1 : x29', 'rs2 : x19', 'rd : x6', 'rs2_h3_val == 16384', 'rs2_h1_val == -3', 'rs1_h1_val == -65', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000904]:KDMBB16 t1, t4, s3
	-[0x80000908]:sd t1, 128(t0)
Current Store : [0x8000090c] : sd t4, 136(t0) -- Store: [0x80003388]:0xFFF6FFF8FFBF0008




Last Coverpoint : ['rs1 : x27', 'rs2 : x26', 'rd : x9', 'rs2_h3_val == 8192', 'rs2_h1_val == -9', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000940]:KDMBB16 s1, s11, s10
	-[0x80000944]:sd s1, 144(t0)
Current Store : [0x80000948] : sd s11, 152(t0) -- Store: [0x80003398]:0x00800000FFF90001




Last Coverpoint : ['rs1 : x1', 'rs2 : x31', 'rd : x20', 'rs2_h3_val == 4096', 'rs2_h2_val == 8192', 'rs2_h1_val == -8193', 'rs1_h3_val == 16', 'rs1_h1_val == -9', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x8000097c]:KDMBB16 s4, ra, t6
	-[0x80000980]:sd s4, 160(t0)
Current Store : [0x80000984] : sd ra, 168(t0) -- Store: [0x800033a8]:0x00100006FFF7FF7F




Last Coverpoint : ['rs1 : x6', 'rs2 : x20', 'rd : x18', 'rs2_h3_val == 2048', 'rs2_h2_val == 16', 'rs2_h0_val == -2049', 'rs1_h2_val == 4096', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800009c0]:KDMBB16 s2, t1, s4
	-[0x800009c4]:sd s2, 176(t0)
Current Store : [0x800009c8] : sd t1, 184(t0) -- Store: [0x800033b8]:0x800010001000FFF6




Last Coverpoint : ['rs1 : x18', 'rs2 : x22', 'rd : x0', 'rs2_h3_val == 1024', 'rs2_h2_val == 2048', 'rs2_h1_val == 32767', 'rs1_h3_val == -3', 'rs1_h1_val == -257', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800009f4]:KDMBB16 zero, s2, s6
	-[0x800009f8]:sd zero, 192(t0)
Current Store : [0x800009fc] : sd s2, 200(t0) -- Store: [0x800033c8]:0xFFFDFFF9FEFFFFF7




Last Coverpoint : ['rs1 : x31', 'rs2 : x2', 'rd : x17', 'rs2_h3_val == 512', 'rs2_h2_val == 16384', 'rs1_h2_val == -32768', 'rs1_h1_val == 64', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000a2c]:KDMBB16 a7, t6, sp
	-[0x80000a30]:sd a7, 208(t0)
Current Store : [0x80000a34] : sd t6, 216(t0) -- Store: [0x800033d8]:0xFFFE80000040EFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x12', 'rd : x21', 'rs2_h3_val == 256', 'rs2_h0_val == 256', 'rs1_h1_val == -33', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000a60]:KDMBB16 s5, s3, a2
	-[0x80000a64]:sd s5, 224(t0)
Current Store : [0x80000a68] : sd s3, 232(t0) -- Store: [0x800033e8]:0x0009FFF6FFDFAAAA




Last Coverpoint : ['rs1 : x12', 'rs2 : x5', 'rd : x30', 'rs1_h0_val == -32768', 'rs2_h3_val == 64', 'rs2_h2_val == -21846', 'rs2_h0_val == 32', 'rs1_h3_val == 8', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x80000aa0]:KDMBB16 t5, a2, t0
	-[0x80000aa4]:sd t5, 0(ra)
Current Store : [0x80000aa8] : sd a2, 8(ra) -- Store: [0x800033f8]:0x00080020FF7F8000




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x29', 'rs2_h3_val == 32']
Last Code Sequence : 
	-[0x80000adc]:KDMBB16 t4, a1, gp
	-[0x80000ae0]:sd t4, 16(ra)
Current Store : [0x80000ae4] : sd a1, 24(ra) -- Store: [0x80003408]:0xC0007FFF0005EFFF




Last Coverpoint : ['rs2_h3_val == 16', 'rs1_h3_val == -1025', 'rs1_h2_val == 16', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000b18]:KDMBB16 t6, t5, t4
	-[0x80000b1c]:sd t6, 32(ra)
Current Store : [0x80000b20] : sd t5, 40(ra) -- Store: [0x80003418]:0xFBFF0010FFDFF7FF




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h2_val == -257', 'rs2_h1_val == -2049', 'rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80000b44]:KDMBB16 t6, t5, t4
	-[0x80000b48]:sd t6, 48(ra)
Current Store : [0x80000b4c] : sd t5, 56(ra) -- Store: [0x80003428]:0x00083FFFFFDFFFF6




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == -5', 'rs2_h1_val == -16385', 'rs1_h3_val == 512', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80000b78]:KDMBB16 t6, t5, t4
	-[0x80000b7c]:sd t6, 64(ra)
Current Store : [0x80000b80] : sd t5, 72(ra) -- Store: [0x80003438]:0x0200200000100020




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == -129']
Last Code Sequence : 
	-[0x80000bb0]:KDMBB16 t6, t5, t4
	-[0x80000bb4]:sd t6, 80(ra)
Current Store : [0x80000bb8] : sd t5, 88(ra) -- Store: [0x80003448]:0x3FFF004020000200




Last Coverpoint : ['rs1_h3_val == 2', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000be4]:KDMBB16 t6, t5, t4
	-[0x80000be8]:sd t6, 96(ra)
Current Store : [0x80000bec] : sd t5, 104(ra) -- Store: [0x80003458]:0x0002FFF6FFFB0004




Last Coverpoint : ['rs2_h2_val == -9', 'rs2_h1_val == -513', 'rs2_h0_val == 32767', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000c20]:KDMBB16 t6, t5, t4
	-[0x80000c24]:sd t6, 112(ra)
Current Store : [0x80000c28] : sd t5, 120(ra) -- Store: [0x80003468]:0xFFFAFFF9FFFDFF7F




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h2_val == -33', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000c5c]:KDMBB16 t6, t5, t4
	-[0x80000c60]:sd t6, 128(ra)
Current Store : [0x80000c64] : sd t5, 136(ra) -- Store: [0x80003478]:0x0010FFDFFFFEBFFF




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_h3_val == -8193', 'rs1_h2_val == -5', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000c90]:KDMBB16 t6, t5, t4
	-[0x80000c94]:sd t6, 144(ra)
Current Store : [0x80000c98] : sd t5, 152(ra) -- Store: [0x80003488]:0xDFFFFFFB80000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -65', 'rs1_h2_val == 512', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000cc4]:KDMBB16 t6, t5, t4
	-[0x80000cc8]:sd t6, 160(ra)
Current Store : [0x80000ccc] : sd t5, 168(ra) -- Store: [0x80003498]:0x0200020008000400




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000d00]:KDMBB16 t6, t5, t4
	-[0x80000d04]:sd t6, 176(ra)
Current Store : [0x80000d08] : sd t5, 184(ra) -- Store: [0x800034a8]:0xFFFBFFFA0100FFFF




Last Coverpoint : ['rs1_h1_val == 128', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000d3c]:KDMBB16 t6, t5, t4
	-[0x80000d40]:sd t6, 192(ra)
Current Store : [0x80000d44] : sd t5, 200(ra) -- Store: [0x800034b8]:0xFFEF00100080FFFE




Last Coverpoint : ['rs1_h2_val == -2', 'rs1_h1_val == 8', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000d70]:KDMBB16 t6, t5, t4
	-[0x80000d74]:sd t6, 208(ra)
Current Store : [0x80000d78] : sd t5, 216(ra) -- Store: [0x800034c8]:0x0002FFFE00080800




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000da8]:KDMBB16 t6, t5, t4
	-[0x80000dac]:sd t6, 224(ra)
Current Store : [0x80000db0] : sd t5, 232(ra) -- Store: [0x800034d8]:0x0009FEFF00040008




Last Coverpoint : ['rs1_h3_val == -16385', 'rs1_h1_val == 2', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000de0]:KDMBB16 t6, t5, t4
	-[0x80000de4]:sd t6, 240(ra)
Current Store : [0x80000de8] : sd t5, 248(ra) -- Store: [0x800034e8]:0xBFFFFFFC0002FFEF




Last Coverpoint : ['opcode : kdmbb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == 16384', 'rs2_h1_val == -4097', 'rs1_h2_val == -257', 'rs1_h1_val == 0', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000e1c]:KDMBB16 t6, t5, t4
	-[0x80000e20]:sd t6, 256(ra)
Current Store : [0x80000e24] : sd t5, 264(ra) -- Store: [0x800034f8]:0x0003FEFF00005555




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h2_val == -4097', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000e58]:KDMBB16 t6, t5, t4
	-[0x80000e5c]:sd t6, 272(ra)
Current Store : [0x80000e60] : sd t5, 280(ra) -- Store: [0x80003508]:0xDFFFEFFF00037FFF




Last Coverpoint : ['rs1_h2_val == -17', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000e94]:KDMBB16 t6, t5, t4
	-[0x80000e98]:sd t6, 288(ra)
Current Store : [0x80000e9c] : sd t5, 296(ra) -- Store: [0x80003518]:0xF7FFFFEFFFFBDFFF




Last Coverpoint : ['rs2_h3_val == -1025', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000ecc]:KDMBB16 t6, t5, t4
	-[0x80000ed0]:sd t6, 304(ra)
Current Store : [0x80000ed4] : sd t5, 312(ra) -- Store: [0x80003528]:0x00800003FFFCFDFF




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000f04]:KDMBB16 t6, t5, t4
	-[0x80000f08]:sd t6, 320(ra)
Current Store : [0x80000f0c] : sd t5, 328(ra) -- Store: [0x80003538]:0x0003FFF700202000




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 4', 'rs2_h1_val == 4096', 'rs1_h3_val == 1', 'rs1_h1_val == -2049', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000f3c]:KDMBB16 t6, t5, t4
	-[0x80000f40]:sd t6, 336(ra)
Current Store : [0x80000f44] : sd t5, 344(ra) -- Store: [0x80003548]:0x0001FFF9F7FF1000




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == -21846', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000f78]:KDMBB16 t6, t5, t4
	-[0x80000f7c]:sd t6, 352(ra)
Current Store : [0x80000f80] : sd t5, 360(ra) -- Store: [0x80003558]:0xDFFF7FFFAAAA0080




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000fa0]:KDMBB16 t6, t5, t4
	-[0x80000fa4]:sd t6, 368(ra)
Current Store : [0x80000fa8] : sd t5, 376(ra) -- Store: [0x80003568]:0x00000003C0000040




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000fd0]:KDMBB16 t6, t5, t4
	-[0x80000fd4]:sd t6, 384(ra)
Current Store : [0x80000fd8] : sd t5, 392(ra) -- Store: [0x80003578]:0xFBFF3FFF40000010




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == 21845', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x8000100c]:KDMBB16 t6, t5, t4
	-[0x80001010]:sd t6, 400(ra)
Current Store : [0x80001014] : sd t5, 408(ra) -- Store: [0x80003588]:0x0200FFF80001FFF7




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80001040]:KDMBB16 t6, t5, t4
	-[0x80001044]:sd t6, 416(ra)
Current Store : [0x80001048] : sd t5, 424(ra) -- Store: [0x80003598]:0xFFFD0007FFFBFFFE




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_h3_val == -4097', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x8000107c]:KDMBB16 t6, t5, t4
	-[0x80001080]:sd t6, 432(ra)
Current Store : [0x80001084] : sd t5, 440(ra) -- Store: [0x800035a8]:0xEFFF0008FFF60001




Last Coverpoint : ['rs2_h2_val == -65', 'rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x800010bc]:KDMBB16 t6, t5, t4
	-[0x800010c0]:sd t6, 448(ra)
Current Store : [0x800010c4] : sd t5, 456(ra) -- Store: [0x800035b8]:0x7FFF0007C000FFFD




Last Coverpoint : ['rs2_h2_val == -33', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x800010f8]:KDMBB16 t6, t5, t4
	-[0x800010fc]:sd t6, 464(ra)
Current Store : [0x80001100] : sd t5, 472(ra) -- Store: [0x800035c8]:0xFEFF0800FFDFFFFD




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x80001134]:KDMBB16 t6, t5, t4
	-[0x80001138]:sd t6, 480(ra)
Current Store : [0x8000113c] : sd t5, 488(ra) -- Store: [0x800035d8]:0x010000020020BFFF




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80001170]:KDMBB16 t6, t5, t4
	-[0x80001174]:sd t6, 496(ra)
Current Store : [0x80001178] : sd t5, 504(ra) -- Store: [0x800035e8]:0xFFF9C000FFF6FFFC




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == -2', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800011b4]:KDMBB16 t6, t5, t4
	-[0x800011b8]:sd t6, 512(ra)
Current Store : [0x800011bc] : sd t5, 520(ra) -- Store: [0x800035f8]:0x7FFF0006DFFF0020




Last Coverpoint : ['opcode : kdmbb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == -2049', 'rs2_h1_val == 0', 'rs2_h0_val == -129', 'rs1_h3_val == -3', 'rs1_h2_val == 64', 'rs1_h1_val == -32768', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800011e8]:KDMBB16 t6, t5, t4
	-[0x800011ec]:sd t6, 528(ra)
Current Store : [0x800011f0] : sd t5, 536(ra) -- Store: [0x80003608]:0xFFFD004080000100




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80001220]:KDMBB16 t6, t5, t4
	-[0x80001224]:sd t6, 544(ra)
Current Store : [0x80001228] : sd t5, 552(ra) -- Store: [0x80003618]:0x20000007EFFF0009




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x8000125c]:KDMBB16 t6, t5, t4
	-[0x80001260]:sd t6, 560(ra)
Current Store : [0x80001264] : sd t5, 568(ra) -- Store: [0x80003628]:0x008000200080FFFD




Last Coverpoint : ['rs2_h2_val == -2', 'rs2_h1_val == -17', 'rs2_h0_val == -8193', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x8000129c]:KDMBB16 t6, t5, t4
	-[0x800012a0]:sd t6, 576(ra)
Current Store : [0x800012a4] : sd t5, 584(ra) -- Store: [0x80003638]:0x7FFF0007FDFFC000




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x800012d8]:KDMBB16 t6, t5, t4
	-[0x800012dc]:sd t6, 592(ra)
Current Store : [0x800012e0] : sd t5, 600(ra) -- Store: [0x80003648]:0xFFFB00090080FFF7




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80001314]:KDMBB16 t6, t5, t4
	-[0x80001318]:sd t6, 608(ra)
Current Store : [0x8000131c] : sd t5, 616(ra) -- Store: [0x80003658]:0xFFEF0040FFF9FDFF




Last Coverpoint : ['rs2_h1_val == 64', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80001350]:KDMBB16 t6, t5, t4
	-[0x80001354]:sd t6, 624(ra)
Current Store : [0x80001358] : sd t5, 632(ra) -- Store: [0x80003668]:0x0100C0001000FEFF




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80001380]:KDMBB16 t6, t5, t4
	-[0x80001384]:sd t6, 640(ra)
Current Store : [0x80001388] : sd t5, 648(ra) -- Store: [0x80003678]:0xBFFF0004FDFF0000




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x800013bc]:KDMBB16 t6, t5, t4
	-[0x800013c0]:sd t6, 656(ra)
Current Store : [0x800013c4] : sd t5, 664(ra) -- Store: [0x80003688]:0x1000FFDF0009FFBF




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800013f8]:KDMBB16 t6, t5, t4
	-[0x800013fc]:sd t6, 672(ra)
Current Store : [0x80001400] : sd t5, 680(ra) -- Store: [0x80003698]:0xF7FF00037FFF0200




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80001428]:KDMBB16 t6, t5, t4
	-[0x8000142c]:sd t6, 688(ra)
Current Store : [0x80001430] : sd t5, 696(ra) -- Store: [0x800036a8]:0xEFFF1000FFFFFFFC




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80001460]:KDMBB16 t6, t5, t4
	-[0x80001464]:sd t6, 704(ra)
Current Store : [0x80001468] : sd t5, 712(ra) -- Store: [0x800036b8]:0x000300100001FFF8




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x8000149c]:KDMBB16 t6, t5, t4
	-[0x800014a0]:sd t6, 720(ra)
Current Store : [0x800014a4] : sd t5, 728(ra) -- Store: [0x800036c8]:0xFFFC0100FFF8FF7F




Last Coverpoint : ['rs1_h3_val == -21846', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x800014dc]:KDMBB16 t6, t5, t4
	-[0x800014e0]:sd t6, 736(ra)
Current Store : [0x800014e4] : sd t5, 744(ra) -- Store: [0x800036d8]:0xAAAA000101002000




Last Coverpoint : ['rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x80001520]:KDMBB16 t6, t5, t4
	-[0x80001524]:sd t6, 752(ra)
Current Store : [0x80001528] : sd t5, 760(ra) -- Store: [0x800036e8]:0x55550200FDFF0800




Last Coverpoint : ['rs1_h3_val == -513']
Last Code Sequence : 
	-[0x80001558]:KDMBB16 t6, t5, t4
	-[0x8000155c]:sd t6, 768(ra)
Current Store : [0x80001560] : sd t5, 776(ra) -- Store: [0x800036f8]:0xFDFFF7FF0000FFBF




Last Coverpoint : ['rs1_h3_val == -129']
Last Code Sequence : 
	-[0x80001594]:KDMBB16 t6, t5, t4
	-[0x80001598]:sd t6, 784(ra)
Current Store : [0x8000159c] : sd t5, 792(ra) -- Store: [0x80003708]:0xFF7F8000FFFB0080




Last Coverpoint : ['rs1_h3_val == 32']
Last Code Sequence : 
	-[0x800015d0]:KDMBB16 t6, t5, t4
	-[0x800015d4]:sd t6, 800(ra)
Current Store : [0x800015d8] : sd t5, 808(ra) -- Store: [0x80003718]:0x0020FFF7FF7F0007




Last Coverpoint : ['rs1_h3_val == 4']
Last Code Sequence : 
	-[0x80001610]:KDMBB16 t6, t5, t4
	-[0x80001614]:sd t6, 816(ra)
Current Store : [0x80001618] : sd t5, 824(ra) -- Store: [0x80003728]:0x00040003FFF90007




Last Coverpoint : ['rs2_h2_val == 32', 'rs2_h1_val == 128', 'rs1_h3_val == -1']
Last Code Sequence : 
	-[0x80001644]:KDMBB16 t6, t5, t4
	-[0x80001648]:sd t6, 832(ra)
Current Store : [0x8000164c] : sd t5, 840(ra) -- Store: [0x80003738]:0xFFFFFFFAF7FF7FFF




Last Coverpoint : ['rs2_h2_val == -3']
Last Code Sequence : 
	-[0x80001680]:KDMBB16 t6, t5, t4
	-[0x80001684]:sd t6, 848(ra)
Current Store : [0x80001688] : sd t5, 856(ra) -- Store: [0x80003748]:0x0002FF7F0000FDFF




Last Coverpoint : ['rs1_h2_val == -21846', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800016bc]:KDMBB16 t6, t5, t4
	-[0x800016c0]:sd t6, 864(ra)
Current Store : [0x800016c4] : sd t5, 872(ra) -- Store: [0x80003758]:0x0004AAAA5555FFF8




Last Coverpoint : ['rs2_h2_val == -32768']
Last Code Sequence : 
	-[0x800016f8]:KDMBB16 t6, t5, t4
	-[0x800016fc]:sd t6, 880(ra)
Current Store : [0x80001700] : sd t5, 888(ra) -- Store: [0x80003768]:0x0400FFFE0009FFEF




Last Coverpoint : ['rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x80001734]:KDMBB16 t6, t5, t4
	-[0x80001738]:sd t6, 896(ra)
Current Store : [0x8000173c] : sd t5, 904(ra) -- Store: [0x80003778]:0x0002BFFF7FFF7FFF




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_h2_val == -3', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80001770]:KDMBB16 t6, t5, t4
	-[0x80001774]:sd t6, 912(ra)
Current Store : [0x80001778] : sd t5, 920(ra) -- Store: [0x80003788]:0x0001FFFDFBFF0010




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x800017ac]:KDMBB16 t6, t5, t4
	-[0x800017b0]:sd t6, 928(ra)
Current Store : [0x800017b4] : sd t5, 936(ra) -- Store: [0x80003798]:0x7FFFFFFC00063FFF




Last Coverpoint : ['rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x800017dc]:KDMBB16 t6, t5, t4
	-[0x800017e0]:sd t6, 944(ra)
Current Store : [0x800017e4] : sd t5, 952(ra) -- Store: [0x800037a8]:0xFFFAFBFFFEFF8000




Last Coverpoint : ['rs2_h2_val == 128']
Last Code Sequence : 
	-[0x80001810]:KDMBB16 t6, t5, t4
	-[0x80001814]:sd t6, 960(ra)
Current Store : [0x80001818] : sd t5, 968(ra) -- Store: [0x800037b8]:0x0006FFBF0002BFFF




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x8000184c]:KDMBB16 t6, t5, t4
	-[0x80001850]:sd t6, 976(ra)
Current Store : [0x80001854] : sd t5, 984(ra) -- Store: [0x800037c8]:0xF7FFFFEF08002000




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80001888]:KDMBB16 t6, t5, t4
	-[0x8000188c]:sd t6, 992(ra)
Current Store : [0x80001890] : sd t5, 1000(ra) -- Store: [0x800037d8]:0x040004000200FDFF




Last Coverpoint : ['rs2_h1_val == -257']
Last Code Sequence : 
	-[0x800018b4]:KDMBB16 t6, t5, t4
	-[0x800018b8]:sd t6, 1008(ra)
Current Store : [0x800018bc] : sd t5, 1016(ra) -- Store: [0x800037e8]:0xFFFFFFFB0006DFFF




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_h3_val == -9']
Last Code Sequence : 
	-[0x800018e8]:KDMBB16 t6, t5, t4
	-[0x800018ec]:sd t6, 1024(ra)
Current Store : [0x800018f0] : sd t5, 1032(ra) -- Store: [0x800037f8]:0xFFF7FFFAFFFC0003




Last Coverpoint : ['rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80001920]:KDMBB16 t6, t5, t4
	-[0x80001924]:sd t6, 1040(ra)
Current Store : [0x80001928] : sd t5, 1048(ra) -- Store: [0x80003808]:0xFFF7FFFA3FFF0007




Last Coverpoint : ['rs1_h2_val == -1']
Last Code Sequence : 
	-[0x8000195c]:KDMBB16 t6, t5, t4
	-[0x80001960]:sd t6, 1056(ra)
Current Store : [0x80001964] : sd t5, 1064(ra) -- Store: [0x80003818]:0x1000FFFF00090020




Last Coverpoint : ['rs2_h1_val == -2']
Last Code Sequence : 
	-[0x80001998]:KDMBB16 t6, t5, t4
	-[0x8000199c]:sd t6, 1072(ra)
Current Store : [0x800019a0] : sd t5, 1080(ra) -- Store: [0x80003828]:0x000800082000AAAA




Last Coverpoint : ['rs1_h3_val == -65']
Last Code Sequence : 
	-[0x800019c4]:KDMBB16 t6, t5, t4
	-[0x800019c8]:sd t6, 1088(ra)
Current Store : [0x800019cc] : sd t5, 1096(ra) -- Store: [0x80003838]:0xFFBF000120000010




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800019f8]:KDMBB16 t6, t5, t4
	-[0x800019fc]:sd t6, 1104(ra)
Current Store : [0x80001a00] : sd t5, 1112(ra) -- Store: [0x80003848]:0x00040002BFFF0008




Last Coverpoint : ['rs2_h2_val == 1']
Last Code Sequence : 
	-[0x80001a34]:KDMBB16 t6, t5, t4
	-[0x80001a38]:sd t6, 1120(ra)
Current Store : [0x80001a3c] : sd t5, 1128(ra) -- Store: [0x80003858]:0x2000010020000004




Last Coverpoint : ['rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80001a68]:KDMBB16 t6, t5, t4
	-[0x80001a6c]:sd t6, 1136(ra)
Current Store : [0x80001a70] : sd t5, 1144(ra) -- Store: [0x80003868]:0xFFDF0000FBFFFFEF




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001aa4]:KDMBB16 t6, t5, t4
	-[0x80001aa8]:sd t6, 1152(ra)
Current Store : [0x80001aac] : sd t5, 1160(ra) -- Store: [0x80003878]:0xBFFF3FFFFFEF0800




Last Coverpoint : ['opcode : kdmbb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -16385', 'rs2_h2_val == 0', 'rs2_h1_val == -129', 'rs1_h3_val == -1025', 'rs1_h2_val == -5', 'rs1_h1_val == -5', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80001ae0]:KDMBB16 t6, t5, t4
	-[0x80001ae4]:sd t6, 1168(ra)
Current Store : [0x80001ae8] : sd t5, 1176(ra) -- Store: [0x80003888]:0xFBFFFFFBFFFB5555




Last Coverpoint : ['opcode : kdmbb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -1025', 'rs2_h0_val == 4', 'rs1_h3_val == 8192', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80001b1c]:KDMBB16 t6, t5, t4
	-[0x80001b20]:sd t6, 1184(ra)
Current Store : [0x80001b24] : sd t5, 1192(ra) -- Store: [0x80003898]:0x2000C000FFF8FFFB





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

|s.no|            signature             |                                                                                                                                                                                                                                                                 coverpoints                                                                                                                                                                                                                                                                  |                                  code                                  |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0002000038E31C72|- opcode : kdmbb16<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h2_val == 256<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 21845<br> - rs1_h2_val == 256<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 21845<br> |[0x800003d0]:KDMBB16 tp, s7, s7<br> [0x800003d4]:sd tp, 0(t1)<br>       |
|   2|[0x80003220]<br>0x0000200000000048|- rs1 : x15<br> - rs2 : x15<br> - rd : x15<br> - rs1 == rs2 == rd<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 128<br> - rs2_h2_val == 64<br> - rs2_h1_val == 256<br> - rs1_h3_val == 128<br> - rs1_h2_val == 64<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                   |[0x8000040c]:KDMBB16 a5, a5, a5<br> [0x80000410]:sd a5, 16(t1)<br>      |
|   3|[0x80003230]<br>0xFFFFFDFC00010000|- rs1 : x9<br> - rs2 : x14<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h2_val == 2<br> - rs2_h1_val == 32<br> - rs2_h0_val == 2<br> - rs1_h2_val == -129<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 16384<br>                                                                                        |[0x80000444]:KDMBB16 t6, s1, a4<br> [0x80000448]:sd t6, 32(t1)<br>      |
|   4|[0x80003240]<br>0x0000006C00000C00|- rs1 : x28<br> - rs2 : x10<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs2_h3_val == -33<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 512<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                |[0x80000470]:KDMBB16 t3, t3, a0<br> [0x80000474]:sd t3, 48(t1)<br>      |
|   5|[0x80003250]<br>0x00000800FFFF7FFE|- rs1 : x20<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -5<br> - rs2_h2_val == 8<br> - rs2_h0_val == 1<br> - rs1_h2_val == 128<br> - rs1_h1_val == 512<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                     |[0x800004ac]:KDMBB16 ra, s4, ra<br> [0x800004b0]:sd ra, 64(t1)<br>      |
|   6|[0x80003260]<br>0x7FFE0002FFFFFE00|- rs1 : x21<br> - rs2 : x18<br> - rd : x2<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -3<br> - rs2_h2_val == 32767<br> - rs2_h1_val == 512<br> - rs2_h0_val == -1<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 32767<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                      |[0x800004e8]:KDMBB16 sp, s5, s2<br> [0x800004ec]:sd sp, 80(t1)<br>      |
|   7|[0x80003270]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x0<br> - rd : x12<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 8192<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                         |[0x80000524]:KDMBB16 a2, a6, zero<br> [0x80000528]:sd a2, 96(t1)<br>    |
|   8|[0x80003280]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x9<br> - rd : x19<br> - rs2_h3_val == -129<br> - rs2_h2_val == -129<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 4<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                               |[0x80000558]:KDMBB16 s3, zero, s1<br> [0x8000055c]:sd s3, 112(t1)<br>   |
|   9|[0x80003290]<br>0x55545556FFFF1FF2|- rs1 : x22<br> - rs2 : x13<br> - rd : x25<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h3_val == -65<br> - rs2_h0_val == -4097<br> - rs1_h3_val == -257<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                   |[0x80000590]:KDMBB16 s9, s6, a3<br> [0x80000594]:sd s9, 128(t1)<br>     |
|  10|[0x800032a0]<br>0xFFFFE3F200000882|- rs1 : x3<br> - rs2 : x30<br> - rd : x8<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h2_val == -513<br> - rs2_h0_val == -33<br> - rs1_h3_val == -17<br> - rs1_h1_val == 1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                   |[0x800005cc]:KDMBB16 fp, gp, t5<br> [0x800005d0]:sd fp, 144(t1)<br>     |
|  11|[0x800032b0]<br>0x00010000FFFE0000|- rs1 : x14<br> - rs2 : x21<br> - rd : x7<br> - rs2_h3_val == -21846<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -32768<br> - rs1_h2_val == 16384<br> - rs1_h1_val == -1<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                          |[0x8000060c]:KDMBB16 t2, a4, s5<br> [0x80000610]:sd t2, 160(t1)<br>     |
|  12|[0x800032c0]<br>0x00001C0E00000000|- rs1 : x2<br> - rs2 : x16<br> - rd : x13<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -2<br> - rs1_h2_val == -513<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                   |[0x80000644]:KDMBB16 a3, sp, a6<br> [0x80000648]:sd a3, 176(t1)<br>     |
|  13|[0x800032d0]<br>0xBFFF8002000010C2|- rs1 : x30<br> - rs2 : x11<br> - rd : x5<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -16385<br> - rs1_h3_val == 16384<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000680]:KDMBB16 t0, t5, a1<br> [0x80000684]:sd t0, 192(t1)<br>     |
|  14|[0x800032e0]<br>0xFFFD5558FFFFE800|- rs1 : x4<br> - rs2 : x7<br> - rd : x27<br> - rs2_h3_val == -16385<br> - rs1_h3_val == 64<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800006bc]:KDMBB16 s11, tp, t2<br> [0x800006c0]:sd s11, 208(t1)<br>   |
|  15|[0x800032f0]<br>0x00001414FFFFFFB0|- rs1 : x5<br> - rs2 : x8<br> - rd : x26<br> - rs2_h3_val == -8193<br> - rs1_h2_val == -257<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800006fc]:KDMBB16 s10, t0, fp<br> [0x80000700]:sd s10, 224(t1)<br>   |
|  16|[0x80003300]<br>0xEFFF2002FFFFFD00|- rs1 : x26<br> - rs2 : x6<br> - rd : x23<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -4097<br> - rs2_h0_val == 128<br> - rs1_h3_val == 256<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x80000740]:KDMBB16 s7, s10, t1<br> [0x80000744]:sd s7, 0(t0)<br>      |
|  17|[0x80003310]<br>0x00048012FFEFFFC0|- rs1 : x17<br> - rs2 : x27<br> - rd : x24<br> - rs2_h3_val == -2049<br> - rs2_h0_val == -16385<br> - rs1_h3_val == -5<br> - rs1_h2_val == -9<br> - rs1_h1_val == 32<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                               |[0x80000774]:KDMBB16 s8, a7, s11<br> [0x80000778]:sd s8, 16(t0)<br>     |
|  18|[0x80003320]<br>0x0004801200001414|- rs1 : x10<br> - rs2 : x29<br> - rd : x14<br> - rs2_h3_val == -513<br> - rs2_h1_val == 16384<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800007b0]:KDMBB16 a4, a0, t4<br> [0x800007b4]:sd a4, 32(t0)<br>      |
|  19|[0x80003330]<br>0xFFFF6FEE00002800|- rs1 : x8<br> - rs2 : x17<br> - rd : x10<br> - rs2_h3_val == -257<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 16<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x800007e4]:KDMBB16 a0, fp, a7<br> [0x800007e8]:sd a0, 48(t0)<br>      |
|  20|[0x80003340]<br>0x0400600200002008|- rs1 : x13<br> - rs2 : x25<br> - rd : x11<br> - rs2_h3_val == -17<br> - rs2_h1_val == 2<br> - rs1_h3_val == -32768<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -129<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000820]:KDMBB16 a1, a3, s9<br> [0x80000824]:sd a1, 64(t0)<br>      |
|  21|[0x80003350]<br>0xFFBFFE0000060000|- rs1 : x7<br> - rs2 : x24<br> - rd : x3<br> - rs2_h3_val == -9<br> - rs2_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000858]:KDMBB16 gp, t2, s8<br> [0x8000085c]:sd gp, 80(t0)<br>      |
|  22|[0x80003360]<br>0x00001C00FFFFD000|- rs1 : x25<br> - rs2 : x28<br> - rd : x16<br> - rs2_h3_val == -2<br> - rs2_h2_val == 512<br> - rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000088c]:KDMBB16 a6, s9, t3<br> [0x80000890]:sd a6, 96(t0)<br>      |
|  23|[0x80003370]<br>0xFFBF0082FFFFFE7A|- rs1 : x24<br> - rs2 : x4<br> - rd : x22<br> - rs2_h3_val == -32768<br> - rs2_h1_val == -1025<br> - rs1_h3_val == -2049<br> - rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x800008c8]:KDMBB16 s6, s8, tp<br> [0x800008cc]:sd s6, 112(t0)<br>     |
|  24|[0x80003380]<br>0x0001001000000070|- rs1 : x29<br> - rs2 : x19<br> - rd : x6<br> - rs2_h3_val == 16384<br> - rs2_h1_val == -3<br> - rs1_h1_val == -65<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000904]:KDMBB16 t1, t4, s3<br> [0x80000908]:sd t1, 128(t0)<br>     |
|  25|[0x80003390]<br>0x000000000000000A|- rs1 : x27<br> - rs2 : x26<br> - rd : x9<br> - rs2_h3_val == 8192<br> - rs2_h1_val == -9<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000940]:KDMBB16 s1, s11, s10<br> [0x80000944]:sd s1, 144(t0)<br>   |
|  26|[0x800033a0]<br>0x000180000000070E|- rs1 : x1<br> - rs2 : x31<br> - rd : x20<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -8193<br> - rs1_h3_val == 16<br> - rs1_h1_val == -9<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                              |[0x8000097c]:KDMBB16 s4, ra, t6<br> [0x80000980]:sd s4, 160(t0)<br>     |
|  27|[0x800033b0]<br>0x000200000000A014|- rs1 : x6<br> - rs2 : x20<br> - rd : x18<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 16<br> - rs2_h0_val == -2049<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x800009c0]:KDMBB16 s2, t1, s4<br> [0x800009c4]:sd s2, 176(t0)<br>     |
|  28|[0x800033c0]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x22<br> - rd : x0<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 32767<br> - rs1_h3_val == -3<br> - rs1_h1_val == -257<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                              |[0x800009f4]:KDMBB16 zero, s2, s6<br> [0x800009f8]:sd zero, 192(t0)<br> |
|  29|[0x800033d0]<br>0xC000000000014014|- rs1 : x31<br> - rs2 : x2<br> - rd : x17<br> - rs2_h3_val == 512<br> - rs2_h2_val == 16384<br> - rs1_h2_val == -32768<br> - rs1_h1_val == 64<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x80000a2c]:KDMBB16 a7, t6, sp<br> [0x80000a30]:sd a7, 208(t0)<br>     |
|  30|[0x800033e0]<br>0xFFFFFF74FF555400|- rs1 : x19<br> - rs2 : x12<br> - rd : x21<br> - rs2_h3_val == 256<br> - rs2_h0_val == 256<br> - rs1_h1_val == -33<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000a60]:KDMBB16 s5, s3, a2<br> [0x80000a64]:sd s5, 224(t0)<br>     |
|  31|[0x800033f0]<br>0xFFEAAA80FFE00000|- rs1 : x12<br> - rs2 : x5<br> - rd : x30<br> - rs1_h0_val == -32768<br> - rs2_h3_val == 64<br> - rs2_h2_val == -21846<br> - rs2_h0_val == 32<br> - rs1_h3_val == 8<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000aa0]:KDMBB16 t5, a2, t0<br> [0x80000aa4]:sd t5, 0(ra)<br>       |
|  32|[0x80003400]<br>0xFFFC0008FFFF5FF6|- rs1 : x11<br> - rs2 : x3<br> - rd : x29<br> - rs2_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000adc]:KDMBB16 t4, a1, gp<br> [0x80000ae0]:sd t4, 16(ra)<br>      |
|  33|[0x80003410]<br>0xFFFFFF800000700E|- rs2_h3_val == 16<br> - rs1_h3_val == -1025<br> - rs1_h2_val == 16<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000b18]:KDMBB16 t6, t5, t4<br> [0x80000b1c]:sd t6, 32(ra)<br>      |
|  34|[0x80003420]<br>0xFF7F820200000A14|- rs2_h3_val == 8<br> - rs2_h2_val == -257<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000b44]:KDMBB16 t6, t5, t4<br> [0x80000b48]:sd t6, 48(ra)<br>      |
|  35|[0x80003430]<br>0xFFFEC000FFFFDFC0|- rs2_h3_val == 4<br> - rs2_h2_val == -5<br> - rs2_h1_val == -16385<br> - rs1_h3_val == 512<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000b78]:KDMBB16 t6, t5, t4<br> [0x80000b7c]:sd t6, 64(ra)<br>      |
|  36|[0x80003440]<br>0xFFFEFF8000080000|- rs2_h3_val == 2<br> - rs2_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000bb0]:KDMBB16 t6, t5, t4<br> [0x80000bb4]:sd t6, 80(ra)<br>      |
|  37|[0x80003450]<br>0x0005000000000038|- rs1_h3_val == 2<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000be4]:KDMBB16 t6, t5, t4<br> [0x80000be8]:sd t6, 96(ra)<br>      |
|  38|[0x80003460]<br>0x0000007EFF7F0102|- rs2_h2_val == -9<br> - rs2_h1_val == -513<br> - rs2_h0_val == 32767<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000c20]:KDMBB16 t6, t5, t4<br> [0x80000c24]:sd t6, 112(ra)<br>     |
|  39|[0x80003470]<br>0x0000018CFFFBFFF0|- rs2_h0_val == 8<br> - rs1_h2_val == -33<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000c5c]:KDMBB16 t6, t5, t4<br> [0x80000c60]:sd t6, 128(ra)<br>     |
|  40|[0x80003480]<br>0x0000000AFFFFEFFE|- rs2_h2_val == -1<br> - rs1_h3_val == -8193<br> - rs1_h2_val == -5<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000c90]:KDMBB16 t6, t5, t4<br> [0x80000c94]:sd t6, 144(ra)<br>     |
|  41|[0x80003490]<br>0xFFFFE000FFFDF800|- rs2_h1_val == 8<br> - rs2_h0_val == -65<br> - rs1_h2_val == 512<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000cc4]:KDMBB16 t6, t5, t4<br> [0x80000cc8]:sd t6, 160(ra)<br>     |
|  42|[0x800034a0]<br>0xFFFFA00000008002|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d00]:KDMBB16 t6, t5, t4<br> [0x80000d04]:sd t6, 176(ra)<br>     |
|  43|[0x800034b0]<br>0x000000E000010004|- rs1_h1_val == 128<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d3c]:KDMBB16 t6, t5, t4<br> [0x80000d40]:sd t6, 192(ra)<br>     |
|  44|[0x800034c0]<br>0x0000040400007000|- rs1_h2_val == -2<br> - rs1_h1_val == 8<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000d70]:KDMBB16 t6, t5, t4<br> [0x80000d74]:sd t6, 208(ra)<br>     |
|  45|[0x800034d0]<br>0x0004060200020000|- rs2_h0_val == 8192<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000da8]:KDMBB16 t6, t5, t4<br> [0x80000dac]:sd t6, 224(ra)<br>     |
|  46|[0x800034e0]<br>0x0000004800088000|- rs1_h3_val == -16385<br> - rs1_h1_val == 2<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000de0]:KDMBB16 t6, t5, t4<br> [0x80000de4]:sd t6, 240(ra)<br>     |
|  47|[0x80003500]<br>0xF7FF800003FFF800|- rs2_h0_val == 1024<br> - rs1_h2_val == -4097<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000e58]:KDMBB16 t6, t5, t4<br> [0x80000e5c]:sd t6, 272(ra)<br>     |
|  48|[0x80003510]<br>0xFFFFFF5602005002|- rs1_h2_val == -17<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e94]:KDMBB16 t6, t5, t4<br> [0x80000e98]:sd t6, 288(ra)<br>     |
|  49|[0x80003520]<br>0xFFFFFFCA02010000|- rs2_h3_val == -1025<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000ecc]:KDMBB16 t6, t5, t4<br> [0x80000ed0]:sd t6, 304(ra)<br>     |
|  50|[0x80003530]<br>0x000000B4FBFFC000|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f04]:KDMBB16 t6, t5, t4<br> [0x80000f08]:sd t6, 320(ra)<br>     |
|  51|[0x80003540]<br>0xFFFFFFC80FFFE000|- rs2_h3_val == -1<br> - rs2_h2_val == 4<br> - rs2_h1_val == 4096<br> - rs1_h3_val == 1<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f3c]:KDMBB16 t6, t5, t4<br> [0x80000f40]:sd t6, 336(ra)<br>     |
|  52|[0x80003550]<br>0xFFF6001400004000|- rs2_h0_val == 64<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000f78]:KDMBB16 t6, t5, t4<br> [0x80000f7c]:sd t6, 352(ra)<br>     |
|  53|[0x80003560]<br>0xFFFFFFFA00000400|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000fa0]:KDMBB16 t6, t5, t4<br> [0x80000fa4]:sd t6, 368(ra)<br>     |
|  54|[0x80003570]<br>0xEFFFC002FFF80000|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000fd0]:KDMBB16 t6, t5, t4<br> [0x80000fd4]:sd t6, 384(ra)<br>     |
|  55|[0x80003580]<br>0xFFFAAAB0FFFA0006|- rs2_h3_val == 1<br> - rs2_h2_val == 21845<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000100c]:KDMBB16 t6, t5, t4<br> [0x80001010]:sd t6, 400(ra)<br>     |
|  56|[0x80003590]<br>0xFFFF8FF2FFFFFFE4|- rs2_h2_val == -2049<br> - rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001040]:KDMBB16 t6, t5, t4<br> [0x80001044]:sd t6, 416(ra)<br>     |
|  57|[0x800035a0]<br>0xFFFFBFF0FFFFFFFE|- rs2_h2_val == -1025<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000107c]:KDMBB16 t6, t5, t4<br> [0x80001080]:sd t6, 432(ra)<br>     |
|  58|[0x800035b0]<br>0xFFFFFC7200000000|- rs2_h2_val == -65<br> - rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800010bc]:KDMBB16 t6, t5, t4<br> [0x800010c0]:sd t6, 448(ra)<br>     |
|  59|[0x800035c0]<br>0xFFFDF000FFFFFD00|- rs2_h2_val == -33<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800010f8]:KDMBB16 t6, t5, t4<br> [0x800010fc]:sd t6, 464(ra)<br>     |
|  60|[0x800035d0]<br>0xFFFFFFBC0003800E|- rs2_h2_val == -17<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001134]:KDMBB16 t6, t5, t4<br> [0x80001138]:sd t6, 480(ra)<br>     |
|  61|[0x800035e0]<br>0xFF80000000001008|- rs2_h1_val == 4<br> - rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001170]:KDMBB16 t6, t5, t4<br> [0x80001174]:sd t6, 496(ra)<br>     |
|  62|[0x800035f0]<br>0xFFFFFF88FFFFFF80|- rs2_h1_val == 1<br> - rs2_h0_val == -2<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800011b4]:KDMBB16 t6, t5, t4<br> [0x800011b8]:sd t6, 512(ra)<br>     |
|  63|[0x80003610]<br>0x00038000FFFFFFB8|- rs2_h1_val == -1<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001220]:KDMBB16 t6, t5, t4<br> [0x80001224]:sd t6, 544(ra)<br>     |
|  64|[0x80003620]<br>0xFFFFDFC000020004|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000125c]:KDMBB16 t6, t5, t4<br> [0x80001260]:sd t6, 560(ra)<br>     |
|  65|[0x80003630]<br>0xFFFFFFE410008000|- rs2_h2_val == -2<br> - rs2_h1_val == -17<br> - rs2_h0_val == -8193<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000129c]:KDMBB16 t6, t5, t4<br> [0x800012a0]:sd t6, 576(ra)<br>     |
|  66|[0x80003640]<br>0x0000004800004812|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800012d8]:KDMBB16 t6, t5, t4<br> [0x800012dc]:sd t6, 592(ra)<br>     |
|  67|[0x80003650]<br>0xFFFFF78000040602|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001314]:KDMBB16 t6, t5, t4<br> [0x80001318]:sd t6, 608(ra)<br>     |
|  68|[0x80003660]<br>0xD555800000002222|- rs2_h1_val == 64<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001350]:KDMBB16 t6, t5, t4<br> [0x80001354]:sd t6, 624(ra)<br>     |
|  69|[0x80003670]<br>0x0000001800000000|- rs2_h0_val == -9<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001380]:KDMBB16 t6, t5, t4<br> [0x80001384]:sd t6, 640(ra)<br>     |
|  70|[0x80003680]<br>0x001080000000028A|- rs2_h0_val == -5<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013bc]:KDMBB16 t6, t5, t4<br> [0x800013c0]:sd t6, 656(ra)<br>     |
|  71|[0x80003690]<br>0x00000600FFFFF400|- rs2_h0_val == -3<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800013f8]:KDMBB16 t6, t5, t4<br> [0x800013fc]:sd t6, 672(ra)<br>     |
|  72|[0x800036a0]<br>0xFFFF0000FFFE0000|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001428]:KDMBB16 t6, t5, t4<br> [0x8000142c]:sd t6, 688(ra)<br>     |
|  73|[0x800036b0]<br>0x0007FFE0FFFF0000|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001460]:KDMBB16 t6, t5, t4<br> [0x80001464]:sd t6, 704(ra)<br>     |
|  74|[0x800036c0]<br>0xFFEFFE00FFFFEFE0|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000149c]:KDMBB16 t6, t5, t4<br> [0x800014a0]:sd t6, 720(ra)<br>     |
|  75|[0x800036d0]<br>0x0000100000040000|- rs1_h3_val == -21846<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800014dc]:KDMBB16 t6, t5, t4<br> [0x800014e0]:sd t6, 736(ra)<br>     |
|  76|[0x800036e0]<br>0x0000400000040000|- rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001520]:KDMBB16 t6, t5, t4<br> [0x80001524]:sd t6, 752(ra)<br>     |
|  77|[0x800036f0]<br>0x00001002FFFFDF80|- rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001558]:KDMBB16 t6, t5, t4<br> [0x8000155c]:sd t6, 768(ra)<br>     |
|  78|[0x80003700]<br>0x4001000000002000|- rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001594]:KDMBB16 t6, t5, t4<br> [0x80001598]:sd t6, 784(ra)<br>     |
|  79|[0x80003710]<br>0x000000A2FFFFFF90|- rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800015d0]:KDMBB16 t6, t5, t4<br> [0x800015d4]:sd t6, 800(ra)<br>     |
|  80|[0x80003720]<br>0x0000C0000001C000|- rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001610]:KDMBB16 t6, t5, t4<br> [0x80001614]:sd t6, 816(ra)<br>     |
|  81|[0x80003730]<br>0xFFFFFE80FFFB000A|- rs2_h2_val == 32<br> - rs2_h1_val == 128<br> - rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001644]:KDMBB16 t6, t5, t4<br> [0x80001648]:sd t6, 832(ra)<br>     |
|  82|[0x80003740]<br>0x000003060000140A|- rs2_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001680]:KDMBB16 t6, t5, t4<br> [0x80001684]:sd t6, 848(ra)<br>     |
|  83|[0x80003750]<br>0x0003555C00010010|- rs1_h2_val == -21846<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800016bc]:KDMBB16 t6, t5, t4<br> [0x800016c0]:sd t6, 864(ra)<br>     |
|  84|[0x80003760]<br>0x00020000FFFFEF00|- rs2_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800016f8]:KDMBB16 t6, t5, t4<br> [0x800016fc]:sd t6, 880(ra)<br>     |
|  85|[0x80003770]<br>0xFFFC7FF2003FFF80|- rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001734]:KDMBB16 t6, t5, t4<br> [0x80001738]:sd t6, 896(ra)<br>     |
|  86|[0x80003780]<br>0xFFFFA000000FFFE0|- rs2_h2_val == 4096<br> - rs1_h2_val == -3<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001770]:KDMBB16 t6, t5, t4<br> [0x80001774]:sd t6, 912(ra)<br>     |
|  87|[0x80003790]<br>0xFFFFE000FBFF9002|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017ac]:KDMBB16 t6, t5, t4<br> [0x800017b0]:sd t6, 928(ra)<br>     |
|  88|[0x800037a0]<br>0xFDFF8802F0000000|- rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800017dc]:KDMBB16 t6, t5, t4<br> [0x800017e0]:sd t6, 944(ra)<br>     |
|  89|[0x800037b0]<br>0xFFFFBF00FF7FFE00|- rs2_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001810]:KDMBB16 t6, t5, t4<br> [0x80001814]:sd t6, 960(ra)<br>     |
|  90|[0x800037c0]<br>0x000000CC00040000|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000184c]:KDMBB16 t6, t5, t4<br> [0x80001850]:sd t6, 976(ra)<br>     |
|  91|[0x800037d0]<br>0xFFFFC80000040602|- rs2_h1_val == 21845<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001888]:KDMBB16 t6, t5, t4<br> [0x8000188c]:sd t6, 992(ra)<br>     |
|  92|[0x800037e0]<br>0xFFFFFD800001800C|- rs2_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800018b4]:KDMBB16 t6, t5, t4<br> [0x800018b8]:sd t6, 1008(ra)<br>    |
|  93|[0x800037f0]<br>0x0000006CFFFFF3FA|- rs2_h1_val == -65<br> - rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018e8]:KDMBB16 t6, t5, t4<br> [0x800018ec]:sd t6, 1024(ra)<br>    |
|  94|[0x80003800]<br>0x0000600C00000046|- rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001920]:KDMBB16 t6, t5, t4<br> [0x80001924]:sd t6, 1040(ra)<br>    |
|  95|[0x80003810]<br>0xFFFFFC0000000080|- rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000195c]:KDMBB16 t6, t5, t4<br> [0x80001960]:sd t6, 1056(ra)<br>    |
|  96|[0x80003820]<br>0x00000070FFFD5550|- rs2_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001998]:KDMBB16 t6, t5, t4<br> [0x8000199c]:sd t6, 1072(ra)<br>    |
|  97|[0x80003830]<br>0xFFFFFFDE00000020|- rs1_h3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800019c4]:KDMBB16 t6, t5, t4<br> [0x800019c8]:sd t6, 1088(ra)<br>    |
|  98|[0x80003840]<br>0xFFFFFFF800001000|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800019f8]:KDMBB16 t6, t5, t4<br> [0x800019fc]:sd t6, 1104(ra)<br>    |
|  99|[0x80003850]<br>0x00000200FFFFFFB0|- rs2_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001a34]:KDMBB16 t6, t5, t4<br> [0x80001a38]:sd t6, 1120(ra)<br>    |
| 100|[0x80003860]<br>0x00000000FFFFDE00|- rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001a68]:KDMBB16 t6, t5, t4<br> [0x80001a6c]:sd t6, 1136(ra)<br>    |
| 101|[0x80003870]<br>0x000FFFC0FFFFB000|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001aa4]:KDMBB16 t6, t5, t4<br> [0x80001aa8]:sd t6, 1152(ra)<br>    |
