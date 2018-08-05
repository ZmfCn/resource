#!/bin/bash
a=1
if [ $a \> 2 ] 
then
	echo "a gt 2"
elif [ $a -le 10 ]
then
	echo "a le 10"
else 
	echo "a not gt 2"
fi
