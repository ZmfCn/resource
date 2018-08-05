#!/bin/bash
# 08.03.2017

# quit(q) command can be used to quit the sed editor.
echo 1 ----
sed -n '4q;p' t.txt
