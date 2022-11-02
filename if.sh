#!/bin/bash

#4,shell条件分支结构语句
#1,单分支判断语句

echo "Please input a filename: "
read filename
if [ -f $filename ];then
echo "This file is a ordinary file."
else
echo "This file is not a ordinary file."
fi

echo "Please input your math grades:"
read grades

if [ $grades -gt 100 ] || [ $grades -lt 0 ];then
echo "Please input the number range in 0 - 100"
fi

if [ $grades -ge 90 ] && [ $grades -le 100 ];then
echo "Your grade is excellent."
elif [ $grades -ge 80 ] && [ $grades -le 89 ];then
echo "Your grade is good."
elif [ $grades -ge 70 ] && [ $grades -le 79 ];then
echo "Your grade is middle."
elif [ $grades -ge 60 ] && [ $grades -le 69 ];then
echo "Your grade is passing."
else
echo "Your grade is badly."
fi

#2 case cat:
echo "Please input a command"
read cmd
case $cmd in
cpu)    echo "The cpu information is"
        cat  /proc/cpuinfo;;
mem)    echo "The mem information is"
        cat /proc/meminfo;;
device) echo "The device information is"
        cat /proc/scsi/device_info;;
CD-ROM) echo "The CD-ROM information is"
        cat /proc/sys/dev/cdrom/info;;
*)      echo "Your input command is invalid"
esac