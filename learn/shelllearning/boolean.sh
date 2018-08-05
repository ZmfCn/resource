#!/bin/bash
#To learn the usage of the logical operators && and ||
#The '&&' is used as and
#The '||' is used as or

#begin
if [ -e $HOME ] && [ -d $HOME ]
then
	echo The $HOME exsits and it is a director.
	if [ -f $HOME ] || [ -d $HOME ]
	then
		echo The $HOME is a file or a director.
	fi
fi

exit 0
