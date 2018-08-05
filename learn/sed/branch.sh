#!/bin/bash
# 08.01.2017

# As for command "sed -n 'p;s/zmf/z/;h;$G;$p' t.txt", the sed will execute c command first, and then substitute command according the order in sed command. Now there are several commands to change execution order. One is branch and the other is test.

# branch command is a little similar to 'goto' statement in other programing language.
# the template is: [address]b [label]

# without label, the branch command will make the sed jump to the end of script(sed commands) by default, which means the commands after branch will be skipped.
echo 1 ----
sed -n '3,4b;s/:x:/:xxx:/g;p;' t.txt
echo
# in the output, the substitute command and print command are executed except line3 and line4.

# with label, branch command will jump to the certain potition. Label is defined begining with ':' and following label name.
echo 2 ----
sed -n '3,4b label;s/:x:/:xxx:/g;:label;p' t.txt
echo

# label can not be placed after branch command. When the label is placed before branch command, it consists a loop. But please be careful or it will cause an endless loop.
echo 3 ----
echo "This, is, a, test, text, to, remove, commas,."|sed -n ':label;s/,//p;/,/b label'
