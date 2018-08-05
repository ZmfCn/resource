#!/bin/bash

#Tee is used to deliver data to both stdout and log file.
#It is used like 'tee filename'. In this case, the content will override the file. -a option is used to mark append.
echo "using tee"|tee -a b.txt
