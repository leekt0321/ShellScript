#!/bin/bash

USERLIST=/root/script/user.list
> $USERLIST   # 파일 내용 지우기

for i in $(seq 1 30)
do
    echo "user$i  user$i" >> $USERLIST
done