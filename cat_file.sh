#!/bin/bash

for NAME in $(cat /etc/vsftpd/ftpusers | egrep -v '^$|^#')
do
    echo "$NAME"
done

