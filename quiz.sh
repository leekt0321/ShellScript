#!/bin/bash

QuizReq01() {
    cat <<- EOF
    [문제 01]. 차도가 없는 나라는?
    1) 인도
    2) 차도
    3) 속도

EOF
}

QuizReq02() {
    cat <<- EOF
    [문제 02]. 세상에서 가장 빠른 차는?
    1) 막차
    2) 첫차
    3) 차차차

EOF
}

QuizReq03() {
    cat <<- EOF
    [문제 03]. 세상에서 가장 가난한 왕은?
    1) 최저임금
    2) 임금
    3) 이밈긍미ㅏㅏㅏㅏㅏㅏ

EOF
}

cat << EOF > truekey.txt
1
2
1
EOF

> choice.txt
for i in $(seq 1 3)
do
    TRUE=$(sed -n "${i}p" truekey.txt)
    CHOICE=0
    while [ $TRUE != $CHOICE ]
    do
        QuizReq0$i
        echo -n "Enter you choice? (1/2/3): "
        read CHOICE
        case $CHOICE in
            1|2|3) echo "$CHOICE" > choice.txt ;;
            *) echo "꺼져" ;;

        esac
    done
done