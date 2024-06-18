#!/bin/bash

# 목적:
# * 로그 파일(/var/log/messages)을 30초에 한번씩 점검해
# 에러 단어가 새로 추가되는지 확인하고
# 이상이 있으면 관리자에게 메일로 전송하는 프로그램을 만든다.
# * 조건: 데몬처럼 동작해야 한다.
# * sendmail, s-nail 필요 

LOGFILE="/var/log/messages"
TMP1=/tmp/tmp1 && > $TMP1
TMP2=/tmp/tmp2 && > $TMP2
TMP3=/tmp/tmp3 && > $TMP3

egrep -ni 'warn|error|fail|crit|alert|emerg' $LOGFILE > $TMP1
while true
do
    sleep 10
    egrep -ni 'warn|error|fail|crit|alert|emerg' $LOGFILE > $TMP2
    diff $TMP1 $TMP2 > $TMP3 && continue
    
    mailx -s '[  WARN  ] Log check' root < $TMP3
    egrep -ni 'warn|error|fail|crit|alert|emerg' $LOGFILE > $TMP1
done
