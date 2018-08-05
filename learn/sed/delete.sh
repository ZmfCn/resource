#!/bin/bash

# learn to use delete command 'd' in sed.
# it will delete lines that match certain address pattern.

# delete all content:
echo "1: sed 'd' t.txt"
sed 'd' t.txt
echo

# delete the second line:
echo "2: sed '2d' t.txt"
sed '2d' t.txt
echo

# delete certain line interval:
echo "3 sed '2,\$d' t.txt"
sed '2,$d' t.txt
echo

# delete lines matched text pattern:
echo 4 sed '/zmf/d' t.txt
sed '/zmf/d' t.txt
echo

# delete lines in text pattern interval, it is like this: sed '/pattern1/,/pattern2/d' file
echo 5
sed '/bin/,/zmf/d' t.txt
echo

# But be careful to use the text pattern interval delete. It may cause some problems. The pattern1 means where the delete function is to on, and the pattern2 means where the delete function is to off.


# if the pattern2 is not to be found after pattern1 is found, the lines from pattern1 to the end are to be deleted.
echo 6
sed '/bin/,/ada/d' t.txt
echo

# if the pattern1 is not to be found while the pattern2 is found, nothing will take place.
echo 7
sed '/afa/,/zmf/d' t.txt
echo

# if the pattern1 is found and pattern2 is found and a pattern1 is newly found, it is just like the situation 1, because the delete function is turned on, turned off, turned on.

# if the content in pattern space is cleared, the commands after will not be executed.
echo 8
sed '2d;=' t.txt
