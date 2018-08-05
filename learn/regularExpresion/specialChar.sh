#!/bin/bash

# This is the introduction to some special characters, including '.-^$*+?[]{}|'

# Among them, '.*[]^$' are in BRE, while the others are in ERE(Extended Regular expression)
temp=`mktemp temp.XXXXXX`

# '^' is to only match patterns at the begin of a line.
# '$' is to only match patterns at the end of a line.
# '^test$' is to match a line only has this content.
# '^$' is to match blank lines.
echo 1 ----
echo "1 2 3 4 5 6" >> $temp
echo "t" >> $temp
echo " t" >> $temp
echo "t " >> $temp
grep -on '^t$' $temp

# '.' is to match any character except newline.
# '[]' is used to define a character class. [asd] is similar to '.'. The '.' is to match a character in characters except newline, while [asd] is to match a character'asd' in charset.
echo 2 ----
echo "at bt hat 1at" |grep -o '.[ab]t'
echo
# as we can see, " bt","hat","1at" are matched.


# '*' is to control matching times. For example, a* means a will occur zero or more times, which means alternative time. It is also useful for character class.
echo 3 ----
echo "t at bt aat" |grep -o 'a*t'
echo

# '-' is used to create a section. [0123456789] is too long while [0-9] is equal to it. In addition, [a-zA-Z] matched alphabets in lower case or upper case.
echo 4 ----
echo "afzAFZ56" |grep -o [a-zA-Z]
echo

# '?' is in ERE. It controls times. It matches zero or one time. -E is used to open ERE for grep.
echo 5 ----
# it will matches color and colour. 
echo "color colour colouur" |grep -Eo 'colou?r'
echo 

# '+' is in ERE. It control times. It matches at least one or more times.
echo 6 ----
echo "t at aat" |grep -Eo 'a+t'
echo

# '{}' is used to establish an interval to control times in a range. {m} means m times. {m,n} means at least m times and at most n times, m and n included.
# in addition, {m,} means at least m times and {,n} means at most n times.
echo 7 ----
echo "tt tat taat taaat taaaat"|grep -Eo 'ta{2,3}t'
echo

echo 8 ----
echo "tt tat taat taaat taaaat"|grep -Eo 'ta{2,}t'
echo

# piple character '|' is used as "or". It is used to match more than one pattern.
# the template is: pattern1|pattern2|pattern3|...
echo 9 ----
echo "cat dog bird" |grep -Eo "cat|dog|bird"
echo

# '()' is to define a group which will be regarded as a standard character, which means special characters is userful for it, too.
echo 10 ----
echo "ct catt catatt caattt" |grep -Eo "c(at)*t"

rm -f $temp
