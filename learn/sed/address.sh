#!/bin/bash

# learn to use address certain lines to do with.
# there are number address and text address.

# single number address, this means the "bash" string is to replaced with "csh" only in line 2.
sed '2s/bash/csh/' t.txt
echo

# an interval address, this means the operation is only to do with line2 to line4.
sed '2,4s/bash/csh/' t.txt
echo

# only the lines matches  pattern 'zmf' are to be operated.
sed '/zmf/s/bash/csh/' t.txt
echo

# combination of commands, '{}' will indicate the scope of the addressing result if there are several commands.
sed '2,${s/zmf/z/g; s/bash/csh/1}; 2s/bin/tbin/' t.txt
