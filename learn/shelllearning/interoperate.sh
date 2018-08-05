#!/bin/bash
#This is a tiny script to learn the bash calculator(bc)
var1=10.46
var2=43.76
var3=33.2
var4=71

var5=$(bc << EOF
scale=4
a1=($var1*$var2)
b1=($var3*$var4)
a1+b1
EOF
)

var6=$(echo "scale=4; 3.44/5" | bc)
#the value of the scale is to define the number of the precise.
echo The value of the var6 is $var6
echo The final answer for this mess is $var5
exit 0
