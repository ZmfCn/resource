#!/bin/bash
#to learn the structured statement if-then
#if the command after the keyword if return a exit code that equals 0,then the statement after the then statement can be executed.Else,the statements after the keyword else can be executed.

#the format is:
#if command
#then
#	commands
#else
#	commands
#fi

if pwd; then
echo $(pwd)
else 
echo This is never to be displayed.
fi

if IamNotACommand
then
echo pwd
else
echo This is in else block
fi

exit 0
