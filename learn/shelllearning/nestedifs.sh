#!/bin/bash
#learn nested if structure

testuser=NoSuchUser

if grep $testuser /etc/passwd
then
	echo "The user $testuser exits on this system".
else
	echo "The user $testuser does not exsit on this system."
	if ls -d /home/$testuser/
	then
		echo "However, $testuser has a directory."
	else
		echo "So,$testuser doesn't have a dorectory."
	fi
fi

exit 0
