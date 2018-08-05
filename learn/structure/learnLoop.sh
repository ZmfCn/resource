#!/bin/bash

#There are three kinds of 'for' loops
for((i=0;i<5;i++)) #format one
do
echo $i
done
echo "This is the first for loop"

for i in 0 1 5 7 #format two
do
echo $i
done
echo "This is the second for loop"

for i in {0..9} #format three
do
echo $i
done
echo "This is the third for loop"

#While loop
i=0
while [ $i -lt 10 ];
do
echo "This is while ${i}"
let i+=1
done
echo "This is the while loop"

#until loop
j=0
until [ $j -gt "2" ];
do
echo "This is until ${j} "
let j+=1
done
echo "This is the until loop"

