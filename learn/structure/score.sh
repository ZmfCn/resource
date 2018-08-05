#!/bin/bash
#A tiny script to comment on a score.

read -p "Please enter the score: " n

if [ ! -z `echo $n|sed -r 's/[0-9]//g'` ]
then
	echo "Please enter a positive number."
	exit 1
fi

n2=`echo $n/10|bc`
case $n2 in
	0|1|2|3|4|5)
		echo "bad."
		;;
	6|7)
		echo "good."
		;;
	8|9)
		echo "great."
		;;
	10)
		echo "factatic!!!"
		;;
	*)
		echo "Number out of range!"
		;;
esac

exit 1
