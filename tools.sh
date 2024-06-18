#!/bin/bash

echo "========================================="
echo " (1). who      (2). date       (3). pwd"
echo "========================================="

echo -n "Enter Your Choice?(1/2/3): "
read CMD

case $CMD in
    1) who | boxes -d stone ;;
    2) date | boxes -d stone ;;
    3) pwd | boxes -d stone ;;
    *) echo "ERROR"
esac
