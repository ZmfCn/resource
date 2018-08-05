#!/bin/bash
#To learn the double bracket operators
#The format is ((expressiom)).

#The operations:
#	val++		#increase later
#	val--		#decrease later
#	++val		#increase before
#	++val		#decrease before
#	!			#logical opposition
#	~			#get opposition by bits
#	**			#power operation
#	<<			#move bits left
#	>>			#move bits right
#	&			#and by bits
#	|			#or by bits
#	&&			#logical and
#	||			#logical or

#The double brackets can be used as advanced features,also it can be used as normal assignment.The assignment with advanced features must come up in the double brackets.


#begin
val1=15
if (( $val1 ** 2 > 90 ))
then
	(( val2=$val1 ** 2 ))
	echo "The square of the $val1 is $val2."
fi

if (( 0&10 ))
then
	echo "$val1 is greater than 10."
fi

exit 0
