#!/bin/bash
# learn what $0,$1,$# mean.
# $0 is the command
# $1 is the first parameter
# $2 is the second parameter
# $# is the number of the parameter
# ${!#} is the last parameter
# $* is a entire one of all the parameters which is not able to be used in for
# $@ is a set of all the parameters which is able to used in for loop
# $$ is the PID of current process
# $? is the exit code of last command
# $! is the PID of the last hintergrund process


echo "\$0 = $0"
echo "\$1 = $1"
echo "\$2 = $2"
echo "\$$# = ${!#}"
echo "\$# = $#"

# shift can remove the parameter value from right to left, which is unable to be recovered after being done. After shifting, it is just like the first parameter is forgot and the $# will calculate again.

shift
echo "\$1 = $1, and the \$# is $#"
shift $(expr $# - 1)
echo "\$1 = $1, and the \$# is $#"
