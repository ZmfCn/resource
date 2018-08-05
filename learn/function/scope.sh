#!/bin/bash

# In a script, variable has its own scope. The variable in the script is global by default, function included. In a function, 'local' keyword can declare a local variable.

# If the value of the global variable is changed in a function, the changed value is visiable out of the function.

func(){
	local local=$global
	global=$[$global-1]
	echo $local
}

global=5
echo "previous global: $global"
func
echo $local
echo "now global: $global"
