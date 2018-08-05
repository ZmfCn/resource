#!/bin/bash

# learn to use s command of sed to substitute string. But remember, sed won't change any content in the file. It will just output changed content.

# a basic usage:
sed 's/zmf/z/' t.txt
echo

# but it will just substitute the first string pattern. There are four flags to control. They are number,g,p,w file.

# number, this means the second string that statify the pattern is to be substituted.
sed 's/zmf/z/2' t.txt
echo

# g, this means all strings are to be substituted.
sed 's/zmf/z/g' t.txt
echo

# p, this means the line whose string is substituted is to be printed to the STDOUT.
sed -n 's/zmf/z/p' t.txt
echo

# w file, means the line altered will be write into the certain file.
temp=`mktemp temp.XXXXXX`
# this means all the strings that statify the pattern will be substituted and the line will be printed and the altered content will be write into a file.
sed -n "s/zmf/z/gpw $temp" t.txt
echo
cat $temp
echo
rm -f $temp

# sometimes, the pattern and substitution contains '/', especially in file path, in which case we should do like this:
sed -n 's/\/bin\/bash/\/bin\/csh/p' t.txt
echo
# it seems like too unfriendly, so we can use other separators like ! or #:
sed -n 's!/bin/bash!/bin/csh!p' t.txt
echo
# or
sed -n 's#/bin/bash#/bin/csh#p' t.txt
echo

# it can work with address. such as text address.
sed -n '/bin/s/bash/csh/p' s.txt
echo
