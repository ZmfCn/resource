#!/bin/bash
# 08.03.2017

# some useful usage of sed editor.

# 1) double the interval between lines.
echo 1 ----
sed '/^$/d;$!G' t.txt
echo

# 2) show the line number in its line instead of line number in another line like '=' command. The separator can be others besides space.
echo 2 ----
tail -5 /etc/passwd|sed '='|sed -n 'N;s/\n/ /;p'
echo

# 3) print the last n lines:(n=10)
echo 3 ----
sed -n ':start;N;1,9b start;${p;q};D' /etc/passwd
echo
# another several methods:
# sed -n '$p;:start;N;1,10b start;D' /etc/passwd
# sed ':start;$q;N;11,$D;b start' /etc/passwd


