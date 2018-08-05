#!/bin/bash
# 08.03.2017

# to introduce some methods to reference the pattern in substitute command.
# '&' can stand for the previous pattern.
echo 1 ----
sed -nr 's/b.n/&s/gp' t.txt
echo
# add 's' to all strings matching 'b.n'. '&' can represent the string that matches the pattern.

# '()' can be used to define substance patterns in a substitution pattern. The first sub pattern is represented by '\1' and so on for the else sun patterns.
echo 2 ----
sed -nr 's#(/home)(/[^:]*)#\1/lost+found\2#p' t.txt
echo
# add a string in the middle of the pattern string.

# in this case, it can be also used to change the order of the sub patterns.
echo 3 ----
sed -nr 's/(^[^0-9]*)([0-9]*)(:.*:)(.*$)/\1\4\3\2/p' t.txt
echo
# to make the the first number and the last word exchange in each line.
