#!/bin/bash
a=4
if [ $a -le 10 ] && [ $a -ge 2 ] 
then
	echo true1
fi

if [ $a -ge 2 ] || [ $a -lt 10 ]
then
	echo true2
fi

if [ $a -le 10 -a $a -ge 2 ]
then
	echo true3
fi

if [ $a -ge 2 -o $a -lt 10 ]
then
	echo true4
fi
