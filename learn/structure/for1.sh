#!/bin/bash

IFSOLD=$IFS
IFS=:
for i in `head -1 ../b.txt`
do
	echo $i
done
IFS=$IFSOLD

exit 0
