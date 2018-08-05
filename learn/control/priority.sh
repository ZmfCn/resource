#!/bin/bash

# Learn to use nice command to set the priority of the process. The priority of a process is between -20 and 19. -20 is the highest priority. The higher the priority is, the more time the process can get from the CPU of a multi-task system.
# Normally, the priority is 0.
# nice command can set the initial priority of a process. The template is 'nice -n priority command'

# set the priority of process 'sleep 20&' 20.
nice -n 10 sleep 20&

# list the current process of this terminal.
ps -o pid,ppid,ni,cmd

# but if we want to set the process get higher priority, it needs super privilege.
echo ""
nice -n -10 sleep 20&
echo ""

# renice command can change the priority of the running process.
# there are some limits:
# 1.only the process belonging to current is able to be changed.
# 2.As for normal user, he can only turn down the priority of his process.
# 3.root user can do anything.

# the template is: renice -n priority -p PID
renice -n 10 -p $$

# as we can see, the priority of this ps command is 10, too. Because it is a child process of this script. So it has the same priority as his parent process.
ps -o pid,ppid,ni,cmd
