#!/bin/bash

# like other file editors, sed can insert and append.

# insert template: sed '[address]i\content' file. As you see, the command can work with address to insert a line before the appointed line.

text="insert"
# without address the text will be insert before each line in the output.
echo 1 -------------------------------------------------------------------
# the '\' will escape the '$', so a more '\' is needed.
sed "i\\$text" t.txt
echo

# single line address. This will insert the text before the certain line.
echo 2 -------------------------------------------------------------------
sed "2i\\$text" t.txt
echo

# interval address. This will insert text before each line that is in the interval.
echo 3 -------------------------------------------------------------------
sed "2,\$i\\$text" t.txt
echo

# text address. This will insert text before each line that matched the certain text.
echo 4 -------------------------------------------------------------------
sed "/false/i\\$text" t.txt
echo

# append has the same function with insert. The usage is also the same. The only difference is that it insert line after certain lines. And the command of it is 'a' instead of 'i'
text="append"
echo 5 -------------------------------------------------------------------
sed "/false/a\\$text" t.txt
