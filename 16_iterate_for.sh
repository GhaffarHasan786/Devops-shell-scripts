#!/bin/bash

#getting values from a files

FILE="/mnt/c/Users/GHAFFAR HASAN/myscripts/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done

