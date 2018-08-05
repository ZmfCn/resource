#!/bin/bash
read -p "Please input a number: " n
n1=`echo $n|sed -r 's/[0-9]//g'`

if [ ! -z $n1 ]
then
	echo "Please input a number";
	exit 1
fi

n2=`echo $n%2|bc`

case $n2 in
	0)
		echo "Ou"
		;;
	1)
		echo "Ji"
		;;
	*)
		echo "Please input a number"
		;;
esac


