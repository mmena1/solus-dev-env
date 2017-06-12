#!/bin/sh
a=1
b=2
c=`expr ${a} + ${b}`
echo ${c}
if [ c != 0 ]; then
    echo "Not equals 0"
else
    echo "equals 0"
fi