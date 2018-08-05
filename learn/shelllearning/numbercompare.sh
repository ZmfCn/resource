#!/bin/bash
#To learn the number compare in the bash shell

#These are some compare operators
# n1 -eq n2			#check whether the n1 is equal to n2.
# n1 -gt n2			#check whether the n1 is greater than n2.
# n1 -ge n2			#check whether the n1 is greater than or equal to n2.
# n1 -lt n2			#check whether the n1 is less than n2.
# n1 -le n2			#check whether the n1 is less than or equal to n2.
# n1 -ne n2			#check whether the n1 is not equal to n2.
#But it is to remember that the the comparation is not able to used on the float number.

#begin:
var1=5
var2=6
if [ $var1 -gt $var2 ]
then
	echo var1 $var1 is greater than var2 $var2.
else
	echo var1 $var1 is not greater than var2 $var2.
fi

exit 0
