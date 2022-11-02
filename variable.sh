#!/bin/bash
#教程地址：https://blog.csdn.net/qq_18297675/article/details/52693464
#版权声明：本文为CSDN博主「_acme_」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。

#1,shell 变量
for COUNT in $(seq 1 10); do
  echo $COUNT
  #sleep 1
done

a=10
b=20
c="This is a test value"
d=$((a+b))
e=$((a-b))
i=$((a**3))

echo "a = "$a
echo "b = "$b
echo "c = "$c
echo "b/a = "$((b/a))
echo "a^3 = "$i