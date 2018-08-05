#!/bin/bash

while :;
do
	load=`w|awk -F 'load average: ' '{print $2}'|cut -d . -f1`
	if [ $load -gt 10 ]
	then
		echo "Load is too high! `w`."
	fi
	sleep 3;
done

exit 1
