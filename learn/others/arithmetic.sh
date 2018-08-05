#!/bin/bash
# 07.27.2017

# to conclude methods to do arimethic operations

a=1
b=2
# 1) expr. template is: expr parameter1 operator parameter2. There must be space to separate. Something to be noticed is that if * it must be escaped. like expr $a \* $b
echo 1 -------------------------------------------------------------------
c=`expr $a + $b`
echo $c
unset c

# 2) let. template is: let c=a+b. There mustn't be space in the arithmetic. And the '$' is not necessary but valid. 'let a++' is valid. 
echo 2 -------------------------------------------------------------------
let c=a+b
echo $c
unset c

# 3) (()). template is: c=$(($a+$b)). Space is alternative.
echo 3 -------------------------------------------------------------------
c=$(($a+$b))
echo $c
unset c

# this is another kind of (()) usage:
echo 4 -------------------------------------------------------------------
((c=$a+$b))
echo $c
unset c

# 4) $[]. template is: c=$[$a+$b]. Space is alternative.
echo 5 -------------------------------------------------------------------
c=$[$a+$b]
echo $c
unset c
