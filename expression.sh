#!/bin/bash
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