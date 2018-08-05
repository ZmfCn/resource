#!/bin/bash
#To learn the case statement in the place of long if-then statement.

#format:
#case variables in
#pattern1 | pattern2) commands;;
#pattern3) commands;;
#*) default commands;;
#esac

#begin
user=testing
case $user in
rich | barbara)
	echo "Welcome,$user"
	echo "Please enjoy your visit";;
testing)
	echo "Special testing accout";;
jessica)
	echo "Do not forget to log off when you're alone";;
esac

exit 0
