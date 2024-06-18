#!/bin/bash

echo -n "Input A: "
read A

echo -n "Input B: "
read B

echo "============================================"
echo "(1). +    (2). -    (3). *    (4). /    "
echo "============================================"

echo -n "Enter Your Choice ? : "
read C


case $C in
    1) echo "$A + $B = $(expr $A + $B)" ;;
    2) echo "$A - $B = $(expr $A - $B)" ;;
    3) echo "$A * $B = $(expr $A \* $B)" ;;
    4) echo "$A / $B = $(expr $A / $B)" ;;
    *) echo "다시 선택" ;;
esac


