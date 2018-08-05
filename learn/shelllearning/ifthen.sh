#!/bin/bash
#to learn the structured statement if-then
#if the command after the keyword if return a exit code that equals 0,then the statement after the then statement can be executed.

#the format is:
#if command
#then
#	commands
#fi

if pwd; then
echo $(pwd)
fi

if IamNotACommand
then
echo pwd
fi

exit 0
