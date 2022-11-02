#!/bin/bash
#教程地址：https://blog.csdn.net/qq_18297675/article/details/52693464
版权声明：本文为CSDN博主「_acme_」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。

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

#2,shell变量表达式
#${#string} 计算$string的长度
#${string:position} 从pos开始提取字符串
#${string:position:len} 从pos开始提取长度为len的字符串
#${string#substr} 从开头删除最短匹配子串
#${string##substr} 从开头删除最长匹配子串
#${string%position} 从结尾删除最短匹配子串
#${string%%position} 从结尾删除最长匹配子串

#example:
str="a b c d e f g h i j"

echo "The source string is "${str}
echo "The string length is "${#str}
echo "the 6th to last string is "${str:5}

echo "the source string is "${str}                         #源字符串
echo "the string length is "${#str}                        #字符串长度
echo "the 6th to last string is "${str:5}                  #截取从第五个后面开始到最后的字符
echo "the 6th to 8th string is "${str:5:2}                 #截取从第五个后面开始的2个字符
echo "after delete shortest string of start is "${str#a*f} #从开头删除a到f的字符
echo "after delete widest string of start is "${str##a*}   #从开头删除a以后的字符
echo "after delete shortest string of end is "${str%f*j}   #从结尾删除f到j的字符
echo "after delete widest string of end is "${str%%*j}     #从结尾删除j前面的所有字符包括j


#3,shell 测试判断test或[]
#需要注意的是使用[]的时候必须要每个变量之间都要有空格，和左右中括号也要有空格，否则会报错。
echo "Please input a filename: "
read filename
echo "by test\n"
test -f $filename && echo "the file is ordinary file" || echo "the file is not ordinary file"
test -d $filename && echo "the file is document folder" || echo "the file is not document folder"
test -r $filename && echo "the file can read" || echo "the file can not read"
test -w $filename && echo "the file can write" || echo "the file can not write"
test -x $filename && echo "the file can executable" || echo "the file can not executable"

echo "by []\n"
[ -f $filename ] && echo "the file is ordinary file" || echo "the file is not ordinary file"
[ -d $filename ] && echo "the file is document folder" || echo "the file is not document folder"
[ -r $filename ] && echo "the file can read" || echo "the file can not read"
[ -w $filename ] && echo "the file can write" || echo "the file can not write"
[ -x $filename ] && echo "the file can executable" || echo "the file can not executable"

echo "Please input two numbers:"
read num1
read num2

echo "num1 = "${num1}
echo "num2 = "${num2}
echo "by test\n"
test $num1 -eq $num2 && echo "num1 == num2" || echo "num1 != num2"
test $num1 -ne $num2 && echo "num1 != num2" || echo "num1 == num2"
test $num1 -gt $num2 && echo "num1 > num2" || echo "num1 <= num2"
test $num1 -lt $num2 && echo "num1 < num2" || echo "num1 >= num2"
test $num1 -ge $num2 && echo "num1 >= num2" || echo "num1 < num2"
test $num1 -le $num2 && echo "num1 <= num2" || echo "num1 > num2"

echo "by []\n"
[ $num1 -eq $num2 ] && echo "num1 == num2" || echo "num1 != num2"
[ $num1 -ne $num2 ] && echo "num1 != num2" || echo "num1 == num2"
[ $num1 -gt $num2 ] && echo "num1 > num2" || echo "num1 <= num2"
[ $num1 -lt $num2 ] && echo "num1 < num2" || echo "num1 >= num2"
[ $num1 -ge $num2 ] && echo "num1 >= num2" || echo "num1 < num2"
[ $num1 -le $num2 ] && echo "num1 <= num2" || echo "num1 > num2"


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

#5,shell 循环语句

