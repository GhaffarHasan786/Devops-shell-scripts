#!/bin/bash
#to acess the arguments
set -x

if [[ $# -eq 0 ]]
then
	echo "please provide atleast one arguments"
	exit 1
fi

 echo "First argument is $1"
 echo "Second argument is $2"
 echo "All the argument are - $@"
 echo "Number of arguments are -$#"

# for loop to access the values from arguments

for filename in $@

