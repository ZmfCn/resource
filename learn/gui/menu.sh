#!/bin/bash

# A script showing menu.

menu(){
	clear
	# -e option used to expand echo.
	echo -e "\n"
	echo -e "\t0) exit"
	echo -e "\t1) diskspace"
	echo -e "\t2) whoseon"
	echo -e "\t3) lsdir"
}

# select is a convinent command to generate menu.
start2(){
	clear
	local option=0
	# PS3 is the input reminder of select.
	PS3="enter option: "
	# all options text must be in a line.
	select option in "exit" "diskspace" "whoseon" "lsdir"
	do
		# in real, although the user inputs number, the thing needs matched is the text of the option.
		case $option in
			"exit") exitmenu;;
			"diskspace")diskspace;;
			"whoseon")whoseon;;
			"lsdir")lsdir;;
		esac
	done
}

exitmenu(){
	clear
	exit 0
}

diskspace(){
	clear
	df -k
}

whoseon(){
	clear
	who
}

lsdir(){
	clear
	ls -lF
}

echoNewline(){
	local times=$1
	while [ $times -gt 0 ]
	do
		echo
		times=$(expr $times - 1)
	done
}

start(){
	while [ 1 ]
	do
		menu
		read -n1 -p "Please enter your option: " option
		case $option in
			0) exitmenu ;;
			1) diskspace ;;
			2) whoseon ;;
			3) lsdir ;;
			*) ;;
		esac

		echoNewline 3

		read -n1 -p "continue?(y or n): " option
		case $option in
			y) ;;
			n) exitmenu;;
			*) ;;
		esac
	done
}

start2
