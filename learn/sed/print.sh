#!/bin/bash
# 07.27.2017

#---------------------------------------------------------------------------
# here is but not only print(p) command.
# print is used to print a line. It is usually used with address or replace(s). Silent option that is to suppress automatic output of sed command always works with it. 
#---------------------------------------------------------------------------

# used only:
echo 1 -------------------------------------------------------------------
sed -n 'p' t.txt
echo
# as is seen, it will print all lines.

# used with single number address, it will print only the certain line. In this example, the second line is to be printed.
echo 2 -------------------------------------------------------------------
sed -n '2p' t.txt
echo

# used with interval adderss, it will print all lines in the interval. Following prints the second line to the end.
echo 3 -------------------------------------------------------------------
sed -n '2,$p' t.txt
echo

# used with text address, it will print each line that matches the pattern. 
echo 4 -------------------------------------------------------------------
sed -n '/zmf/p' t.txt
echo

# if it is necessary to print several lines that are nor continous, multi conmand with ';' is effective:
echo 5 -------------------------------------------------------------------
sed -n '1p;3p;5p' t.txt
echo


# another print command '='. It will print the line number in a single line.
echo 6 -------------------------------------------------------------------
tail /etc/passwd |sed -n '=;p'
echo

# another print command list 'l'. It is used to list text and ASCII characters that are unable to be printed. As for those characters unable to be printed, list a back slash before its decimal value, or use C style like \t, \n, \b.
echo 7 -------------------------------------------------------------------
printf "a\tb\tc\td"|sed -n 'p'
echo
# the $ is the end of the output means newline
printf "a\tb\tc\td"|sed -n 'l'
temp=`mktemp temp.XXXXXX`
printf "abcdefg\b" > $temp
cat $temp
echo
sed -n 'l' $temp
rm -f $temp
