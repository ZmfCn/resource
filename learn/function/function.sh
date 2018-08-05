#!/bin/bash

# Learn to declare and use functions. The declaration of the functions must be declared before being invoked.

# There are two kinds of style to declare a function.
sum() {
	a=`echo $1+$2|bc`
	echo $a 
}

function suma {
	sum $1 $2
}

suma 1 2
