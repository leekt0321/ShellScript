#!/bin/bash

echo -n "Input A: "
read A

echo -n "Input OP: "
read OP

echo -n "Input B: "
read B

case $OP in
    '+') echo "$A + $B = $(expr $A + $B)" ;;
    '-') echo "$A - $B = $(expr $A - $B)" ;;
    '*') echo "$A * $B = $(expr $A \* $B)" ;;
    '/') echo "$A / $B = $(expr $A / $B)" ;;
    *) 
        echo "잘못 입력" 
        exit 1 ;;
esac