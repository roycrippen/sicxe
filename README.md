SIC/XE - cloned and extended 2/18/2020
======

SIC/XE computer implemented in VHDL for the Digilent Nexys 2 board and system
utilities: assembler, linker and simulator.

### requirements
[cmake >= v2.9](https://cmake.org/) <br>
[gcc >= 7.4.x](https://gcc.gnu.org/)

### quick start
```shell script
# clone repository
git clone https://github.com/roycrippen/sicxe.git

# build 
sh build.sh

# run tests
cd cmake-build-debug/tests
./sicxe_tests
```

#### executables
```shell script
# cd to executables directory
# from sicxe root
$ cd cmake-build-debug/src

# Assembler
$ ./sicasm --help

# FPGA Communicator
$ ./sicfpga --help

#  Linker 
$ ./sicld --help

# Simulator REPL, ctrl-c to exit
$ ./sicsim
> ?

# Virtual Machine
$ ./sicvm --help
```

#### test files
test assembly files: [tests/testdata](tests/testdata)