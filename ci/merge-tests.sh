#!/bin/bash

rm -rf run.log
touch run.log
i=0
for FILE in $(ls log) #$(ls log | find ../CHERI-Litmus/tests/riscv-tests/non-mixed-size/ | grep Coi-Rfi)
do 
	#FILE=$(basename $FILE .litmus).log
	if grep -q Time log/$FILE; then 
		cat log/$FILE >> run.log
		echo "" >> run.log
		i=$((i+1))
	else
		echo "'Time' not found in $FILE"
	fi
done 
echo "Num of tests = $i"