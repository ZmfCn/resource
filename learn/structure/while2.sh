#!/bin/bash

#A tiny script to comment on a score.

while :; 
do
	clear
	read -p "Please enter the a positive number as the score: " n

	if [ -z `echo $n|sed -r 's/[0-9]//g'` ]
	then
		break
	fi
done

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
