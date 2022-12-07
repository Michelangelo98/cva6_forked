#!/bin/bash

#rm log2/*
#cp log/* log2/
rm log/*
# cd ../CHERI-Litmus/binaries
# ./clean.sh
# ./make-riscv.sh ../tests/riscv-tests/non-mixed-size/
# cd ../../cva6_forked
cva6 make clean
cva6 make find-litmus
cva6 make -j8 run-litmus-tests batch-mode=1
./ci/merge-tests.sh 