#!/bin/bash
# 07.28.2017

# read(r) command is to read data into the data stream from file.
# usage template: [address]r filename

# remember to check read privilege before reading.

# without address, the read content will be inserted after each line.
temp=`date +%Y%m%d`".txt"
echo "read" > $temp

cat $temp

echo 1 ----
sed "r $temp" t.txt
echo 

# with number address, the read content will be inserted after each specified line.
echo 2 ----
sed "2,4r $temp" t.txt
echo

# a cool usage is working with delete command to replace a line with the content in the file.
#echo 3 ----
#sed "3{r $temp;d}" t.txt
#some problems occur
rm -f $temp
