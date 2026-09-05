#!/bin/bash

read -p "Enter your marks " marks

if [ { $marks -gt 40 }]
	than
	echo "you are pass "
else
	echo "you are failed "
fi

