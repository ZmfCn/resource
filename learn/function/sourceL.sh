#!/bin/bash

# Learn to use source command to use external lib file.
# source command will execute lib file in the context in current shell instead of create a new shell.
# '.' is an alias of source.
# With source command, several bash scripts can share a public lib file that contains function.

. ./lib.sh
addem 5 6
