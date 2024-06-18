#!/bin/bash


if [ $# -ne 1 ]; then
    echo "USAGE: $0 <httpd|nginx>"
    exit 1
fi

Httpd(){
    systemctl disable --now nginx > /dev/null 2>&1
    ./httpd.sh
    firefox http://localhost &
}

Nginx(){
    systemctl disable --now httpd > /dev/null 2>&1
    ./nginx.sh
    firefox http://localhost &
}

WEBSVC=$1
case $WEBSVC in
    'httpd') Httpd ;;
    'nginx') Nginx ;;
    *) echo "...실패..." ;;
esac
