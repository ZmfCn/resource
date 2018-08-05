#!/bin/bash

# in order to deal with phrases that are probably between two lines, next command appears.

# sometimes it can be used to skip a certain line with address.
temp=`mktemp t.XXXXXX`
exec 3>&1
exec 1>$temp
echo "This is the first line."
echo "This is the second line."
echo "This is the third line."
echo "This is the fourth line."
echo "This is the last line."
exec 1>&3
exec 3>&-

# it can make the sed editor move to next line. If the n command is executed in the last line, it will make the sed editor stop and the commands after it will not be executed.
echo 1 ----
sed -n 'n;p' $temp
echo

# this is used to skip the substitution in the second line.
echo 2 ----
sed '/second/n;s/line/location/' $temp
echo

rm -f $temp
