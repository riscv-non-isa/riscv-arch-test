#!/bin/bash

cd $(dirname $0)

# To start GDB connected to the simulator we add -gdbconsole
RUN_RV32_dhrystone.sh -gdbconsole "$@"
