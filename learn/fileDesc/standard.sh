#!/bin/bash

#This is a file to learn about standard file descriptors
#They are 0,1,2. They are all u(read+write) FDs(File Descriptors).
#0 is STDIN
#1 is STDOUT
#2 is STDERR

exec 0<s.txt
read line1
echo $line1
read line2
echo "error $line2" >&2

ls $1 > t.txt 2>&1
exit 0
