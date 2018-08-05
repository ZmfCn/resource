#!/bin/bash
#Output the directories in this directory

dir=$1
if [ -z $dir ]
then
	dir=./
fi

if [ ! -d $dir ]
then
	echo "Not a directory."
	exit 1
fi

for f in `ls $1`
do
	if [ -d $1$f ]
	then
		echo $f
	fi
done

exit 1
