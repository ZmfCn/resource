#!/bin/bash
# 08.01.2017

# like branch command, test can also change the execution process. But it will executes according to the result of substitute command before it instead of address. In other words, address only effects when the substitute command successes.
# the template is: [address]t [label]

# without substitute command before it, test command doesn't work.
echo 1 ----
sed -n 't;p' t.txt
echo

# if there is a substitute command before the test command even there are some other commands between, test command will execute or not according to the result of substitute. If substitute command matches pattern in it successfully, test command executes.
echo 2 ----
sed -n 's/:x://;/zmf/t;p' t.txt
echo

# it can be used with label, the label is defined the same as branch command.
echo 3 ----
echo "This, is, a, test, text, to, remove, commas,."|sed -n ':label;s/,//p;t label'
echo

# if there are more than one substitute commands before test command. It doesn't rely on the nearest substitute command. While it depends on the successful times of the substitute commands.
echo 4 ----
sed -n 's/:x://;s/ttttt//;t;p' t.txt
echo

# another example to prove test command will consume success times.
echo 5 ----
sed -n 's/:x://;t label;:label;s/ttttt//;t;p' t.txt
echo

# but if the test is with address, if it is not executed because of address, the success times will not be comsumed.
echo 6 ----
sed -n 's/:x://;/zmf/t label;:label;s/ttttt//;t;p' t.txt
echo

# in addtion, the maximum of the success times is one.
echo 7 ----
sed -n 's/:x://;s/zmf/z/;t label;:label;t;p' t.txt
