#!/bin/bash

# It is permitted to define function in command line. There are two methods to define.

# One is:
function multiem { echo $[$1*$2]; }

# Two is click enter after 'function multem {', then enter commands in the next input reminder. '}' means function ends.

# Also, the unset is effective.

# Please be careful about the name of the function. If the function name is the same as the name of other command, it will override the command.
