#!/bin/bash

max1=5
for i in $(seq 1 $max1)
do
    min2=$(expr $max1 - $i)
    for j in $(seq $min2 -1 1)
    do
        echo -n ' '
    done
    for k in $(seq $i)
    do
        echo -n '*'
    done
    echo
done