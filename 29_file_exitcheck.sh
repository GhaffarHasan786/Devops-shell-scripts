#!/bin/bash
FILEPATH="/home/pual/myscripts/test.csv"
if [[ -f $FILEPATH ]]
then
	echo "File is exist"
else
	echo "file is not exist"
	exit 1
fi

