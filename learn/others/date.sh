#!/bin/bash
# exec用于指定输出的重定向位置在哪

exec >`date +%F`.log 2>&1
echo "Start at `date`"

ls ./afjlkasf
cd ./dfsgsd

echo "End at `date`"
