#!/bin/bash

#To use temp file in /tmp

#mktemp is used to create a unique temp file in /tmp.
dir=$1

temp=`mktemp temp.XXXXXX`
temp=$dir$temp
ls -lF $temp

rm -f $temp
