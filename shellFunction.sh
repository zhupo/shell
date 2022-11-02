#!/bin/bash
# 6,shell 函数
printNum()
{
  echo $i
}

for i in `seq 1 10`
do
printNum $i
done