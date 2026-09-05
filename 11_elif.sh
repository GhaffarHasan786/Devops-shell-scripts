#!/bin/bash

read -p "Enter your marks " marks

if [ $marks -ge 40 ];
then
	echo "first Division "

elif [ $marks -ge 60];
then
	echo "2nd Division "
else
	echo "you are failed "

fi

