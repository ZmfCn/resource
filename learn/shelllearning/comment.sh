#!/bin/bash
#This is a shell to learn the comments in the bash shell

#style one: comment a single line
#This is a comment

#style two: comment multi lines by making them a function and not to invoke it
noExec(){
echo 1
echo 2
echo 3
}

#style three: comment multi lines by :<<character.Character can be number and character,such as 1 
:<<!
echo 4 
echo 5
echo 6
!

#style four: comment multi lines by if
if false;then
echo 7
echo 8
echo 9
fi
exit 0
