#!/bin/bash

# In bash, the function can also be recursive invoked.

factorial(){
	if [ $1 -gt 1 ] ;then
		local temp=$[$1-1]
		local result=`factorial $temp`
		echo $[$1*$result]
	elif [ $1 -eq 1 ];then
		echo $1
	fi
}

if [ $1 -gt 25 ]
then
	echo 0
	exit 0
fi

factorial $1
exit 0
