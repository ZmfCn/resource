#!/bin/bash
#To learn the comparation of the strings

#format:
# str1 = str2					#check whether the str1 and str2 is the same
# str1 != str2					#check whether the str1 and str2 is not the same
# str1 < str2					#check whether the str1 is less than str2.But as the > and < are used to redirect, they are necessary to be escaped.
# str1 > str2					#check whether the str1 is greater than str2
# -n str						#check whether the length of the str is not zero 
# -z str						#check whether the length of the str is zero

#begin

str1=world
str2=world
str3=World
if [ $str1 = $str2 ]
then
	echo The str1 is equal to the str2.
fi

#in the shell,the downcase is greater than the upcase
if [ $str2 \> $str3 ]
then
	echo The str2 is greater than the str3 in the shell
fi

exit 0

