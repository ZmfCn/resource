#!/bin/bash
#to learn the file and director judgments

#operations:
# -d file		#check whether the file exsits and it is a director
# -e file		#check whether the file exsits 
# -f file		#check whether the file exsits and it is a file 
# -r file		#check whether the file exsits and it is readable
# -s file		#check whether the file exsits and it is not empty
# -w file		#check whether the file exsits and it is writable
# -x file		#check whether the file exsits and it is executable
# -O file		#check whether the file exsits and it belongs to the current user
# -G file		#check whether the file exsits and the default group is the same to the user's default group(not all groups)
# file1 -nt file2		#check whether the file1 is newer than the file2 
# file1 -ot file2		#check whether the file1 is older than the file2

#begin:

file1=$HOME/file/learning/shelllearning/numbercompare.sh
if [ -d $file1 ]
then
	cd $file1
	ls
elif [ -f $file1 ]
then
	echo The file exsits but it is not a director
fi

file2=/home/zzz
if [ -e $file2 ]
then
	echo The file $files does not exsits
fi

file3=/home/zmf/file/learning/shelllearning/stringcompare.sh
if [ -e $file3 ]
then
	if [ -O $file3 ]
	then
		echo The file3 $file3 belongs to the current user.
	fi

	if [ -x $file3 ]
	then
		echo The file $file3 is executable.
	fi

	if [ -s $file3 ]
	then
		echo The file $file3 is not empty.
	else
		echo The file $file3 iss empty.
	fi

	if [ $file1 -nt $file3 ]
	then
		echo The file1 $file1 is newer than the file3 $file3.
	else
		echo The file1 $file1 is not newer than the file3 $file3.
	fi
fi
exit 0
