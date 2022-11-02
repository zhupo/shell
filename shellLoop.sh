#!/bin/bash

echo "while:"
i=$1
while [ $i -gt 0 ];
do
echo $i
((i--))
done
echo "\n"

echo "until:"
#until语句 只要条件为假就执行语句
i=$i
until [ $i -ge 10 ]
do
echo $i
((i++))
done
echo "\n"

echo "for:"
#for语句
for i in `seq 2 8` #seq 是一个命令，顺序生成一串数字或者字符
do
  echo $i
done
echo "\n"