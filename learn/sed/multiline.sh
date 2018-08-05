#!/bin/bash

# in order to deal with some special situation like: substitute a phrase,but the phrase probably occur between two lines. In this case, we need multiline command.
# there are three commands for multiline oprations. They are next, print, delete: N,P,D. These are their multiline forms.

# N. is next. After N command, the text of next line will be appended to current line in the pattern space. Although the lines are separated by newline character still, they are regarded as a line to deal with.
temp=`mktemp temp.XXXXXX`
exec 3>&1
exec 1>$temp
echo "This is a test text to test multi"
echo "line command. AS we can see, multi"
echo "line command is very useful. And it is"
echo "a little difficult. But after study,"
echo "we can be aware of multi line command."
exec 1>&3
exec 3>&-

# Let's see how does it work. It can read the content of next line. And like next(n), it will not read the line read again.
echo 1 ----
sed 'N;s/x/test/' t.txt
# AS for the line, we can see only the text 'x' in line 1 and line 3 are substituted. This means the sed only executes three times. But in the last line, there is not a more line. So the command N stops the sed editor as we can see the substitution in last line is not executed.
echo

# As the lines are regarded as a line to deal with. We can substitute phrase between two lines.
echo 2 ----
sed 's/multi line/N command/g;N;s/multi line/N command/g;s/multi\nline/N\ncommand/' $temp
#sed 's/multi line/N command/g;N;s/multi\nline/N\ncommand/;P;D' $temp
# as we can see, the "multi line" text is not substituted between the second and the third line while the text between 1 and 2 is. That's because two lines are read once and it can only solve lines 1,2 or 3,4 and etc. We will solve this problem after D and P command.
echo

# What's more, we can substitute the newline character with space character then the lines are merged.
temp2=`mktemp temp.XXXXXX`
echo 3 ----
sed 'N;N;s/\n/ /g' $temp |tee $temp2
echo The number of lines after merged is: `cat $temp2|wc -l`
# as we can see, three lines are merged. Because of using N command more than one times, more than two lines are in pattern space. The last two lines are not merged because the sed is stopped.
echo

# Notice: something to pay attention to is that although the N command get the content of next line to the pattern space, the real sed is pointing the next line, which means number address may sometines make things unexpected.
# for example:
echo 4 ----
sed -n '1N;1p' t.txt
echo
# as we can see, there is nothing to be printed.
# because, after N command, the real line address becomes 2. We can use '=' command to print the line number. So like this:
echo 5 ----
sed -n '1!N;=;p;D' t.txt
echo
# so, please be careful when using number address and N command.

# as the next command in last line will stop the sed editor, we can use $N or $n to stop sed editor sometimes.
echo 6 ----
sed -n '$N;p' t.txt
echo
# as we can see, the last line is not printed.

# print command(P) is used to print the first line in pattern space.
temp3=`mktemp temp.XXXXXX`
tail -5 /etc/passwd|grep -nE '*' > $temp3
echo 7 ----
sed -n 'N;P' $temp3
echo

# delete command (D) is a little different from d. It will delete the first line in the pattern space, which means it will only delete content until the first newline character. While d command will delete all in pattern space.
# N and D command:
echo 8 ----
sed -n 'p;N;D' $temp3
echo

# N and d command:
echo 9 ----
sed -n 'p;N;d' $temp3
echo

# while another essential characteristic is that D command move the sed editor to the second line in the pattern space after it delete the first line and then the sed will execute all commands for second line again. It can receive a great effect when used with P command.
# To solve the problem in the previous substitution:
echo 10 ----
sed 's/multi line/N command/g;N;s/multi\nline/N\ncommand/;P;D' $temp
echo

# but what a pity that it can not be used to concatenate all lines in a text file. Because after substitution, newline character doesn't exsit any more and D command will delete all content in pattern space for there is only one line in it now.
echo 11 ----
sed -n '$p;N;s/\n/ /;P;D' $temp3

rm -f $temp
rm -f $temp2
rm -f $temp3
