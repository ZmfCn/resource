#!/bin/bash

# GNOME supports two kinds of graphics toolbag: kdialog and zenity. zenity is installed bu default.
# See manual about zenity for more information.

# using zenity to create a menu

# make this program quiet.
exec 1>/dev/null
exec 2>/dev/null

# temporary file to store information from dialogs.
temp=$(mktemp -t temp.XXXXXX)
temp2=$(mktemp -t temp2.XXXXXX)

# A function to launch dialog to show disk space information.
function diskspace {
	df -k > $temp
	zenity --text-info --title "Disk space" --filename=$temp --width 750 --height 300
}

function whoseon {
	who > $temp
	zenity --text-info --title "Logged in users" --filename=$temp --width 500 --height 10
}

function memusage {
	cat /proc/meminfo > $temp
	zenity --text-info --title "Memory usage" --filename=$temp --width 300 --height 550
}

launchFrame(){
	while [ 1 ]
	do
		zenity --list --radiolist --title "Sys Admin Menu" --column "Select" --column "Menu Item" FALSE "Display diskspace" FALSE "Display users" FALSE "Display memory usage" FALSE "Exit" > $temp2

		if [ $? -eq 1 ]
		then
			break
		fi

		selection=$(cat $temp2)

		case $selection in
		"Display diskspace")
			diskspace ;;
		"Display users")
			whoseon ;;
		"Display memory usage")
			memusage ;;
		"Exit")
			break ;;
		*)
			zenity --info "Sorry, invalid selection"
		esac
	done
}

launchFrame
rm -f $temp
rm -f $temp2
