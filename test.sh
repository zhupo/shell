#!/bin/bash

echo "Please input two numbers:"
read num1
read num2

test $num1 -ne $num2 && echo "num1 != num2" || echo "num1 == num2"
