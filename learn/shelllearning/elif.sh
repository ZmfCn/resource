#!/bin/bash
#learn the elif structure

testuser=NoSuchUser

if grep $testuser /etc/passwd
then
	echo "The user $testuser exits on this system".
elif ls -d /home/$testuser/
then
	echo "The user $testuser does not exsit on the system. However, $testuser has a directory."
fi

exit 0
