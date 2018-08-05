#!/bin/bash
#Learn about for loop
#To calculate the sum of 1-100

sum=0
for i in `seq 1 100`
do
	sum=`echo $sum+$i|bc`
done

echo $sum

exit 1
