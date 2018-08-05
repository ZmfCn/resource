#!/bin/bash
read -p "Please enter a number: " n

if [ -z $n ]
then
	echo "\$n is null"
	exit 1
fi

n2=`echo $n|grep -c '[^0-9]'`
if [ $n2 -eq 1 ]
then
	echo Non-number
	exit 1
fi

n1=`echo $n%2|bc`
if [ $n1 -eq 1 ]
then
	echo ji
else
	echo ou
fi

[ -f 12.sh ] && echo "12.sh exits"
