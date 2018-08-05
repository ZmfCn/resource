#!/bin/bash
#Some operators about file or directory
#[ -f file ] judge weather the file exits and is a file
#[ -d file ] judge weather the file exits and is a directory
#[ -e file ] judge weather the file exits
#[ -r file ] judge weather the file is readable
#[ -w file ] judge weather the file is writable
#[ -x file ] judge weather the file is excutable

file='judge.sh'
if [ -e $file ]
then
	echo $file exists.
fi

if [ -f $file ]
then 
	echo $file is a file.
else
	exit 1
fi

if [ -x $file ]
then
	echo $file is excutable.
fi
