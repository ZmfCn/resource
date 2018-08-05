#!/bin/bash

a=8

until echo $a
	[ $a -le 0 ]
do
	a=$(expr $a - 1)
done

exit 0
