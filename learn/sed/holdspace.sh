#!/bin/bash
# 07.31.2017

# pattern space is an active buffer. When sed executes commands, it will save text. But it is not the only space in sed to save text. Another space called hold space is also a buffer. It can be used to save some content when using certain commands.
# there are five commands to operate on hold space:
# h,H,g,G,x

# h, to copy content in pattern space to hold space. At the same time, the content in hold space will be over written.
# H, to copy the content now in pattern space and append it to the hold space.
# g, to copy the content in hold space and paste it to the pattern space, which means the content in pattern space will be over written.
# G, to copy the content in hold space and append it to the pattern space.
# x, exchange content in hold space and pattern space.


# This means after being copied to pattern space, hold space still hold the content. And after g command, the content of pattern space is covered.
echo 1 ----
sed '1h;2g;3g' t.txt
echo

echo 2 ----
sed '1h;2H;3g;4G;' t.txt
echo

# This is to make the line1 and line2 exchanged.
echo 3 ----
sed -n '1h;2p;2x;2p;3,$p' t.txt
echo

# there is a problem that is a little interesting to understand. This shows a lot of characteristcs of sed. If you understand how does the output generate, pretty good.
echo 4 ----
sed -n 'p;N;/saned/h;/zmf/G;D' t.txt
