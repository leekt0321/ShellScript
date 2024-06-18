#!/bin/bash


cat /root/script/server.list | while read IP USER PASS
do
    Cmd() {
	    sleep 2 ; echo $USER
	    sleep 0.5 ; echo $PASS
	    sleep 0.5 ; echo 'hostname'
	    sleep 0.5 ; echo 'ls -l'
	    sleep 0.5 ; echo 'exit'
    }


    Cmd | telnet $IP
done