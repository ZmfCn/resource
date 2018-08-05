#!/bin/bash
#learn to use the keyword test to judge other conditions in the if structure
#the format is : test condition

#when it is used with if:
#if test condition
#then
#commands
#fi

var=1
if test $var
then 
echo "The variable is not empty."
fi

exit 0
