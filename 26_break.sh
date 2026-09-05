#!/bin/bash

#example of break in a loop
#we just need to confrim if a given a no.if present or not

no=6
for i in 1 2 3 4 5 6 7 8 9
do
	#break the loop if no is present
	if [[ $no -eq $i ]]
	then
		echo "$no is found!!!!"
		break
	fi
	echo "Number is $i"
done

