#!/bin/bash
# 07.27.2017

# sed is not only a command, but it is also a simple language.
# several commands can be used together.

# print the line that matched 'bin' and then replace 'bash' with 'csh':
echo 1 -------------------------------------------------------------------
sed -n '/bin/{p;s/bash/csh/p}' t.txt
echo

# the following command has the same effect:
echo 2 -------------------------------------------------------------------
sed -n '/bin/p;/bin/s/bash/csh/p' t.txt
echo
