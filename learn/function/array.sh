#!/bin/bash

# There ia also a special variable called array in bash.
# It is declared like this: variable=(1 2 3 4 5 6)
array=(0 1 2 3 4)

# Space is the separator. A reference to the third value in array is '${variable[2]}'. The index start from 0.
echo "the third value is: "${array[2]}

# ${array[*]} is used to refer all values.
echo "all the values are: "${array[*]}

# unset command can delete a value in an array. But it is a little special.
# The index does not changed. Just the third value becomes empty.
unset array[2]
echo "after unset array[2], all the values are: "${array[*]}
echo "after unset array[2], array[2] is: "${array[2]}

# array[i] can be regarded as a single variable. It can be reassigned.
array[2]=5
echo "after reassigning, array[2] is: "${array[2]}

# If someone wants to deliver an array as a parameter to a function like this: funcname $array, the result may be disappointing. Because only the first value is delivered. The effective method is to deliver all like this: 
# funcname ${array[*]}. And in the function, use 'newarray=$@' to create a new array and then use it.
test(){
	local newarr=$@
	echo ${newarr[*]}
}

# If we want to return an array from the function, just echo "${array[*]}". And then use an variable to carry the output.
array2=`test ${array[*]}`

# finally, unset can cancel this arrat variable.
unset array
echo "after unset array, all the values are: "${array[*]}
