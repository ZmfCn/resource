#!/bin/bash

# Learn to use trap to arrest signal.

# There are some frequent signal here:
# 1  SIGHUP hup (when the terminal is terminated)
# 2  SIGINT interrupt the process(Ctrl-C)
# 3  SIGQUIT 
# 9  SIGKILL kill the process(kill)
# 15 SIGTERM
# 17 SIGSTOP
# 18 SIGTSTP temporary stop the process
# 19 SIGCONT continue process stopped

# trap commands signal.
trap "echo ' Sorry! I have trapped Ctrl -C'" SIGINT
trap "echo ' Goodbye!'" EXIT

echo This is a test.

count=0

while :; 
do
	echo $count
	# Make this sleep 1s after printing a number, but the Ctrl-C will break the sleep.
    count=$(expr $count + 1)	
	if [ $count -eq 5 ]
	then
		# alter the behavior when catch the signal.
		trap "echo ' Sorry!'" SIGINT
	fi

	[ $count -eq 10 ] && break
	sleep 1
done

# cancel the arrest of the signal. Format: trap -- signal || trap - signal
trap - SIGINT

echo sleep 5 seconds...
sleep 5

echo sleep 5 seconds more...
sleep 5

echo "This is the end."
