#!/bin/bash

#Learn to define my own file descriptors.
#A process can own at most 9 file descriptors, including standard ones. So user-defined ones is between 3-8.

exec 3>b.txt
echo "This is in decritors.sh." >&3

exec 3>&1
exec 1>b.txt
echo "Hello!"
exec 1>&3

exec 4<&1
exec 0<s.txt
read line
echo $line
exec 0<&4

#This is r FD
exec 5<s.txt

#This is w FD
exec 4>b.txt

#This is rw(read and write) file descriptor
exec 8<> t.txt
read line <&8
echo $line

#This is to print the FDs that are being used. $$ contains PID of current process.
lsof -a -p $$

#This is to close it. Either 8>&- or 8<&- is OK.
exec 8<&-
