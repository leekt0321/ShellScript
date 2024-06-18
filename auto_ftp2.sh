#!/bin/bash

SERVER=/root/script/server.txt
for i in $(cat $SERVER)   # $SERVER (x) cat $SERVER (o)
do
# cat $i
ftp -n $i 21 << EOF
user root soldesk1.
cd /tmp
lcd /test
bin
hash
prompt
mput testfile.txt
quit
EOF

done