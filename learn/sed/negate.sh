#!/bin/bash
# 07.31.2017

# negate command is a little similar to '!' in condition expresions.
# negate(!) command can make the commands after it not to be executed.
# it can be used with address like "4!d", but be careful that the address is for ! command but not for the whole which means the delete command is not working with address.

# print lines except the fourth line
echo 1 ----
sed -n '4!p' t.txt
echo
# without 4!, print command will be executed in each line, which means all lines are to be printed. But when the sed is in the fourth line, negate command make the print command not to be executed.

# it can be used with {} to work with a command that is also work with address. At the same time, more than one commands can exsit in {}.
echo 2 ----
sed -n '4!{3,4d;s/zmf/z/g};p' t.txt
echo

# some wonderful usage: invert the order of the text. $N or $n is used to stop the sed editor in advance, although tac command can do this.
echo 3 ----
sed -n '1{h;d};1!{G;${p;N};h;d};' t.txt
echo

# another simplier form to invert:
echo 4 ----
sed -n '{1!G;h;$p}' t.txt
