#!bin/bash
#string operation
myvar="hi! buddy, how are you? "
myvarlength=${#myvar}
	echo "length of myvar is $myvarlength"


	echo "upper case is ${myvar^^}"
	echo "lower case is ${myvar,,}"
# to replace a string
 newvar=${myvar/buddy/ghaffar}
 echo "new var is ----- $newvar "

 #to slice a string
 echo "after slice ${myvar:4} "


