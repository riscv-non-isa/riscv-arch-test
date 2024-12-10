
CURL_ARGS = -C - --retry 5 --retry-delay 2 --retry-connrefused -L -o

export PATH := $(PATH):/opt/sail/bin:/workspaces/sail-riscv/c_emulator:/opt/riscv32/riscv/bin:/opt/riscv64/riscv/bin

setup: setup-ctg setup-isac setup-riscof setup-sail-riscv setup-rv32 setup-rv64

CTG := $(shell command -v riscv_ctg 2> /dev/null)
setup-ctg:
ifndef CTG
	pip install --editable ./riscv-ctg
endif
	echo "riscv-ctg install"

ISAC := $(shell command -v riscv_isac 2> /dev/null)
setup-isac:
ifndef ISAC
	pip install --editable ./riscv-isac
endif
	echo "riscv-isac install"

RISCOF := $(shell command -v riscof 2> /dev/null)
setup-riscof:
ifndef RISCOF
	pip install riscof
endif
	echo "riscof install"

SAIL := $(shell command -v sail 2> /dev/null)
_setup-sail: 
ifndef SAIL
	curl $(CURL_ARGS) /opt/sail.tar.gz https://github.com/rems-project/sail/releases/download/0.18-linux-binary/sail.tar.gz
	tar xzf /opt/sail.tar.gz -C /opt/
	sail -v
	echo 'export PATH="$$PATH:/opt/sail/bin"' >> ~/.zshrc
endif
	echo "sail install"

SAIL_RISCV := $(shell command -v riscv_sim_RV64 2> /dev/null)
setup-sail-riscv: _setup-sail
ifndef SAIL
	cd .. && git clone https://github.com/riscv/sail-riscv.git
	cd sail-riscv
	ARCH=RV32 make -j$(nproc)
	ARCH=RV64 make -j$(nproc)
	riscv_sim_RV32 --help
	riscv_sim_RV64 --help
	echo 'export PATH="$$PATH:/workspaces/sail-riscv/c_emulator"' >> ~/.zshrc
endif
	echo "sail-riscv install"

RV32 := $(shell command -v riscv32-unknown-elf-gcc 2> /dev/null)
setup-rv32:
ifndef RV32
	curl $(CURL_ARGS) /opt/riscv32.tar.xz https://github.com/riscv-collab/riscv-gnu-toolchain/releases/download/2024.11.22/riscv32-elf-ubuntu-22.04-gcc-nightly-2024.11.22-nightly.tar.xz
	mkdir -p /opt/riscv32
	tar xf /opt/riscv32.tar.xz -C /opt/riscv32
	riscv32-unknown-elf-gcc --version
	echo 'export PATH="$$PATH:/opt/riscv32/riscv/bin"' >> ~/.zshrc
endif
	echo "rv64 toolchain install"

RV64 := $(shell command -v riscv64-unknown-elf-gcc 2> /dev/null)
setup-rv64:
ifndef RV64
	curl $(CURL_ARGS) /opt/riscv64.tar.xz https://github.com/riscv-collab/riscv-gnu-toolchain/releases/download/2024.11.22/riscv64-elf-ubuntu-22.04-gcc-nightly-2024.11.22-nightly.tar.xz
	mkdir -p /opt/riscv64
	tar xf /opt/riscv64.tar.xz -C /opt/riscv64
	riscv64-unknown-elf-gcc --version
	echo 'export PATH="$$PATH:/opt/riscv64/riscv/bin"' >> ~/.zshrc
endif
	echo "rv64 toolchain install"

clean_zip:
	rm /opt/sail.tar.gz
	rm /opt/riscv32.tar.xz
	rm /opt/riscv64.tar.xz