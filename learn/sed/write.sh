#!/bin/bash
# 07.28.2017

# there is a command to write lines to the file. (w)
# usage template is: [address]w filename

# remember to check w privilege before writing.

# the usage of this command is almost the same as insert, append and following read.

# if we don't use address, all lines are to be written to the file.
echo 1 ----
sed -n 'w temp.txt' t.txt
cat temp.txt
echo

# if we use address, only the specified lines are to be written into the file.
echo 2 ----
sed -n '2,$w temp.txt' t.txt
cat temp.txt

rm -f temp.txt
