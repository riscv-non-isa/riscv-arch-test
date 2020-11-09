# Data Propagation Reports (DPRs)

This directory contains the Data Propagation Reports for each test available in the suite.
The purpose of the DPR is to ensure that each test is indeed performing as expected. The DPR itself
is not concerned with the values of the operations (which is the function of the coverage report),
but is rather concerned with the following:

- does the data of an operation propagate to the signature correctly
- do signatures entries have a correlation to the coverpoints
- is the signature overwritten 

To capture this intent each DPR provides the following statistics

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

## Directory structure
The rest of the directory is structured similar to how the riscv-test-suite directory is structured.

## Reports

### rv32i_m/I

- [add-01     ](rv32i_m/I/add-01.md)
- [addi-01    ](rv32i_m/I/addi-01.md)
- [and-01     ](rv32i_m/I/and-01.md)
- [andi-01    ](rv32i_m/I/andi-01.md)
- [auipc-01   ](rv32i_m/I/auipc-01.md)
- [beq-01     ](rv32i_m/I/beq-01.md)
- [bge-01     ](rv32i_m/I/bge-01.md)
- [bgeu-01    ](rv32i_m/I/bgeu-01.md)
- [blt-01     ](rv32i_m/I/blt-01.md)
- [bltu-01    ](rv32i_m/I/bltu-01.md)
- [bne-01     ](rv32i_m/I/bne-01.md)
- [fence-01   ](rv32i_m/I/fence-01.md)
- [jal-01     ](rv32i_m/I/jal-01.md)
- [jalr-01    ](rv32i_m/I/jalr-01.md)
- [lb-align-01](rv32i_m/I/lb-align-01.md)
- [lbu-align-01](rv32i_m/I/lbu-align-01.md)
- [lh-align-01](rv32i_m/I/lh-align-01.md)
- [lhu-align-01](rv32i_m/I/lhu-align-01.md)
- [lui-01     ](rv32i_m/I/lui-01.md)
- [lw-align-01](rv32i_m/I/lw-align-01.md)
- [or-01      ](rv32i_m/I/or-01.md)
- [ori-01     ](rv32i_m/I/ori-01.md)
- [sb-align-01](rv32i_m/I/sb-align-01.md)
- [sh-align-01](rv32i_m/I/sh-align-01.md)
- [sll-01     ](rv32i_m/I/sll-01.md)
- [slli-01    ](rv32i_m/I/slli-01.md)
- [slt-01     ](rv32i_m/I/slt-01.md)
- [slti-01    ](rv32i_m/I/slti-01.md)
- [sltiu-01   ](rv32i_m/I/sltiu-01.md)
- [sltu-01    ](rv32i_m/I/sltu-01.md)
- [sra-01     ](rv32i_m/I/sra-01.md)
- [srai-01    ](rv32i_m/I/srai-01.md)
- [srl-01     ](rv32i_m/I/srl-01.md)
- [srli-01    ](rv32i_m/I/srli-01.md)
- [sub-01     ](rv32i_m/I/sub-01.md)
- [sw-align-01](rv32i_m/I/sw-align-01.md)
- [xor-01     ](rv32i_m/I/xor-01.md)
- [xori-01    ](rv32i_m/I/xori-01.md)

### rv32i_m/M

- [div-01   ](rv32i_m/M/div-01.md)
- [divu-01  ](rv32i_m/M/divu-01.md)
- [mul-01   ](rv32i_m/M/mul-01.md)
- [mulh-01  ](rv32i_m/M/mulh-01.md)
- [mulhsu-01](rv32i_m/M/mulhsu-01.md)
- [mulhu-01 ](rv32i_m/M/mulhu-01.md)
- [rem-01   ](rv32i_m/M/rem-01.md)
- [remu-01  ](rv32i_m/M/remu-01.md)

### rv32i_m/C


- [cadd-01     ](rv32i_m/C/cadd-01.md)
- [caddi-01    ](rv32i_m/C/caddi-01.md)
- [caddi16sp-01](rv32i_m/C/caddi16sp-01.md)
- [caddi4spn-01](rv32i_m/C/caddi4spn-01.md)
- [cand-01     ](rv32i_m/C/cand-01.md)
- [candi-01    ](rv32i_m/C/candi-01.md)
- [cbeqz-01    ](rv32i_m/C/cbeqz-01.md)
- [cbnez-01    ](rv32i_m/C/cbnez-01.md)
- [cebreak-01  ](rv32i_m/C/cebreak-01.md)
- [cj-01       ](rv32i_m/C/cj-01.md)
- [cjal-01     ](rv32i_m/C/cjal-01.md)
- [cjalr-01    ](rv32i_m/C/cjalr-01.md)
- [cjr-01      ](rv32i_m/C/cjr-01.md)
- [cli-01      ](rv32i_m/C/cli-01.md)
- [clui-01     ](rv32i_m/C/clui-01.md)
- [clw-01      ](rv32i_m/C/clw-01.md)
- [clwsp-01    ](rv32i_m/C/clwsp-01.md)
- [cmv-01      ](rv32i_m/C/cmv-01.md)
- [cnop-01     ](rv32i_m/C/cnop-01.md)
- [cor-01      ](rv32i_m/C/cor-01.md)
- [cslli-01    ](rv32i_m/C/cslli-01.md)
- [csrai-01    ](rv32i_m/C/csrai-01.md)
- [csrli-01    ](rv32i_m/C/csrli-01.md)
- [csub-01     ](rv32i_m/C/csub-01.md)
- [csw-01      ](rv32i_m/C/csw-01.md)
- [cswsp-01    ](rv32i_m/C/cswsp-01.md)
- [cxor-01     ](rv32i_m/C/cxor-01.md)

### rv32i_m/privilege

- [ebreak.md            ](rv32i_m/privilege/ebreak.md)
- [ecall.md             ](rv32i_m/privilege/ecall.md)
- [misalign-beq-01.md   ](rv32i_m/privilege/misalign-beq-01.md)
- [misalign-bge-01.md   ](rv32i_m/privilege/misalign-bge-01.md)
- [misalign-bgeu-01.md  ](rv32i_m/privilege/misalign-bgeu-01.md)
- [misalign-blt-01.md   ](rv32i_m/privilege/misalign-blt-01.md)
- [misalign-bltu-01.md  ](rv32i_m/privilege/misalign-bltu-01.md)
- [misalign-bne-01.md   ](rv32i_m/privilege/misalign-bne-01.md)
- [misalign-jal-01.md   ](rv32i_m/privilege/misalign-jal-01.md)
- [misalign-lh-01.md    ](rv32i_m/privilege/misalign-lh-01.md)
- [misalign-lhu-01.md   ](rv32i_m/privilege/misalign-lhu-01.md)
- [misalign-lw-01.md    ](rv32i_m/privilege/misalign-lw-01.md)
- [misalign-sh-01.md    ](rv32i_m/privilege/misalign-sh-01.md)
- [misalign-sw-01.md    ](rv32i_m/privilege/misalign-sw-01.md)
- [misalign1-jalr-01.md ](rv32i_m/privilege/misalign1-jalr-01.md)
- [misalign2-jalr-01.md ](rv32i_m/privilege/misalign2-jalr-01.md)

### rv32i_m/Zifencei

- [Fencei.md](rv32i_m/Zifencei/Fencei.md)

### rv64i_m/I

- [add-01     ](rv64i_m/I/add-01.md)
- [addi-01    ](rv64i_m/I/addi-01.md)
- [and-01     ](rv64i_m/I/and-01.md)
- [andi-01    ](rv64i_m/I/andi-01.md)
- [auipc-01   ](rv64i_m/I/auipc-01.md)
- [beq-01     ](rv64i_m/I/beq-01.md)
- [bge-01     ](rv64i_m/I/bge-01.md)
- [bgeu-01    ](rv64i_m/I/bgeu-01.md)
- [blt-01     ](rv64i_m/I/blt-01.md)
- [bltu-01    ](rv64i_m/I/bltu-01.md)
- [bne-01     ](rv64i_m/I/bne-01.md)
- [fence-01   ](rv64i_m/I/fence-01.md)
- [jal-01     ](rv64i_m/I/jal-01.md)
- [jalr-01    ](rv64i_m/I/jalr-01.md)
- [lb-align-01](rv64i_m/I/lb-align-01.md)
- [lbu-align-01](rv64i_m/I/lbu-align-01.md)
- [lh-align-01](rv64i_m/I/lh-align-01.md)
- [lhu-align-01](rv64i_m/I/lhu-align-01.md)
- [lui-01     ](rv64i_m/I/lui-01.md)
- [lw-align-01](rv64i_m/I/lw-align-01.md)
- [or-01      ](rv64i_m/I/or-01.md)
- [ori-01     ](rv64i_m/I/ori-01.md)
- [sb-align-01](rv64i_m/I/sb-align-01.md)
- [sh-align-01](rv64i_m/I/sh-align-01.md)
- [sll-01     ](rv64i_m/I/sll-01.md)
- [slli-01    ](rv64i_m/I/slli-01.md)
- [slt-01     ](rv64i_m/I/slt-01.md)
- [slti-01    ](rv64i_m/I/slti-01.md)
- [sltiu-01   ](rv64i_m/I/sltiu-01.md)
- [sltu-01    ](rv64i_m/I/sltu-01.md)
- [sra-01     ](rv64i_m/I/sra-01.md)
- [srai-01    ](rv64i_m/I/srai-01.md)
- [srl-01     ](rv64i_m/I/srl-01.md)
- [srli-01    ](rv64i_m/I/srli-01.md)
- [sub-01     ](rv64i_m/I/sub-01.md)
- [sw-align-01](rv64i_m/I/sw-align-01.md)
- [xor-01     ](rv64i_m/I/xor-01.md)
- [xori-01    ](rv64i_m/I/xori-01.md)

### rv64i_m/M

- [div-01   ](rv64i_m/M/div-01.md)
- [divu-01  ](rv64i_m/M/divu-01.md)
- [mul-01   ](rv64i_m/M/mul-01.md)
- [mulh-01  ](rv64i_m/M/mulh-01.md)
- [mulhsu-01](rv64i_m/M/mulhsu-01.md)
- [mulhu-01 ](rv64i_m/M/mulhu-01.md)
- [rem-01   ](rv64i_m/M/rem-01.md)
- [remu-01  ](rv64i_m/M/remu-01.md)

### rv64i_m/C

- [cadd-01     ](rv64i_m/C/cadd-01.md)
- [caddi-01    ](rv64i_m/C/caddi-01.md)
- [caddi16sp-01](rv64i_m/C/caddi16sp-01.md)
- [caddi4spn-01](rv64i_m/C/caddi4spn-01.md)
- [cand-01     ](rv64i_m/C/cand-01.md)
- [candi-01    ](rv64i_m/C/candi-01.md)
- [cbeqz-01    ](rv64i_m/C/cbeqz-01.md)
- [cbnez-01    ](rv64i_m/C/cbnez-01.md)
- [cebreak-01  ](rv64i_m/C/cebreak-01.md)
- [cj-01       ](rv64i_m/C/cj-01.md)
- [cjal-01     ](rv64i_m/C/cjal-01.md)
- [cjalr-01    ](rv64i_m/C/cjalr-01.md)
- [cjr-01      ](rv64i_m/C/cjr-01.md)
- [cli-01      ](rv64i_m/C/cli-01.md)
- [clui-01     ](rv64i_m/C/clui-01.md)
- [clw-01      ](rv64i_m/C/clw-01.md)
- [clwsp-01    ](rv64i_m/C/clwsp-01.md)
- [cmv-01      ](rv64i_m/C/cmv-01.md)
- [cnop-01     ](rv64i_m/C/cnop-01.md)
- [cor-01      ](rv64i_m/C/cor-01.md)
- [cslli-01    ](rv64i_m/C/cslli-01.md)
- [csrai-01    ](rv64i_m/C/csrai-01.md)
- [csrli-01    ](rv64i_m/C/csrli-01.md)
- [csub-01     ](rv64i_m/C/csub-01.md)
- [csw-01      ](rv64i_m/C/csw-01.md)
- [cswsp-01    ](rv64i_m/C/cswsp-01.md)
- [cxor-01     ](rv64i_m/C/cxor-01.md)

### rv64i_m/privilege

- [ebreak.md            ](rv64i_m/privilege/ebreak.md)
- [ecall.md             ](rv64i_m/privilege/ecall.md)
- [misalign-beq-01.md   ](rv64i_m/privilege/misalign-beq-01.md)
- [misalign-bge-01.md   ](rv64i_m/privilege/misalign-bge-01.md)
- [misalign-bgeu-01.md  ](rv64i_m/privilege/misalign-bgeu-01.md)
- [misalign-blt-01.md   ](rv64i_m/privilege/misalign-blt-01.md)
- [misalign-bltu-01.md  ](rv64i_m/privilege/misalign-bltu-01.md)
- [misalign-bne-01.md   ](rv64i_m/privilege/misalign-bne-01.md)
- [misalign-jal-01.md   ](rv64i_m/privilege/misalign-jal-01.md)
- [misalign-lh-01.md    ](rv64i_m/privilege/misalign-lh-01.md)
- [misalign-lhu-01.md   ](rv64i_m/privilege/misalign-lhu-01.md)
- [misalign-lw-01.md    ](rv64i_m/privilege/misalign-lw-01.md)
- [misalign-sh-01.md    ](rv64i_m/privilege/misalign-sh-01.md)
- [misalign-sw-01.md    ](rv64i_m/privilege/misalign-sw-01.md)
- [misalign1-jalr-01.md ](rv64i_m/privilege/misalign1-jalr-01.md)
- [misalign2-jalr-01.md ](rv64i_m/privilege/misalign2-jalr-01.md)

### rv64i_m/Zifencei

- [Fencei.md](rv64i_m/Zifencei/Fencei.md)
