#!/bin/bash

# change command is to replace the whole line with the line given. It is similar to insert and append.
# the template is: sed '[address]c\line' file

# if it is used without address, each line is to be replaced with line given
echo 1 -------------------------------------------------------------------
sed 'c\changed' t.txt
echo

# it is the same to the insert and append when working with single number address and text address. But it is quite different when using interval adddress.
echo 2 -------------------------------------------------------------------
sed '2,$c\changed' t.txt
# as we can see, all lines from the second to the end are replaced with only a given line.
