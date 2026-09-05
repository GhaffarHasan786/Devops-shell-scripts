#!/bin/bash

echo "Hey choose an option"
echo "a = for print date"
echo "b = for list of all filies"
echo "c = to check current location"

read choice

case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "please provide a valid value"
esac

