#!/bin/bash
#To learn the double square brackets usage.
#Pattern matching is not provided in the 'test' command while it is provided in here.

#begin
user=zmf
if [[ $user == z* ]]
then
	echo "The pattern is matched successfully."
fi

exit 0
