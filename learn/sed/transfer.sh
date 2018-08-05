#!/bin/bash
# 07.27.2017
# transfer(y) command is to operate on single char.
# template : sed 'y/precharset/replacecharset/' file. The precharset must has the same lenght as replacecharset or an error takes place. The each character in precharset is mapped to each character in replacecharset.

# example:
echo 1 -------------------------------------------------------------------
sed 'y/123/456/' t.txt
# in this command, each '1' will be replaced with '4'. This is global which we cannot control. So do '2' to '5' and '3' to '6'.
