#!/bin/bash
#To learn the for loop
#The value of the variable will stay the last value in the list unless you reassign it.Single quotation and double quotation can both define a value that can not be divided.'This is'  and "This is" will be recognized as a single value in the value list.Sometimes the single quotation may cause some results that we won't expect.The solution is to syrround the words with single quotation by double quotations of use eacape code.

#format:
#for var in valuelist
#do
#	commands
#done

#begin
for test in Alex Bob Cindy David Frank
do
	echo The state is $test
done

#unexpect
for test in This is Alex's not Andy's
do
	echo The word is: $test
done

#solutions
for test in This is "Alex's" not Andy\'s
do
	echo The word is: $test
done


exit 0
